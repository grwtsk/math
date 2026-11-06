/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.BoundaryResidual
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Complex.Liouville

/-!
# Analytic bounds for the between-sample residual

For R=f*u-1, the exact derivative is f'*u+f*u'. Hence bounds F1,U0,F0,U1
supply |R'| <= F1*U0+F0*U1. The complex mean-value inequality along a real
convex control set turns this into the variation term used by Boundary.ofMesh.

A separate Cauchy route uses a holomorphic radius-rho neighborhood at EVERY
point of that control set, with residual norm at most M on its sphere. It
supplies |R'| <= M/rho, so the test is epsilon+(M/rho)*meshRadius<1.
The halo bounds may be large; they are not assumed to be less than one. Actual
small sample residuals, mesh coverage, positive halo radius, convexity and the
halo bounds are still separate obligations. This is not a universal zeta or
Dirichlet estimate. Halo regularity cannot be inferred across a pole or zero
of an already-divided expression.

Primary arguments are the product rule, the mean-value inequality and Cauchy's
derivative estimate. Sources: Mathlib Analysis/Calculus/MeanValue and
Analysis/Complex/Liouville at d13f23b723b8a846827a245b89c10fc7d3f11612,
including Yury Kudryashov's Cauchy-estimate formalization; upstream attribution
and Apache-2.0 licensing are unchanged. Standard methods; no novelty claim.
The concrete disk example checks that the certificate assumptions are inhabited.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.Analysis.Division

/-- No derivative term is omitted from the actual product residual. -/
theorem unit_residual_hasDerivAt {f u : ℂ → ℂ} {z : ℂ}
    (hf : DifferentiableAt ℂ f z) (hu : DifferentiableAt ℂ u z) :
    HasDerivAt (fun w => residual (f w) (u w) 1)
      (deriv f z * u z + f z * deriv u z) z :=
  (hf.hasDerivAt.mul hu.hasDerivAt).sub_const 1

theorem unit_residual_deriv_bound {f u : ℂ → ℂ} {z : ℂ}
    (hf : DifferentiableAt ℂ f z) (hu : DifferentiableAt ℂ u z)
    {F₀ F₁ U₀ U₁ : ℝ}
    (fsize : ‖f z‖ ≤ F₀) (fderiv : ‖deriv f z‖ ≤ F₁)
    (usize : ‖u z‖ ≤ U₀) (uderiv : ‖deriv u z‖ ≤ U₁) :
    ‖deriv (fun w => residual (f w) (u w) 1) z‖ ≤ F₁ * U₀ + F₀ * U₁ := by
  rw [(unit_residual_hasDerivAt hf hu).deriv]
  calc
    ‖deriv f z * u z + f z * deriv u z‖ ≤
        ‖deriv f z * u z‖ + ‖f z * deriv u z‖ := norm_add_le _ _
    _ = ‖deriv f z‖ * ‖u z‖ + ‖f z‖ * ‖deriv u z‖ := by
      simp only [norm_mul]
    _ ≤ F₁ * U₀ + F₀ * U₁ :=
      add_le_add
        (mul_le_mul fderiv usize (norm_nonneg _) ((norm_nonneg _).trans fderiv))
        (mul_le_mul fsize uderiv (norm_nonneg _) ((norm_nonneg _).trans fsize))

/-- Differentiability along the whole convex control set is part of the hypothesis. -/
theorem variation_of_derivative (R : ℂ → ℂ) (K : Set ℂ) {L : ℝ}
    (hf : ∀ z ∈ K, DifferentiableAt ℂ R z)
    (bound : ∀ z ∈ K, ‖deriv R z‖ ≤ L) (convex : Convex ℝ K)
    {x y : ℂ} (hx : x ∈ K) (hy : y ∈ K) :
    ‖R x - R y‖ ≤ L * dist x y := by
  simpa only [dist_eq_norm] using
    (Convex.norm_image_sub_le_of_norm_deriv_le hf bound convex hy hx)

/-- Product-size and derivative enclosures provide a complete variation estimate. -/
theorem residual_variation_of_product_bounds (f u : ℂ → ℂ) (K : Set ℂ)
    (hf : ∀ z ∈ K, DifferentiableAt ℂ f z)
    (hu : ∀ z ∈ K, DifferentiableAt ℂ u z) (convex : Convex ℝ K)
    {F₀ F₁ U₀ U₁ : ℝ}
    (fsize : ∀ z ∈ K, ‖f z‖ ≤ F₀) (fderiv : ∀ z ∈ K, ‖deriv f z‖ ≤ F₁)
    (usize : ∀ z ∈ K, ‖u z‖ ≤ U₀) (uderiv : ∀ z ∈ K, ‖deriv u z‖ ≤ U₁)
    {x y : ℂ} (hx : x ∈ K) (hy : y ∈ K) :
    ‖residual (f x) (u x) 1 - residual (f y) (u y) 1‖ ≤
      (F₁ * U₀ + F₀ * U₁) * dist x y :=
  variation_of_derivative _ K
    (fun z hz => (unit_residual_hasDerivAt (hf z hz) (hu z hz)).differentiableAt)
    (fun z hz => unit_residual_deriv_bound (hf z hz) (hu z hz)
      (fsize z hz) (fderiv z hz) (usize z hz) (uderiv z hz)) convex hx hy

/-- Cauchy's estimate supplies the derivative bound from a genuine surrounding halo. -/
theorem variation_of_cauchy (R : ℂ → ℂ) (K : Set ℂ)
    (convex : Convex ℝ K) {ρ M : ℝ} (radius : 0 < ρ)
    (regular : ∀ z ∈ K, DiffContOnCl ℂ R (Metric.ball z ρ))
    (halo : ∀ z ∈ K, ∀ w ∈ Metric.sphere z ρ, ‖R w‖ ≤ M)
    {x y : ℂ} (hx : x ∈ K) (hy : y ∈ K) :
    ‖R x - R y‖ ≤ (M / ρ) * dist x y :=
  variation_of_derivative R K
    (fun z hz => (regular z hz).differentiableAt Metric.isOpen_ball
      (Metric.mem_ball_self radius))
    (fun z hz => Complex.norm_deriv_le_of_forall_mem_sphere_norm_le
      radius (regular z hz) (halo z hz)) convex hx hy

namespace Boundary

/-- A derivative bound discharges the mesh-variation field of the existing certificate. -/
def ofDerivativeMesh (f u : ℂ → ℂ) (U K : Set ℂ) (samples : Finset ℂ)
    (hf : DiffContOnCl ℂ f U) (hu : DiffContOnCl ℂ u U)
    (convex : Convex ℝ K) (boundary_in : frontier U ⊆ K)
    (samples_in : ∀ w ∈ samples, w ∈ K)
    (regular : ∀ z ∈ K, DifferentiableAt ℂ (fun w => residual (f w) (u w) 1) z)
    {ε L r : ℝ} (nonnegative : 0 ≤ L)
    (derivative : ∀ z ∈ K, ‖deriv (fun w => residual (f w) (u w) 1) z‖ ≤ L)
    (sampled : ∀ w ∈ samples, ‖residual (f w) (u w) 1‖ ≤ ε)
    (mesh : ∀ z ∈ frontier U, ∃ w ∈ samples, dist z w ≤ r)
    (gap : ε + L * r < 1) : Certificate f U :=
  ofMesh f u U samples hf hu nonnegative sampled mesh
    (fun z hz w hw => variation_of_derivative _ K regular derivative convex
      (boundary_in hz) (samples_in w hw)) gap

/-- A Cauchy halo bound creates the same certificate, with L=M/rho. -/
def ofCauchyMesh (f u : ℂ → ℂ) (U K : Set ℂ) (samples : Finset ℂ)
    (hf : DiffContOnCl ℂ f U) (hu : DiffContOnCl ℂ u U)
    (convex : Convex ℝ K) (boundary_in : frontier U ⊆ K)
    (samples_in : ∀ w ∈ samples, w ∈ K)
    {ε M ρ r : ℝ} (nonnegative : 0 ≤ M) (radius : 0 < ρ)
    (regular : ∀ z ∈ K,
      DiffContOnCl ℂ (fun w => residual (f w) (u w) 1) (Metric.ball z ρ))
    (halo : ∀ z ∈ K, ∀ w ∈ Metric.sphere z ρ,
      ‖residual (f w) (u w) 1‖ ≤ M)
    (sampled : ∀ w ∈ samples, ‖residual (f w) (u w) 1‖ ≤ ε)
    (mesh : ∀ z ∈ frontier U, ∃ w ∈ samples, dist z w ≤ r)
    (gap : ε + (M / ρ) * r < 1) : Certificate f U :=
  ofMesh f u U samples hf hu (div_nonneg nonnegative radius.le) sampled mesh
    (fun z hz w hw => variation_of_cauchy _ K convex radius regular halo
      (boundary_in hz) (samples_in w hw)) gap

/-- Concrete consistency fixture: f(z)=z, u(z)=1 on the radius-one-half disk at one. -/
def identityDiskCertificate : Certificate (fun z : ℂ => z)
    (Metric.ball (1 : ℂ) (1 / 2 : ℝ)) where
  approximation := fun _ => 1
  bound := 1 / 2
  strict := by norm_num
  regular := residual_regular differentiable_id.diffContOnCl
    (differentiable_const (1 : ℂ)).diffContOnCl
  boundary_bound := by
    intro z hz
    have closed := Metric.closure_ball_subset_closedBall (frontier_subset_closure hz)
    have distance : ‖z - 1‖ ≤ (1 / 2 : ℝ) := by
      simpa only [Metric.mem_closedBall, dist_eq_norm] using closed
    simpa [residual] using distance

/-- The fixture produces a nonvanishing conclusion with no unproved numerical inputs. -/
theorem identityDisk_nonzero {z : ℂ}
    (inside : z ∈ Metric.ball (1 : ℂ) (1 / 2 : ℝ)) : z ≠ 0 :=
  identityDiskCertificate.nonzero Metric.isBounded_ball (subset_closure inside)

end Boundary
end GRWTSK.Analysis.Division
