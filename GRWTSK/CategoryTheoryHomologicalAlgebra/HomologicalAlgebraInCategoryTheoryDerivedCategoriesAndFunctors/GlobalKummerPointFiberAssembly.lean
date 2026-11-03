/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalPointKummerFiber
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.SelmerMappingFiberDegreeTwo
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Global Selmer mapping fiber with ORIGINAL point-corrected local Kummer fibers

For a real elliptic E/Q and a source-verified family of completions,
the global Galois cochains must be C_cont(G_{Q,S},E[p^n]), the
local torsion cochains those of G_v, and every local condition the
point-corrected cochain fiber of E[p^n]->E over E(Q_v).

The source below assembles these exact additive cochain shapes for
an indexed family of places. Its global and local restriction maps
are EXPLICIT SOURCE INPUTS; they must be the real Galois pullbacks
from Tau Ceti, not invented coordinate maps. Their naturality plus
the honest local point cone proves the complete global d^1 d^0=0.

For an all-places arithmetic complex, restricted products,
archimedean terms and unramified conditions outside a finite S
remain separate topological/number-theoretic source obligations.
No p-adic derived regulator or complex BSD comparison is claimed.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.GlobalKummerSelmerFiber

open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber
open GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerMappingFiber

variable {ι G₀ G₁ G₂ : Type*}
variable {A₀ A₁ A₂ B₀ B₁ P : ι → Type*}
variable [AddCommGroup G₀] [AddCommGroup G₁] [AddCommGroup G₂]
variable [∀ v, AddCommGroup (A₀ v)] [∀ v, AddCommGroup (A₁ v)]
variable [∀ v, AddCommGroup (A₂ v)] [∀ v, AddCommGroup (B₀ v)]
variable [∀ v, AddCommGroup (B₁ v)] [∀ v, AddCommGroup (P v)]

abbrev AllLocalZero := ∀ v, (A₀ v × P v)
abbrev AllLocalOne := ∀ v, (A₁ v × B₀ v)
abbrev AllLocalTwo := ∀ v, (A₂ v × B₁ v)
abbrev AllTorsionZero := ∀ v, A₀ v
abbrev AllTorsionOne := ∀ v, A₁ v

/-- Complete source data for the finite p^n global mapping fiber.
Local conditions are bona fide point-corrected cones, not naked H1
subgroups or a chosen numerical Selmer rank. -/
structure GlobalPointConeData where
  globalD0 : G₀ →+ G₁
  globalD1 : G₁ →+ G₂
  global_sq : ∀ g, globalD1 (globalD0 g) = 0
  local : ∀ v, PointConeData
    (A₀ := A₀ v) (A₁ := A₁ v) (A₂ := A₂ v)
    (B₀ := B₀ v) (B₁ := B₁ v) (P := P v)
  restriction0 : G₀ →+ AllTorsionZero (ι := ι) (A₀ := A₀)
  restriction1 : G₁ →+ AllTorsionOne (ι := ι) (A₁ := A₁)
  restriction_natural : ∀ g v,
    (local v).dA0 (restriction0 g v) =
      restriction1 (globalD0 g) v

