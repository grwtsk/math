/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib character bounds by Michael Stoll retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletScalarCorrectionResidualBudget
import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Data.Nat.Totient

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact complete norm of genuine Dirichlet character vectors.
No character-to-eigenvector identification or residual estimate is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGenuineCharacterVectorNorm
variable (N : ℕ) [NeZero N]

def characterVector (χ : DirichletCharacter ℂ N) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun j => χ j)

theorem character_coordinate_mass (χ : DirichletCharacter ℂ N) (j : ZMod N) :
    ‖χ j‖^2=(1 : MulChar (ZMod N) ℝ) j := by
  by_cases hu : IsUnit j
  · have hn : ‖χ j‖=1 := by simpa only [hu.unit_spec] using χ.unit_norm_eq_one hu.unit
    rw [hn, MulChar.one_apply hu]
    norm_num
  · rw [χ.map_nonunit hu, (1 : MulChar (ZMod N) ℝ).map_nonunit hu]
    norm_num

theorem character_full_mass (χ : DirichletCharacter ℂ N) :
    (∑ j : ZMod N, ‖χ j‖^2)=(Nat.totient N : ℝ) := by
  simp_rw [character_coordinate_mass N χ]
  rw [MulChar.sum_one_eq_card_units, ZMod.card_units_eq_totient]

theorem characterVector_norm_sq (χ : DirichletCharacter ℂ N) :
    ‖characterVector N χ‖^2=(Nat.totient N : ℝ) := by
  rw [PiLp.norm_sq_eq_of_L2]
  exact character_full_mass N χ

theorem characterVector_norm (χ : DirichletCharacter ℂ N) :
    ‖characterVector N χ‖=Real.sqrt (Nat.totient N : ℝ) := by
  have h := characterVector_norm_sq N χ
  have hs := Real.sq_sqrt (Nat.cast_nonneg (Nat.totient N) : (0 : ℝ) ≤ Nat.totient N)
  nlinarith [norm_nonneg (characterVector N χ), Real.sqrt_nonneg (Nat.totient N : ℝ)]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGenuineCharacterVectorNorm
