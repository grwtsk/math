# Complete source: GRWTSK.Topology.GeneralTopology.Sequences.Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e` · SHA-256 `99ee2005539287674d25900c00f5cac6f14e13c86d7213492b3ee78b53afefd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FrechetUrysohnSpace.Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FrechetUrysohnSpace.Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Sequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jan-David Salchow. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jan-David Salchow, Patrick Massot, Yury Kudryashov
-/
import Mathlib.Topology.SubsetProperties
import Mathlib.Topology.MetricSpace.Basic


namespace GRWTSK.Topology.GeneralTopology.FrechetUrysohnSpace.Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b

#align_import topology.sequences from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Sequences in topological spaces

In this file we define sequences in topological spaces and show how they are related to
filters and the topology.

## Main definitions

### Set operation
* `seqClosure s`: sequential closure of a set, the set of limits of sequences of points of `s`;

### Predicates

* `IsSeqClosed s`: predicate saying that a set is sequentially closed, i.e., `seqClosure s ⊆ s`;
* `SeqContinuous f`: predicate saying that a function is sequentially continuous, i.e.,
  for any sequence `u : ℕ → X` that converges to a point `x`, the sequence `f ∘ u` converges to
  `f x`;
* `IsSeqCompact s`: predicate saying that a set is sequentially compact, i.e., every sequence
  taking values in `s` has a converging subsequence.

### Type classes

* `FrechetUrysohnSpace X`: a typeclass saying that a topological space is a *Fréchet-Urysohn
  space*, i.e., the sequential closure of any set is equal to its closure.
* `SequentialSpace X`: a typeclass saying that a topological space is a *sequential space*, i.e.,
  any sequentially closed set in this space is closed. This condition is weaker than being a
  Fréchet-Urysohn space.
* `SeqCompactSpace X`: a typeclass saying that a topological space is sequentially compact, i.e.,
  every sequence in `X` has a converging subsequence.

## Main results

* `seqClosure_subset_closure`: closure of a set includes its sequential closure;
* `IsClosed.isSeqClosed`: a closed set is sequentially closed;
* `IsSeqClosed.seqClosure_eq`: sequential closure of a sequentially closed set `s` is equal
  to `s`;
* `seqClosure_eq_closure`: in a Fréchet-Urysohn space, the sequential closure of a set is equal to
  its closure;
* `tendsto_nhds_iff_seq_tendsto`, `FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto`: a topological
  space is a Fréchet-Urysohn space if and only if sequential convergence implies convergence;
* `TopologicalSpace.FirstCountableTopology.frechetUrysohnSpace`: every topological space with
  first countable topology is a Fréchet-Urysohn space;
* `FrechetUrysohnSpace.to_sequentialSpace`: every Fréchet-Urysohn space is a sequential space;
* `IsSeqCompact.isCompact`: a sequentially compact set in a uniform space with countably
  generated uniformity is compact.

## Tags

sequentially closed, sequentially compact, sequential space
-/


open Set Function Filter TopologicalSpace Topology Uniformity

variable {X Y : Type*}

/-! ### Sequential closures, sequential continuity, and sequential spaces. -/


section TopologicalSpace

variable [TopologicalSpace X] [TopologicalSpace Y]

/-- The sequential closure of a set `s : Set X` in a topological space `X` is the set of all `a : X`
which arise as limit of sequences in `s`. Note that the sequential closure of a set is not
guaranteed to be sequentially closed. -/
def seqClosure (s : Set X) : Set X :=
  { a | ∃ x : ℕ → X, (∀ n : ℕ, x n ∈ s) ∧ Tendsto x atTop (𝓝 a) }
#align seq_closure seqClosure

theorem subset_seqClosure {s : Set X} : s ⊆ seqClosure s := fun p hp =>
  ⟨const ℕ p, fun _ => hp, tendsto_const_nhds⟩
#align subset_seq_closure subset_seqClosure

/-- The sequential closure of a set is contained in the closure of that set.
The converse is not true. -/
theorem seqClosure_subset_closure {s : Set X} : seqClosure s ⊆ closure s := fun _p ⟨_x, xM, xp⟩ =>
  mem_closure_of_tendsto xp (univ_mem' xM)
#align seq_closure_subset_closure seqClosure_subset_closure

/-- A set `s` is sequentially closed if for any converging sequence `x n` of elements of `s`, the
limit belongs to `s` as well. Note that the sequential closure of a set is not guaranteed to be
sequentially closed. -/
def IsSeqClosed (s : Set X) : Prop :=
  ∀ ⦃x : ℕ → X⦄ ⦃p : X⦄, (∀ n, x n ∈ s) → Tendsto x atTop (𝓝 p) → p ∈ s
#align is_seq_closed IsSeqClosed

/-- The sequential closure of a sequentially closed set is the set itself. -/
theorem IsSeqClosed.seqClosure_eq {s : Set X} (hs : IsSeqClosed s) : seqClosure s = s :=
  Subset.antisymm (fun _p ⟨_x, hx, hp⟩ => hs hx hp) subset_seqClosure
#align is_seq_closed.seq_closure_eq IsSeqClosed.seqClosure_eq

/-- If a set is equal to its sequential closure, then it is sequentially closed. -/
theorem isSeqClosed_of_seqClosure_eq {s : Set X} (hs : seqClosure s = s) : IsSeqClosed s :=
  fun x _p hxs hxp => hs ▸ ⟨x, hxs, hxp⟩
#align is_seq_closed_of_seq_closure_eq isSeqClosed_of_seqClosure_eq

/-- A set is sequentially closed iff it is equal to its sequential closure. -/
theorem isSeqClosed_iff {s : Set X} : IsSeqClosed s ↔ seqClosure s = s :=
  ⟨IsSeqClosed.seqClosure_eq, isSeqClosed_of_seqClosure_eq⟩
#align is_seq_closed_iff isSeqClosed_iff

/-- A set is sequentially closed if it is closed. -/
protected theorem IsClosed.isSeqClosed {s : Set X} (hc : IsClosed s) : IsSeqClosed s :=
  fun _u _x hu hx => hc.mem_of_tendsto hx (eventually_of_forall hu)
#align is_closed.is_seq_closed IsClosed.isSeqClosed

/-- A topological space is called a *Fréchet-Urysohn space*, if the sequential closure of any set
is equal to its closure. Since one of the inclusions is trivial, we require only the non-trivial one
in the definition. -/
class FrechetUrysohnSpace (X : Type*) [TopologicalSpace X] : Prop where
  closure_subset_seqClosure : ∀ s : Set X, closure s ⊆ seqClosure s
#align frechet_urysohn_space FrechetUrysohnSpace

theorem seqClosure_eq_closure [FrechetUrysohnSpace X] (s : Set X) : seqClosure s = closure s :=
  seqClosure_subset_closure.antisymm <| FrechetUrysohnSpace.closure_subset_seqClosure s
#align seq_closure_eq_closure seqClosure_eq_closure

/-- In a Fréchet-Urysohn space, a point belongs to the closure of a set iff it is a limit
of a sequence taking values in this set. -/
theorem mem_closure_iff_seq_limit [FrechetUrysohnSpace X] {s : Set X} {a : X} :
    a ∈ closure s ↔ ∃ x : ℕ → X, (∀ n : ℕ, x n ∈ s) ∧ Tendsto x atTop (𝓝 a) := by
  rw [← seqClosure_eq_closure]
  rfl
#align mem_closure_iff_seq_limit mem_closure_iff_seq_limit

/-- If the domain of a function `f : α → β` is a Fréchet-Urysohn space, then convergence
is equivalent to sequential convergence. See also `Filter.tendsto_iff_seq_tendsto` for a version
that works for any pair of filters assuming that the filter in the domain is countably generated.

This property is equivalent to the definition of `FrechetUrysohnSpace`, see
`FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto`. -/
theorem tendsto_nhds_iff_seq_tendsto [FrechetUrysohnSpace X] {f : X → Y} {a : X} {b : Y} :
    Tendsto f (𝓝 a) (𝓝 b) ↔ ∀ u : ℕ → X, Tendsto u atTop (𝓝 a) → Tendsto (f ∘ u) atTop (𝓝 b) := by
  refine'
    ⟨fun hf u hu => hf.comp hu, fun h =>
      ((nhds_basis_closeds _).tendsto_iff (nhds_basis_closeds _)).2 _⟩
  rintro s ⟨hbs, hsc⟩
  refine' ⟨closure (f ⁻¹' s), ⟨mt _ hbs, isClosed_closure⟩, fun x => mt fun hx => subset_closure hx⟩
  rw [← seqClosure_eq_closure]
  rintro ⟨u, hus, hu⟩
  exact hsc.mem_of_tendsto (h u hu) (eventually_of_forall hus)
#align tendsto_nhds_iff_seq_tendsto tendsto_nhds_iff_seq_tendsto

/-- An alternative construction for `FrechetUrysohnSpace`: if sequential convergence implies
convergence, then the space is a Fréchet-Urysohn space. -/
theorem FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto
    (h : ∀ (f : X → Prop) (a : X),
      (∀ u : ℕ → X, Tendsto u atTop (𝓝 a) → Tendsto (f ∘ u) atTop (𝓝 (f a))) → ContinuousAt f a) :
    FrechetUrysohnSpace X := by
  refine ⟨fun s x hcx => ?_⟩
  by_cases hx : x ∈ s;
  · exact subset_seqClosure hx
  · obtain ⟨u, hux, hus⟩ : ∃ u : ℕ → X, Tendsto u atTop (𝓝 x) ∧ ∃ᶠ x in atTop, u x ∈ s
    · simpa only [ContinuousAt, hx, tendsto_nhds_true, (· ∘ ·), ← not_frequently, exists_prop,
        ← mem_closure_iff_frequently, hcx, imp_false, not_forall, not_not] using h (· ∉ s) x
    rcases extraction_of_frequently_atTop hus with ⟨φ, φ_mono, hφ⟩
    exact ⟨u ∘ φ, hφ, hux.comp φ_mono.tendsto_atTop⟩
#align frechet_urysohn_space.of_seq_tendsto_imp_tendsto FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto

-- see Note [lower instance priority]
/-- Every first-countable space is a Fréchet-Urysohn space. -/
instance (priority := 100) TopologicalSpace.FirstCountableTopology.frechetUrysohnSpace
    [FirstCountableTopology X] : FrechetUrysohnSpace X :=
  FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto fun _ _ => tendsto_iff_seq_tendsto.2
#align topological_space.first_countable_topology.frechet_urysohn_space TopologicalSpace.FirstCountableTopology.frechetUrysohnSpace

/-- A topological space is said to be a *sequential space* if any sequentially closed set in this
space is closed. This condition is weaker than being a Fréchet-Urysohn space. -/
class SequentialSpace (X : Type*) [TopologicalSpace X] : Prop where
  isClosed_of_seq : ∀ s : Set X, IsSeqClosed s → IsClosed s
#align sequential_space SequentialSpace

-- see Note [lower instance priority]
/-- Every Fréchet-Urysohn space is a sequential space. -/
instance (priority := 100) FrechetUrysohnSpace.to_sequentialSpace [FrechetUrysohnSpace X] :
    SequentialSpace X :=
  ⟨fun s hs => by rw [← closure_eq_iff_isClosed, ← seqClosure_eq_closure, hs.seqClosure_eq]⟩
#align frechet_urysohn_space.to_sequential_space FrechetUrysohnSpace.to_sequentialSpace

/-- In a sequential space, a sequentially closed set is closed. -/
protected theorem IsSeqClosed.isClosed [SequentialSpace X] {s : Set X} (hs : IsSeqClosed s) :
    IsClosed s :=
  SequentialSpace.isClosed_of_seq s hs
#align is_seq_closed.is_closed IsSeqClosed.isClosed

/-- In a sequential space, a set is closed iff it's sequentially closed. -/
theorem isSeqClosed_iff_isClosed [SequentialSpace X] {M : Set X} : IsSeqClosed M ↔ IsClosed M :=
  ⟨IsSeqClosed.isClosed, IsClosed.isSeqClosed⟩
#align is_seq_closed_iff_is_closed isSeqClosed_iff_isClosed

/-- A function between topological spaces is sequentially continuous if it commutes with limit of
 convergent sequences. -/
def SeqContinuous (f : X → Y) : Prop :=
  ∀ ⦃x : ℕ → X⦄ ⦃p : X⦄, Tendsto x atTop (𝓝 p) → Tendsto (f ∘ x) atTop (𝓝 (f p))
#align seq_continuous SeqContinuous

/-- The preimage of a sequentially closed set under a sequentially continuous map is sequentially
closed. -/
theorem IsSeqClosed.preimage {f : X → Y} {s : Set Y} (hs : IsSeqClosed s) (hf : SeqContinuous f) :
    IsSeqClosed (f ⁻¹' s) := fun _x _p hx hp => hs hx (hf hp)
#align is_seq_closed.preimage IsSeqClosed.preimage

-- A continuous function is sequentially continuous.
protected theorem Continuous.seqContinuous {f : X → Y} (hf : Continuous f) : SeqContinuous f :=
  fun _x p hx => (hf.tendsto p).comp hx
#align continuous.seq_continuous Continuous.seqContinuous

/-- A sequentially continuous function defined on a sequential space is continuous. -/
protected theorem SeqContinuous.continuous [SequentialSpace X] {f : X → Y} (hf : SeqContinuous f) :
    Continuous f :=
  continuous_iff_isClosed.mpr fun _s hs => (hs.isSeqClosed.preimage hf).isClosed
#align seq_continuous.continuous SeqContinuous.continuous

/-- If the domain of a function is a sequential space, then continuity of this function is
equivalent to its sequential continuity. -/
theorem continuous_iff_seqContinuous [SequentialSpace X] {f : X → Y} :
    Continuous f ↔ SeqContinuous f :=
  ⟨Continuous.seqContinuous, SeqContinuous.continuous⟩
#align continuous_iff_seq_continuous continuous_iff_seqContinuous

theorem QuotientMap.sequentialSpace [SequentialSpace X] {f : X → Y} (hf : QuotientMap f) :
    SequentialSpace Y :=
  ⟨fun _s hs => hf.isClosed_preimage.mp <| (hs.preimage <| hf.continuous.seqContinuous).isClosed⟩
#align quotient_map.sequential_space QuotientMap.sequentialSpace

/-- The quotient of a sequential space is a sequential space. -/
instance [SequentialSpace X] {s : Setoid X} : SequentialSpace (Quotient s) :=
  quotientMap_quot_mk.sequentialSpace

end TopologicalSpace

section SeqCompact

open TopologicalSpace TopologicalSpace.FirstCountableTopology

variable [TopologicalSpace X]

/-- A set `s` is sequentially compact if every sequence taking values in `s` has a
converging subsequence. -/
def IsSeqCompact (s : Set X) :=
  ∀ ⦃x : ℕ → X⦄, (∀ n, x n ∈ s) → ∃ a ∈ s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a)
#align is_seq_compact IsSeqCompact

/-- A space `X` is sequentially compact if every sequence in `X` has a
converging subsequence. -/
@[mk_iff seqCompactSpace_iff]
class SeqCompactSpace (X : Type*) [TopologicalSpace X] : Prop where
  seq_compact_univ : IsSeqCompact (univ : Set X)
#align seq_compact_space SeqCompactSpace
#align seq_compact_space_iff seqCompactSpace_iff

export SeqCompactSpace (seq_compact_univ)

