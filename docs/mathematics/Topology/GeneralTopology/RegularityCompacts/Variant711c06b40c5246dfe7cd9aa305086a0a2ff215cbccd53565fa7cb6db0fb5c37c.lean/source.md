# Complete source: GRWTSK.Topology.GeneralTopology.RegularityCompacts.Variant711c06b40c5246dfe7cd9aa305086a0a2ff215cbccd53565fa7cb6db0fb5c37c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5297c711b797ee2965e88d9cac318d4d534fd7ed` · SHA-256 `a89a37a3fb5cc05cae09e28b369f9c78018659569b3d5ffccb938b1c098d4eb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.InnerRegularWRTIsCompactClosureIff.Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.InnerRegularWRTIsCompactClosureIff.Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94","mathematical_subject":"Topology.GeneralTopology","original_sha256":"619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/RegularityCompacts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne, Peter Pfaffelhuber
-/
module

public import Mathlib.MeasureTheory.Measure.Regular
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Topology.Metrizable.CompletelyMetrizable

/-!
# Inner regularity of finite measures

The main result of this file is
`InnerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable`:
A finite measure `μ` on a `PseudoEMetricSpace E` and `CompleteSpace E` with
`SecondCountableTopology E` is inner regular with respect to compact sets. In other
words, a finite measure on such a space is a tight measure.

Finite measures on Polish spaces are an important special case, which makes the result
`MeasureTheory.PolishSpace.innerRegular_isCompact_isClosed_measurableSet` an important result in
probability.
-/


namespace GRWTSK.Topology.GeneralTopology.InnerRegularWRTIsCompactClosureIff.Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94

public section

open Set MeasureTheory TopologicalSpace

open scoped ENNReal Uniformity

namespace MeasureTheory

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

theorem innerRegularWRT_isCompact_closure_iff [TopologicalSpace α] [R1Space α] :
    μ.InnerRegularWRT (IsCompact ∘ closure) IsClosed ↔ μ.InnerRegularWRT IsCompact IsClosed := by
  constructor <;> intro h A hA r hr
  · rcases h hA r hr with ⟨K, ⟨hK1, hK2, hK3⟩⟩
    exact ⟨closure K, closure_minimal hK1 hA, hK2, hK3.trans_le (measure_mono subset_closure)⟩
  · rcases h hA r hr with ⟨K, ⟨hK1, hK2, hK3⟩⟩
    refine ⟨closure K, closure_minimal hK1 hA, ?_, ?_⟩
    · simpa only [closure_closure, Function.comp_apply] using hK2.closure
    · exact hK3.trans_le (measure_mono subset_closure)

lemma innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure
    [TopologicalSpace α] [R1Space α] :
    μ.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) IsClosed
      ↔ μ.InnerRegularWRT (IsCompact ∘ closure) IsClosed := by
  constructor <;> intro h A hA r hr
  · obtain ⟨K, hK1, ⟨hK2, _⟩, hK4⟩ := h hA r hr
    refine ⟨K, hK1, ?_, hK4⟩
    simp only [Function.comp_apply]
    exact hK2.closure
  · obtain ⟨K, hK1, hK2, hK3⟩ := h hA r hr
    refine ⟨closure K, closure_minimal hK1 hA, ?_, ?_⟩
    · simpa only [isClosed_closure, and_true]
    · exact hK3.trans_le (measure_mono subset_closure)

lemma innerRegularWRT_isCompact_isClosed_iff [TopologicalSpace α] [R1Space α] :
    μ.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) IsClosed
      ↔ μ.InnerRegularWRT IsCompact IsClosed :=
  innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure.trans
    innerRegularWRT_isCompact_closure_iff

/--
If predicate `p` is preserved under intersections with sets satisfying predicate `q`, and sets
satisfying `p` cover the space arbitrarily well, then `μ` is inner regular with respect to
predicates `p` and `q`.
-/
theorem innerRegularWRT_of_exists_compl_lt {p q : Set α → Prop} (hpq : ∀ A B, p A → q B → p (A ∩ B))
    (hμ : ∀ ε, 0 < ε → ∃ K, p K ∧ μ Kᶜ < ε) :
    μ.InnerRegularWRT p q := by
  intro A hA r hr
  obtain ⟨K, hK, hK_subset, h_lt⟩ : ∃ K, p K ∧ K ⊆ A ∧ μ (A \ K) < μ A - r := by
    obtain ⟨K', hpK', hK'_lt⟩ := hμ (μ A - r) (tsub_pos_of_lt hr)
    refine ⟨K' ∩ A, hpq K' A hpK' hA, inter_subset_right, ?_⟩
    · refine (measure_mono fun x ↦ ?_).trans_lt hK'_lt
      simp only [sdiff_inter_self_eq_sdiff, mem_sdiff, mem_compl_iff, and_imp, imp_self,
        imp_true_iff]
  refine ⟨K, hK_subset, hK, ?_⟩
  have h_lt' : μ A - μ K < μ A - r := le_measure_sdiff.trans_lt h_lt
  exact lt_of_tsub_lt_tsub_left h_lt'

theorem innerRegularWRT_isCompact_closure_of_univ [TopologicalSpace α]
    (hμ : ∀ ε, 0 < ε → ∃ K, IsCompact (closure K) ∧ μ (Kᶜ) < ε) :
    μ.InnerRegularWRT (IsCompact ∘ closure) IsClosed := by
  refine innerRegularWRT_of_exists_compl_lt (fun s t hs ht ↦ ?_) hμ
  have : IsCompact (closure s ∩ t) := hs.inter_right ht
  refine this.of_isClosed_subset isClosed_closure ?_
  refine (closure_inter_subset_inter_closure _ _).trans_eq ?_
  rw [IsClosed.closure_eq ht]

