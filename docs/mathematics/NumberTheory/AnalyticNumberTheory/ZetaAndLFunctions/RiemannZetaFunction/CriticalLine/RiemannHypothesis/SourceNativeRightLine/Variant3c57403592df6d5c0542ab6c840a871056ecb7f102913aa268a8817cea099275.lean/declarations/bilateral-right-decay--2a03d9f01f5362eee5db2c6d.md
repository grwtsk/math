# bilateral_right_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e2f5ea6-f551-76a1-6019-bfd22fe7a431",
  "kind": "theorem",
  "lexical_name": "bilateral_right_decay",
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
  "slug": "bilateral-right-decay--2a03d9f01f5362eee5db2c6d",
  "source": {
    "blob": "76a3dc031e89a09c754080652860ca383c4dc5a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a03d9f01f5362eee5db2c6d50284c4af9936a1ec28d18a1af76cc95ad1025a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e2f5ea6-f551-76a1-6019-bfd22fe7a431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bilateral_right_decay (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : 0 ≤ z.re) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤
      408576 * Real.exp (A * z.re) / (A ^ 4 * Real.sqrt A * ‖z‖ ^ 3) := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := by linarith
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : 1 ≤ ‖(A : ℂ) * z‖ := by
    rw [norm_mul, hnormA]
    nlinarith
  have hp := polynomial_norm_le ((A : ℂ) * z) hAz
  have hn := polynomial_norm_le (-((A : ℂ) * z)) (by simpa using hAz)
  simp only [norm_neg, norm_mul, hnormA, mul_pow] at hp hn
  have hepos : ‖Complex.exp ((A : ℂ) * z)‖ = Real.exp (A * z.re) := by
    rw [Complex.norm_exp]
    simp
  have heneg : ‖Complex.exp (-(A : ℂ) * z)‖ ≤ Real.exp (A * z.re) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im,
      Complex.ofReal_re, Complex.ofReal_im, neg_zero, zero_mul, sub_zero]
    nlinarith
  have hfactor : ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ := norm_sub_le _ _
      _ ≤ _ := by norm_num [norm_pow]; nlinarith
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (A ^ (17 / 2 : ℝ) * ‖z‖ ^ 9)) *
        (Real.exp (A * z.re) * (266 * (A ^ 4 * ‖z‖ ^ 4)) +
          Real.exp (A * z.re) * (266 * (A ^ 4 * ‖z‖ ^ 4))) := by
      gcongr
      calc
        _ ≤ ‖Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z)‖ +
            ‖Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z)‖ :=
          norm_sub_le _ _
        _ ≤ _ := by
          simp only [norm_mul]
          gcongr
          · exact hepos.le
          · simpa only [neg_mul] using hn
    _ = _ := by
      rw [source_scale A hApos]
      field_simp
      ring

/-- The literal normalization is bounded below by its positive constant term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a3dc031e89a09c754080652860ca383c4dc5a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