theorem IsSeqCompact.subseq_of_frequently_in {s : Set X} (hs : IsSeqCompact s) {x : ℕ → X}
    (hx : ∃ᶠ n in atTop, x n ∈ s) :
    ∃ a ∈ s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  let ⟨ψ, hψ, huψ⟩ := extraction_of_frequently_atTop hx
  let ⟨a, a_in, φ, hφ, h⟩ := hs huψ
  ⟨a, a_in, ψ ∘ φ, hψ.comp hφ, h⟩
#align is_seq_compact.subseq_of_frequently_in IsSeqCompact.subseq_of_frequently_in

theorem SeqCompactSpace.tendsto_subseq [SeqCompactSpace X] (x : ℕ → X) :
    ∃ (a : X) (φ : ℕ → ℕ), StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  let ⟨a, _, φ, mono, h⟩ := seq_compact_univ fun n => mem_univ (x n)
  ⟨a, φ, mono, h⟩
#align seq_compact_space.tendsto_subseq SeqCompactSpace.tendsto_subseq

section FirstCountableTopology

variable [FirstCountableTopology X]

open TopologicalSpace.FirstCountableTopology

protected theorem IsCompact.isSeqCompact {s : Set X} (hs : IsCompact s) : IsSeqCompact s :=
  fun _x x_in =>
  let ⟨a, a_in, ha⟩ := hs (tendsto_principal.mpr (eventually_of_forall x_in))
  ⟨a, a_in, tendsto_subseq ha⟩
#align is_compact.is_seq_compact IsCompact.isSeqCompact

theorem IsCompact.tendsto_subseq' {s : Set X} {x : ℕ → X} (hs : IsCompact s)
    (hx : ∃ᶠ n in atTop, x n ∈ s) :
    ∃ a ∈ s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  hs.isSeqCompact.subseq_of_frequently_in hx
#align is_compact.tendsto_subseq' IsCompact.tendsto_subseq'

theorem IsCompact.tendsto_subseq {s : Set X} {x : ℕ → X} (hs : IsCompact s) (hx : ∀ n, x n ∈ s) :
    ∃ a ∈ s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  hs.isSeqCompact hx
#align is_compact.tendsto_subseq IsCompact.tendsto_subseq

-- see Note [lower instance priority]
instance (priority := 100) FirstCountableTopology.seq_compact_of_compact [CompactSpace X] :
    SeqCompactSpace X :=
  ⟨isCompact_univ.isSeqCompact⟩
#align first_countable_topology.seq_compact_of_compact FirstCountableTopology.seq_compact_of_compact

theorem CompactSpace.tendsto_subseq [CompactSpace X] (x : ℕ → X) :
    ∃ (a : _) (φ : ℕ → ℕ), StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  SeqCompactSpace.tendsto_subseq x
#align compact_space.tendsto_subseq CompactSpace.tendsto_subseq

end FirstCountableTopology

end SeqCompact

section UniformSpaceSeqCompact

open uniformity

open UniformSpace Prod

variable [UniformSpace X] {s : Set X}

theorem IsSeqCompact.exists_tendsto_of_frequently_mem (hs : IsSeqCompact s) {u : ℕ → X}
    (hu : ∃ᶠ n in atTop, u n ∈ s) (huc : CauchySeq u) : ∃ x ∈ s, Tendsto u atTop (𝓝 x) :=
  let ⟨x, hxs, _φ, φ_mono, hx⟩ := hs.subseq_of_frequently_in hu
  ⟨x, hxs, tendsto_nhds_of_cauchySeq_of_subseq huc φ_mono.tendsto_atTop hx⟩
#align is_seq_compact.exists_tendsto_of_frequently_mem IsSeqCompact.exists_tendsto_of_frequently_mem

theorem IsSeqCompact.exists_tendsto (hs : IsSeqCompact s) {u : ℕ → X} (hu : ∀ n, u n ∈ s)
    (huc : CauchySeq u) : ∃ x ∈ s, Tendsto u atTop (𝓝 x) :=
  hs.exists_tendsto_of_frequently_mem (frequently_of_forall hu) huc