/-- Source-family local-degree-zero point-corrected differential. -/
def GlobalPointConeData.conditionD0 (D : GlobalPointConeData
    (ι := ι) (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    AllLocalZero (ι := ι) (A₀ := A₀) (P := P) →+
      AllLocalOne (ι := ι) (A₁ := A₁) (B₀ := B₀) where
  toFun x v := (D.local v).uD0 (x v)
  map_zero' := by
    funext v
    simp
  map_add' x y := by
    funext v
    simp [map_add, Pi.add_apply]

/-- Source-family local-degree-one point-corrected differential. -/
def GlobalPointConeData.conditionD1 (D : GlobalPointConeData
    (ι := ι) (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    AllLocalOne (ι := ι) (A₁ := A₁) (B₀ := B₀) →+
      AllLocalTwo (ι := ι) (A₂ := A₂) (B₁ := B₁) where
  toFun x v := (D.local v).uD1 (x v)
  map_zero' := by funext v; simp
  map_add' x y := by funext v; simp [map_add, Pi.add_apply]

/-- The local cochain complex against which the source maps are
compared is the ACTUAL E[p^n] cochain complex at every place. -/
def GlobalPointConeData.torsionLocalD0 (D : GlobalPointConeData
    (ι := ι) (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    AllTorsionZero (ι := ι) (A₀ := A₀) →+
      AllTorsionOne (ι := ι) (A₁ := A₁) where
  toFun x v := (D.local v).dA0 (x v)
  map_zero' := by funext v; simp
  map_add' x y := by funext v; simp [map_add, Pi.add_apply]

/-- The local condition inclusion in degree zero projects onto the
actual E[p^n]-coefficient cochain, retaining the rational-point source. -/
def GlobalPointConeData.inclusion0 (D : GlobalPointConeData
    (ι := ι) (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    AllLocalZero (ι := ι) (A₀ := A₀) (P := P) →+
      AllTorsionZero (ι := ι) (A₀ := A₀) where
  toFun x v := (x v).1
  map_zero' := by funext v; rfl
  map_add' x y := by funext v; rfl

/-- The degree-one inclusion projects onto the same genuine local
torsion-coefficient cochain. -/
def GlobalPointConeData.inclusion1 (D : GlobalPointConeData
    (ι := ι) (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    AllLocalOne (ι := ι) (A₁ := A₁) (B₀ := B₀) →+
      AllTorsionOne (ι := ι) (A₁ := A₁) where
  toFun x v := (x v).1
  map_zero' := by funext v; rfl
  map_add' x y := by funext v; rfl

/-- Full actual-form global Selmer mapping-fiber data, using the
PREVIOUS full shifted cone with its essential local degree-zero term.
-/
def GlobalPointConeData.globalFiberData (D : GlobalPointConeData
    (ι := ι) (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    ConeData (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
      (U₀ := AllLocalZero (ι := ι) (A₀ := A₀) (P := P))
      (U₁ := AllLocalOne (ι := ι) (A₁ := A₁) (B₀ := B₀))
      (U₂ := AllLocalTwo (ι := ι) (A₂ := A₂) (B₁ := B₁))
      (L₀ := AllTorsionZero (ι := ι) (A₀ := A₀))
      (L₁ := AllTorsionOne (ι := ι) (A₁ := A₁)) where
  globalD0 := D.globalD0
  globalD1 := D.globalD1
  conditionD0 := D.conditionD0
  conditionD1 := D.conditionD1
  localD0 := D.torsionLocalD0
  restriction0 := D.restriction0
  restriction1 := D.restriction1
  inclusion0 := D.inclusion0
  inclusion1 := D.inclusion1
  global_sq := D.global_sq
  condition_sq := by
    intro x
    funext v
    exact (D.local v).uD1_uD0 (x v)
  restriction_natural := by
    intro g
    funext v
    exact D.restriction_natural g v
  inclusion_natural := by
    intro x
    funext v
    rfl

/-- The GLOBAL mapping fiber is a true complex from global cochain
naturality and the actual point-corrected local complex, without
assuming a Selmer rank, a perfect height or a complex analytic zero. -/
theorem GlobalPointConeData.global_fiber_square_zero
    (D : GlobalPointConeData (ι := ι) (G₀ := G₀)
      (G₁ := G₁) (G₂ := G₂)
      (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
      (B₀ := B₀) (B₁ := B₁) (P := P))
    (x : ConeDegreeZero
      (G₀ := G₀)
      (U₀ := AllLocalZero (ι := ι) (A₀ := A₀) (P := P))) :
    D.globalFiberData.coneD1 (D.globalFiberData.coneD0 x) = 0 :=
  D.globalFiberData.coneD1_coneD0 x

end GRWTSK.CategoryTheoryHomologicalAlgebra.GlobalKummerSelmerFiber
