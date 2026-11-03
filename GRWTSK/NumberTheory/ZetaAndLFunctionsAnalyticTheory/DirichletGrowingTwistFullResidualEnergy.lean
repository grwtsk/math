/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingCharacterFullNorm

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual growing arithmetic residual energy, retaining all source sites.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistFullResidualEnergy
open DirichletGrowingModThreeBlockIndex DirichletGrowingModThreeTwistSource
open DirichletGrowingCharacterFullNorm DirichletGrowingTwistRealPhases
open DirichletModThreeTwistBlockEnergy DirichletModThreeQuadraticConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (M : ℕ) [NeZero M] (h3 : 3 ∣ M*3)

theorem actual_difference_block_values (a : Fin M) (r : Fin 3) :
    pulledCharacter (M*3) h3 (modThreeBlockEquiv M (a,r)+1)-
      pulledCharacter (M*3) h3 (modThreeBlockEquiv M (a,r)-1)=(differenceBlock r : ℂ) := by
  rw [block_equiv_actual_site]
  unfold pulledCharacter
  have hp : residueReduction (M*3) h3 (arithmeticBlockSite M a r+1)=
      (r.val : ZMod 3)+1 := by rw [map_add,map_one,arithmetic_block_reduction]
  have hm : residueReduction (M*3) h3 (arithmeticBlockSite M a r-1)=
      (r.val : ZMod 3)-1 := by rw [map_sub,map_one,arithmetic_block_reduction]
  rw [hp,hm]
  fin_cases r <;> norm_num [differenceBlock,modThreeQuadratic_one,modThreeQuadratic_two]

def actualTwistResidual (t w : ℝ) (λ : ℂ) (k j : ZMod (M*3)) : ℂ :=
  (hamiltonian (M*3) t
    (arithmeticPotential (M*3) 3 modThreeQuadratic (fun _ => 1) 0 0 w)).mulVec
    (twistedCharacter (M*3) h3 k) j-λ*twistedCharacter (M*3) h3 k j

theorem actual_residual_block (t w : ℝ) (λ : ℂ) (k : ZMod (M*3))
    (a : Fin M) (r : Fin 3) :
    actualTwistResidual M h3 t w λ k (modThreeBlockEquiv M (a,r))=
      ZMod.stdAddChar (k*modThreeBlockEquiv M (a,r))*
      twistResidualBlock (((w-t*(ZMod.stdAddChar k).re : ℝ) : ℂ)-λ)
        (t*(ZMod.stdAddChar k).im) r := by
  unfold actualTwistResidual
  rw [actual_real_phase_residual,actual_block_character_values,actual_difference_block_values]
  rfl

theorem actual_growing_full_residual_energy (t w : ℝ) (λ : ℂ) (k : ZMod (M*3)) :
    (∑ j : ZMod (M*3), ‖actualTwistResidual M h3 t w λ k j‖^2)=
      (M : ℝ)*(2*‖(((w-t*(ZMod.stdAddChar k).re : ℝ) : ℂ)-λ)‖^2+
        6*(t*(ZMod.stdAddChar k).im)^2) := by
  rw [growing_block_full_sum M]
  simp_rw [actual_residual_block]
  exact growing_full_block_energy M _ _ _
    (fun _ _ => by simp [ZMod.stdAddChar_apply])

/- Combined with actual_growing_twist_norm_sq=2M, normalized energy is
|w-t Re(z)-lambda|^2+3*(t Im(z))^2. The zero-character coordinates supply
part of the second term. No analytic zero provides shrinking residuals;
this finite source realization is not a proof of GRH. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistFullResidualEnergy
