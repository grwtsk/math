/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerGramHoppingCoercivity
import GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.PolynomialConjugateQuartic

set_option autoImplicit false
noncomputable section

/-!
# Complete error floor for a proposed signed extraction

The actual quartic witness is -4*a^2*(a^2+3*gamma^2). An extraction
identity E=w*witness+error therefore forces error=E+4*w*a^2*(...).
For the same prime-power cyclic source this retains its entire
coercivity contribution as well as the off-line witness contribution.
No extraction identity is supplied by this necessary-condition lemma.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerSignedExtractionErrorFloor
open GRWTSK.Polynomial.ConjugateQuartic
open PrimePowerGramCyclicEnergy PrimePowerGramHoppingCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

theorem signed_error_identity (E w a γ error : ℝ)
    (hid : E = w * witnessTrace a γ + error) :
    error = E + 4 * w * a ^ 2 * (a ^ 2 + 3 * γ ^ 2) := by
  rw [witnessTrace_eq] at hid
  nlinarith

theorem actual_source_error_floor (N : ℕ) [NeZero N]
    (stage : PrimePowerWitnessStage) (e : ZMod N ≃ stage.WitnessIndex)
    (f : ℝ → ℝ) (t : ℝ) (level : ℕ) (χ : DirichletCharacter ℂ level)
    (w a γ error : ℝ)
    (hid : hamiltonianEnergy N t
      (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
      (stageVector N stage e f) = w * witnessTrace a γ + error) :
    (Real.log 2 - 2 * |t|) * ‖stageVector N stage e f‖ ^ 2 +
      4 * w * a ^ 2 * (a ^ 2 + 3 * γ ^ 2) ≤ error := by
  have he := signed_error_identity _ w a γ error hid
  have hc := actual_hopping_source_lower N stage e f t level χ
  linarith

theorem no_error_budget_below_signed_floor (E w w0 a γ error budget : ℝ)
    (hE : 0 ≤ E) (hw : w0 ≤ w)
    (hid : E = w * witnessTrace a γ + error)
    (hbudget : |error| ≤ budget)
    (hsmall : budget < 4 * w0 * a ^ 2 * (a ^ 2 + 3 * γ ^ 2)) : False := by
  have he := signed_error_identity E w a γ error hid
  have hp : 0 ≤ 4 * a ^ 2 * (a ^ 2 + 3 * γ ^ 2) := by positivity
  have hm := mul_le_mul_of_nonneg_right hw hp
  have ha := le_abs_self error
  nlinarith

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerSignedExtractionErrorFloor
