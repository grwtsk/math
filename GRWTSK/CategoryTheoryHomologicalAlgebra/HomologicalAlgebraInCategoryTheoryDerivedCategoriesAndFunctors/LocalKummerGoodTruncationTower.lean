/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalKummerGoodTruncation
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalPointKummerTower
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Source-compatible p-power transitions on the GOOD truncated local cone

The full point-corrected local Kummer cone has higher Weil--Chatelet
cohomology in degree two. Its good truncation tau_<=1 has the SAME
original degree-zero and degree-one cohomology, with degree-one
cochains exactly ker(dU1). This file proves that the *actual-form*
p-power cochain transitions preserve that kernel and its original
boundary subgroup, hence descend to the degree-one cohomology of
the truncated local Kummer complex.

The level-to-level maps on geometric p-power torsion and rational
points are genuine source obligations in the inherited tower data;
they must be instantiated from the real Tau Ceti Galois modules.
No arbitrary rank, self-adjoint operator, or complex L-jet is used.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerGoodTruncationTower

open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber
open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerTower
open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerGoodTruncation

variable {A₀ A₁ A₂ B₀ B₁ : ℕ → Type*} {P : Type*}
variable [∀ n, AddCommGroup (A₀ n)] [∀ n, AddCommGroup (A₁ n)]
variable [∀ n, AddCommGroup (A₂ n)] [∀ n, AddCommGroup (B₀ n)]
variable [∀ n, AddCommGroup (B₁ n)] [AddCommGroup P]

/-- Restrict the genuine one-cochain transition to the actual
degree-one cocycles at consecutive levels. -/
def PointConeTowerData.goodTruncTransitionOne
    (D : PointConeTowerData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (n : ℕ) :
    (D.stage (n+1)).cyclesOne →+ (D.stage n).cyclesOne where
  toFun z := ⟨D.transition1 n z.val, by
    have hn := D.transition_dU1 n z.val
    have hz : (D.stage (n+1)).uD1 z.val = 0 := z.property
    rw [hz, map_zero] at hn
    exact hn.symm⟩
  map_zero' := by
    apply Subtype.ext
    simp
  map_add' x y := by
    apply Subtype.ext
    simp [map_add]

/-- The level transition COMMUTES with the original good
truncation differential. No boundary can be lost by truncation. -/
theorem PointConeTowerData.goodTrunc_transition_d0
    (D : PointConeTowerData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (n : ℕ) (x : A₀ (n+1) × P) :
    D.goodTruncTransitionOne n
        ((D.stage (n+1)).goodTruncD0 x) =
      (D.stage n).goodTruncD0 (D.transition0 n x) := by
  apply Subtype.ext
  exact D.transition_dU0 n x

/-- An actual first-degree boundary maps to an ACTUAL boundary,
so p-power transitions descend to good-truncation H1. -/
theorem PointConeTowerData.goodTrunc_boundary_natural
    (D : PointConeTowerData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (n : ℕ) {z : (D.stage (n+1)).cyclesOne}
    (hz : z ∈ (D.stage (n+1)).goodTruncD0.range) :
    D.goodTruncTransitionOne n z ∈
      (D.stage n).goodTruncD0.range := by
  obtain ⟨x,hx⟩ := hz
  refine ⟨D.transition0 n x, ?_⟩
  rw [← hx]
  exact D.goodTrunc_transition_d0 n x

/-- The TRUE cohomology transition induced by compatible cochain
maps, not a freely assigned scalar map or abstract rank. -/
def PointConeTowerData.goodTruncHOneTransition
    (D : PointConeTowerData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (n : ℕ) :
    (D.stage (n+1)).goodTruncHOne →+
      (D.stage n).goodTruncHOne :=
  QuotientAddGroup.map
    (D.stage (n+1)).goodTruncD0.range
    (D.stage n).goodTruncD0.range
    (D.goodTruncTransitionOne n)
    (fun _ h => D.goodTrunc_boundary_natural n h)

/-- On a literal cocycle representative, the H1 transition is
the ORIGINAL cochain transition. Its elliptic identification
with reduction of E(F)/p^(n+2) is a separate actual Kummer
naturality theorem, not asserted by this generic formal algebra. -/
theorem PointConeTowerData.goodTruncHOneTransition_mk
    (D : PointConeTowerData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (n : ℕ) (z : (D.stage (n+1)).cyclesOne) :
    D.goodTruncHOneTransition n
        (QuotientAddGroup.mk
          (D.stage (n+1)).goodTruncD0.range z) =
      QuotientAddGroup.mk
        (D.stage n).goodTruncD0.range
        (D.goodTruncTransitionOne n z) := by
  rfl

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerGoodTruncationTower
