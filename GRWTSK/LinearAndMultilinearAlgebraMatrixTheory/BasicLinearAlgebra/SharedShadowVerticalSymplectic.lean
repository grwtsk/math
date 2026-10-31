/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# A symplectic form on two distinct, dually paired vertical fibers

The shared-shadow pullback has two generally different kernel
directions. They are NOT each assumed to be symplectic. Instead a
specified nondegenerate duality between two R-modules V and W
induces an alternating, nondegenerate form on V × W:

  omega((v,w),(v',w')) = pair(v,w') - pair(v',w).

This is the precise two-sided vertical symplectic mechanism.
It is a separate supplier to SharedShadowPullback: no duality is
manufactured from an additive-group projection, a prime index,
a phase drawing or a δ-ring/prismatic label. To instantiate it
on an actual shared-shadow kernel, first construct two module
structures over the SAME coefficient ring, identify the actual
kernels with V and W, and prove the perfect pairing hypotheses.

Finite p-primary additive groups do not automatically support
a nondegenerate REAL-valued alternating pairing. A suitable
coefficient system (for example a finite characteristic-p ring)
and source-exact transport must be chosen.
-/

namespace GRWTSK.LinearAlgebra.SharedShadowVerticalSymplectic

universe u v w

variable {R : Type u} {V : Type v} {W : Type w}
variable [CommRing R]
variable [AddCommGroup V] [Module R V]
variable [AddCommGroup W] [Module R W]

/-- The duality is an explicit proof-bearing input. The required
separation holds on BOTH sides, not merely one. -/
structure DualFibers (R : Type u) (V : Type v) (W : Type w)
    [CommRing R]
    [AddCommGroup V] [Module R V]
    [AddCommGroup W] [Module R W] where
  pairing : V →ₗ[R] W →ₗ[R] R
  left_separates : ∀ v, (∀ w, pairing v w = 0) → v = 0
  right_separates : ∀ w, (∀ v, pairing v w = 0) → w = 0

/-- Opposite cross terms retain the two distinct vertical fibers. -/
def DualFibers.verticalForm (P : DualFibers R V W)
    (x y : V × W) : R :=
  P.pairing x.1 y.2 - P.pairing y.1 x.2

/-- The resulting vertical form is alternating, with no
characteristic restriction. -/
theorem DualFibers.verticalForm_alternating
    (P : DualFibers R V W) (x : V × W) :
    P.verticalForm x x = 0 := by
  simp [DualFibers.verticalForm]

/-- The opposite orientation reverses the form. -/
theorem DualFibers.verticalForm_skew
    (P : DualFibers R V W) (x y : V × W) :
    P.verticalForm x y = -P.verticalForm y x := by
  dsimp [DualFibers.verticalForm]
  ring

theorem DualFibers.verticalForm_add_left
    (P : DualFibers R V W) (x y z : V × W) :
    P.verticalForm (x + y) z =
      P.verticalForm x z + P.verticalForm y z := by
  rcases x with ⟨vx, wx⟩
  rcases y with ⟨vy, wy⟩
  rcases z with ⟨vz, wz⟩
  simp [DualFibers.verticalForm, map_add]
  ring

theorem DualFibers.verticalForm_add_right
    (P : DualFibers R V W) (x y z : V × W) :
    P.verticalForm x (y + z) =
      P.verticalForm x y + P.verticalForm x z := by
  rcases x with ⟨vx, wx⟩
  rcases y with ⟨vy, wy⟩
  rcases z with ⟨vz, wz⟩
  simp [DualFibers.verticalForm, map_add]
  ring

/-- The two given nondegeneracy statements establish an actual
symplectic nondegeneracy conclusion on the product fiber. A
nondegenerate pairing on only one side is not sufficient. -/
theorem DualFibers.verticalForm_nondegenerate
    (P : DualFibers R V W) (x : V × W)
    (h : ∀ y : V × W, P.verticalForm x y = 0) :
    x = 0 := by
  have hv : x.1 = 0 := P.left_separates x.1 (by
    intro w
    have hx := h ((0 : V), w)
    simpa [DualFibers.verticalForm] using hx)
  have hw : x.2 = 0 := P.right_separates x.2 (by
    intro v
    have hx := h (v, (0 : W))
    have hneg : -(P.pairing v x.2) = 0 := by
      simpa [DualFibers.verticalForm] using hx
    exact neg_eq_zero.mp hneg)
  apply Prod.ext
  · exact hv
  · exact hw

end GRWTSK.LinearAlgebra.SharedShadowVerticalSymplectic
