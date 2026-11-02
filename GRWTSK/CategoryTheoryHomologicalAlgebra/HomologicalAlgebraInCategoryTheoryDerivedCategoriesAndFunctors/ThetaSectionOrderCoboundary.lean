/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.ThetaCentralPolarization
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.ThetaCentralBoundaryPolarization
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Reconcile the TWO source theta polarization orders

The project already contains both source-only formulas:

  beta_(uv)(sigma,tau)
    = [v_sigma,sigma(u_tau)] * beta_u * beta_v,

and the reversed section convention

  beta_(vu)(sigma,tau)
    = [u_sigma,sigma(v_tau)] * beta_v * beta_u.

These are not contradictory. In ANY central extension, the
two pointwise sections differ by the central one-cochain

  c_sigma = [u_sigma,v_sigma],
  u_sigma*v_sigma = c_sigma*(v_sigma*u_sigma).

Consequently their nonabelian factor sets differ by the
ordinary central two-coboundary

  beta_(uv) = (c_sigma * sigma(c_tau) * c_(sigma*tau)^(-1)) * beta_(vu).

The theorem below proves this as a direct group-law identity
under only the actual commutations of the section-change
factors. In the genuine elliptic theta group they are
central scalar functions by the pinned divisor criterion.

The REVERSED product section (v*u) is canonical for
the original ordered Weil-cup arguments
e_n(a_sigma,sigma b_tau). The forward product (u*v)
is a useful consistency check and differs by the
explicit one-cochain c. No extra arithmetic sign or
unproven Weil-commutator identification is assumed.

This is a precise optimization of the shared proof frontier,
not an acceptance claim: no Lean/compiler/kernel replay
has been run, and the original geometric commutator=e_n
and continuous H2/Brauer transport remain independent.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaSectionOrderCoboundary

variable {G Θ : Type*}
variable [Group G] [Group Θ] [MulDistribMulAction G Θ]

/-- Same left-commutator convention as both existing
source-pinned polarization proof candidates. -/
def swapScalar (u v : G → Θ) (g : G) : Θ :=
  u g * v g * (u g)⁻¹ * (v g)⁻¹

/-- Exact pointwise section change, valid in any group
before centrality or Galois cohomology is considered. -/
theorem forward_section_eq_scalar_mul_reverse
    (u v : G → Θ) (g : G) :
    u g * v g = swapScalar u v g * (v g * u g) := by
  unfold swapScalar
  group

/-! ## Eliminate arbitrary scalar choices in geometric commutators

The REAL theta group has scalar lifts in its center by the
original function-field zero-divisor criterion. These
pure group lemmas show that its commutator does not depend
on scaling either theta lift by a central function.
-/

/-- A central rescaling of the FIRST actual theta lift
does not change its commutator. -/
theorem commutator_central_left
    (x y z : Θ) (hz : ∀ t : Θ, Commute z t) :
    GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization.thetaCommutator
        (z * x) y =
      GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization.thetaCommutator
        x y := by
  let c := x * y * x⁻¹
  have hc : z * c = c * z := (hz c).eq
  change (z * x) * y * (z * x)⁻¹ * y⁻¹ =
    x * y * x⁻¹ * y⁻¹
  calc
    (z * x) * y * (z * x)⁻¹ * y⁻¹ =
      z * c * z⁻¹ * y⁻¹ := by
        dsimp [c]
        group
    _ = c * z * z⁻¹ * y⁻¹ := by rw [hc]
    _ = x * y * x⁻¹ * y⁻¹ := by
      dsimp [c]
      group

/-- A central rescaling of the SECOND actual theta lift
does not change its commutator. -/
theorem commutator_central_right
    (x y z : Θ) (hz : ∀ t : Θ, Commute z t) :
    GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization.thetaCommutator
        x (z * y) =
      GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization.thetaCommutator
        x y := by
  have hx : x * z = z * x := (hz x).eq.symm
  change x * (z * y) * x⁻¹ * (z * y)⁻¹ =
    x * y * x⁻¹ * y⁻¹
  calc
    x * (z * y) * x⁻¹ * (z * y)⁻¹ =
      (x * z) * y * x⁻¹ * y⁻¹ * z⁻¹ := by group
    _ = z * (x * y * x⁻¹ * y⁻¹) * z⁻¹ := by
      rw [hx]
      group
    _ = x * y * x⁻¹ * y⁻¹ := by
      have h := (hz (x * y * x⁻¹ * y⁻¹)).eq
      rw [h]
      group

/-- The ORIGINAL geometric commutator therefore descends
to the underlying torsion points once the actual
central constant-field kernel is established. -/
theorem commutator_central_both
    (x y z w : Θ)
    (hz : ∀ t : Θ, Commute z t)
    (hw : ∀ t : Θ, Commute w t) :
    GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization.thetaCommutator
        (z * x) (w * y) =
      GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization.thetaCommutator
        x y := by
  rw [commutator_central_left x (w * y) z hz]
  exact commutator_central_right x y w hw

/-- The genuine section-change coboundary identity.
This is the equality, not a request to choose a 2-cocycle:
it follows by associativity, the action on a product, and
the two explicitly stated central scalar commutations. -/
theorem boundary_mul_central
    (c w : G → Θ) (σ τ : G)
    (hshift : w σ * (σ • c τ) = (σ • c τ) * w σ)
    (hend :
      (w σ * (σ • w τ) * (w (σ * τ))⁻¹) *
          (c (σ * τ))⁻¹ =
        (c (σ * τ))⁻¹ *
          (w σ * (σ • w τ) * (w (σ * τ))⁻¹)) :
    GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization.boundary
        (fun g => c g * w g) σ τ =
      (c σ * (σ • c τ) * (c (σ * τ))⁻¹) *
        GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization.boundary
          w σ τ := by
  let A := c σ
  let B := σ • c τ
  let C := c (σ * τ)
  let X := w σ
  let Y := σ • w τ
  let Z := w (σ * τ)
  have hXB : X * B = B * X := hshift
  have hZC :
      (X * Y * Z⁻¹) * C⁻¹ =
        C⁻¹ * (X * Y * Z⁻¹) := hend
  simp only [GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization.boundary,
    smul_mul]
  change (A * X) * (B * Y) * (C * Z)⁻¹ =
    (A * B * C⁻¹) * (X * Y * Z⁻¹)
  calc
    (A * X) * (B * Y) * (C * Z)⁻¹ =
        A * (X * B) * Y * Z⁻¹ * C⁻¹ := by group
    _ = A * (B * X) * Y * Z⁻¹ * C⁻¹ := by rw [hXB]
    _ = A * B * ((X * Y * Z⁻¹) * C⁻¹) := by group
    _ = A * B * (C⁻¹ * (X * Y * Z⁻¹)) := by rw [hZC]
    _ = (A * B * C⁻¹) * (X * Y * Z⁻¹) := by group

/-- Compatibility of the FORWARD (u*v) and REVERSED
(v*u) theta sections. The only source premises are the
two pointwise scalar commutations forced by the original
geometric theta-group central kernel. This prevents a
silent minus sign when applying the source Weil pairing. -/
theorem forward_reverse_boundary_coboundary
    (u v : G → Θ) (σ τ : G)
    (hshift :
      (v σ * u σ) * (σ • swapScalar u v τ) =
        (σ • swapScalar u v τ) * (v σ * u σ))
    (hend :
      ((v σ * u σ) * (σ • (v τ * u τ)) *
          (v (σ * τ) * u (σ * τ))⁻¹) *
          (swapScalar u v (σ * τ))⁻¹ =
        (swapScalar u v (σ * τ))⁻¹ *
          ((v σ * u σ) * (σ • (v τ * u τ)) *
            (v (σ * τ) * u (σ * τ))⁻¹)) :
    GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization.boundary
      (fun g => u g * v g) σ τ =
        (swapScalar u v σ * (σ • swapScalar u v τ) *
          (swapScalar u v (σ * τ))⁻¹) *
        GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization.boundary
          (fun g => v g * u g) σ τ := by
  have hs : (fun g => u g * v g) =
      (fun g => swapScalar u v g * (v g * u g)) := by
    funext g
    exact forward_section_eq_scalar_mul_reverse u v g
  rw [hs]
  exact boundary_mul_central (swapScalar u v)
    (fun g => v g * u g) σ τ hshift hend

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaSectionOrderCoboundary
