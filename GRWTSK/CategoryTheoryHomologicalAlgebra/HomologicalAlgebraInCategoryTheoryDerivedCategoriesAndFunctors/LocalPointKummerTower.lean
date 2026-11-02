/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalPointKummerFiber
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact inverse p-power transition on the local Kummer point fiber

Level n represents E[p^(n+1)], so no zero multiplier is introduced.
For genuine elliptic points the transition maps multiply by p on
torsion coefficients, geometric points and rational points. The
cochain maps are strictly compatible because every additive
homomorphism commutes with p-smul.

On H1 the induced transition is *reduction*
 E(F)/p^(n+2)E(F) -> E(F)/p^(n+1)E(F),
NOT p-multiplication on the quotient. For a point P with
p^(n+2)Q=P, the cocycle represented by Q maps to the cocycle
represented by pQ, which still comes from P. The geometric
zero-cochain is multiplied by p and the local point numerator
is unchanged after applying the Kummer connecting class.

The cochain-level source is a candidate; the actual elliptic
coefficient transition and Kummer naturality remain an external
source-typed adapter obligation under Tau Ceti's toolchain.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerTower

open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber

variable {A₀ A₁ A₂ B₀ B₁ : ℕ → Type*} {P : Type*}
variable [∀ n, AddCommGroup (A₀ n)] [∀ n, AddCommGroup (A₁ n)]
variable [∀ n, AddCommGroup (A₂ n)] [∀ n, AddCommGroup (B₀ n)]
variable [∀ n, AddCommGroup (B₁ n)] [AddCommGroup P]

/-- A real point-corrected local cone at every finite p-power,
with precise degreewise transition maps and *all* cochain naturalities.
These must be discharged by the original elliptic representation.
-/
structure PointConeTowerData where
  stage : ∀ n, PointConeData (A₀ := A₀ n) (A₁ := A₁ n)
    (A₂ := A₂ n) (B₀ := B₀ n) (B₁ := B₁ n) (P := P)
  a0 : ∀ n, A₀ (n + 1) →+ A₀ n
  a1 : ∀ n, A₁ (n + 1) →+ A₁ n
  a2 : ∀ n, A₂ (n + 1) →+ A₂ n
  b0 : ∀ n, B₀ (n + 1) →+ B₀ n
  b1 : ∀ n, B₁ (n + 1) →+ B₁ n
  point : P →+ P
  dA0_natural : ∀ n a,
    a1 n ((stage (n + 1)).dA0 a) =
      (stage n).dA0 (a0 n a)
  dA1_natural : ∀ n a,
    a2 n ((stage (n + 1)).dA1 a) =
      (stage n).dA1 (a1 n a)
  dB0_natural : ∀ n b,
    b1 n ((stage (n + 1)).dB0 b) =
      (stage n).dB0 (b0 n b)
  j0_natural : ∀ n a,
    b0 n ((stage (n + 1)).j0 a) =
      (stage n).j0 (a0 n a)
  j1_natural : ∀ n a,
    b1 n ((stage (n + 1)).j1 a) =
      (stage n).j1 (a1 n a)
  eta_natural : ∀ n p,
    b0 n ((stage (n + 1)).eta p) =
      (stage n).eta (point p)

/-- Transition on local U^0 = A0 x E(F). -/
def PointConeTowerData.transition0 (D : PointConeTowerData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (n : ℕ) :
    (A₀ (n + 1) × P) →+ (A₀ n × P) where
  toFun x := (D.a0 n x.1, D.point x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp [map_add]

/-- Transition on local U^1 = A1 x B0. -/
def PointConeTowerData.transition1 (D : PointConeTowerData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (n : ℕ) :
    (A₁ (n + 1) × B₀ (n + 1)) →+ (A₁ n × B₀ n) where
  toFun x := (D.a1 n x.1, D.b0 n x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp [map_add]

/-- Transition on local U^2 = A2 x B1. -/
def PointConeTowerData.transition2 (D : PointConeTowerData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (n : ℕ) :
    (A₂ (n + 1) × B₁ (n + 1)) →+ (A₂ n × B₁ n) where
  toFun x := (D.a2 n x.1, D.b1 n x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by ext <;> simp [map_add]

/-- The ACTUAL local U^0->U^1 differential is natural. -/
theorem PointConeTowerData.transition_dU0 (D : PointConeTowerData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (n : ℕ)
    (x : A₀ (n + 1) × P) :
    D.transition1 n ((D.stage (n + 1)).uD0 x) =
      (D.stage n).uD0 (D.transition0 n x) := by
  apply Prod.ext
  · exact D.dA0_natural n x.1
  · change D.b0 n ((D.stage (n + 1)).j0 x.1 -
      (D.stage (n + 1)).eta x.2) =
      (D.stage n).j0 (D.a0 n x.1) -
        (D.stage n).eta (D.point x.2)
    rw [map_sub, D.j0_natural n x.1, D.eta_natural n x.2]

/-- The ACTUAL local U^1->U^2 differential is natural. -/
theorem PointConeTowerData.transition_dU1 (D : PointConeTowerData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (n : ℕ)
    (x : A₁ (n + 1) × B₀ (n + 1)) :
    D.transition2 n ((D.stage (n + 1)).uD1 x) =
      (D.stage n).uD1 (D.transition1 n x) := by
  apply Prod.ext
  · exact D.dA1_natural n x.1
  · change D.b1 n ((D.stage (n + 1)).j1 x.1 -
      (D.stage (n + 1)).dB0 x.2) =
      (D.stage n).j1 (D.a1 n x.1) -
        (D.stage n).dB0 (D.b0 n x.2)
    rw [map_sub, D.j1_natural n x.1, D.dB0_natural n x.2]

/-- Multiplication-by-p on any true additive coefficient group is an
additive homomorphism. Every genuine restriction/coefficient map
commutes with it by the universal map_nsmul law. -/
theorem p_smul_natural {X Y : Type*}
    [AddCommGroup X] [AddCommGroup Y]
    (f : X →+ Y) (p : ℕ) (x : X) :
    f (p • x) = p • f x := map_nsmul f p x

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerTower
