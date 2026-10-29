import IntegerWitnessTransfer
import Mathlib.NumberTheory.AbelSummation
import Mathlib.NumberTheory.Chebyshev

/-! Actual signed Stieltjes adapter. No arithmetic upper witness is supplied.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualSignedStieltjes
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open ActualIntegerInventory

def signedCoefficient (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n - if n = 0 then 0 else 1

theorem signedCoefficient_zero : signedCoefficient 0 = 0 := by
  simp [signedCoefficient]

theorem signedCoefficient_pos {n : ℕ} (hn : 0 < n) :
    signedCoefficient n = ArithmeticFunction.vonMangoldt n - 1 := by
  simp [signedCoefficient, Nat.ne_zero_of_lt hn]

theorem signedCoefficient_one : signedCoefficient 1 = -1 := by
  simp [signedCoefficient]

theorem cumulative_eq (x : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, signedCoefficient n) =
      Chebyshev.psi x - (⌊x⌋₊ : ℝ) := by
  unfold signedCoefficient
  rw [Finset.sum_sub_distrib, ← Chebyshev.psi_eq_sum_Icc]
  congr 1
  rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  simp only [ite_true, zero_add]
  have he : (∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, (if n=0 then (0:ℝ) else 1)) =
      ∑ _n ∈ Finset.Ioc 0 ⌊x⌋₊, (1:ℝ) := by
    apply Finset.sum_congr rfl
    intro n hn
    simp [Nat.ne_zero_of_lt (Finset.mem_Ioc.mp hn).1]
  rw [he]
  simp

theorem cumulative_eq_intFloor {x : ℝ} (hx : 0 ≤ x) :
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, signedCoefficient n) =
      Chebyshev.psi x - (⌊x⌋ : ℝ) := by
  rw [cumulative_eq, natCast_floor_eq_intCast_floor hx]

theorem weighted_sum_eq (A : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊Real.exp (2*A)⌋₊,
      plainProfile A 1 n * signedCoefficient n) = integerJ A := by
  unfold integerJ
  rw [integer_cutoff_eq, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons,
    signedCoefficient_zero, mul_zero, zero_add, ← Finset.Icc_add_one_left_eq_Ioc]
  apply Finset.sum_congr rfl
  intro n hn
  rw [signedCoefficient_pos (by have := (Finset.mem_Icc.mp hn).1; omega)]
  ring

theorem actual_derivative_integrable_Icc {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (deriv (plainProfile A 1)) (Icc 1 (Real.exp (2*A))) := by
  exact ((plainProfile_contDiff (by linarith : 0<A) 1).continuous_deriv
    (by norm_num)).continuousOn.integrableOn_Icc

theorem actual_finite_signed_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => deriv (plainProfile A 1) x *
      (Chebyshev.psi x - (⌊x⌋ : ℝ))) (Icc 1 (Real.exp (2*A))) := by
  have hi := integrableOn_mul_sum_Icc signedCoefficient (m := 0) (by norm_num : (0:ℝ) ≤ 1)
    (actual_derivative_integrable_Icc hA)
  apply hi.congr_fun
  · intro x hx
    dsimp only
    rw [cumulative_eq_intFloor (by linarith [hx.1])]
  · exact measurableSet_Icc

theorem actual_finite_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    integerJ A = -(∫ x in Ioc (1:ℝ) (Real.exp (2*A)),
      (Chebyshev.psi x - (⌊x⌋ : ℝ)) * deriv (plainProfile A 1) x) := by
  have hf := (plainProfile_contDiff (by linarith : 0<A) 1).differentiable
    (by norm_num)
  have ha := sum_mul_eq_sub_integral_mul₀ signedCoefficient signedCoefficient_zero
    (Real.exp (2*A)) (fun x _ => hf.differentiableAt) (actual_derivative_integrable_Icc hA)
  rw [weighted_sum_eq, touching_source_zero (by linarith : 0<A), zero_mul, zero_sub] at ha
  rw [ha]
  congr 1
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
  rw [cumulative_eq_intFloor (by linarith [hx.1])]
  ring


theorem actual_derivative_zero_above {A : ℝ} (hA : 1 ≤ A) {x : ℝ}
    (hx : Real.exp (2*A) < x) : deriv (plainProfile A 1) x = 0 := by
  have he : EqOn (plainProfile A 1) (fun _ => (0:ℝ)) (Ioi (Real.exp (2*A))) := by
    intro u hu
    apply plainProfile_zero_above (by linarith : 0<A) 1
    simpa using hu.le
  simpa using he.deriv isOpen_Ioi hx

