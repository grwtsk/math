/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction
import Mathlib.Tactic

/-!
# Distinct 4D integer boundary lattice and continuous Poincare AdS5 geometry

The RS boundary grid is Z^4, not the modular upper half-plane grid and not
the arithmetic Möbius function mu(n). Embed integer sites in real R^4.
Introduce a POSITIVE continuous fifth coordinate z, the Poincare radial
coordinate of Euclidean AdS5/H5. The conformal boundary dilation extends as
(x,z) -> (lambda*x,lambda*z), exactly preserving the warped quadratic metric.

An inversion in the 4D conformal/Möbius group has an explicit smooth interior
extension (x,z) -> (x,z)/(|x|^2+z^2). Positive interior z makes this denominator
strictly positive. Boundary inversion at x=0 remains singular and is not
falsely totalized. We do NOT assert that this kinematic geometry derives an
AdS/CFT duality, an RS brane action, a bulk field equation, or a reconstruction
of a smooth bulk field from finitely many lattice data.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteRSBoundaryBulk

/-- Original literal four-dimensional discrete integer grid. -/
abbrev BoundaryLattice4 := Fin 4 → ℤ

/-- Real boundary positions into which the integer grid is faithfully embedded. -/
abbrev BoundaryR4 := Fin 4 → ℝ

/-- Actual discrete-to-continuous embedding; the site is not quotiented by d². -/
def embedBoundary (site : BoundaryLattice4) : BoundaryR4 :=
  fun i => (site i : ℝ)

/-- The full integer boundary grid is retained without aliasing. -/
theorem embedBoundary_injective : Function.Injective embedBoundary := by
  intro a b h
  funext i
  have hi : (a i : ℝ) = (b i : ℝ) := congrFun h i
  exact_mod_cast hi

/-- The positive continuous fifth coordinate of the Poincare patch. -/
structure WarpedBulkPoint where
  x : BoundaryR4
  z : ℝ
  z_pos : 0 < z

/-- Positive real scaling of ALL boundary coordinates and the fifth coordinate. -/
def bulkDilation (λ : ℝ) (hλ : 0 < λ) (p : WarpedBulkPoint) :
    WarpedBulkPoint where
  x := fun i => λ * p.x i
  z := λ * p.z
  z_pos := mul_pos hλ p.z_pos

/-- Exact composition of the conformal scaling subgroup on the continuous bulk. -/
theorem bulkDilation_comp (λ μ : ℝ) (hλ : 0 < λ) (hμ : 0 < μ)
    (p : WarpedBulkPoint) :
    bulkDilation λ hλ (bulkDilation μ hμ p) =
      bulkDilation (λ * μ) (mul_pos hλ hμ) p := by
  cases p with
  | mk x z hz =>
    simp [bulkDilation, mul_assoc]

/-- Warped Poincare quadratic metric evaluated on tangent components.
This is Euclidean-signature AdS5/H5, NOT a Lorentzian RS solution. -/
def poincareMetricQuadratic (p : WarpedBulkPoint)
    (dx : BoundaryR4) (dz : ℝ) : ℝ :=
  ((∑ i : Fin 4, (dx i) ^ 2) + dz ^ 2) / p.z ^ 2

/-- A conformal boundary dilation is exactly a bulk metric isometry.
This is the kinematic, and only the kinematic, scale/radial correspondence. -/
theorem poincareMetric_dilation (p : WarpedBulkPoint)
    (λ : ℝ) (hλ : 0 < λ) (dx : BoundaryR4) (dz : ℝ) :
    poincareMetricQuadratic (bulkDilation λ hλ p)
      (fun i => λ * dx i) (λ * dz) =
      poincareMetricQuadratic p dx dz := by
  have hλ0 : λ ≠ 0 := ne_of_gt hλ
  have hz0 : p.z ≠ 0 := ne_of_gt p.z_pos
  simp only [poincareMetricQuadratic, bulkDilation]
  simp_rw [mul_pow]
  rw [← Finset.mul_sum]
  field_simp [hλ0, hz0]
  ring

/-- Euclidean sum of squared boundary coordinates (all four dimensions). -/
def boundaryNormSq (x : BoundaryR4) : ℝ :=
  ∑ i : Fin 4, x i ^ 2

theorem boundaryNormSq_nonneg (x : BoundaryR4) : 0 ≤ boundaryNormSq x := by
  unfold boundaryNormSq
  exact Finset.sum_nonneg (fun i _ => sq_nonneg (x i))

/-- The bulk inversion denominator includes the positive radial term. -/
def bulkInversionDenom (p : WarpedBulkPoint) : ℝ :=
  boundaryNormSq p.x + p.z ^ 2

/-- No interior pole; a point with z>0 cannot have |x|^2+z^2=0. -/
theorem bulkInversionDenom_pos (p : WarpedBulkPoint) :
    0 < bulkInversionDenom p := by
  unfold bulkInversionDenom
  have hz : 0 < p.z ^ 2 := sq_pos_of_pos p.z_pos
  linarith [boundaryNormSq_nonneg p.x]

/-- The four-dimensional conformal inversion extended to the continuous
five-dimensional upper-half-space. This maps positive heights to positives. -/
def bulkInversion (p : WarpedBulkPoint) : WarpedBulkPoint where
  x := fun i => p.x i / bulkInversionDenom p
  z := p.z / bulkInversionDenom p
  z_pos := div_pos p.z_pos (bulkInversionDenom_pos p)

/-- At radial height zero, the horizontal formula becomes the actual
four-dimensional conformal inversion (on its nonzero-denominator domain). -/
def horizontalInversionAt (x : BoundaryR4) (z : ℝ) : BoundaryR4 :=
  fun i => x i / (boundaryNormSq x + z ^ 2)

/-- The boundary formula is PARTIAL at norm zero: an explicit nonzero
norm-square witness is required rather than using Lean's totalized 0/0. -/
def conformalBoundaryInversion (x : BoundaryR4)
    (_hx : 0 < boundaryNormSq x) : BoundaryR4 :=
  fun i => x i / boundaryNormSq x

@[simp] theorem horizontalInversion_boundary (x : BoundaryR4)
    (hx : 0 < boundaryNormSq x) :
    horizontalInversionAt x 0 = conformalBoundaryInversion x hx := by
  funext i
  simp [horizontalInversionAt, conformalBoundaryInversion]

@[simp] theorem bulkInversion_horizontal (p : WarpedBulkPoint) :
    (bulkInversion p).x = horizontalInversionAt p.x p.z := rfl

/-- A selected nonzero integer boundary site is actually transformed by
the higher-dimensional conformal inversion; the pole is EXPLICIT. -/
def invertedDiscreteBoundarySite (site : BoundaryLattice4)
    (hs : 0 < boundaryNormSq (embedBoundary site)) : BoundaryR4 :=
  conformalBoundaryInversion (embedBoundary site) hs

/-- A discrete 4D lattice site located at ANY positive continuous bulk height.
This is kinematic coordinate inclusion, not a field reconstruction theorem. -/
def liftDiscreteSite (site : BoundaryLattice4) (height : ℝ)
    (hheight : 0 < height) : WarpedBulkPoint where
  x := embedBoundary site
  z := height
  z_pos := hheight

@[simp] theorem liftDiscreteSite_boundary (site : BoundaryLattice4)
    (height : ℝ) (hheight : 0 < height) :
    (liftDiscreteSite site height hheight).x = embedBoundary site := rfl

/-- The conformal inversion acts smoothly inside the positive-radial patch,
even at boundary labels that would be poles at height zero. -/
def invertedLiftedSite (site : BoundaryLattice4) (height : ℝ)
    (hheight : 0 < height) : WarpedBulkPoint :=
  bulkInversion (liftDiscreteSite site height hheight)

/-- This is a genuinely transformed DISCRETE boundary point, and a
continuous positive-height bulk lift, both parametrized by real scale. -/
def scaledBoundarySite (λ : ℝ) (site : BoundaryLattice4) : BoundaryR4 :=
  fun i => λ * (site i : ℝ)

@[simp] theorem scaledBoundarySite_apply (λ : ℝ)
    (site : BoundaryLattice4) (i : Fin 4) :
    scaledBoundarySite λ site i = λ * (site i : ℝ) := rfl

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteRSBoundaryBulk
