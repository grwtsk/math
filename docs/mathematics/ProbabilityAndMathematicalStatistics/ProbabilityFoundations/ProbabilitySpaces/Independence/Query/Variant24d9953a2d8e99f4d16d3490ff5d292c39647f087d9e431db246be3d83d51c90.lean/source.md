# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Query.Variant24d9953a2d8e99f4d16d3490ff5d292c39647f087d9e431db246be3d83d51c90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `127d30b45faba58f76fa50f602091e7d22b6c17e` · SHA-256 `24d9953a2d8e99f4d16d3490ff5d292c39647f087d9e431db246be3d83d51c90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Refinement
import Surface.ContinuousAssurance.WorldModel.Convolution

/-!
# Denotational queries and the cache boundary

`QuerySpecification.denotation` is authoritative for the mathematical model.
A cache is sound exactly when every stored answer equals that denotation.
Eviction can remove reusable work but cannot change a query result.  An actual
Rust process, scheduler, serializer, or storage backend remains an external
capability until a concrete `Refinement` bridge is submitted.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- A pure query specification with all semantic pins named explicitly. -/
structure QuerySpecification (Request Output : Type*) where
  denotation : Request → Output
  activeRegion : ArtifactIdentity
  selectedVersions : ArtifactIdentity
  seed : ArtifactIdentity
  policy : ArtifactIdentity

/-- Raw runtime cache state; it has no proof authority by itself. -/
structure CacheState (Request Output : Type*) where
  lookup : Request → Option Output

/-- Every cached answer agrees with the pure denotation. -/
def CacheInvariant
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (cache : CacheState Request Output) : Prop :=
  ∀ request output,
    cache.lookup request = some output →
      output = spec.denotation request

/-- Cache coverage is operational metadata, distinct from soundness. -/
def cacheSufficient
    {Request Output : Type*}
    (requests : Finset Request)
    (cache : CacheState Request Output) : Prop :=
  ∀ request ∈ requests, ∃ output, cache.lookup request = some output

/-- Use a cached answer when present and otherwise recompute the denotation. -/
def queryImpl
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (cache : CacheState Request Output)
    (request : Request) : Output :=
  match cache.lookup request with
  | some output => output
  | none => spec.denotation request

/-- A sound cache cannot change the denotational answer. -/
theorem queryImpl_eq_denotation
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (cache : CacheState Request Output)
    (invariant : CacheInvariant spec cache)
    (request : Request) :
    queryImpl spec cache request = spec.denotation request := by
  simp only [queryImpl]
  split
  next output hlookup => exact invariant request output hlookup
  next => rfl

/-- Any two sound caches return the same answer. -/
theorem query_cache_independent
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (left right : CacheState Request Output)
    (leftInvariant : CacheInvariant spec left)
    (rightInvariant : CacheInvariant spec right)
    (request : Request) :
    queryImpl spec left request = queryImpl spec right request := by
  rw [queryImpl_eq_denotation spec left leftInvariant request,
    queryImpl_eq_denotation spec right rightInvariant request]

/-- Remove arbitrary entries from a cache. -/
def CacheState.evict
    {Request Output : Type*}
    (cache : CacheState Request Output)
    (retain : Request → Bool) : CacheState Request Output where
  lookup request := if retain request then cache.lookup request else none

/-- Eviction preserves cache soundness. -/
theorem evictionSound
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (cache : CacheState Request Output)
    (invariant : CacheInvariant spec cache)
    (retain : Request → Bool) :
    CacheInvariant spec (cache.evict retain) := by
  intro request output hlookup
  simp only [CacheState.evict] at hlookup
  split at hlookup
  · exact invariant request output hlookup
  · contradiction

/-- Consequently eviction may recompute, but cannot change an answer. -/
theorem query_eviction_independent
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (cache : CacheState Request Output)
    (invariant : CacheInvariant spec cache)
    (retain : Request → Bool)
    (request : Request) :
    queryImpl spec (cache.evict retain) request = queryImpl spec cache request := by
  exact query_cache_independent spec _ _
    (evictionSound spec cache invariant retain) invariant request

/-- Query batches are just pointwise applications of the pure specification. -/
def queryBatchSpec
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    (requests : List Request) : List Output :=
  requests.map spec.denotation

/-- Reordering queries only reorders their corresponding denotational answers. -/
theorem query_order_independent
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    {left right : List Request}
    (permutation : left.Perm right) :
    (queryBatchSpec spec left).Perm (queryBatchSpec spec right) :=
  permutation.map spec.denotation

/-- A parallel schedule is semantically only a permutation of requests. -/
theorem parallel_schedule_independent
    {Request Output : Type*}
    (spec : QuerySpecification Request Output)
    {serial scheduled : List Request}
    (sameRequests : serial.Perm scheduled) :
    (queryBatchSpec spec serial).Perm (queryBatchSpec spec scheduled) :=
  query_order_independent spec sameRequests

/-- No concrete world-model query runtime refinement is submitted here. -/
def worldModelQueryRuntimeRefinementStatus :
    RuntimeRefinementSubmissionStatus :=
  .notSubmitted

@[simp]
theorem worldModelQueryRuntimeRefinement_notSubmitted :
    worldModelQueryRuntimeRefinementStatus = .notSubmitted :=
  rfl

end Surface.ContinuousAssurance.WorldModel
```
