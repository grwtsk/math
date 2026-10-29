import FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect

set_option autoImplicit false
namespace PrimeInsertionHomogeneityScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open ThetaKernelTransport ThetaRemainder CorrelationSecondMoment
noncomputable section

/-- The literal prime-insertion coefficient cancels beta/q, retaining the actual remainder. -/
theorem theta_insertion_eq_remainder (A : ℝ) (p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    thetaKernel A q - (p : ℝ) * thetaKernel A (p * q) =
      thetaRemainder A q - (p : ℝ) * thetaRemainder A (p * q) := by
  have hp0 : (p : ℝ) ≠ 0 := by exact_mod_cast (show p ≠ 0 by omega)
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (show q ≠ 0 by omega)
  unfold thetaRemainder
  push_cast
  field_simp
  ring

/-- The original insertion is its leading homogeneous remainder plus the exact scaling error. -/
theorem theta_insertion_eq_homogeneity (A : ℝ) (p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    thetaKernel A q - (p : ℝ) * thetaKernel A (p * q) =
      (1 - Real.sqrt (p : ℝ)) * thetaRemainder A q + Real.sqrt (p : ℝ) *
        (thetaRemainder A q - Real.sqrt (p : ℝ) * thetaRemainder A (p * q)) := by
  rw [theta_insertion_eq_remainder A p q hp hq]
  have hs := Real.sq_sqrt (Nat.cast_nonneg p)
  calc
    _ = thetaRemainder A q - Real.sqrt (p : ℝ) ^ 2 * thetaRemainder A (p * q) := by rw [hs]
    _ = _ := by ring

end
end PrimeInsertionHomogeneityScratch
#print axioms PrimeInsertionHomogeneityScratch.theta_insertion_eq_remainder
#print axioms PrimeInsertionHomogeneityScratch.theta_insertion_eq_homogeneity
