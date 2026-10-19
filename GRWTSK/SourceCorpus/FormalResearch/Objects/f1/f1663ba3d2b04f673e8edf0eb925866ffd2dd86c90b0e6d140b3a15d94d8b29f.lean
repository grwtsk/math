import FormalResearch.RiemannHypothesis.ZeroSymmetry
import FormalResearch.MathematicalTooling.Reflection.Polarization
import FormalResearch.MathematicalTooling.Reflection.Interval
import FormalResearch.MathematicalTooling.Coverage.Finite
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Tactic.NormNum

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/

namespace FormalResearch.RiemannHypothesis

/-- A genuine trivial zero is excluded from the exact RH domain. -/
theorem trivial_zero_is_excluded :
    riemannZeta (-2) = 0 ∧ ¬ NontrivialZetaZero (-2) := by
  constructor
  · simpa using riemannZeta_neg_two_mul_nat_add_one 0
  · intro h
    exact h.2.1 ⟨0, by norm_num⟩

/-- The pole exclusion remains explicit even in a total-function formalization of zeta. -/
theorem pole_is_excluded : ¬ NontrivialZetaZero 1 := by
  intro h
  exact h.2.2 rfl

/-- The critical-line reflection is not complex multiplication by `i`. -/
theorem critical_reflection_is_not_gaussian_rotation :
    criticalReflection (criticalReflection 1) = 1 ∧
      Complex.I * (Complex.I * 1) ≠ (1 : ℂ) := by
  constructor
  · exact critical_reflection_involutive _
  · norm_num

/-- A Hermitian matrix can have a strictly negative quadratic direction. -/
theorem hermitian_does_not_imply_positive_semidefinite :
    (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).IsHermitian ∧
      ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef := by
  constructor
  · simp [Matrix.IsHermitian]
  · intro h
    have hbad := h.dotProduct_mulVec_nonneg (fun _ ↦ 1)
    norm_num [dotProduct, Matrix.mulVec] at hbad

end FormalResearch.RiemannHypothesis
