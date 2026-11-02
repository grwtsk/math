/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Polarization of a CENTRAL theta extension at the Galois cochain level

This is the nonabelian group-law calculation needed to lift a
genuine geometric theta group to a Brauer obstruction. It is
not an invented E[n] pairing or an assumption of the desired
polarization. If u_σ, v_σ are lifts of two actual 1-cocycles,
write b_u(σ,τ)=u_σ σ(u_τ) u_(στ)^{-1}.
Because the genuine theta kernel consists of scalar central
functions, the values of b_u,b_v and all commutators are central.

The direct multiplication calculation gives
  b_(uv)(σ,τ)= [v_σ, σ(u_τ)] b_u(σ,τ) b_v(σ,τ).

This is the true polarization identity for the theta factor
set. NOTE: it uses the FORWARD section order u*v. The existing
ThetaCentralPolarization.lean uses REVERSED v*u and yields the
original ordered Weil-cup term [u_sigma,sigma(v_tau)].
ThetaSectionOrderCoboundary.lean proves their explicit change-of-section
scalar two-coboundary. Neither convention changes the intended H2 class
once the geometric scalar one-cochain is proved continuous. To identify the scalar commutator with the ORIGINAL
source Weil e_n, a separate nontrivial geometric Weil-
reciprocity comparison is required. In cohomology graded
commutativity then turns the reversed mixed commutator
into the required normalized Weil cup, with orientation
and sign fixed. Neither geometric comparison nor a
continuous H² class is proved in this generic algebra file.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization

variable {G E : Type*} [Group G] [Group E]
  [MulAction G E] [MulDistribMulAction G E]

/-- Genuine multiplicative nonabelian connecting factor for
an E-valued Galois cochain; no central scalar chosen. -/
def boundary (u : G → E) (σ τ : G) : E :=
  u σ * (σ • u τ) * (u (σ * τ))⁻¹

/-- The left commutator, compatible with the actual
theta multiplication and its scalar central kernel. -/
def leftCommutator (x y : E) : E :=
  x * y * x⁻¹ * y⁻¹

/-- A REAL crossed one-cocycle has identically trivial
nonabelian obstruction, not merely a purported
cohomology zero. This applies to the original geometric
Kummer theta lift once its source action is installed. -/
theorem boundary_eq_one_of_crossed (u : G → E)
    (h : ∀ σ τ, u σ * (σ • u τ) = u (σ * τ)) :
    ∀ σ τ, boundary u σ τ = 1 := by
  intro σ τ
  rw [boundary, h, mul_inv_cancel]

/-- Exact pointwise theta polarization factor identity.

Assumptions only say that the THREE explicitly displayed
factors belong to the central scalar kernel; these
properties follow from the actual geometric theta
central-extension construction when instantiated.

No pairing, quadratic form, regulator or orthogonal
subgroup is furnished as a premise. The mixed
commutator is computed from the same genuine lifts. -/
theorem boundary_mul_eq_commutator_mul
    (u v : G → E) (σ τ : G)
    (hu : ∀ z : E, Commute (boundary u σ τ) z)
    (hv : ∀ z : E, Commute (boundary v σ τ) z)
    (hc : ∀ z : E,
      Commute (leftCommutator (v σ) (σ • u τ)) z) :
    boundary (fun g => u g * v g) σ τ =
      leftCommutator (v σ) (σ • u τ) *
        boundary u σ τ * boundary v σ τ := by
  let X : E := u σ
  let Y : E := v σ
  let U : E := σ • u τ
  let V : E := σ • v τ
  let Z : E := u (σ * τ)
  let W : E := v (σ * τ)
  let C : E := leftCommutator Y U
  have hYU : Y * U = C * (U * Y) := by
    dsimp [C, leftCommutator]
    group
  have hCX : X * C = C * X := (hc X).eq.symm
  have hDVZ : (Y * V * W⁻¹) * Z⁻¹ =
      Z⁻¹ * (Y * V * W⁻¹) := by
    change (boundary v σ τ) * Z⁻¹ =
      Z⁻¹ * (boundary v σ τ)
    exact (hv Z⁻¹).eq
  change X * Y * (U * V) * (Z * W)⁻¹ =
    C * (X * U * Z⁻¹) * (Y * V * W⁻¹)
  calc
    X * Y * (U * V) * (Z * W)⁻¹ =
      X * (Y * U) * V * (Z * W)⁻¹ := by group
    _ = X * C * U * (Y * V * W⁻¹) * Z⁻¹ := by
      rw [hYU]
      group
    _ = C * (X * U * Z⁻¹) * (Y * V * W⁻¹) := by
      rw [hCX, hDVZ]
      group

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralBoundaryPolarization
