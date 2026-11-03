/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingTwistRealPhases
import Mathlib.Logic.Equiv.Fin.Basic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exhaustive growing cyclic block index. No partial norm is substituted.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingModThreeBlockIndex
open DirichletGrowingModThreeTwistSource
variable (M : ℕ) [NeZero M]

def modThreeBlockEquiv : Fin M × Fin 3 ≃ ZMod (M*3) :=
  finProdFinEquiv.trans (ZMod.finEquiv (M*3)).toEquiv

theorem growing_block_full_sum (f : ZMod (M*3) → ℝ) :
    (∑ j : ZMod (M*3), f j)=
      ∑ a : Fin M, ∑ r : Fin 3, f (modThreeBlockEquiv M (a,r)) := by
  have h := Fintype.sum_equiv (modThreeBlockEquiv M)
    (fun ar => f (modThreeBlockEquiv M ar)) f (fun _ => rfl)
  simpa only [Fintype.sum_prod_type] using h.symm

/-- Literal arithmetic site enumeration for the source reduction bridge. -/
def arithmeticBlockSite (a : Fin M) (r : Fin 3) : ZMod (M*3) :=
  ((r.val+3*a.val : ℕ) : ZMod (M*3))

theorem arithmetic_block_reduction (h3 : 3 ∣ M*3) (a : Fin M) (r : Fin 3) :
    residueReduction (M*3) h3 (arithmeticBlockSite M a r)=(r.val : ZMod 3) := by
  simp [residueReduction,arithmeticBlockSite,map_natCast]

theorem arithmetic_block_character (h3 : 3 ∣ M*3) (a : Fin M) (r : Fin 3) :
    pulledCharacter (M*3) h3 (arithmeticBlockSite M a r)=
      DirichletModThreeQuadraticConstruction.modThreeQuadratic (r.val : ZMod 3) := by
  unfold pulledCharacter
  rw [arithmetic_block_reduction]

/- The maintained finProdFinEquiv uses r+3*a, exactly the literal arithmetic
block sites. Its finite-ring cast identification and full character/difference
norm assembly are the next source obligations. The pullback is not asserted
primitive modulo M*3, and no analytic-zero residual supplier is provided. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingModThreeBlockIndex
