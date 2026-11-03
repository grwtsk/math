/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerGramHoppingCoercivity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Explicit centered arithmetic Gram source

The new source subtracts log(2) times the COMPLETE sample norm squared.
Its weights log(p)-log(2) remain nonnegative. The original arithmetic
potential realizes it with coefficients (1,0,-log(2)) and the genuine
level-one character. This changes the source; the counterterm must be
retained in any analytic identity. No signed extraction is constructed.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredGramSource
open PrimePowerGramCyclicEnergy PrimePowerGramHoppingCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

def centeredStageEnergy (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) : ℝ :=
  ∑ a : stage.WitnessIndex, (atomWeight a.1 - Real.log 2) * f (logLocation a.1) ^ 2

theorem centeredStageEnergy_nonneg (stage : PrimePowerWitnessStage) (f : ℝ → ℝ) :
    0 ≤ centeredStageEnergy stage f := by
  apply Finset.sum_nonneg
  intro a _
  apply mul_nonneg _ (sq_nonneg _)
  rw [sub_nonneg, atomWeight_eq_log]
  exact Real.log_le_log (by norm_num) (by exact_mod_cast a.1.prime.2.two_le)

variable (N : ℕ) [NeZero N]

theorem exact_centering_counterterm (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) :
    centeredStageEnergy stage f = stageEnergy stage f -
      Real.log 2 * ‖stageVector N stage e f‖ ^ 2 := by
  rw [stageVector_norm_sq, Finset.mul_sum]
  unfold centeredStageEnergy stageEnergy
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  ring

theorem level_one_centered_potential (m : ZMod N → ℕ) (i : ZMod N) :
    arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1) m 1 0 (-Real.log 2) i =
      ArithmeticFunction.vonMangoldt (m i) - Real.log 2 := by
  have hm : (m i : ZMod 1) = 1 := Subsingleton.elim _ _
  simp [arithmeticPotential, hm, sub_eq_add_neg]

theorem actual_centered_cyclic_energy (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) :
    hamiltonianEnergy N 0
      (arithmeticPotential N 1 (1 : DirichletCharacter ℂ 1)
        (fun i => atomNat (e i).1) 1 0 (-Real.log 2))
      (stageVector N stage e f) = centeredStageEnergy stage f := by
  unfold stageVector
  rw [diagonal_real_sample_energy]
  unfold centeredStageEnergy
  apply Fintype.sum_equiv e
  intro i
  rw [level_one_centered_potential]
  rfl

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredGramSource
