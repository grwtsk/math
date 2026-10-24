import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

/-!
A finite family in the actual half-line L2 space, with every original Möbius
inverse-square-root coefficient and the full endpoint correction. Its own
one-half Laplace evaluation vanishes. The resulting 4/9 tracking floor applies
only to this family; no assertion about all controllers or RH is supplied.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
open MeasureTheory Set Finset
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineExtension HalfLineDuality FullLineConvolution
open HalfLineOperator FixedKernelAdjointExponential SourceControllerPoleConstraint
noncomputable section

/-- The genuine L2 zero-extension, translation and restriction of the original input. -/
def causalShift (a : ℝ) (p : H) : H :=
  restriction (fullShift a (zeroExtension p))

/-- Its actual representative is the translated zero extension, including the boundary. -/
theorem causalShift_ae (a : ℝ) (p : H) :
    causalShift a p =ᵐ[halfLineMeasure]
      (fun t : ℝ => (Ioi (0 : ℝ)).indicator p (t - a)) := by
  have h := (measurePreserving_sub_right volume a).quasiMeasurePreserving.ae_eq_comp
    (zeroExtension_ae p)
  filter_upwards [restriction_ae (fullShift a (zeroExtension p)),
    ae_restrict_of_ae (fullShift_ae a (zeroExtension p)), ae_restrict_of_ae h]
      with t hr hs ht
  exact hr.trans (hs.trans ht)

/-- The admitted shift has finite norm without a compact-support assumption on the input. -/
theorem causalShift_norm_le (a : ℝ) (p : H) : ‖causalShift a p‖ ≤ ‖p‖ := by
  exact (restriction_norm_le _).trans_eq (by
    rw [LinearIsometry.norm_map, zeroExtension_norm])

/-- Positive causal shifts preserve the original complex Laplace phase exactly. -/
theorem causalShift_exponential_inner (a : ℝ) (ha : 0 ≤ a)
    (z : ℂ) (hz : 0 < z.re) (p : H) :
    inner ℂ (exponentialVector z hz) (causalShift a p) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) p := by
  unfold causalShift
  rw [← inner_conj_symm, inner_restriction_zeroExtension, inner_conj_symm]
  exact exponential_inner_shift a ha z hz p

/-- The exact real endpoint coefficient, with every integer from one through X. -/
def mobiusReciprocalSum (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ)

/-- The original finite Möbius inverse and its full corrected endpoint, applied to an L2 input. -/
def finiteMobiusController (X : ℕ) (p : H) : H :=
  (∑ n ∈ Finset.Icc 1 X,
    ((ArithmeticFunction.moebius n : ℂ) / (Real.sqrt (n : ℝ) : ℂ)) •
      causalShift (Real.log (n : ℝ)) p) -
    ((Real.sqrt (X : ℝ) * mobiusReciprocalSum X : ℝ) : ℂ) •
      causalShift (Real.log (X : ℝ)) p

/-- One-half evaluation of the logarithmic shift gives the same inverse-square-root weight. -/
theorem causalShift_half_inner (n : ℕ) (hn : 1 ≤ n) (p : H) :
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) (causalShift (Real.log (n : ℝ)) p) =
      (Real.sqrt (n : ℝ) : ℂ)⁻¹ *
        inner ℂ (exponentialVector (1 / 2) (by norm_num)) p := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hn1 : 1 ≤ (n : ℝ) := by exact_mod_cast hn
  rw [causalShift_exponential_inner _ (Real.log_nonneg hn1) _ (by norm_num)]
  congr 1
  have he : Real.exp (-Real.log (n : ℝ) / 2) = (Real.sqrt (n : ℝ))⁻¹ := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0]
  rw [show -(1 / 2 : ℂ) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) / 2 : ℝ) : ℂ) by
    simp only [Complex.ofReal_div, Complex.ofReal_neg, Complex.ofReal_ofNat]
    ring]
  rw [← Complex.ofReal_exp, he, Complex.ofReal_inv]

/-- The corrected finite family has exactly zero input evaluation at the source's removed pole. -/
theorem finiteMobiusController_half_inner (X : ℕ) (hX : 2 ≤ X) (p : H) :
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) (finiteMobiusController X p) = 0 := by
  let e := exponentialVector (1 / 2) (by norm_num)
  have hsum :
      inner ℂ e (∑ n ∈ Finset.Icc 1 X,
        ((ArithmeticFunction.moebius n : ℂ) / (Real.sqrt (n : ℝ) : ℂ)) •
          causalShift (Real.log (n : ℝ)) p) =
        (mobiusReciprocalSum X : ℂ) * inner ℂ e p := by
    rw [inner_sum]
    unfold mobiusReciprocalSum
    push_cast
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    have hn1 := (Finset.mem_Icc.mp hn).1
    rw [inner_smul_right]
    change _ * inner ℂ (exponentialVector (1 / 2) _) (causalShift _ p) = _
    rw [causalShift_half_inner n hn1 p, ← mul_assoc]
    have hs : (Real.sqrt (n : ℝ) : ℂ) * (Real.sqrt (n : ℝ) : ℂ) = (n : ℂ) := by
      exact_mod_cast Real.mul_self_sqrt (Nat.cast_nonneg n)
    rw [← one_div (Real.sqrt (n : ℝ) : ℂ), div_mul_div_comm, mul_one, hs]
  have hsX : (Real.sqrt (X : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr (show 0 < (X : ℝ) by exact_mod_cast (show 0 < X by omega))).ne'
  change inner ℂ e (_ - _) = 0
  rw [inner_sub_right, hsum, inner_smul_right]
  change _ - _ * inner ℂ (exponentialVector (1 / 2) _) (causalShift _ p) = 0
  rw [causalShift_half_inner X (by omega) p]
  push_cast
  have hcancel : (Real.sqrt (X : ℝ) : ℂ) * (mobiusReciprocalSum X : ℂ) *
      ((Real.sqrt (X : ℝ) : ℂ)⁻¹ * inner ℂ e p) =
        (mobiusReciprocalSum X : ℂ) * inner ℂ e p := by
    calc
      _ = ((Real.sqrt (X : ℝ) : ℂ) * (Real.sqrt (X : ℝ) : ℂ)⁻¹) *
          ((mobiusReciprocalSum X : ℂ) * inner ℂ e p) := by ring
      _ = _ := by rw [mul_inv_cancel₀ hsX, one_mul]
  exact sub_eq_zero.mpr hcancel.symm

/-- The complete actual output of this family retains the nonzero residual floor. -/
theorem finiteMobiusController_residual_sq_ge (X : ℕ) (hX : 2 ≤ X) (p : H) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator (finiteMobiusController X p)‖ ^ 2 :=
  source_residual_sq_ge_of_input_half_zero _ (finiteMobiusController_half_inner X hX p)

/-- Nonnegative regularization cost cannot remove this family's full residual obstruction. -/
theorem finiteMobiusController_full_energy_ge (X : ℕ) (hX : 2 ≤ X) (p : H)
    (α : ℝ) (hα : 0 ≤ α) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator (finiteMobiusController X p)‖ ^ 2 +
      α * ‖finiteMobiusController X p‖ ^ 2 :=
  source_full_energy_ge_of_input_half_zero α hα _ (finiteMobiusController_half_inner X hX p)

end
end FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
