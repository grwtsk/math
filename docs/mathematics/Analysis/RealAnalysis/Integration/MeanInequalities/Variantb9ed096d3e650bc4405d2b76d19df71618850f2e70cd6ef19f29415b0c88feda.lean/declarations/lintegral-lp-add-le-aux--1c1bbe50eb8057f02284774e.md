# lintegral_Lp_add_le_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47538190-b3bf-9a37-9c66-e2e5ae5a74f1",
  "kind": "theorem",
  "lexical_name": "lintegral_Lp_add_le_aux",
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
  "slug": "lintegral-lp-add-le-aux--1c1bbe50eb8057f02284774e",
  "source": {
    "blob": "9cac203378984c4f5518115a7476a86395085199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1bbe50eb8057f02284774ec4153b4f8b71b7806a2c1b016fa601d83f76c035",
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

Occurrence: `result:47538190-b3bf-9a37-9c66-e2e5ae5a74f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lintegral_Lp_add_le_aux {p q : ℝ} (hpq : p.IsConjugateExponent q) {f g : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hf_top : (∫⁻ a, f a ^ p ∂μ) ≠ ⊤) (hg : AEMeasurable g μ)
    (hg_top : (∫⁻ a, g a ^ p ∂μ) ≠ ⊤) (h_add_zero : (∫⁻ a, (f + g) a ^ p ∂μ) ≠ 0)
    (h_add_top : (∫⁻ a, (f + g) a ^ p ∂μ) ≠ ⊤) :
    (∫⁻ a, (f + g) a ^ p ∂μ) ^ (1 / p) ≤
      (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) + (∫⁻ a, g a ^ p ∂μ) ^ (1 / p) := by
  have hp_not_nonpos : ¬p ≤ 0 := by simp [hpq.pos]
  have htop_rpow : (∫⁻ a, (f + g) a ^ p ∂μ) ^ (1 / p) ≠ ⊤ := by
    by_contra h
    exact h_add_top (@ENNReal.rpow_eq_top_of_nonneg _ (1 / p) (by simp [hpq.nonneg]) h)
  have h0_rpow : (∫⁻ a, (f + g) a ^ p ∂μ) ^ (1 / p) ≠ 0 := by
    simp [h_add_zero, h_add_top, hpq.nonneg, hp_not_nonpos, -Pi.add_apply]
  suffices h :
    1 ≤
      (∫⁻ a : α, (f + g) a ^ p ∂μ) ^ (-(1 / p)) *
        ((∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p) + (∫⁻ a : α, g a ^ p ∂μ) ^ (1 / p))
  · rwa [← mul_le_mul_left h0_rpow htop_rpow, ← mul_assoc, ← rpow_add _ _ h_add_zero h_add_top, ←
      sub_eq_add_neg, _root_.sub_self, rpow_zero, one_mul, mul_one] at h
  have h :
    (∫⁻ a : α, (f + g) a ^ p ∂μ) ≤
      ((∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p) + (∫⁻ a : α, g a ^ p ∂μ) ^ (1 / p)) *
        (∫⁻ a : α, (f + g) a ^ p ∂μ) ^ (1 / q) :=
    lintegral_rpow_add_le_add_snorm_mul_lintegral_rpow_add hpq hf hf_top hg hg_top
  have h_one_div_q : 1 / q = 1 - 1 / p := by
    nth_rw 2 [← hpq.inv_add_inv_conj]
    ring
  simp_rw [h_one_div_q, sub_eq_add_neg 1 (1 / p), ENNReal.rpow_add _ _ h_add_zero h_add_top,
    rpow_one] at h
  conv_rhs at h => enter [2]; rw [mul_comm]
  conv_lhs at h => rw [← one_mul (∫⁻ a : α, (f + g) a ^ p ∂μ)]
  rwa [← mul_assoc, ENNReal.mul_le_mul_right h_add_zero h_add_top, mul_comm] at h

/-- Minkowski's inequality for functions `α → ℝ≥0∞`: the `ℒp` seminorm of the sum of two
functions is bounded by the sum of their `ℒp` seminorms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cac203378984c4f5518115a7476a86395085199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
