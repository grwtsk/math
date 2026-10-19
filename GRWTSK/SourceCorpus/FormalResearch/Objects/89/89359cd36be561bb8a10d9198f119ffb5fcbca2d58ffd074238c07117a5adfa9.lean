import SourceStrictComplementaryLocalization
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Data.Nat.Factorial.BigOperators

/-!
Exact factorial and continuous Mellin sectors of the actual short convolution.
Every closed floor and signed Moebius coefficient is retained. The genuine
factorial defect remains jointly inside the complementary tail. No arithmetic
upper estimate or independent bound on a weighted Mertens sum is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualFactorialTailDecomposition

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceStrictComplementaryAbel
open SourceStrictComplementaryLocalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateMobiusSplit EstimateMertensAbel

noncomputable section

/-- The independent real factorial defect keeps its exact natural closed floor. -/
def factorialLogDefect (x : ℝ) : ℝ :=
  Real.log (⌊x⌋₊.factorial : ℝ) - x * Real.log x + x

/-- The complete actual short reciprocal Moebius inventory. -/
def shortReciprocalMoebius (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, realMoebius d / (d : ℝ)

/-- The complete actual short logarithmic reciprocal Moebius inventory. -/
def shortLogReciprocalMoebius (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, realMoebius d * Real.log (d : ℝ) / (d : ℝ)

/-- The signed factorial defects retain all actual divisors through the moving cutoff. -/
def shortFactorialDefect (U : ℕ) (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, realMoebius d * factorialLogDefect (x / (d : ℝ))

theorem sum_log_Icc_eq_log_factorial (n : ℕ) :
    (∑ m ∈ Finset.Icc 1 n, Real.log (m : ℝ)) = Real.log (n.factorial : ℝ) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1), ih, Nat.factorial_succ,
      Nat.cast_mul, Real.log_mul (by positivity) (by positivity)]
    ring

theorem floor_div_natCast (x : ℝ) (d : ℕ) :
    ⌊x / (d : ℝ)⌋₊ = ⌊x⌋₊ / d := by
  by_cases hd : d = 0
  · subst d
    simp
  have hdc : (d : ℝ) ≠ 0 := by exact_mod_cast hd
  have hf := Nat.mul_cast_floor_div_cancel hd (x / (d : ℝ))
  rw [div_mul_cancel₀ _ hdc] at hf
  exact hf.symm

/-- The genuine cumulative short convolution is a full signed factorial sum. -/
theorem shortDivisorCumulative_eq_log_factorial (U : ℕ) (x : ℝ) :
    shortDivisorCumulative U x =
      ∑ d ∈ Finset.Icc 1 U, realMoebius d * Real.log (⌊x / (d : ℝ)⌋₊.factorial : ℝ) := by
  let f : ArithmeticFunction ℝ :=
    ⟨fun d => if d ≤ U then realMoebius d else 0, by simp [realMoebius]⟩
  have hf (n : ℕ) : shortDivisorLogCoefficient U n = (f * ArithmeticFunction.log) n := by
    unfold shortDivisorLogCoefficient
    rw [ArithmeticFunction.mul_apply]
    apply Finset.sum_congr rfl
    intro dk _
    change (if dk.1 ≤ U then realMoebius dk.1 * Real.log (dk.2 : ℝ) else 0) =
      (if dk.1 ≤ U then realMoebius dk.1 else 0) * ArithmeticFunction.log dk.2
    simp only [ArithmeticFunction.log_apply, ite_mul, zero_mul]
  have hz : shortDivisorLogCoefficient U 0 = 0 := by simp [shortDivisorLogCoefficient]
  have hs : shortDivisorCumulative U x =
      ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
        (if d ≤ U then realMoebius d else 0) * Real.log ((⌊x⌋₊ / d).factorial : ℝ) := by
    unfold shortDivisorCumulative
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons, hz, zero_add]
    simp_rw [hf]
    rw [ArithmeticFunction.sum_Ioc_mul_eq_sum_sum]
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    apply Finset.sum_congr rfl
    intro d _
    change (if d ≤ U then realMoebius d else 0) *
      (∑ m ∈ Finset.Ioc 0 (⌊x⌋₊ / d), ArithmeticFunction.log m) = _
    simp only [ArithmeticFunction.log_apply, ← Finset.Icc_add_one_left_eq_Ioc, Nat.zero_add]
    rw [sum_log_Icc_eq_log_factorial]
  rw [hs]
  simp_rw [floor_div_natCast]
  by_cases hUN : U ≤ ⌊x⌋₊
  · calc
      _ = ∑ d ∈ Finset.Icc 1 U,
          (if d ≤ U then realMoebius d else 0) *
            Real.log ((⌊x⌋₊ / d).factorial : ℝ) := by
        symm
        apply Finset.sum_subset
        · intro d hd
          exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
            (Finset.mem_Icc.mp hd).2.trans hUN⟩
        · intro d hd hdnot
          have hgt : U < d := by
            simp only [Finset.mem_Icc] at hd hdnot
            omega
          simp [not_le.mpr hgt]
      _ = _ := by
        apply Finset.sum_congr rfl
        intro d hd
        simp [(Finset.mem_Icc.mp hd).2]
  · have hNU : ⌊x⌋₊ ≤ U := by omega
    calc
      _ = ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
          realMoebius d * Real.log ((⌊x⌋₊ / d).factorial : ℝ) := by
        apply Finset.sum_congr rfl
        intro d hd
        simp [(Finset.mem_Icc.mp hd).2.trans hNU]
      _ = _ := by
        apply Finset.sum_subset
        · intro d hd
          exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
            (Finset.mem_Icc.mp hd).2.trans hNU⟩
        · intro d hd hdnot
          have hgt : ⌊x⌋₊ < d := by
            simp only [Finset.mem_Icc] at hd hdnot
            omega
          simp [Nat.div_eq_of_lt hgt]

