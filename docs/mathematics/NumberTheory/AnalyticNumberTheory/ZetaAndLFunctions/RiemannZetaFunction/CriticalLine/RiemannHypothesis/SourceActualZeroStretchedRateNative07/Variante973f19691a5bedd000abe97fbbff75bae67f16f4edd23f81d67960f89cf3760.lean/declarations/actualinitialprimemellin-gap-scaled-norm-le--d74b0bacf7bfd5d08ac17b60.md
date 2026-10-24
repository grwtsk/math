# actualInitialPrimeMellin_gap_scaled_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7368f94b-7b43-37a5-a578-7c47ab30fb5d",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_gap_scaled_norm_le",
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
  "slug": "actualinitialprimemellin-gap-scaled-norm-le--d74b0bacf7bfd5d08ac17b60",
  "source": {
    "blob": "27a5e0415f56021e820c6a6b7a7e805a784ad3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74b0bacf7bfd5d08ac17b602a3442d1f32839881fc23cec9f10f9f58ea02e6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7368f94b-7b43-37a5-a578-7c47ab30fb5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_gap_scaled_norm_le (A d : ℝ) (s : ℂ)
    (hA : 1 ≤ A) (hd : 0 ≤ d) (hs : d ≤ s.re ∧ s.re ≤ 1 - d)
    (ht : 1 ≤ |s.im|) :
    ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualInitialPrimeMellin A s‖ ≤
      actualZeroTailWeightConstant * Real.exp (-2 * d * A) / |s.im| ^ 6 := by
  have hAp : 0 < A := by linarith
  have hstrip : 0 ≤ s.re ∧ s.re ≤ 1 := ⟨by linarith [hs.1],by linarith [hs.2]⟩
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = A * (s.re - 1 / 2) := by simp [z, Complex.mul_re]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_pos hAp] using Complex.abs_im_le_norm z
  have hz : 1 ≤ ‖z‖ := by nlinarith
  have hsr : |s.re - 1 / 2| ≤ 1 / 2 - d := abs_le.mpr ⟨by linarith,by linarith⟩
  have hr : |z.re| ≤ A * (1 / 2 - d) := by
    rw [hzr, abs_mul, abs_of_pos hAp]
    exact mul_le_mul_of_nonneg_left hsr hAp.le
  have hp : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  have hb : ‖bumpLaplace z‖ ≤
      204288 * Real.exp (A * (1 / 2 - d)) / (A ^ 5 * |s.im| ^ 5) := by
    refine (bump_abs_re_norm_le z hz).trans ?_
    apply div_le_div₀ (by positivity)
      (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hr) (by norm_num))
      (by positivity) hp
  have hZ := source_normalization_pos A hA
  have hZl := actualBumpNormalization_lower A hA
  have hweight : ‖actualInitialPrimeMellin A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace z‖ ^ 2 := by
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    dsimp [z]
    ring
  have hu : ‖actualInitialPrimeMellin A s‖ ≤
      (A / (4096 / 109395 : ℝ)) * (4 * |s.im| ^ 4) *
        (204288 * Real.exp (A * (1 / 2 - d)) / (A ^ 5 * |s.im| ^ 5)) ^ 2 := by
    rw [hweight]
    have hh := pole_norm_on_strip_le s hstrip ht
    gcongr
  have he : Real.exp (A * (1 / 2 - d)) ^ 2 =
      Real.exp (2 * (A * (1 / 2 - d))) := by
    rw [← Real.exp_nat_mul]
    congr 1
  have hscl : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real, Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul, hscl]
  apply (mul_le_mul_of_nonneg_left hu (by positivity)).trans_eq
  rw [div_pow, mul_pow, he]
  have heq : -2 * d * A = -A + 2 * (A * (1 / 2 - d)) := by ring
  rw [heq, Real.exp_add]
  dsimp [actualZeroTailWeightConstant]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative07/Variante973f19691a5bedd000abe97fbbff75bae67f16f4edd23f81d67960f89cf3760.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a5e0415f56021e820c6a6b7a7e805a784ad3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
