/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Möbius-log convolution retains upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerCenteredPolarization
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusVonMangoldtCoefficientBridge

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact signed coefficient bridge into the actual centered mixed pairing.
Every divisor-antidiagonal term and full centering counterterm is retained.
A single Möbius convolution does not supply the bilinear signed Mertens
correlation estimate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CenteredCyclicMobiusLogPairing
open PrimePowerCenteredPolarization PrimePowerCenteredGramSource
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

theorem actual_centered_pairing_mobius_log (m : ZMod N → ℕ) (u v : ZMod N → ℂ) :
    inner ℂ (WithLp.toLp 2 u)
      (hamiltonianOperator N 0
        (arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1) m 1 0 (-Real.log 2))
        (WithLp.toLp 2 v)) =
      (∑ i : ZMod N, ∑ ab ∈ (m i).divisorsAntidiagonal,
        ((ArithmeticFunction.moebius ab.1 : ℝ) : ℂ) *
          (ArithmeticFunction.log ab.2 : ℂ) * star (u i) * v i) -
        (Real.log 2 : ℂ) * (∑ i : ZMod N, star (u i) * v i) := by
  have hq : arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1) m 1 0 (-Real.log 2) =
      fun i => ArithmeticFunction.vonMangoldt (m i) - Real.log 2 := by
    funext i
    exact level_one_centered_potential N m i
  rw [hq, actual_diagonal_pairing, finitePairing_centering]
  congr 1
  unfold finitePairing
  apply Finset.sum_congr rfl
  intro i _
  have hc := vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log (m i)
  rw [hc]
  simp only [Complex.ofReal_sum, Complex.ofReal_mul, Finset.sum_mul]

end GRWTSK.NumberTheory.Zeta.Riemann.CenteredCyclicMobiusLogPairing
