/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerGramCyclicEnergy
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicHoppingBounds

set_option autoImplicit false
noncomputable section

/-!
# Hopping cost on the same arithmetic Gram source

The complete source-vector quadratic energy changes by at most
2 abs(t-s) norm(x)^2. Applying this to the actual prime-power stage
retains its source labels and samples while restoring nonzero hopping.
An energy comparison is not a full-vector spectral residual. Across
growing stages even t->0 needs control of norm(x)^2 at the required
extraction scale. No signed zero extraction or RH conclusion is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramHoppingError
open PrimePowerGramCyclicEnergy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHoppingBounds
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

variable (N : ℕ) [NeZero N]

theorem energy_hopping_change_le (t s : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    |hamiltonianEnergy N t q x - hamiltonianEnergy N s q x| ≤
      2 * |t - s| * ‖x‖ ^ 2 := by
  have he : hamiltonianEnergy N t q x - hamiltonianEnergy N s q x =
      (inner ℂ x ((hamiltonianOperator N t q - hamiltonianOperator N s q) x)).re := by
    simp [hamiltonianEnergy, inner_sub_right]
  rw [he]
  calc
    _ ≤ ‖inner ℂ x ((hamiltonianOperator N t q - hamiltonianOperator N s q) x)‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖x‖ * ‖(hamiltonianOperator N t q - hamiltonianOperator N s q) x‖ :=
      norm_inner_le_norm _ _
    _ ≤ ‖x‖ * (‖hamiltonianOperator N t q - hamiltonianOperator N s q‖ * ‖x‖) :=
      mul_le_mul_of_nonneg_left
        ((hamiltonianOperator N t q - hamiltonianOperator N s q).le_opNorm x) (norm_nonneg x)
    _ ≤ ‖x‖ * ((2 * |t - s|) * ‖x‖) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right
        (operator_hopping_change_le N t s q) (norm_nonneg x)) (norm_nonneg x)
    _ = _ := by ring

theorem actual_stage_hopping_error (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ) (t : ℝ)
    (level : ℕ) (χ : DirichletCharacter ℂ level) :
    |hamiltonianEnergy N t
        (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
        (stageVector N stage e f) - stageEnergy stage f| ≤
      2 * |t| * ‖stageVector N stage e f‖ ^ 2 := by
  rw [← actual_stageEnergy_eq_cyclic_energy N stage e f level χ]
  simpa only [sub_zero] using energy_hopping_change_le N t 0
    (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
    (stageVector N stage e f)

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramHoppingError
