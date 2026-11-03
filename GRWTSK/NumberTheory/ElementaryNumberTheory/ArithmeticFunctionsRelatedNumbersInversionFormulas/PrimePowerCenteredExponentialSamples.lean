/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerCenteredPolarization
import Mathlib.Analysis.Complex.Exponential

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Explicit finite exponential samples for the actual centered operator.
The two samples retain opposite half-phases; their mixed product is the
complex Dirichlet term, not its real part. No critical-strip infinite
vector or zeta-zero relation is asserted. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredExponentialSamples
open PrimePowerCenteredPolarization PrimePowerCenteredGramSource
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

def rightSample (s : ℂ) (L : ℝ) : ℂ := Complex.exp (-s * (L : ℂ) / 2)
def leftSample (s : ℂ) (L : ℝ) : ℂ := star (rightSample s L)

theorem exact_sample_product (s : ℂ) (L : ℝ) :
    star (leftSample s L) * rightSample s L = Complex.exp (-s * (L : ℂ)) := by
  simp only [leftSample, star_star, rightSample]
  rw [← Complex.exp_add]
  congr 1
  ring

variable (N : ℕ) [NeZero N]

theorem actual_centered_exponential_pairing (m : ZMod N → ℕ) (s : ℂ) :
    inner ℂ (WithLp.toLp 2 (fun i => leftSample s (Real.log (m i))))
      (hamiltonianOperator N 0
        (arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1) m 1 0 (-Real.log 2))
        (WithLp.toLp 2 (fun i => rightSample s (Real.log (m i))))) =
      ∑ i, ((ArithmeticFunction.vonMangoldt (m i) - Real.log 2 : ℝ) : ℂ) *
        Complex.exp (-s * (Real.log (m i) : ℂ)) := by
  rw [actual_diagonal_pairing]
  unfold finitePairing
  apply Finset.sum_congr rfl
  intro i _
  rw [level_one_centered_potential, mul_assoc, exact_sample_product]

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredExponentialSamples
