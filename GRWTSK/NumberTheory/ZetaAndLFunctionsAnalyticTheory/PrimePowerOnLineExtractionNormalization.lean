/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerSignedExtractionErrorFloor

set_option autoImplicit false
noncomputable section

/-!
# The on-line extraction also has a normalization cost

At horizontal displacement zero the actual signed witness vanishes.
A positive source coercivity coefficient therefore bounds the source
vector norm by the extraction error. Normalized source vectors have a
fixed error floor, even on the critical line. This concerns these Gram
extraction vectors, not every possible spectral eigenvector construction.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerOnLineExtractionNormalization
open PrimePowerGramCyclicEnergy PrimePowerSignedExtractionErrorFloor
open GRWTSK.Polynomial.ConjugateQuartic
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

variable (N : ℕ) [NeZero N]

theorem on_line_source_norm_budget (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) (t : ℝ)
    (level : ℕ) (χ : DirichletCharacter ℂ level) (w γ error : ℝ)
    (hcoercive : 0 < Real.log 2 - 2 * |t|)
    (hid : hamiltonianEnergy N t
      (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
      (stageVector N stage e f) = w * witnessTrace 0 γ + error) :
    ‖stageVector N stage e f‖ ^ 2 ≤ error / (Real.log 2 - 2 * |t|) := by
  have he := actual_source_error_floor N stage e f t level χ w 0 γ error hid
  simp only [zero_pow (by norm_num : (2 : ℕ) ≠ 0), mul_zero, zero_mul, add_zero] at he
  apply (le_div_iff₀ hcoercive).mpr
  simpa only [mul_comm] using he

theorem normalized_on_line_source_error_floor (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) (t : ℝ)
    (level : ℕ) (χ : DirichletCharacter ℂ level) (w γ error budget : ℝ)
    (hnorm : ‖stageVector N stage e f‖ = 1)
    (hid : hamiltonianEnergy N t
      (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
      (stageVector N stage e f) = w * witnessTrace 0 γ + error)
    (hbudget : |error| ≤ budget) : Real.log 2 - 2 * |t| ≤ budget := by
  have he := actual_source_error_floor N stage e f t level χ w 0 γ error hid
  rw [hnorm] at he
  norm_num at he
  exact he.trans ((le_abs_self error).trans hbudget)

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerOnLineExtractionNormalization
