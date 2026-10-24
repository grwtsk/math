# jD_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e889b502-f4a0-96e1-b8b8-26cfe12759b6",
  "kind": "theorem",
  "lexical_name": "jD_close",
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
  "slug": "jd-close--941af9e93fbf38e1e307ab8f",
  "source": {
    "blob": "a019f028b82eba44fbc64defaec246667013fd7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1689,
    "line": 1616,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941af9e93fbf38e1e307ab8fd092640790bae51e0806610370e28504c681c433",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e889b502-f4a0-96e1-b8b8-26cfe12759b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1616–1689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jD_close (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1) (hw : 1 ≤ w)
    (hwL : 8 * w ≤ L) :
    |2 / L ^ 3 * (∫ y in (0:ℝ)..L, Params.autocorr (fun u => phiD ϱ lam L w u ^ 2) y * y)
      - jStar lam| ≤ 16 * w / L := by
  have hw0 : 0 < w := by linarith
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  set A : ℝ → ℝ := Params.autocorr (fun u => phiD ϱ lam L w u ^ 2) with hAdef
  have hAcont : Continuous A := by
    rw [hAdef]
    refine Taper.autocorr_continuous_of_support _ (M := L/2)
      ((phiD_contDiff hϱ h0 h1 hw0 hwL').pow 2).continuous ?_
    intro u hu
    show phiD ϱ lam L w u ^ 2 = 0
    rw [phiD_eq_zero hϱ hw0 hu, zero_pow two_ne_zero]
  have hCcont : Continuous (Cfun lam L) := by
    unfold Cfun
    fun_prop
  have hIA : IntervalIntegrable (fun y => A y * y) MeasureTheory.volume 0 L :=
    (hAcont.mul continuous_id).intervalIntegrable 0 L
  have hIC : IntervalIntegrable (fun y => Cfun lam L y * y) MeasureTheory.volume 0 L :=
    (hCcont.mul continuous_id).intervalIntegrable 0 L
  have hsplit : ∫ y in (0:ℝ)..L, A y * y
      = (∫ y in (0:ℝ)..L, (A y - Cfun lam L y) * y) + ∫ y in (0:ℝ)..L, Cfun lam L y * y := by
    have e1 : ∫ y in (0:ℝ)..L, (A y - Cfun lam L y) * y
        = ∫ y in (0:ℝ)..L, (A y * y - Cfun lam L y * y) :=
      intervalIntegral.integral_congr (fun y _ => by ring)
    rw [e1, intervalIntegral.integral_sub hIA hIC]
    ring
  have hcmp : |∫ y in (0:ℝ)..L, (A y - Cfun lam L y) * y| ≤ 4 * w * L * L := by
    have hb := intervalIntegral.norm_integral_le_of_norm_le_const (C := 4 * w * L)
      (f := fun y => (A y - Cfun lam L y) * y) (a := 0) (b := L) ?_
    · rw [Real.norm_eq_abs] at hb
      calc |∫ y in (0:ℝ)..L, (A y - Cfun lam L y) * y| ≤ 4 * w * L * |L - 0| := hb
        _ = 4 * w * L * L := by rw [sub_zero, abs_of_pos hL]
    · intro y hy
      rw [Set.uIoc_of_le hL.le] at hy
      rw [Real.norm_eq_abs]
      show |(A y - Cfun lam L y) * y| ≤ 4 * w * L
      rw [abs_mul]
      calc |A y - Cfun lam L y| * |y| ≤ (4 * w) * L := by
            apply mul_le_mul (autocorr_phiDsq_close hϱ h0 h1 hw0 hwL' hy.1.le hy.2) ?_
              (abs_nonneg _) (by positivity)
            rw [abs_of_pos hy.1]
            exact hy.2
        _ = 4 * w * L := rfl
  have hmain : 2 / L ^ 3 * ∫ y in (0:ℝ)..L, Cfun lam L y * y = jStar lam := by
    rw [integral_Cfun_moment h0 h1 hL, jStar_closed h0 h1]
    field_simp
    try ring
  have e : 2 / L ^ 3 * (∫ y in (0:ℝ)..L, A y * y) - jStar lam
      = 2 / L ^ 3 * (∫ y in (0:ℝ)..L, (A y - Cfun lam L y) * y) := by
    rw [hsplit, mul_add, hmain]
    try ring
  rw [← hAdef] at *
  rw [e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 2 / L ^ 3)]
  calc 2 / L ^ 3 * |∫ y in (0:ℝ)..L, (A y - Cfun lam L y) * y|
      ≤ 2 / L ^ 3 * (4 * w * L * L) := mul_le_mul_of_nonneg_left hcmp (by positivity)
    _ = 8 * w / L := by
        field_simp
        ring
    _ ≤ 16 * w / L := by
        apply div_le_div_of_nonneg_right ?_ hL.le
        linarith

section AutocorrC1
/-! #### C¹ facts for the autocorrelation (the g_D-side hypotheses of ThmD/PP.sumA2g_close):
for h C¹ with compact support and |h| ≤ 1, the autocorrelation is differentiable with
deriv = h ⋆ h' and |deriv| ≤ ∫|h'|.  Via Mathlib's convolution calculus. -/

open scoped Convolution

variable {h : ℝ → ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean#L1616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a019f028b82eba44fbc64defaec246667013fd7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
