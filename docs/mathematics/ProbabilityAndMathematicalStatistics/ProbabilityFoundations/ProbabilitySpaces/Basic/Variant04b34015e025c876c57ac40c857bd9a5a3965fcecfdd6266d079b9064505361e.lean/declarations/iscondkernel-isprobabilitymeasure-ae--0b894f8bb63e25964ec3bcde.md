# IsCondKernel.isProbabilityMeasure_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb67c4c5-91c0-e6cb-ab5b-52b96abe828a",
  "kind": "lemma",
  "lexical_name": "IsCondKernel.isProbabilityMeasure_ae",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "iscondkernel-isprobabilitymeasure-ae--0b894f8bb63e25964ec3bcde",
  "source": {
    "blob": "632c0f4885be44eb76966d7c2fffd8ab7d2be378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 141,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b894f8bb63e25964ec3bcded2238ea900d92393214929ec1ff6de5a96cc7071",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb67c4c5-91c0-e6cb-ab5b-52b96abe828a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCondKernel.isProbabilityMeasure_ae [IsFiniteKernel κ.fst] [κ.IsCondKernel κCond] (a : α) :
    ∀ᵐ b ∂(κ.fst a), IsProbabilityMeasure (κCond (a, b)) := by
  have h := disintegrate κ κCond
  by_cases h_sfin : IsSFiniteKernel κCond
  swap; · rw [Kernel.compProd_of_not_isSFiniteKernel_right _ _ h_sfin] at h; simp [h.symm]
  suffices ∀ᵐ b ∂(κ.fst a), κCond (a, b) Set.univ = 1 by
    convert this with b
    exact ⟨fun _ ↦ measure_univ, fun h ↦ ⟨h⟩⟩
  suffices (∀ᵐ b ∂(κ.fst a), κCond (a, b) Set.univ ≤ 1)
      ∧ (∀ᵐ b ∂(κ.fst a), 1 ≤ κCond (a, b) Set.univ) by
    filter_upwards [this.1, this.2] with b h1 h2 using le_antisymm h1 h2
  have h_eq s (hs : MeasurableSet s) :
      ∫⁻ b, s.indicator (fun b ↦ κCond (a, b) Set.univ) b ∂κ.fst a = κ.fst a s := by
    conv_rhs => rw [← h]
    rw [fst_compProd_apply _ _ _ hs]
  have h_meas : Measurable fun b ↦ κCond (a, b) Set.univ :=
    (κCond.measurable_coe MeasurableSet.univ).comp measurable_prodMk_left
  constructor
  · rw [ae_le_const_iff_forall_gt_measure_zero]
    intro r hr
    let s := {b | r ≤ κCond (a, b) Set.univ}
    have hs : MeasurableSet s := h_meas measurableSet_Ici
    have h_2_le : s.indicator (fun _ ↦ r) ≤ s.indicator (fun b ↦ (κCond (a, b)) Set.univ) := by
      intro b
      by_cases hbs : b ∈ s
      · simpa [hbs]
      · simp [hbs]
    have : ∫⁻ b, s.indicator (fun _ ↦ r) b ∂(κ.fst a) ≤ κ.fst a s :=
      (lintegral_mono h_2_le).trans_eq (h_eq s hs)
    rw [lintegral_indicator_const hs] at this
    contrapose! this with h_ne_zero
    conv_lhs => rw [← one_mul (κ.fst a s)]
    exact ENNReal.mul_lt_mul_right' h_ne_zero (measure_ne_top _ _) hr
  · rw [ae_const_le_iff_forall_lt_measure_zero]
    intro r hr
    let s := {b | κCond (a, b) Set.univ ≤ r}
    have hs : MeasurableSet s := h_meas measurableSet_Iic
    have h_2_le : s.indicator (fun b ↦ (κCond (a, b)) Set.univ) ≤ s.indicator (fun _ ↦ r) := by
      intro b
      by_cases hbs : b ∈ s
      · simpa [hbs]
      · simp [hbs]
    have : κ.fst a s ≤ ∫⁻ b, s.indicator (fun _ ↦ r) b ∂(κ.fst a) :=
      (h_eq s hs).symm.trans_le (lintegral_mono h_2_le)
    rw [lintegral_indicator_const hs] at this
    contrapose! this with h_ne_zero
    conv_rhs => rw [← one_mul (κ.fst a s)]
    exact ENNReal.mul_lt_mul_right' h_ne_zero (measure_ne_top _ _) hr


/-! #### Existence of a disintegrating kernel in a countable space -/

section Countable
variable [Countable α] (κCond : α → Kernel β Ω)

/-- Auxiliary definition for `ProbabilityTheory.Kernel.condKernel`.

A conditional kernel for `κ : Kernel α (β × Ω)` where `α` is countable and `Ω` is a measurable
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `632c0f4885be44eb76966d7c2fffd8ab7d2be378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
