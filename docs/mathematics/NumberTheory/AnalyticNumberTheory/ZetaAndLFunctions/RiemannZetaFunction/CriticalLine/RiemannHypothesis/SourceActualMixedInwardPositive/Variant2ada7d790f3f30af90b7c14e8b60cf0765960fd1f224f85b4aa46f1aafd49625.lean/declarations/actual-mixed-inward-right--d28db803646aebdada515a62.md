# actual_mixed_inward_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a404757-24be-c7c5-f4e0-fee39d8f12d0",
  "kind": "theorem",
  "lexical_name": "actual_mixed_inward_right",
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
  "slug": "actual-mixed-inward-right--d28db803646aebdada515a62",
  "source": {
    "blob": "4a7e695e3e942f48fc6405dd5bd3a68bd6214bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 184,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant2ada7d790f3f30af90b7c14e8b60cf0765960fd1f224f85b4aa46f1aafd49625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28db803646aebdada515a626833524c15880ab3c66064df21971ce861c9a5a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant2ada7d790f3f30af90b7c14e8b60cf0765960fd1f224f85b4aa46f1aafd49625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a404757-24be-c7c5-f4e0-fee39d8f12d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mixed_inward_right {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha0 : 0 ≤ z.re) (ha : z.re ≤ 1 / 2) (hi : 12 ≤ |z.im|) :
    (9 / 10 : ℝ) * (384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9)) *
      ‖-(z⁻¹ ^ 6)‖ < (invariantMixed A z + negativeEndpoint A z).re := by
  let k : ℝ := 384 ^ 2 /
    (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9)
  let W : ℂ := -(z⁻¹ ^ 6)
  let L : ℂ := 1 - 1 / (4 * z ^ 2)
  let F : ℂ := L ^ 2 * endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z)
  have hA1 : 1 ≤ A := by linarith
  have hk : 0 < k := by
    dsimp [k]
    exact div_pos (by norm_num) (mul_pos
      (FormalResearch.RiemannHypothesis.SourcePairing.source_normalization_pos A hA1)
      (pow_pos (by linarith) 9))
  have hz : z ≠ 0 := by intro h; norm_num [h] at hi
  have hw : 0 < ‖W‖ := by
    dsimp [W]
    rw [norm_neg, norm_pow, norm_inv]
    exact pow_pos (inv_pos.mpr (norm_pos_iff.mpr hz)) 6
  have hsector := inverse_six_real_sector z (by rw [abs_of_nonneg ha0]; exact ha) hi
  have hf : ‖F - 1‖ ≤ 1 / 200 := combined_factor_small hA z hi
  have hreal := real_product_near_one W F hf
  have hmixed : invariantMixed A z = (2 * k : ℝ) * (W * F) := by
    unfold invariantMixed
    rw [common_factor A z hz]
    dsimp [k, W, F, L]
    push_cast
    ring
  have hmr : (2 * k * ‖W‖) * (31 / 32 - 1 / 200) ≤ (invariantMixed A z).re := by
    rw [hmixed]
    simp only [Complex.re_ofReal_mul]
    change (31 / 32 : ℝ) * ‖W‖ ≤ W.re at hsector
    nlinarith only [hsector, hreal, hk.le]
  have hln : ‖L‖ ≤ 501 / 500 := lower_factor_norm z hi
  have hpn : ‖endpointMinus ((A : ℂ) * z)‖ ≤ 101 / 100 :=
    endpoint_minus_small _ (inverse_source_radius hA z hi)
  have hen : ‖Complex.exp (-2 * (A : ℂ) * z)‖ ≤ 1 := by
    rw [Complex.norm_exp, ← Real.exp_zero]
    apply Real.exp_le_exp.mpr
    norm_num only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      Complex.neg_re,
      Complex.neg_im, Complex.re_ofNat, Complex.im_ofNat]
    nlinarith only [ha0, hA]
  have hneg : negativeEndpoint A z = -(k : ℂ) * W * L ^ 2 *
      Complex.exp (-2 * (A : ℂ) * z) * endpointMinus ((A : ℂ) * z) ^ 2 := by
    unfold negativeEndpoint
    rw [common_factor A z hz]
    dsimp [k, W, L]
    ring
  have hnn : ‖negativeEndpoint A z‖ ≤ k * ‖W‖ * (501 / 500) ^ 2 * (101 / 100) ^ 2 := by
    rw [hneg]
    simp only [norm_mul, norm_neg, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hk]
    calc
      k * ‖W‖ * ‖L‖ ^ 2 * ‖Complex.exp (-2 * (A : ℂ) * z)‖ *
          ‖endpointMinus ((A : ℂ) * z)‖ ^ 2 ≤
        k * ‖W‖ * (501 / 500) ^ 2 * 1 * (101 / 100) ^ 2 := by gcongr
      _ = _ := by ring
  have hnr : -(k * ‖W‖ * (501 / 500) ^ 2 * (101 / 100) ^ 2) ≤
      (negativeEndpoint A z).re := by
    have h := (abs_le.mp (Complex.abs_re_le_norm (negativeEndpoint A z))).1
    linarith
  rw [Complex.add_re]
  change (9 / 10 : ℝ) * k * ‖W‖ < _
  have hkw : 0 < k * ‖W‖ := mul_pos hk hw
  nlinarith only [hmr, hnr, hkw]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant2ada7d790f3f30af90b7c14e8b60cf0765960fd1f224f85b4aa46f1aafd49625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant2ada7d790f3f30af90b7c14e8b60cf0765960fd1f224f85b4aa46f1aafd49625.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e695e3e942f48fc6405dd5bd3a68bd6214bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
