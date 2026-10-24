# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiFloorSignBlocks.Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b83d0d6aef024d0c4b94bd7822f7218e9499fad` · SHA-256 `9cb73909e3f755ee17e61c6f483ed151d6d10180c9c5891bb355cf99b7b2614c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPsiFloorDiscrepancy.Variantecbd5bbfb13a2f608f129bbab09545f2fbb11b7739956d8fece204bde1617e0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecbd5bbfb13a2f608f129bbab09545f2fbb11b7739956d8fece204bde1617e0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPsiFloorDiscrepancy.Variantecbd5bbfb13a2f608f129bbab09545f2fbb11b7739956d8fece204bde1617e0f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ecbd5bbfb13a2f608f129bbab09545f2fbb11b7739956d8fece204bde1617e0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T194931Z-1791316171208866000/SourceActualPsiFloorSignBlocks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
Actual closed Psi-minus-natural-floor has both signs on genuine real blocks.
This blocks a global one-sign discarding step only; it provides no upper bound
for the actual signed pairing and no estimate or RH witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPsiFloorDiscrepancy.Variantecbd5bbfb13a2f608f129bbab09545f2fbb11b7739956d8fece204bde1617e0f

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPsiFloorSignBlocks

/-- The unchanged closed Chebyshev discrepancy relative to the natural floor. -/
def actualPsiFloorDiscrepancy (y : ℝ) : ℝ := Chebyshev.psi y - (⌊y⌋₊ : ℝ)

private theorem log_sixty_lt_five : Real.log (60 : ℝ) < 5 := by
  have he : (5 / 2 : ℝ) ≤ Real.exp 1 := by
    nlinarith [Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1)]
  have hp : (5 / 2 : ℝ) ^ 5 ≤ (Real.exp 1) ^ 5 := by gcongr
  have h60 : (60 : ℝ) < Real.exp 5 := by
    have heq : (Real.exp 1) ^ 5 = Real.exp (5 : ℝ) := by
      simpa only [Nat.cast_ofNat] using Real.exp_one_pow 5
    rw [← heq]
    nlinarith [hp]
  exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 60)).mpr h60

private theorem log_closed_nineteen_gt :
    (19 + 1 / 10 : ℝ) < Real.log (232792560 : ℝ) := by
  have he : Real.exp 1 ≤ (68 / 25 : ℝ) :=
    Real.exp_one_lt_d9.le.trans (by norm_num)
  have hp : (Real.exp 1) ^ 19 ≤ (68 / 25 : ℝ) ^ 19 := by gcongr
  have ht : Real.exp (1 / 10 : ℝ) ≤ (10 / 9 : ℝ) := by
    convert Real.exp_bound_div_one_sub_of_interval
      (by norm_num : (0 : ℝ) ≤ 1 / 10) (by norm_num : (1 / 10 : ℝ) < 1) using 1
    norm_num
  have hprod := mul_le_mul hp ht (Real.exp_pos _).le (by positivity)
  have hb : Real.exp (19 + 1 / 10 : ℝ) < (232792560 : ℝ) := by
    have heq : (Real.exp 1) ^ 19 = Real.exp (19 : ℝ) := by
      simpa only [Nat.cast_ofNat] using Real.exp_one_pow 19
    rw [Real.exp_add, ← heq]
    exact hprod.trans_lt (by norm_num)
  exact (Real.lt_log_iff_exp_lt (by norm_num : (0 : ℝ) < 232792560)).mpr hb

/-- The entire real block preserves every actual closed Mangoldt atom through six. -/
theorem actual_psi_floor_on_six_block (y : ℝ) (hy : (6 : ℝ) ≤ y) (hy7 : y < 7) :
    actualPsiFloorDiscrepancy y = Real.log (60 : ℝ) - 6 := by
  have hf : ⌊y⌋₊ = 6 := Nat.floor_eq_iff (by linarith : 0 ≤ y) |>.mpr
    (by constructor <;> norm_num <;> linarith)
  have hpsi : Chebyshev.psi y = Chebyshev.psi (6 : ℝ) := by
    unfold Chebyshev.psi
    rw [hf]
    norm_num
  have hlcm : Nat.lcmUpto 6 = 60 := by decide
  have hv : Chebyshev.psi (6 : ℝ) = Real.log (60 : ℝ) := by
    simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 6
  unfold actualPsiFloorDiscrepancy
  rw [hpsi, hv, hf]
  norm_num

/-- The true prime-nineteen jump and all preceding prime powers remain closed. -/
theorem actual_psi_floor_on_nineteen_block (y : ℝ)
    (hy : (19 : ℝ) ≤ y) (hy20 : y < 20) :
    actualPsiFloorDiscrepancy y = Real.log (232792560 : ℝ) - 19 := by
  have hf : ⌊y⌋₊ = 19 := Nat.floor_eq_iff (by linarith : 0 ≤ y) |>.mpr
    (by constructor <;> norm_num <;> linarith)
  have hpsi : Chebyshev.psi y = Chebyshev.psi (19 : ℝ) := by
    unfold Chebyshev.psi
    rw [hf]
    norm_num
  have hlcm : Nat.lcmUpto 19 = 232792560 := by decide
  have hv : Chebyshev.psi (19 : ℝ) = Real.log (232792560 : ℝ) := by
    simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 19
  unfold actualPsiFloorDiscrepancy
  rw [hpsi, hv, hf]
  norm_num

/-- A genuine uniformly negative real block of the unchanged actual discrepancy. -/
theorem actual_psi_floor_negative_block (y : ℝ) (hy : (6 : ℝ) ≤ y) (hy7 : y < 7) :
    actualPsiFloorDiscrepancy y < -1 := by
  rw [actual_psi_floor_on_six_block y hy hy7]
  linarith [log_sixty_lt_five]

/-- A genuine uniformly positive real block, with the closed prime nineteen retained. -/
theorem actual_psi_floor_positive_block (y : ℝ) (hy : (19 : ℝ) ≤ y) (hy20 : y < 20) :
    1 / 10 < actualPsiFloorDiscrepancy y := by
  rw [actual_psi_floor_on_nineteen_block y hy hy20]
  linarith [log_closed_nineteen_gt]

/-- Closed arithmetic unit contributes minus one, rather than disappearing at a seam. -/
theorem actual_psi_floor_unit : actualPsiFloorDiscrepancy 1 = -1 := by
  have hp : Chebyshev.psi (1 : ℝ) = 0 := by
    simp [Chebyshev.psi]
  simp [actualPsiFloorDiscrepancy, hp]

/-- Actual arithmetic disproves the proposed global nonnegative discarding step. -/
theorem actual_psi_floor_not_nonnegative :
    ¬ ∀ y : ℝ, 1 ≤ y → 0 ≤ actualPsiFloorDiscrepancy y := by
  intro h
  have hlo := h 6 (by norm_num)
  have hhi := actual_psi_floor_negative_block 6 le_rfl (by norm_num)
  linarith

/-- Actual arithmetic also disproves the proposed global nonpositive discarding step. -/
theorem actual_psi_floor_not_nonpositive :
    ¬ ∀ y : ℝ, 1 ≤ y → actualPsiFloorDiscrepancy y ≤ 0 := by
  intro h
  have hhi := h 19 (by norm_num)
  have hlo := actual_psi_floor_positive_block 19 le_rfl (by norm_num)
  linarith

end FormalResearch.RiemannHypothesis.SourceActualPsiFloorSignBlocks
```
