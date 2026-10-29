-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SquareTimeDensity.Variant255e4e181376617fe38b1ecb97899b3cbb123e4a23cd01ffbe2f2a4962d535de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"255e4e181376617fe38b1ecb97899b3cbb123e4a23cd01ffbe2f2a4962d535de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SquareTimeDensity.Variant255e4e181376617fe38b1ecb97899b3cbb123e4a23cd01ffbe2f2a4962d535de","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"255e4e181376617fe38b1ecb97899b3cbb123e4a23cd01ffbe2f2a4962d535de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-square-primitive-balance/author-failures/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceProperPowerMertens
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel

/-! The actual closed square density has a bounded zero-drift primitive.
All prime squares and the original seven anchor are retained.
Direction and conceptual origin: grwtsk contributors.
Exact source construction and native formalization: OpenAI Codex assistance.
No signed first-prime or full RH estimate witness is supplied. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SquareTimeDensity.Variant255e4e181376617fe38b1ecb97899b3cbb123e4a23cd01ffbe2f2a4962d535de

set_option autoImplicit false
noncomputable section
namespace RH16SquarePrimitiveBalance
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open WeightedPrimeAbel WeightedPrimeMertens RH16ProperPowerMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

def squareTimeDensity (t : ℝ) : ℝ :=
  Chebyshev.theta (Real.exp (t / 2)) * Real.exp (-t / 2)

def squareAnchoredPrimitive (t : ℝ) : ℝ :=
  ∫ s in Real.log 7..t, squareTimeDensity s

def squarePrimitiveReadout (t : ℝ) : ℝ :=
  2 * primeLogPrefix (t / 2) -
    2 * Real.exp (-t / 2) * Chebyshev.theta (Real.exp (t / 2))

def squareZeroDrift (t : ℝ) : ℝ :=
  squareAnchoredPrimitive t - (t - Real.log 7)

private theorem theta_exp_eq_steps (b t : ℝ) (ht : t ≤ b) :
    Chebyshev.theta (Real.exp (t / 2)) =
      ∑ p ∈ primeLogInventory (b / 2),
        if 2 * Real.log (p : ℝ) ≤ t then Real.log p else 0 := by
  change (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ)) = _
  rw [← primeLogInventory_filter_log (b / 2) (t / 2) (by linarith)]
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p _
  congr 1
  exact propext (by constructor <;> intro h <;> linarith)

private theorem primitive_antiderivative (t : ℝ) :
    HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2)) (Real.exp (-t / 2)) t := by
  convert! (((hasDerivAt_id t).neg.div_const (2 : ℝ)).exp.const_mul (-2)) using 1
  dsimp
  ring

private theorem density_eq_steps (b t : ℝ) (ht : t ≤ b) :
    squareTimeDensity t =
      ∑ p ∈ primeLogInventory (b / 2), Real.log (p : ℝ) *
        (if 2 * Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0) := by
  rw [squareTimeDensity, theta_exp_eq_steps b t ht, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp

theorem squareTimeDensity_intervalIntegrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable squareTimeDensity volume a b := by
  have hi : IntervalIntegrable
      (∑ p ∈ primeLogInventory (b / 2), fun t : ℝ => Real.log (p : ℝ) *
        (if 2 * Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0)) volume a b :=
    IntervalIntegrable.sum _ (fun p _ =>
      (intervalIntegrable_closed_step a b (2 * Real.log (p : ℝ)) _
        ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable a b))
          .const_mul (Real.log (p : ℝ)))
  apply hi.congr
  intro t ht
  dsimp only
  simp only [Finset.sum_apply]
  exact (density_eq_steps b t (uIoc_of_le hab ▸ ht |>.2)).symm

theorem square_prefix_integral_eq_readout (t : ℝ) (ht : 0 ≤ t) :
    (∫ s in 0..t, squareTimeDensity s) = squarePrimitiveReadout t := by
  have hf : ContDiff ℝ 1 (fun s : ℝ => -2 * Real.exp (-s / 2)) := by fun_prop
  have he := integral_finite_steps_deriv 0 t (primeLogInventory (t / 2))
    (fun p => 2 * Real.log (p : ℝ)) (fun p => Real.log (p : ℝ))
    (fun p hp => by
      have hh := primeLogInventory_log_bounds (t / 2) p hp
      constructor <;> linarith) _ hf
  have hd : (∫ s in 0..t, ∑ p ∈ primeLogInventory (t / 2),
      Real.log (p : ℝ) * (if 2 * Real.log (p : ℝ) ≤ s then
        deriv (fun s : ℝ => -2 * Real.exp (-s / 2)) s else 0)) =
        ∫ s in 0..t, squareTimeDensity s := by
    apply intervalIntegral.integral_congr
    intro s hs
    simp_rw [(primitive_antiderivative s).deriv]
    exact (density_eq_steps t s (uIcc_of_le ht ▸ hs |>.2)).symm
  rw [hd] at he
  rw [he]
  have hs : (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ) *
      ((-2 * Real.exp (-t / 2)) - (-2 * Real.exp (-(2 * Real.log p) / 2)))) =
      2 * primeLogPrefix (t / 2) -
        2 * Real.exp (-t / 2) * Chebyshev.theta (Real.exp (t / 2)) := by
    rw [primeLogPrefix_eq_sum]
    change _ = 2 * (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ) / p) -
      2 * Real.exp (-t / 2) * ∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ)
    rw [← Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    have hp0 : 0 < (p : ℝ) := by
      exact_mod_cast (Finset.mem_filter.mp hp).2.pos
    rw [show -(2 * Real.log (p : ℝ)) / 2 = -Real.log p by ring,
      Real.exp_neg, Real.exp_log hp0]
    ring
  exact hs

theorem squareAnchoredPrimitive_eq_readout (t : ℝ) (ht : Real.log 7 ≤ t) :
    squareAnchoredPrimitive t =
      squarePrimitiveReadout t - squarePrimitiveReadout (Real.log 7) := by
  have hL : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have he := intervalIntegral.integral_add_adjacent_intervals
    (squareTimeDensity_intervalIntegrable 0 (Real.log 7) hL)
    (squareTimeDensity_intervalIntegrable (Real.log 7) t ht)
  rw [square_prefix_integral_eq_readout (Real.log 7) hL,
    square_prefix_integral_eq_readout t (hL.trans ht)] at he
  change _ = _ at he
  unfold squareAnchoredPrimitive
  linarith only [he]

theorem squareAnchoredPrimitive_at_lower :
    squareAnchoredPrimitive (Real.log 7) = 0 := by
  simp [squareAnchoredPrimitive]

theorem squareZeroDrift_eq_actual_error (t : ℝ) (ht : Real.log 7 ≤ t) :
    squareZeroDrift t =
      2 * primeLogError (t / 2) -
        2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) +
          Real.log 7 - squarePrimitiveReadout (Real.log 7) := by
  rw [squareZeroDrift, squareAnchoredPrimitive_eq_readout t ht]
  unfold squarePrimitiveReadout primeLogError
  rw [show -t / 2 = -(t / 2) by ring, Real.exp_neg]
  ring

theorem squareZeroDrift_uniform_bound (t : ℝ) (ht : Real.log 7 ≤ t) :
    |squareZeroDrift t| ≤
      2 * (Real.log 4 + 4) + 2 * Real.log 4 +
        |Real.log 7 - squarePrimitiveReadout (Real.log 7)| := by
  have ht0 : 0 ≤ t / 2 := by
    have := Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)
    linarith
  have hp := weightedPrime_logcutoff_fixed (t / 2) ht0
  have he : |primeLogError (t / 2)| ≤ Real.log 4 + 4 := by
    simpa only [primeLogError, primeLogPrefix, weightedPrime_eq_filtered, primeLogInventory]
      using hp
  have htheta : 0 ≤ Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) :=
    div_nonneg (Chebyshev.theta_nonneg _) (Real.exp_pos _).le
  have htheta2 : Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) ≤ Real.log 4 := by
    apply (div_le_iff₀ (Real.exp_pos _)).mpr
    simpa only [mul_comm] using
      Chebyshev.theta_le_log4_mul_x (Real.exp_pos (t / 2)).le
  rw [squareZeroDrift_eq_actual_error t ht]
  calc
    _ ≤ |2 * primeLogError (t / 2)| +
        |2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)| +
          |Real.log 7 - squarePrimitiveReadout (Real.log 7)| := by
      exact (abs_add_le _ _).trans (add_le_add_right (abs_sub _ _) _)
    _ ≤ _ := by
      rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      have hh : |2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)| ≤
          2 * Real.log 4 := by
        rw [abs_of_nonneg (by positivity)]
        calc
          _ = 2 * (Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)) := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_left htheta2 (by norm_num)
      linarith

end RH16SquarePrimitiveBalance
