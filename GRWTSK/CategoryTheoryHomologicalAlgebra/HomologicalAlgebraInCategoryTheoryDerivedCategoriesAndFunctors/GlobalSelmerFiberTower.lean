/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.SelmerMappingFiberDegreeTwo
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Every p-power transition respects the GLOBAL shifted Selmer cone

The stages are the actual-form global Galois and local point Kummer
cochain complexes from the earlier source modules. Given the true
coefficient/restriction/local-condition transition maps, the entire
global mapping fiber commutes at degrees 0,1,2.

For a real E/Q the maps are multiplication by p on E[p^(n+2)],
the geometric point group and local rational point group. This
source does NOT manufacture those Galois maps or a completed p-adic
complex from an arbitrary group of the right dimension.

A strict homomorphism of truncated complexes is enough for its
induced map on H1, but identifying that map with reduction of
E(Q_v)/p^(n+2) to E(Q_v)/p^(n+1) uses the REAL Kummer connecting
homomorphism and is a separate source-grounded cohomology proof.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.GlobalSelmerFiberTower

open GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerMappingFiber

variable {G₀ G₁ G₂ U₀ U₁ U₂ L₀ L₁ : ℕ → Type*}
variable [∀ n, AddCommGroup (G₀ n)] [∀ n, AddCommGroup (G₁ n)]
variable [∀ n, AddCommGroup (G₂ n)] [∀ n, AddCommGroup (U₀ n)]
variable [∀ n, AddCommGroup (U₁ n)] [∀ n, AddCommGroup (U₂ n)]
variable [∀ n, AddCommGroup (L₀ n)] [∀ n, AddCommGroup (L₁ n)]

/-- Actual cochain transitions. The fields commute at the level of
the ORIGINAL global/local/local-condition cochain maps, not only
after taking their degree-one Selmer quotient. -/
structure SelmerFiberTowerData where
  stage : ∀ n, ConeData
    (G₀ := G₀ n) (G₁ := G₁ n) (G₂ := G₂ n)
    (U₀ := U₀ n) (U₁ := U₁ n) (U₂ := U₂ n)
    (L₀ := L₀ n) (L₁ := L₁ n)
  g0 : ∀ n, G₀ (n + 1) →+ G₀ n
  g1 : ∀ n, G₁ (n + 1) →+ G₁ n
  g2 : ∀ n, G₂ (n + 1) →+ G₂ n
  u0 : ∀ n, U₀ (n + 1) →+ U₀ n
  u1 : ∀ n, U₁ (n + 1) →+ U₁ n
  u2 : ∀ n, U₂ (n + 1) →+ U₂ n
  l0 : ∀ n, L₀ (n + 1) →+ L₀ n
  l1 : ∀ n, L₁ (n + 1) →+ L₁ n
  ng0 : ∀ n x, g1 n ((stage (n + 1)).globalD0 x) =
    (stage n).globalD0 (g0 n x)
  ng1 : ∀ n x, g2 n ((stage (n + 1)).globalD1 x) =
    (stage n).globalD1 (g1 n x)
  nu0 : ∀ n x, u1 n ((stage (n + 1)).conditionD0 x) =
    (stage n).conditionD0 (u0 n x)
  nu1 : ∀ n x, u2 n ((stage (n + 1)).conditionD1 x) =
    (stage n).conditionD1 (u1 n x)
  nl0 : ∀ n x, l1 n ((stage (n + 1)).localD0 x) =
    (stage n).localD0 (l0 n x)
  nr0 : ∀ n x, l0 n ((stage (n + 1)).restriction0 x) =
    (stage n).restriction0 (g0 n x)
  nr1 : ∀ n x, l1 n ((stage (n + 1)).restriction1 x) =
    (stage n).restriction1 (g1 n x)
  ni0 : ∀ n x, l0 n ((stage (n + 1)).inclusion0 x) =
    (stage n).inclusion0 (u0 n x)
  ni1 : ∀ n x, l1 n ((stage (n + 1)).inclusion1 x) =
    (stage n).inclusion1 (u1 n x)

