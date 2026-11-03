/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerGramHoppingError

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-derived nonzero-hopping coercivity

Every actual prime-power atom has weight log(p)>=log(2). Thus its
same-source cyclic realization retains the energy lower bound
(log(2)-2 abs(t))*norm(x)^2. No signed quartic extraction is supplied:
positive finite energy alone does not identify any analytic zero.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramHoppingCoercivity
open PrimePowerGramCyclicEnergy PrimePowerGramHoppingError
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

variable (N : ℕ) [NeZero N]

theorem stageVector_norm_sq (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) :
    ‖stageVector N stage e f‖ ^ 2 = ∑ a : stage.WitnessIndex, f (logLocation a.1) ^ 2 := by
  rw [PiLp.norm_sq_eq_of_L2]
  apply Fintype.sum_equiv e
  intro i
  simp [stageVector, Complex.norm_real, Real.norm_eq_abs, sq_abs]

theorem source_energy_lower (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) :
    Real.log 2 * ‖stageVector N stage e f‖ ^ 2 ≤ stageEnergy stage f := by
  rw [stageVector_norm_sq, Finset.mul_sum]
  unfold stageEnergy
  apply Finset.sum_le_sum
  intro a _
  have hl : Real.log 2 ≤ atomWeight a.1 := by
    rw [atomWeight_eq_log]
    exact Real.log_le_log (by norm_num) (by exact_mod_cast a.1.prime.2.two_le)
  exact mul_le_mul_of_nonneg_right hl (sq_nonneg _)

theorem actual_hopping_source_lower (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) (t : ℝ)
    (level : ℕ) (χ : DirichletCharacter ℂ level) :
    (Real.log 2 - 2 * |t|) * ‖stageVector N stage e f‖ ^ 2 ≤
      hamiltonianEnergy N t
        (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
        (stageVector N stage e f) := by
  have he := (abs_le.mp (actual_stage_hopping_error N stage e f t level χ)).1
  have hs := source_energy_lower N stage e f
  nlinarith

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramHoppingCoercivity
