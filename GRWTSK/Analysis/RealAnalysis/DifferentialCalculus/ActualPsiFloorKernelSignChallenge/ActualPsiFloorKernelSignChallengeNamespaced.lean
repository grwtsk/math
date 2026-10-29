-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPsiFloorSmallBlockCriticalWeight.Variant3211251de776ade71d4866526ec9a21d08c7a42a5a601f4bf112024a7632cbb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3211251de776ade71d4866526ec9a21d08c7a42a5a601f4bf112024a7632cbb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualPsiFloorSmallBlockCriticalWeight.Variant3211251de776ade71d4866526ec9a21d08c7a42a5a601f4bf112024a7632cbb0","mathematical_subject":"Analysis.Calculus","original_sha256":"3211251de776ade71d4866526ec9a21d08c7a42a5a601f4bf112024a7632cbb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T200834Z-1791317314950192000/ActualPsiFloorKernelSignChallenge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFiveCancelledFactorialBudget
import SourceActualPsiFloorSignBlocks
import SourceActualPsiIntegerExact

/-!
Both signs occur in the true final arithmetic pairing density at every real
scale A >= 91. This obstructs either global one-sign discarding step only;
it supplies no uniform upper bound or signed-pairing counterexample.
Research direction: grwtsk contributors. Formal challenge: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPsiFloorSmallBlockCriticalWeight.Variant3211251de776ade71d4866526ec9a21d08c7a42a5a601f4bf112024a7632cbb0

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open FormalResearch.RiemannHypothesis
open SourceFiveCancelledFactorialBudget SourceActualPsiFloorSignBlocks
open SourceActualPoleMomentAnnihilation SourcePositiveSampling SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- Actual critical weight is positive on the two retained arithmetic blocks. -/
theorem actualPsiFloor_small_block_critical_weight {A x : ℝ} (hA : 91 ≤ A)
    (hx : 1 ≤ x) (hx20 : x ≤ 20) :
    (1 / 3 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log x) / 2 -
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) := by
  have hx0 : 0 < x := by linarith
  have ht0 : 0 ≤ Real.log x := Real.log_nonneg hx
  have ht19 : Real.log x ≤ 19 := (Real.log_le_sub_one_of_pos hx0).trans (by linarith)
  have ht361 : Real.log x ^ 2 ≤ 361 := by nlinarith
  have hA8000 : (8000 : ℝ) ≤ A ^ 2 := by nlinarith
  have hc : |sourceCorrelation explicitSecondDerivative A (Real.log x) - 1| ≤
      (361 / 3200 : ℝ) := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * Real.log x ^ 2 :=
        actualCorrelation_sub_one_abs_le_five hA _
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * 361 := by gcongr
      _ = ((5 / 2 : ℝ) * 361) / A ^ 2 := by ring
      _ ≤ ((5 / 2 : ℝ) * 361) / 8000 :=
        div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA8000
      _ = _ := by norm_num
  have hd : |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x)| ≤
      (19 / 1600 : ℝ) := by
    calc
      _ ≤ 5 / A ^ 2 * |Real.log x| := actualCorrelation_first_abs_le_five hA _
      _ ≤ 5 / A ^ 2 * 19 := by
        gcongr
        simpa only [abs_of_nonneg ht0] using ht19
      _ = (95 : ℝ) / A ^ 2 := by ring
      _ ≤ (95 : ℝ) / 8000 :=
        div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA8000
      _ = _ := by norm_num
  have hcl := (abs_le.mp hc).1
  have hdu := (abs_le.mp hd).2
  linarith

/-- The actual derivative retains a uniform negative positive-axis factor on these blocks. -/
theorem actualPsiFloor_small_block_derivative_upper {A x : ℝ} (hA : 91 ≤ A)
    (hx : 1 ≤ x) (hx20 : x ≤ 20) :
    deriv (plainProfile A 1) x ≤ -(Real.exp (-Real.log x / 2) / x) / 3 := by
  have hx0 : 0 < x := by linarith
  have hc := actualPsiFloor_small_block_critical_weight hA hx hx20
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  have hm := mul_le_mul_of_nonneg_left
    (show deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) / 2 ≤ -(1 / 3 : ℝ) by
        linarith) (le_of_lt (div_pos (Real.exp_pos (-Real.log x / 2)) hx0))
  linarith

/-- The actual compact sampling derivative has negative sign throughout these blocks. -/
theorem actualPsiFloor_small_block_derivative_neg {A x : ℝ} (hA : 91 ≤ A)
    (hx : 1 ≤ x) (hx20 : x ≤ 20) : deriv (plainProfile A 1) x < 0 := by
  have hx0 : 0 < x := by linarith
  have hu := actualPsiFloor_small_block_derivative_upper hA hx hx20
  have hp := div_pos (Real.exp_pos (-Real.log x / 2)) hx0
  linarith

/-- Actual weighted pairing density is negative on the genuine closed six block. -/
theorem actualPsiFloor_pairing_density_negative_block {A x : ℝ} (hA : 91 ≤ A)
    (hx : 6 ≤ x) (hx7 : x < 7) : -actualPsiFloorDensity A x < 0 := by
  have ha := actual_psi_floor_negative_block x hx hx7
  change Chebyshev.psi x - (⌊x⌋₊ : ℝ) < -1 at ha
  have hd := actualPsiFloor_small_block_derivative_neg hA
    (by linarith : 1 ≤ x) (by linarith : x ≤ 20)
  have hm := mul_pos_of_neg_of_neg
    (show Chebyshev.psi x - (⌊x⌋₊ : ℝ) < 0 by linarith) hd
  unfold actualPsiFloorDensity
  linarith

/-- Actual weighted pairing density is positive after the retained prime-nineteen jump. -/
theorem actualPsiFloor_pairing_density_positive_block {A x : ℝ} (hA : 91 ≤ A)
    (hx : 19 ≤ x) (hx20 : x < 20) : 0 < -actualPsiFloorDensity A x := by
  have ha := actual_psi_floor_positive_block x hx hx20
  change (1 / 10 : ℝ) < Chebyshev.psi x - (⌊x⌋₊ : ℝ) at ha
  have hd := actualPsiFloor_small_block_derivative_neg hA
    (by linarith : 1 ≤ x) hx20.le
  have hm := mul_neg_of_pos_of_neg
    (show 0 < Chebyshev.psi x - (⌊x⌋₊ : ℝ) by linarith) hd
  unfold actualPsiFloorDensity
  linarith

/-- The true final signed density cannot be discarded by global nonnegativity. -/
theorem actualPsiFloor_pairing_density_not_nonnegative {A : ℝ} (hA : 91 ≤ A) :
    ¬ ∀ x : ℝ, 1 ≤ x → 0 ≤ -actualPsiFloorDensity A x := by
  intro h
  have hi := h 6 (by norm_num)
  have hn := actualPsiFloor_pairing_density_negative_block hA
    (x := 6) le_rfl (by norm_num)
  linarith

/-- The true final signed density also cannot be discarded by global nonpositivity. -/
theorem actualPsiFloor_pairing_density_not_nonpositive {A : ℝ} (hA : 91 ≤ A) :
    ¬ ∀ x : ℝ, 1 ≤ x → -actualPsiFloorDensity A x ≤ 0 := by
  intro h
  have hi := h 19 (by norm_num)
  have hp := actualPsiFloor_pairing_density_positive_block hA
    (x := 19) le_rfl (by norm_num)
  linarith

end
end RH16IndependentChallengeNext