def SelmerFiberTowerData.fiberT0 (D : SelmerFiberTowerData
    (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) (n : ℕ) :
    (G₀ (n+1) × U₀ (n+1)) →+ (G₀ n × U₀ n) where
  toFun x := (D.g0 n x.1, D.u0 n x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp [map_add]

def SelmerFiberTowerData.fiberT1 (D : SelmerFiberTowerData
    (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) (n : ℕ) :
    ((G₁ (n+1) × U₁ (n+1)) × L₀ (n+1)) →+
      ((G₁ n × U₁ n) × L₀ n) where
  toFun x := ((D.g1 n x.1.1, D.u1 n x.1.2), D.l0 n x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp [map_add]

def SelmerFiberTowerData.fiberT2 (D : SelmerFiberTowerData
    (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) (n : ℕ) :
    ((G₂ (n+1) × U₂ (n+1)) × L₁ (n+1)) →+
      ((G₂ n × U₂ n) × L₁ n) where
  toFun x := ((D.g2 n x.1.1, D.u2 n x.1.2), D.l1 n x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp [map_add]

/-- The entire degree-zero global Selmer mapping-fiber differential
commutes with the authentic coefficient/restriction transition. -/
theorem SelmerFiberTowerData.fiberT1_commutes_d0
    (D : SelmerFiberTowerData (G₀ := G₀) (G₁ := G₁)
      (G₂ := G₂) (U₀ := U₀) (U₁ := U₁)
      (U₂ := U₂) (L₀ := L₀) (L₁ := L₁))
    (n : ℕ) (x : G₀ (n+1) × U₀ (n+1)) :
    D.fiberT1 n ((D.stage (n+1)).coneD0 x) =
      (D.stage n).coneD0 (D.fiberT0 n x) := by
  apply Prod.ext
  · apply Prod.ext
    · exact D.ng0 n x.1
    · exact D.nu0 n x.2
  · change D.l0 n ((D.stage (n+1)).restriction0 x.1 -
        (D.stage (n+1)).inclusion0 x.2) =
      (D.stage n).restriction0 (D.g0 n x.1) -
        (D.stage n).inclusion0 (D.u0 n x.2)
    rw [map_sub, D.nr0 n x.1, D.ni0 n x.2]

/-- The entire degree-one global Selmer mapping-fiber differential
also commutes, retaining the critical shifted-local minus sign. -/
theorem SelmerFiberTowerData.fiberT2_commutes_d1
    (D : SelmerFiberTowerData (G₀ := G₀) (G₁ := G₁)
      (G₂ := G₂) (U₀ := U₀) (U₁ := U₁)
      (U₂ := U₂) (L₀ := L₀) (L₁ := L₁))
    (n : ℕ) (x : (G₁ (n+1) × U₁ (n+1)) × L₀ (n+1)) :
    D.fiberT2 n ((D.stage (n+1)).coneD1 x) =
      (D.stage n).coneD1 (D.fiberT1 n x) := by
  apply Prod.ext
  · apply Prod.ext
    · exact D.ng1 n x.1.1
    · exact D.nu1 n x.1.2
  · change D.l1 n (((D.stage (n+1)).restriction1 x.1.1 -
        (D.stage (n+1)).inclusion1 x.1.2) -
        (D.stage (n+1)).localD0 x.2) =
      ((D.stage n).restriction1 (D.g1 n x.1.1) -
        (D.stage n).inclusion1 (D.u1 n x.1.2)) -
        (D.stage n).localD0 (D.l0 n x.2)
    rw [map_sub, map_sub, D.nr1 n x.1.1,
      D.ni1 n x.1.2, D.nl0 n x.2]

end GRWTSK.CategoryTheoryHomologicalAlgebra.GlobalSelmerFiberTower