/-- The exact short cumulative separates continuous Mellin polynomials from genuine defects. -/
theorem shortDivisorCumulative_eq_continuous_add_defect (U : ℕ) {x : ℝ} (hx : 0 < x) :
    shortDivisorCumulative U x =
      x * (Real.log x - 1) * shortReciprocalMoebius U -
        x * shortLogReciprocalMoebius U + shortFactorialDefect U x := by
  rw [shortDivisorCumulative_eq_log_factorial]
  unfold shortReciprocalMoebius shortLogReciprocalMoebius shortFactorialDefect
  simp_rw [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : (d : ℝ) ≠ 0 := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : d ≠ 0)
  unfold factorialLogDefect
  rw [Real.log_div hx.ne' hd0]
  field_simp
  ring

/-- The actual G retains psi, the negative unit floor, both signed moments and the full defect. -/
theorem complementaryCumulative_eq_factorial_sectors (U : ℕ) {x : ℝ} (hx : 0 < x) :
    complementaryCumulative U x =
      Chebyshev.psi x - (⌊x⌋₊ : ℝ) -
        x * (Real.log x - 1) * shortReciprocalMoebius U +
          x * shortLogReciprocalMoebius U - shortFactorialDefect U x := by
  rw [complementaryCumulative_eq, shortDivisorCumulative_eq_continuous_add_defect U hx]
  ring

/-- The full factorial-sector tail integrand has the genuine actual-source L1 certificate. -/
theorem factorial_sector_tail_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x =>
      (Chebyshev.psi x - (⌊x⌋₊ : ℝ) -
        x * (Real.log x - 1) * shortReciprocalMoebius (vaughanCutoff A) +
          x * shortLogReciprocalMoebius (vaughanCutoff A) -
            shortFactorialDefect (vaughanCutoff A) x) * deriv (plainProfile A 1) x)
      (Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A))) := by
  have hU := (actual_cutoff_order A hA).1
  have hi := (complementary_derivative_integrable_Icc hA).mono_set
    (show Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)) ⊆ Icc (1 : ℝ) (Real.exp (2 * A)) by
      intro x hx
      exact ⟨by linarith [hx.1], hx.2⟩)
  apply hi.congr_fun
  · intro x hx
    dsimp only
    rw [complementaryCumulative_eq_factorial_sectors (vaughanCutoff A)
      (by linarith [hx.1])]
    ring
  · exact measurableSet_Ioc

/-- The original tail preserves this entire signed factorial decomposition inside one integral. -/
theorem complementarySignedTail_eq_factorial_sectors (A : ℝ) (hA : 1 ≤ A) :
    complementarySignedTail A =
      -(∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
        (Chebyshev.psi x - (⌊x⌋₊ : ℝ) -
          x * (Real.log x - 1) * shortReciprocalMoebius (vaughanCutoff A) +
            x * shortLogReciprocalMoebius (vaughanCutoff A) -
              shortFactorialDefect (vaughanCutoff A) x) * deriv (plainProfile A 1) x) := by
  unfold complementarySignedTail
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro x hx
  have hU := (actual_cutoff_order A hA).1
  dsimp only
  rw [complementaryCumulative_eq_factorial_sectors (vaughanCutoff A) (by linarith [hx.1])]

end
end FormalResearch.RiemannHypothesis.SourceActualFactorialTailDecomposition
