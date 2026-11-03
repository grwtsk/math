/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterPhaseBudget

set_option autoImplicit false
noncomputable section

/-! SOURCE_PROOF_CANDIDATE / NOT_RUN. A well-conditioned genuine multiplier
is an explicit input; its selection and analytic GRH bridges remain open. -/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterUniformBudget
open ArithmeticCyclicCharacterPhase ArithmeticCyclicCharacterPhaseBudget

theorem uniform_complex_error (N : ℕ) [NeZero N]
    (level : ℕ) (χ : DirichletCharacter ℂ level) (m : ZMod N → ℕ) (k : ℕ)
    (ha : |(χ (k : ZMod level)).re| ≤ 1)
    (hb : 1 / 2 ≤ |(χ (k : ZMod level)).im|)
    (i : ZMod N) (r₀ rₖ ε₀ εₖ : ℝ) (hε₀ : 0 ≤ ε₀) (hεₖ : 0 ≤ εₖ)
    (h₀ : |characterPotential N level χ m i - r₀| ≤ ε₀)
    (hₖ : |characterPotential N level χ (fun j => k * m j) i - rₖ| ≤ εₖ) :
    ‖χ (m i : ZMod level) - reconstructedSample level χ k r₀ rₖ‖ ≤
      3 * ε₀ + 2 * εₖ := by
  have hbpos : 0 < |(χ (k : ZMod level)).im| := by linarith
  have hk : (χ (k : ZMod level)).im ≠ 0 := abs_pos.mp hbpos
  have hnum : |(χ (k : ZMod level)).re| * ε₀ + εₖ ≤ ε₀ + εₖ := by
    nlinarith
  have hdiv : (|(χ (k : ZMod level)).re| * ε₀ + εₖ) /
      |(χ (k : ZMod level)).im| ≤ 2 * (ε₀ + εₖ) := by
    apply (div_le_iff₀ hbpos).mpr
    nlinarith
  have h := complex_error_bound N level χ m k hk i r₀ rₖ ε₀ εₖ h₀ hₖ
  linarith

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterUniformBudget
