# actual_bilateral_sharp_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26518808-2d74-43fe-9129-9f906b16a7d5",
  "kind": "theorem",
  "lexical_name": "actual_bilateral_sharp_tail_bound",
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
  "slug": "actual-bilateral-sharp-tail-bound--5d33e5997afe69934f93855e",
  "source": {
    "blob": "e6b80c436df8d48baa55c04397943562b4b5a028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d33e5997afe69934f93855e7ad15348324885080c768265ed7cc59ff4da63d1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26518808-2d74-43fe-9129-9f906b16a7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bilateral_sharp_tail_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 0 < T)
    (z : ℂ) (hz : -(1/2 : ℝ) ≤ z.re ∧ z.re ≤ 1/2) (hTz : T ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤
      (Real.exp (A/2) + Real.exp (-(A/2))) * sourceTransformPolynomialBudget (A*T) *
        (1 + 1/(4*T^2)) / (A^4 * Real.sqrt A * ‖z‖^3) := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := hT.trans_le hTz
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : A*T ≤ ‖(A : ℂ)*z‖ := by
    rw [norm_mul, hnormA]
    exact mul_le_mul_of_nonneg_left hTz hApos.le
  have hp := transform_polynomial_sharp_budget ((A : ℂ)*z) (A*T) (by positivity) hAz
  have hn := transform_polynomial_sharp_budget (-((A : ℂ)*z)) (A*T)
    (by positivity) (by simpa only [norm_neg] using hAz)
  simp only [norm_neg, norm_mul, hnormA] at hp hn
  have hbr : 0 ≤ sourcePolynomialBracket (A*T) := by
    unfold sourcePolynomialBracket
    positivity
  have he := exponential_sum_strip A hApos z hz
  have hnum :
      ‖Complex.exp ((A : ℂ)*z) * transformPolynomial ((A : ℂ)*z) -
        Complex.exp (-(A : ℂ)*z) * transformPolynomial (-(A : ℂ)*z)‖ ≤
      (Real.exp (A/2) + Real.exp (-(A/2))) * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) := by
    calc
      _ ≤ ‖Complex.exp ((A : ℂ)*z) * transformPolynomial ((A : ℂ)*z)‖ +
          ‖Complex.exp (-(A : ℂ)*z) * transformPolynomial (-(A : ℂ)*z)‖ := norm_sub_le _ _
      _ ≤ ‖Complex.exp ((A : ℂ)*z)‖ * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) +
          ‖Complex.exp (-(A : ℂ)*z)‖ * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) := by
        simp only [norm_mul]
        gcongr
        simpa only [neg_mul] using hn
      _ = (‖Complex.exp ((A : ℂ)*z)‖ + ‖Complex.exp (-(A : ℂ)*z)‖) *
          ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_right he (mul_nonneg (by positivity) hbr)
  have hf := source_factor_sharp_budget z T hT hTz
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [ZeroTransform.source_scale A hApos, norm_mul, norm_div, norm_mul, norm_mul, norm_pow]
  norm_num only [Complex.norm_ofNat]
  have hs : ‖((A^8 * Real.sqrt A : ℝ) : ℂ)‖ = A^8 * Real.sqrt A := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [hs]
  calc
    _ ≤ 384 * (‖z‖^2 * (1 + 1/(4*T^2))) / ((A^8 * Real.sqrt A)*‖z‖^9) *
        ((Real.exp (A/2) + Real.exp (-(A/2))) * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T))) := by
      gcongr
    _ = _ := by
      unfold sourceTransformPolynomialBudget sourcePolynomialBracket
      field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b80c436df8d48baa55c04397943562b4b5a028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