theorem exists_isCompact_closure_measure_compl_lt [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] (ε : ℝ≥0∞) (hε : 0 < ε) :
    ∃ K, IsCompact (closure K) ∧ P Kᶜ < ε := by
  /-
  If α is empty, the result is trivial.

  Otherwise, fix a dense sequence `seq` and an antitone basis `t` of entourages. We find a sequence
  of natural numbers `u n`, such that `interUnionBalls seq u t`, which is the intersection over
  `n` of the `t n`-neighborhood of `seq 1, ..., seq (u n)`, covers the space arbitrarily well.
  -/
  let := upgradeIsCompletelyPseudoMetrizable α
  cases isEmpty_or_nonempty α
  case inl =>
    refine ⟨∅, by simp, ?_⟩
    rwa [Set.eq_empty_of_isEmpty ∅ᶜ, measure_empty]
  case inr =>
    let seq := TopologicalSpace.denseSeq α
    have hseq_dense : DenseRange seq := TopologicalSpace.denseRange_denseSeq α
    obtain ⟨t : ℕ → SetRel α α,
        ht : ∀ i, t i ∈ 𝓤 α ∧ IsOpen (t i) ∧ (t i).IsSymm,
        h_basis : (uniformity α).HasAntitoneBasis t⟩ :=
      (@uniformity_hasBasis_open_symmetric α _).exists_antitone_subbasis
    choose htu hto _ using ht
    let f : ℕ → ℕ → Set α := fun n m ↦ UniformSpace.ball (seq m) (t n)
    have h_univ n : (⋃ m, f n m) = univ := hseq_dense.iUnion_uniformity_ball (htu n)
    have h3 n (ε : ℝ≥0∞) (hε : 0 < ε) : ∃ m, P (⋂ m' ≤ m, (f n m')ᶜ) < ε := by
      refine exists_measure_iInter_lt (fun m ↦ ?_) hε ⟨0, measure_ne_top P _⟩ ?_
      · exact (measurable_prodMk_left (hto n).measurableSet).compl.nullMeasurableSet
      · rw [← compl_iUnion, h_univ, compl_univ]
    choose! s' s'bound using h3
    rcases ENNReal.exists_pos_sum_of_countable' (ne_of_gt hε) ℕ with ⟨δ, hδ1, hδ2⟩
    let u : ℕ → ℕ := fun n ↦ s' n (δ n)
    refine ⟨interUnionBalls seq u t, isCompact_closure_interUnionBalls h_basis.toHasBasis seq u, ?_⟩
    rw [interUnionBalls, Set.compl_iInter]
    refine ((measure_iUnion_le _).trans ?_).trans_lt hδ2
    refine ENNReal.tsum_le_tsum (fun n ↦ ?_)
    have h'' n : Prod.swap ⁻¹' t n = t n := by ext; exact (t n).comm
    simp only [h'', compl_iUnion, ge_iff_le]
    exact (s'bound n (δ n) (hδ1 n)).le

theorem innerRegularWRT_isCompact_closure [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT (IsCompact ∘ closure) IsClosed :=
  innerRegularWRT_isCompact_closure_of_univ
    (exists_isCompact_closure_measure_compl_lt P)

theorem innerRegularWRT_isCompact_isClosed [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) IsClosed := by
  rw [innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure]
  exact innerRegularWRT_isCompact_closure P

theorem innerRegularWRT_isCompact [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT IsCompact IsClosed := by
  rw [← innerRegularWRT_isCompact_closure_iff]
  exact innerRegularWRT_isCompact_closure P

theorem innerRegularWRT_isCompact_isClosed_isOpen [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) IsOpen :=
  (innerRegularWRT_isCompact_isClosed P).trans
    (Measure.InnerRegularWRT.of_pseudoMetrizableSpace P)

theorem innerRegularWRT_isCompact_isOpen [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [OpensMeasurableSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT IsCompact IsOpen :=
  (innerRegularWRT_isCompact P).trans
    (Measure.InnerRegularWRT.of_pseudoMetrizableSpace P)

/--
A finite measure `μ` on a completely pseudo-metrizable space `E` with
`SecondCountableTopology E` is inner regular. In other words, a finite measure
on such a space is a tight measure.
-/
instance instInnerRegularOfIsCompletelyPseudoMetrizableSpace [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [BorelSpace α] (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegular := by
  suffices P.InnerRegularCompactLTTop from inferInstance
  refine ⟨Measure.InnerRegularWRT.measurableSet_of_isOpen ?_ ?_⟩
  · exact innerRegularWRT_isCompact_isOpen P
  · exact fun s t hs_compact ht_open ↦ hs_compact.inter_right ht_open.isClosed_compl

/--
A measure `μ` on a `PseudoEMetricSpace E` and `CompleteSpace E` with `SecondCountableTopology E`
is inner regular for finite measure sets with respect to compact sets.
-/
instance instInnerRegularCompactLTTopOfIsCompletelyPseudoMetrizableSpace
    [TopologicalSpace α] [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [BorelSpace α] (μ : Measure α) :
    μ.InnerRegularCompactLTTop := by
  constructor
  intro A ⟨hA1, hA2⟩ r hr
  have := Fact.mk hA2.lt_top
  have hA2' : (μ.restrict A) A ≠ ⊤ := by
    rwa [Measure.restrict_apply_self]
  have hr' : r < μ.restrict A A := by
    rwa [Measure.restrict_apply_self]
  obtain ⟨K, ⟨hK1, hK2, hK3⟩⟩ := MeasurableSet.exists_lt_isCompact_of_ne_top hA1 hA2' hr'
  use K, hK1, hK2
  rwa [Measure.restrict_eq_self μ hK1] at hK3

theorem innerRegular_isCompact_isClosed_measurableSet_of_finite [TopologicalSpace α]
    [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α] [BorelSpace α]
    (P : Measure α) [IsFiniteMeasure P] :
    P.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s) MeasurableSet := by
  suffices P.InnerRegularWRT (fun s ↦ IsCompact s ∧ IsClosed s)
      fun s ↦ MeasurableSet s ∧ P s ≠ ∞ by
    convert! this
    simp only [iff_self_and]
    exact fun _ ↦ measure_ne_top P _
  refine Measure.InnerRegularWRT.measurableSet_of_isOpen ?_ ?_
  · exact innerRegularWRT_isCompact_isClosed_isOpen P
  · rintro s t ⟨hs_compact, hs_closed⟩ ht_open
    rw [sdiff_eq]
    exact ⟨hs_compact.inter_right ht_open.isClosed_compl,
      hs_closed.inter (isClosed_compl_iff.mpr ht_open)⟩

end MeasureTheory
```
