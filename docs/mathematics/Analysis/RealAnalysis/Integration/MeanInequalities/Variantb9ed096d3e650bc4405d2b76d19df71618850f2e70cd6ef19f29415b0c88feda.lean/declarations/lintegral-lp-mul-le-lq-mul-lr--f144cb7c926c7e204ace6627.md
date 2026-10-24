# lintegral_Lp_mul_le_Lq_mul_Lr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3795066-e08d-5ee1-19cc-c9d353d106d7",
  "kind": "theorem",
  "lexical_name": "lintegral_Lp_mul_le_Lq_mul_Lr",
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
  "slug": "lintegral-lp-mul-le-lq-mul-lr--f144cb7c926c7e204ace6627",
  "source": {
    "blob": "9cac203378984c4f5518115a7476a86395085199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f144cb7c926c7e204ace6627c10bf450c1f264a78758cc048713935ce0b3e603",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3795066-e08d-5ee1-19cc-c9d353d106d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_Lp_mul_le_Lq_mul_Lr {α} [MeasurableSpace α] {p q r : ℝ} (hp0_lt : 0 < p)
    (hpq : p < q) (hpqr : 1 / p = 1 / q + 1 / r) (μ : Measure α) {f g : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) :
    (∫⁻ a, (f * g) a ^ p ∂μ) ^ (1 / p) ≤
      (∫⁻ a, f a ^ q ∂μ) ^ (1 / q) * (∫⁻ a, g a ^ r ∂μ) ^ (1 / r) := by
  have hp0_ne : p ≠ 0 := (ne_of_lt hp0_lt).symm
  have hp0 : 0 ≤ p := le_of_lt hp0_lt
  have hq0_lt : 0 < q := lt_of_le_of_lt hp0 hpq
  have hq0_ne : q ≠ 0 := (ne_of_lt hq0_lt).symm
  have h_one_div_r : 1 / r = 1 / p - 1 / q := by rw [hpqr]; simp
  have _ : r ≠ 0 := by
    have hr_inv_pos : 0 < 1 / r := by rwa [h_one_div_r, sub_pos, one_div_lt_one_div hq0_lt hp0_lt]
    rw [one_div, _root_.inv_pos] at hr_inv_pos
    exact (ne_of_lt hr_inv_pos).symm
  let p2 := q / p
  let q2 := p2.conjugateExponent
  have hp2q2 : p2.IsConjugateExponent q2 :=
    Real.isConjugateExponent_conjugateExponent (by simp [_root_.lt_div_iff, hpq, hp0_lt])
  calc
    (∫⁻ a : α, (f * g) a ^ p ∂μ) ^ (1 / p) = (∫⁻ a : α, f a ^ p * g a ^ p ∂μ) ^ (1 / p) := by
      simp_rw [Pi.mul_apply, ENNReal.mul_rpow_of_nonneg _ _ hp0]
    _ ≤ ((∫⁻ a, f a ^ (p * p2) ∂μ) ^ (1 / p2) *
        (∫⁻ a, g a ^ (p * q2) ∂μ) ^ (1 / q2)) ^ (1 / p) := by
      refine' ENNReal.rpow_le_rpow _ (by simp [hp0])
      simp_rw [ENNReal.rpow_mul]
      exact ENNReal.lintegral_mul_le_Lp_mul_Lq μ hp2q2 (hf.pow_const _) (hg.pow_const _)
    _ = (∫⁻ a : α, f a ^ q ∂μ) ^ (1 / q) * (∫⁻ a : α, g a ^ r ∂μ) ^ (1 / r) := by
      rw [@ENNReal.mul_rpow_of_nonneg _ _ (1 / p) (by simp [hp0]), ← ENNReal.rpow_mul, ←
        ENNReal.rpow_mul]
      have hpp2 : p * p2 = q := by
        symm
        rw [mul_comm, ← div_eq_iff hp0_ne]
      have hpq2 : p * q2 = r := by
        rw [← inv_inv r, ← one_div, ← one_div, h_one_div_r]
        field_simp [Real.conjugateExponent, hp0_ne, hq0_ne]
      simp_rw [div_mul_div_comm, mul_one, mul_comm p2, mul_comm q2, hpp2, hpq2]
#align ennreal.lintegral_Lp_mul_le_Lq_mul_Lr ENNReal.lintegral_Lp_mul_le_Lq_mul_Lr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cac203378984c4f5518115a7476a86395085199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