#align is_seq_compact.exists_tendsto IsSeqCompact.exists_tendsto

/-- A sequentially compact set in a uniform space is totally bounded. -/
protected theorem IsSeqCompact.totallyBounded (h : IsSeqCompact s) : TotallyBounded s := by
  intro V V_in
  unfold IsSeqCompact at h
  contrapose! h
  obtain ⟨u, u_in, hu⟩ : ∃ u : ℕ → X, (∀ n, u n ∈ s) ∧ ∀ n m, m < n → u m ∉ ball (u n) V := by
    simp only [not_subset, mem_iUnion₂, not_exists, exists_prop] at h
    simpa only [forall_and, ball_image_iff, not_and] using seq_of_forall_finite_exists h
  refine' ⟨u, u_in, fun x _ φ hφ huφ => _⟩
  obtain ⟨N, hN⟩ : ∃ N, ∀ p q, p ≥ N → q ≥ N → (u (φ p), u (φ q)) ∈ V
  exact huφ.cauchySeq.mem_entourage V_in
  exact hu (φ <| N + 1) (φ N) (hφ <| lt_add_one N) (hN (N + 1) N N.le_succ le_rfl)
#align is_seq_compact.totally_bounded IsSeqCompact.totallyBounded

variable [IsCountablyGenerated (𝓤 X)]

/-- A sequentially compact set in a uniform set with countably generated uniformity filter
is complete. -/
protected theorem IsSeqCompact.isComplete (hs : IsSeqCompact s) : IsComplete s := fun l hl hls => by
  have := hl.1
  rcases exists_antitone_basis (𝓤 X) with ⟨V, hV⟩
  choose W hW hWV using fun n => comp_mem_uniformity_sets (hV.mem n)
  have hWV' : ∀ n, W n ⊆ V n := fun n ⟨x, y⟩ hx =>
    @hWV n (x, y) ⟨x, refl_mem_uniformity <| hW _, hx⟩
  obtain ⟨t, ht_anti, htl, htW, hts⟩ :
      ∃ t : ℕ → Set X, Antitone t ∧ (∀ n, t n ∈ l) ∧ (∀ n, t n ×ˢ t n ⊆ W n) ∧ ∀ n, t n ⊆ s := by
    have : ∀ n, ∃ t ∈ l, t ×ˢ t ⊆ W n ∧ t ⊆ s := by
      rw [le_principal_iff] at hls
      have : ∀ n, W n ∩ s ×ˢ s ∈ l ×ˢ l := fun n => inter_mem (hl.2 (hW n)) (prod_mem_prod hls hls)
      simpa only [l.basis_sets.prod_self.mem_iff, true_imp_iff, subset_inter_iff,
        prod_self_subset_prod_self, and_assoc] using this
    choose t htl htW hts using this
    have : ∀ n : ℕ, ⋂ k ≤ n, t k ⊆ t n := fun n => by apply iInter₂_subset; rfl
    exact ⟨fun n => ⋂ k ≤ n, t k, fun m n h =>
      biInter_subset_biInter_left fun k (hk : k ≤ m) => hk.trans h, fun n =>
      (biInter_mem (finite_le_nat n)).2 fun k _ => htl k, fun n =>
      (prod_mono (this n) (this n)).trans (htW n), fun n => (this n).trans (hts n)⟩
  choose u hu using fun n => Filter.nonempty_of_mem (htl n)
  have huc : CauchySeq u := hV.toHasBasis.cauchySeq_iff.2 fun N _ =>
      ⟨N, fun m hm n hn => hWV' _ <| @htW N (_, _) ⟨ht_anti hm (hu _), ht_anti hn (hu _)⟩⟩
  rcases hs.exists_tendsto (fun n => hts n (hu n)) huc with ⟨x, hxs, hx⟩
  refine ⟨x, hxs, (nhds_basis_uniformity' hV.toHasBasis).ge_iff.2 fun N _ => ?_⟩
  obtain ⟨n, hNn, hn⟩ : ∃ n, N ≤ n ∧ u n ∈ ball x (W N)
  · exact ((eventually_ge_atTop N).and (hx <| ball_mem_nhds x (hW N))).exists
  refine mem_of_superset (htl n) fun y hy => hWV N ⟨u n, hn, htW N ?_⟩
  exact ⟨ht_anti hNn (hu n), ht_anti hNn hy⟩
#align is_seq_compact.is_complete IsSeqCompact.isComplete

/-- If `𝓤 β` is countably generated, then any sequentially compact set is compact. -/
protected theorem IsSeqCompact.isCompact (hs : IsSeqCompact s) : IsCompact s :=
  isCompact_iff_totallyBounded_isComplete.2 ⟨hs.totallyBounded, hs.isComplete⟩
#align is_seq_compact.is_compact IsSeqCompact.isCompact

/-- A version of Bolzano-Weistrass: in a uniform space with countably generated uniformity filter
(e.g., in a metric space), a set is compact if and only if it is sequentially compact. -/
protected theorem UniformSpace.isCompact_iff_isSeqCompact : IsCompact s ↔ IsSeqCompact s :=
  ⟨fun H => H.isSeqCompact, fun H => H.isCompact⟩
#align uniform_space.is_compact_iff_is_seq_compact UniformSpace.isCompact_iff_isSeqCompact

theorem UniformSpace.compactSpace_iff_seqCompactSpace : CompactSpace X ↔ SeqCompactSpace X := by
  simp only [← isCompact_univ_iff, seqCompactSpace_iff, UniformSpace.isCompact_iff_isSeqCompact]
#align uniform_space.compact_space_iff_seq_compact_space UniformSpace.compactSpace_iff_seqCompactSpace

end UniformSpaceSeqCompact

section MetricSeqCompact

variable [PseudoMetricSpace X]

open Metric

nonrec theorem SeqCompact.lebesgue_number_lemma_of_metric {ι : Sort*} {c : ι → Set X} {s : Set X}
    (hs : IsSeqCompact s) (hc₁ : ∀ i, IsOpen (c i)) (hc₂ : s ⊆ ⋃ i, c i) :
    ∃ δ > 0, ∀ a ∈ s, ∃ i, ball a δ ⊆ c i :=
  lebesgue_number_lemma_of_metric hs.isCompact hc₁ hc₂
#align seq_compact.lebesgue_number_lemma_of_metric SeqCompact.lebesgue_number_lemma_of_metric

variable [ProperSpace X] {s : Set X}

/-- A version of **Bolzano-Weistrass**: in a proper metric space (eg. $ℝ^n$),
every bounded sequence has a converging subsequence. This version assumes only
that the sequence is frequently in some bounded set. -/
theorem tendsto_subseq_of_frequently_bounded (hs : Bounded s) {x : ℕ → X}
    (hx : ∃ᶠ n in atTop, x n ∈ s) :
    ∃ a ∈ closure s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  have hcs : IsSeqCompact (closure s) := hs.isCompact_closure.isSeqCompact
  have hu' : ∃ᶠ n in atTop, x n ∈ closure s := hx.mono fun _n hn => subset_closure hn
  hcs.subseq_of_frequently_in hu'
#align tendsto_subseq_of_frequently_bounded tendsto_subseq_of_frequently_bounded

/-- A version of Bolzano-Weistrass: in a proper metric space (eg. $ℝ^n$),
every bounded sequence has a converging subsequence. -/
theorem tendsto_subseq_of_bounded (hs : Bounded s) {x : ℕ → X} (hx : ∀ n, x n ∈ s) :
    ∃ a ∈ closure s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a) :=
  tendsto_subseq_of_frequently_bounded hs <| frequently_of_forall hx
#align tendsto_subseq_of_bounded tendsto_subseq_of_bounded

end MetricSeqCompact
```
