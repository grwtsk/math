# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.FiniteAdelicState.Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806` · SHA-256 `f94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Prismatic.CyclotomicComparison
import Mathematics.Prismatic.PrimeIndexCategory
import Mathlib.Topology.UniformSpace.Completion

/-!
# Finite adelic research state

This is a finite assembly of accepted prime-local fibers together with a
separate archimedean realization of one global object.  It is not the
restricted infinite adelic product unless an external completion theorem is
supplied.  Completion authority is carried by an actual dense
uniform-inducing embedding into a complete separated carrier; it is never a
caller-selected proposition.
-/

namespace Mathematics.Prismatic

open Set

universe u v w

/-- Finite local-global assembly used by the certified research loop. -/
structure FiniteAdelicState
    (FiniteCarrier : Type u) [UniformSpace FiniteCarrier] where
  /-- The represented finite local-global point. -/
  representedPoint : FiniteCarrier
  globalObject : GlobalArithmeticObject
  finitePrimes : FinitePrimeState.{0}
  sameGlobalObject :
    finitePrimes.globalObject = globalObject
  archimedeanRealizationAddress : ObjectAddress
  primeLocalComparison :
    ∀ prime, prime ∈ finitePrimes.primes → ObjectAddress
  archimedeanComparison : ObjectAddress
  compatibilityDigest : Digest
  stateAddress : ObjectAddress

/--
Proof-bearing completion data for the finite uniform carrier.

`AbstractCompletion` fixes the relevant predicates: the supplied map is
uniform-inducing and dense, and the target is complete and separated.  Its
universal extension property is derived below.  This package does not claim
that the finite carrier is already the infinite restricted adelic product.
-/
structure RestrictedAdelicCompletion
    {FiniteCarrier : Type u} [UniformSpace FiniteCarrier]
    (finiteState : FiniteAdelicState FiniteCarrier) where
  completion : AbstractCompletion.{v, u} FiniteCarrier
  completionCertificate : ObjectAddress

namespace RestrictedAdelicCompletion

variable
    {FiniteCarrier : Type u} [UniformSpace FiniteCarrier]
    {finiteState : FiniteAdelicState FiniteCarrier}

/-- The topology on a certified completion is the one stored in its package. -/
instance completionUniformSpace
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    UniformSpace completion.completion.space :=
  completion.completion.uniformStruct

/-- Completeness is structural data of the certified completion package. -/
instance completionCompleteSpace
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    CompleteSpace completion.completion.space :=
  completion.completion.complete

/-- Separation is structural data of the certified completion package. -/
instance completionT0Space
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    T0Space completion.completion.space :=
  completion.completion.separation

/-- The actual finite-state map into the supplied completion carrier. -/
def finiteEmbedding
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    FiniteCarrier → completion.completion.space :=
  completion.completion.coe

/--
The represented point is embedded by the same structural map as every other
finite point; it is not represented by a detached address.
-/
def representedPoint
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    completion.completion.space :=
  completion.finiteEmbedding finiteState.representedPoint

/--
The fixed restricted-completion predicate: a point lies in the closure of the
actual finite-state image.  Unlike the former API, callers cannot replace this
predicate by `True`.
-/
def IsRestrictedAdelicPoint
    (completion : RestrictedAdelicCompletion.{u, v} finiteState)
    (point : completion.completion.space) : Prop :=
  point ∈ closure (range completion.finiteEmbedding)

/-- The finite-state embedding has dense image by completion structure. -/
theorem finiteEmbedding_dense
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    DenseRange completion.finiteEmbedding :=
  completion.completion.dense

/-- Every completion point satisfies the fixed closure predicate. -/
theorem everyPoint_restricted
    (completion : RestrictedAdelicCompletion.{u, v} finiteState)
    (point : completion.completion.space) :
    completion.IsRestrictedAdelicPoint point := by
  letI : UniformSpace completion.completion.space :=
    completion.completion.uniformStruct
  change point ∈ closure (range completion.completion.coe)
  rw [completion.completion.closure_range]
  exact mem_univ point

/-- A separated finite carrier embeds injectively into its completion. -/
theorem finiteEmbedding_injective
    [T0Space FiniteCarrier]
    (completion : RestrictedAdelicCompletion.{u, v} finiteState) :
    Function.Injective completion.finiteEmbedding := by
  letI : UniformSpace completion.completion.space :=
    completion.completion.uniformStruct
  exact completion.completion.isUniformInducing.injective

/--
The canonical extension of a uniformly continuous map from the finite carrier
to a complete target.
-/
noncomputable def extend
    {Target : Type w}
    [UniformSpace Target] [CompleteSpace Target]
    (completion : RestrictedAdelicCompletion.{u, v} finiteState)
    (map : FiniteCarrier → Target) :
    completion.completion.space → Target := by
  letI : UniformSpace completion.completion.space :=
    completion.completion.uniformStruct
  exact completion.completion.extend map

/--
Genuine completion universal property.

Every uniformly continuous finite-state map into a complete separated target
has exactly one uniformly continuous extension agreeing with the actual
finite-state embedding.
-/
theorem universalProperty
    {Target : Type w}
    [UniformSpace Target] [CompleteSpace Target] [T0Space Target]
    (completion : RestrictedAdelicCompletion.{u, v} finiteState)
    (map : FiniteCarrier → Target)
    (map_uniform : UniformContinuous map) :
    ∃! extension : completion.completion.space → Target,
      UniformContinuous extension ∧
      ∀ point,
        extension (completion.finiteEmbedding point) = map point := by
  letI : UniformSpace completion.completion.space :=
    completion.completion.uniformStruct
  letI : CompleteSpace completion.completion.space :=
    completion.completion.complete
  letI : T0Space completion.completion.space :=
    completion.completion.separation
  refine
    ⟨completion.completion.extend map,
      ⟨completion.completion.uniformContinuous_extend,
        fun point ↦ completion.completion.extend_coe map_uniform point⟩,
      ?_⟩
  intro candidate candidateProperties
  exact
    (completion.completion.extend_unique
      map_uniform
      candidateProperties.1
      (fun point ↦ (candidateProperties.2 point).symm)).symm

/--
Any two certified completion carriers of the same finite state are canonically
uniformly equivalent.  This follows from the fixed completion structure, not
from matching digests.
-/
noncomputable def compareEquiv
    (left : RestrictedAdelicCompletion.{u, v} finiteState)
    (right : RestrictedAdelicCompletion.{u, w} finiteState) :
    left.completion.space ≃ᵤ right.completion.space := by
  letI : UniformSpace left.completion.space :=
    left.completion.uniformStruct
  letI : CompleteSpace left.completion.space :=
    left.completion.complete
  letI : T0Space left.completion.space :=
    left.completion.separation
  letI : UniformSpace right.completion.space :=
    right.completion.uniformStruct
  letI : CompleteSpace right.completion.space :=
    right.completion.complete
  letI : T0Space right.completion.space :=
    right.completion.separation
  exact left.completion.compareEquiv right.completion

end RestrictedAdelicCompletion

end Mathematics.Prismatic
```
