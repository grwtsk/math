# inverse_six_real_sector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda3c3b8-8f80-baaa-4efc-e2797209df98",
  "kind": "theorem",
  "lexical_name": "inverse_six_real_sector",
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
  "slug": "inverse-six-real-sector--c71d96e78e994d52a51c7f70",
  "source": {
    "blob": "8fad477612eb47ceed1de249cd4891567ac54939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant0099ca4a658e393b0390a05c50fbb6897ff19086edd7fc401c118d02092f4967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c71d96e78e994d52a51c7f7009b10b2a0933179a7f6740093e6614468a09ef51",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant0099ca4a658e393b0390a05c50fbb6897ff19086edd7fc401c118d02092f4967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda3c3b8-8f80-baaa-4efc-e2797209df98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_six_real_sector (z : ℂ) (hr : |z.re| ≤ 1 / 2)
    (hi : 12 ≤ |z.im|) : (31 / 32 : ℝ) * ‖-(z⁻¹ ^ 6)‖ ≤ (-(z⁻¹ ^ 6)).re := by
  have hr2 : z.re ^ 2 ≤ 1 / 4 := by nlinarith [sq_abs z.re]
  have hi2 : 144 ≤ z.im ^ 2 := by nlinarith [sq_abs z.im]
  have hit : 0 < z.im ^ 2 := by linarith
  have hiz : z.im ≠ 0 := by intro h; simp [h] at hi
  have hn : 0 < Complex.normSq z := by
    rw [Complex.normSq_apply]
    nlinarith [sq_nonneg z.re]
  let x : ℝ := z.re ^ 2 / z.im ^ 2
  have hx0 : 0 ≤ x := by positivity
  have hx : x ≤ 1 / 576 := by
    dsimp [x]
    apply (div_le_iff₀ hit).mpr
    nlinarith
  have hx3 : x ^ 3 ≤ (1 / 576 : ℝ) ^ 3 := pow_le_pow_left₀ hx0 hx 3
  have hp : (31 / 32 : ℝ) * (1 + x) ^ 3 ≤
      1 - 15 * x + 15 * x ^ 2 - x ^ 3 := by
    nlinarith only [hx, hx3, sq_nonneg x]
  have hnn : Complex.normSq z = z.im ^ 2 * (1 + x) := by
    dsimp [x]
    rw [Complex.normSq_apply]
    field_simp
    ring
  have hre : (-(z⁻¹ ^ 6)).re =
      (z.im ^ 6 - 15 * z.re ^ 2 * z.im ^ 4 + 15 * z.re ^ 4 * z.im ^ 2 - z.re ^ 6) /
        (Complex.normSq z) ^ 6 := by
    simp only [Complex.neg_re, pow_succ, pow_zero, Complex.mul_re, Complex.mul_im,
      Complex.one_re, Complex.one_im, Complex.inv_re, Complex.inv_im]
    field_simp
    ring
  have hnum : (31 / 32 : ℝ) * (Complex.normSq z) ^ 3 ≤
      z.im ^ 6 - 15 * z.re ^ 2 * z.im ^ 4 + 15 * z.re ^ 4 * z.im ^ 2 - z.re ^ 6 := by
    have h := mul_le_mul_of_nonneg_left hp (pow_nonneg z.im 6)
    rw [hnn]
    dsimp [x] at h
    field_simp at h
    nlinarith only [h]
  rw [inverse_six_norm, hre]
  calc
    (31 / 32 : ℝ) * (1 / (Complex.normSq z) ^ 3) =
        ((31 / 32 : ℝ) * (Complex.normSq z) ^ 3) / (Complex.normSq z) ^ 6 := by
      field_simp
      ring
    _ ≤ _ := div_le_div_of_nonneg_right hnum (pow_nonneg hn.le 6)

end RH16ActualMixedInwardPositive
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant0099ca4a658e393b0390a05c50fbb6897ff19086edd7fc401c118d02092f4967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant0099ca4a658e393b0390a05c50fbb6897ff19086edd7fc401c118d02092f4967.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fad477612eb47ceed1de249cd4891567ac54939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