theorem actual_signed_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => (Chebyshev.psi x - (⌊x⌋ : ℝ)) *
      deriv (plainProfile A 1) x) (Ioi (1:ℝ)) := by
  have hf : IntegrableOn (fun x => (Chebyshev.psi x - (⌊x⌋ : ℝ)) *
      deriv (plainProfile A 1) x) (Ioc (1:ℝ) (Real.exp (2*A))) := by
    convert (actual_finite_signed_integrable hA).mono_set Ioc_subset_Icc_self using 1
    funext x
    ring
  have ht : IntegrableOn (fun x => (Chebyshev.psi x - (⌊x⌋ : ℝ)) *
      deriv (plainProfile A 1) x) (Ioi (Real.exp (2*A))) := by
    have hz : IntegrableOn (fun _ : ℝ => (0:ℝ)) (Ioi (Real.exp (2*A))) := integrableOn_zero
    apply hz.congr_fun
    · intro x hx
      dsimp only
      rw [actual_derivative_zero_above hA hx, mul_zero]
    · exact measurableSet_Ioi
  have hX : (1:ℝ) ≤ Real.exp (2*A) := Real.one_le_exp (by linarith)
  simpa only [Ioc_union_Ioi_eq_Ioi hX] using hf.union ht

theorem actual_full_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    integerJ A = -(∫ x in Ioi (1:ℝ),
      (Chebyshev.psi x - (⌊x⌋ : ℝ)) * deriv (plainProfile A 1) x) := by
  rw [actual_finite_stieltjes hA]
  congr 1
  symm
  have hX : (1:ℝ) ≤ Real.exp (2*A) := Real.one_le_exp (by linarith)
  rw [← Ioc_union_Ioi_eq_Ioi hX]
  apply integral_union_eq_left_of_forall measurableSet_Ioi
  intro x hx
  rw [actual_derivative_zero_above hA hx, mul_zero]


/-- The literal log-coordinate signed integrand, including the Jacobian. -/
def signedLogKernel (A t : ℝ) : ℝ :=
  (Chebyshev.psi (Real.exp t) - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t/2) *
    (deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t/2)

theorem actual_log_kernel_eq {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Real.exp t • ((Chebyshev.psi (Real.exp t) - (⌊Real.exp t⌋ : ℝ)) *
      deriv (plainProfile A 1) (Real.exp t)) = signedLogKernel A t := by
  rw [(plainProfile_hasDerivAt (by linarith : 0<A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp, smul_eq_mul, signedLogKernel]
  field_simp

theorem actual_log_signed_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (signedLogKernel A) (Ioi (0:ℝ)) := by
  have hi := (integrableOn_comp_exp_Ioi (fun x =>
    (Chebyshev.psi x - (⌊x⌋ : ℝ)) * deriv (plainProfile A 1) x) 0).mpr
    (by simpa only [Real.exp_zero] using actual_signed_integrable hA)
  exact hi.congr_fun (fun t _ => actual_log_kernel_eq hA t) measurableSet_Ioi

theorem actual_log_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    integerJ A = -(∫ t in Ioi (0:ℝ), signedLogKernel A t) := by
  rw [actual_full_stieltjes hA]
  have he := integral_comp_exp_Ioi (fun x =>
    (Chebyshev.psi x - (⌊x⌋ : ℝ)) * deriv (plainProfile A 1) x) 0
  simp only [Real.exp_zero] at he
  rw [← he]
  congr 1
  exact setIntegral_congr_fun measurableSet_Ioi (fun t _ => actual_log_kernel_eq hA t)

#print axioms signedLogKernel
#print axioms actual_log_kernel_eq
#print axioms actual_log_signed_integrable
#print axioms actual_log_stieltjes

#print axioms actual_derivative_zero_above
#print axioms actual_signed_integrable
#print axioms actual_full_stieltjes

#print axioms signedCoefficient
#print axioms signedCoefficient_zero
#print axioms signedCoefficient_pos
#print axioms signedCoefficient_one
#print axioms cumulative_eq
#print axioms cumulative_eq_intFloor
#print axioms weighted_sum_eq
#print axioms actual_derivative_integrable_Icc
#print axioms actual_finite_signed_integrable
#print axioms actual_finite_stieltjes
end ContinuousResearch.ActualSignedStieltjes
