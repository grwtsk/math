/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingModThreeBlockIndex

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Literal block index and full pulled-character norm. No omitted source
coordinates. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingCharacterFullNorm
open DirichletGrowingModThreeBlockIndex DirichletGrowingModThreeTwistSource
open DirichletModThreeTwistBlockEnergy DirichletModThreeQuadraticConstruction

theorem finite_ring_equiv_natcast (n : ℕ) [NeZero n] (i : Fin n) :
    ZMod.finEquiv n i=(i.val : ZMod n) := by
  cases n with
  | zero => exact (NeZero.ne 0 rfl).elim
  | succ n =>
    apply Fin.ext
    simp [ZMod.finEquiv,Nat.mod_eq_of_lt i.isLt]

variable (M : ℕ) [NeZero M]

theorem block_equiv_actual_site (a : Fin M) (r : Fin 3) :
    modThreeBlockEquiv M (a,r)=arithmeticBlockSite M a r := by
  change ZMod.finEquiv (M*3) (finProdFinEquiv (a,r))=arithmeticBlockSite M a r
  rw [finite_ring_equiv_natcast]
  rfl

theorem actual_block_character_values (h3 : 3 ∣ M*3) (a : Fin M) (r : Fin 3) :
    pulledCharacter (M*3) h3 (modThreeBlockEquiv M (a,r))=(characterBlock r : ℂ) := by
  rw [block_equiv_actual_site,arithmetic_block_character]
  fin_cases r <;> simp [characterBlock,modThreeQuadratic_one,modThreeQuadratic_two]

theorem actual_growing_character_norm_sq (h3 : 3 ∣ M*3) :
    (∑ j : ZMod (M*3), ‖pulledCharacter (M*3) h3 j‖^2)=2*(M : ℝ) := by
  rw [growing_block_full_sum M]
  simp_rw [actual_block_character_values]
  simp [characterBlock,Fin.sum_univ_succ]
  <;> ring

theorem actual_growing_twist_norm_sq (h3 : 3 ∣ M*3) (k : ZMod (M*3)) :
    (∑ j : ZMod (M*3), ‖twistedCharacter (M*3) h3 k j‖^2)=2*(M : ℝ) := by
  simp only [twistedCharacter,norm_mul]
  simp_rw [show ∀ j : ZMod (M*3), ‖ZMod.stdAddChar (k*j)‖=1 from
    fun _ => by simp [ZMod.stdAddChar_apply],one_mul]
  exact actual_growing_character_norm_sq M h3

/- Difference-channel block identification and full residual energy remain
separate. Growing dimension alone supplies no analytic-zero residual budget. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingCharacterFullNorm
