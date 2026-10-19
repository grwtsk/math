module

public meta import Surface.Core.Classification
public import Surface.Core.SpheroidStereographic
public import Mathlib.Analysis.Normed.Module.TransferInstance
public import Mathlib.Topology.MetricSpace.Isometry

/-!
# The punctured spheroid as a transported Banach chart

The raw geometric subtype `PuncturedSpheroid a c` carries only its ambient
meaning.  This file wraps it in the nominal type `FiniteSpheroidChart` before
transporting the vector, normed, and complete structures of
`EuclideanSpace ℝ ι` through stereographic projection.  Consequently none of
the chart-dependent instances below are installed on the raw subtype or on
the full compact spheroid.

The resulting operations are precisely the advertised chart operations:

* `p + q = inverse (project p + project q)`;
* `r • p = inverse (r • project p)`;
* `‖p‖ = ‖project p‖`;
* `dist p q = dist (project p) (project q)`.

Completeness is transferred along the bundled linear isometric equivalence.
It is therefore completeness for the stereographic Banach metric, not for the
punctured spheroid's inherited or intrinsic metric.
-/

public section

namespace Surface.Core.SpheroidBanach

noncomputable section

open Surface.Core.SpheroidStereographic

variable {ι : Type*} [Fintype ι]

/-- A nominal wrapper for the punctured spheroid equipped with one fixed
positive-radius stereographic chart.

The positivity witnesses are parameters of the type because they are exactly
the data used to construct the inverse chart.  Proof irrelevance ensures that
their particular derivations carry no extra geometry. -/
structure FiniteSpheroidChart (ι : Type*) [Fintype ι]
    (a c : ℝ) (ha : 0 < a) (hc : 0 < c) where
  point : PuncturedSpheroid (ι := ι) a c

namespace FiniteSpheroidChart

variable {a c : ℝ} {ha : 0 < a} {hc : 0 < c}

/-- Read the stereographic coordinates of a nominal chart point. -/
@[expose] def coordinates
    (p : FiniteSpheroidChart ι a c ha hc) : EuclideanSpace ℝ ι :=
  project c p.point

/-- Package Euclidean coordinates as the corresponding punctured-spheroid
point. -/
@[expose] def ofCoordinates
    (u : EuclideanSpace ℝ ι) : FiniteSpheroidChart ι a c ha hc :=
  ⟨inverse ha hc u⟩

@[ext]
theorem ext {p q : FiniteSpheroidChart ι a c ha hc}
    (h : p.point = q.point) : p = q := by
  cases p
  cases q
  cases h
  rfl

/-- The exact carrier equivalence used to transport all chart structures. -/
@[expose] def chartEquiv :
    FiniteSpheroidChart ι a c ha hc ≃ EuclideanSpace ℝ ι where
  toFun := coordinates
  invFun := ofCoordinates
  left_inv p := by
    apply ext
    exact inverse_project ha hc p.point
  right_inv := project_inverse ha hc

@[simp]
theorem chartEquiv_apply (p : FiniteSpheroidChart ι a c ha hc) :
    chartEquiv p = coordinates p :=
  rfl

@[simp]
theorem chartEquiv_symm_apply (u : EuclideanSpace ℝ ι) :
    (chartEquiv (a := a) (c := c) (ha := ha) (hc := hc)).symm u =
      ofCoordinates (a := a) (c := c) (ha := ha) (hc := hc) u :=
  rfl

@[simp]
theorem coordinates_ofCoordinates (u : EuclideanSpace ℝ ι) :
    coordinates (ofCoordinates (ha := ha) (hc := hc) u) = u :=
  project_inverse ha hc u

@[simp]
theorem ofCoordinates_coordinates (p : FiniteSpheroidChart ι a c ha hc) :
    ofCoordinates (coordinates p) = p := by
  apply ext
  exact inverse_project ha hc p.point

/- The structures are transported only to the nominal wrapper.  Their
definitional behavior makes `chartEquiv` linear and isometric. -/

instance instAddCommGroupFiniteSpheroidChart :
    AddCommGroup (FiniteSpheroidChart ι a c ha hc) :=
  chartEquiv.addCommGroup

instance instModuleFiniteSpheroidChart : Module ℝ (FiniteSpheroidChart ι a c ha hc) :=
  chartEquiv.module ℝ

instance instNormedAddCommGroupFiniteSpheroidChart :
    NormedAddCommGroup (FiniteSpheroidChart ι a c ha hc) :=
  chartEquiv.normedAddCommGroup

instance instNormedSpaceFiniteSpheroidChart :
    NormedSpace ℝ (FiniteSpheroidChart ι a c ha hc) :=
  chartEquiv.normedSpace ℝ

/-- Stereographic projection bundled as a real linear isometric equivalence. -/
@[expose] def chartLinearIsometryEquiv :
    FiniteSpheroidChart ι a c ha hc ≃ₗᵢ[ℝ] EuclideanSpace ℝ ι where
  __ := chartEquiv.linearEquiv ℝ
  norm_map' _ := rfl

@[simp]
theorem chartLinearIsometryEquiv_apply
    (p : FiniteSpheroidChart ι a c ha hc) :
    chartLinearIsometryEquiv p = coordinates p :=
  rfl

@[simp]
theorem chartLinearIsometryEquiv_symm_apply
    (u : EuclideanSpace ℝ ι) :
    (chartLinearIsometryEquiv (a := a) (c := c) (ha := ha) (hc := hc)).symm u =
      ofCoordinates (a := a) (c := c) (ha := ha) (hc := hc) u :=
  rfl

/-- Completeness is transported from finite-dimensional Euclidean space
through the chart isometry. -/
instance instCompleteSpaceFiniteSpheroidChart :
    CompleteSpace (FiniteSpheroidChart ι a c ha hc) :=
  chartLinearIsometryEquiv.toIsometryEquiv.completeSpace

/-- Named audit surface for the transported complete-space instance. -/
theorem completeSpace :
    CompleteSpace (FiniteSpheroidChart ι a c ha hc) :=
  inferInstance

/-- Every Cauchy net for the stereographic Banach metric has its limit inside
the finite chart. -/
@[surface_novel, surface_published]
theorem finiteSpheroidChart_isComplete_univ :
    IsComplete (Set.univ : Set (FiniteSpheroidChart ι a c ha hc)) :=
  completeSpace_iff_isComplete_univ.mp inferInstance

@[simp]
theorem coordinates_zero :
    coordinates (0 : FiniteSpheroidChart ι a c ha hc) = 0 :=
  map_zero chartLinearIsometryEquiv

@[simp]
theorem coordinates_add (p q : FiniteSpheroidChart ι a c ha hc) :
    coordinates (p + q) = coordinates p + coordinates q :=
  map_add chartLinearIsometryEquiv p q

@[simp]
theorem coordinates_neg (p : FiniteSpheroidChart ι a c ha hc) :
    coordinates (-p) = -coordinates p :=
  map_neg chartLinearIsometryEquiv p

@[simp]
theorem coordinates_sub (p q : FiniteSpheroidChart ι a c ha hc) :
    coordinates (p - q) = coordinates p - coordinates q :=
  map_sub chartLinearIsometryEquiv p q

@[simp]
theorem coordinates_smul (r : ℝ)
    (p : FiniteSpheroidChart ι a c ha hc) :
    coordinates (r • p) = r • coordinates p :=
  map_smul chartLinearIsometryEquiv r p

/-- The additive identity is exactly the inverse-chart image of the Euclidean
origin (geometrically, the south pole). -/
@[surface_novel, surface_published]
theorem zero_eq_ofCoordinates :
    (0 : FiniteSpheroidChart ι a c ha hc) = ofCoordinates 0 := by
  apply chartEquiv.injective
  simp

/-- The additive identity of the transported vector structure is the ambient
south pole `(0, -c)`.  It is not the ambient product-space origin. -/
@[surface_novel, surface_published, simp]
theorem zero_ambient_eq_south :
    (0 : FiniteSpheroidChart ι a c ha hc).point.1 =
      (0, -c) := by
  rw [zero_eq_ofCoordinates]
  exact inverse_zero ha hc

/-- Addition is inverse projection after Euclidean coordinate addition. -/
@[surface_novel, surface_published]
theorem add_eq_ofCoordinates (p q : FiniteSpheroidChart ι a c ha hc) :
    p + q = ofCoordinates (coordinates p + coordinates q) := by
  apply chartEquiv.injective
  simp

/-- Additive inversion is inverse projection after coordinate negation. -/
@[surface_novel, surface_published]
theorem neg_eq_ofCoordinates (p : FiniteSpheroidChart ι a c ha hc) :
    -p = ofCoordinates (-coordinates p) := by
  apply chartEquiv.injective
  simp

/-- Subtraction is inverse projection after Euclidean coordinate subtraction. -/
@[surface_novel, surface_published]
theorem sub_eq_ofCoordinates (p q : FiniteSpheroidChart ι a c ha hc) :
    p - q = ofCoordinates (coordinates p - coordinates q) := by
  apply chartEquiv.injective
  simp

/-- Scalar multiplication is inverse projection after Euclidean scaling. -/
@[surface_novel, surface_published]
theorem smul_eq_ofCoordinates (r : ℝ)
    (p : FiniteSpheroidChart ι a c ha hc) :
    r • p = ofCoordinates (r • coordinates p) := by
  apply chartEquiv.injective
  simp

/-- The transported norm is the Euclidean norm of stereographic coordinates. -/
@[surface_novel, surface_published, simp]
theorem norm_eq_coordinates (p : FiniteSpheroidChart ι a c ha hc) :
    ‖p‖ = ‖coordinates p‖ := by
  symm
  exact chartLinearIsometryEquiv.norm_map p

/-- Coordinate form of the transported norm:
`‖(x,z)‖ᴮ = c ‖x‖ / (c-z)`. -/
@[surface_novel, surface_published]
theorem norm_eq_polar_formula (p : FiniteSpheroidChart ι a c ha hc) :
    ‖p‖ = c * ‖p.point.1.1‖ / (c - p.point.1.2) := by
  rw [norm_eq_coordinates]
  rw [show coordinates p = project c p.point by rfl]
  rw [Surface.Core.SpheroidStereographic.project_apply]
  rw [norm_smul, Real.norm_of_nonneg]
  · ring
  · exact (div_pos hc (projectDenominator_pos ha hc p.point)).le

/-- The transported distance is exactly Euclidean coordinate distance. -/
@[surface_novel, surface_published, simp]
theorem dist_eq_coordinates (p q : FiniteSpheroidChart ι a c ha hc) :
    dist p q = dist (coordinates p) (coordinates q) :=
  chartLinearIsometryEquiv.isometry.dist_eq p q

/-- The polar coordinate expressed in terms of Banach radius.  This is the
algebraic, non-trigonometric form of the northward half-angle behavior. -/
@[surface_novel, surface_published]
theorem polar_eq_norm_formula (p : FiniteSpheroidChart ι a c ha hc) :
    p.point.1.2 =
      c * (‖p‖ ^ 2 - a ^ 2) / (‖p‖ ^ 2 + a ^ 2) := by
  have h := congrArg (fun q : PuncturedSpheroid (ι := ι) a c ↦ q.1.2)
    (inverse_project ha hc p.point)
  rw [Surface.Core.SpheroidStereographic.inverse_polar] at h
  change
    c * (‖coordinates p‖ ^ 2 - a ^ 2) /
        inverseDenominator a (coordinates p) = p.point.1.2 at h
  rw [← h]
  rw [Surface.Core.SpheroidStereographic.inverseDenominator_apply]
  rw [norm_eq_coordinates]
  ring

/-- The ambient north-pole gap is positive and decays like the reciprocal of
the squared Banach radius.  In particular, approaching the north pole forces
unbounded chart norm. -/
@[surface_novel, surface_published]
theorem northGap_eq_norm_formula (p : FiniteSpheroidChart ι a c ha hc) :
    c - p.point.1.2 =
      2 * c * a ^ 2 / (‖p‖ ^ 2 + a ^ 2) := by
  rw [polar_eq_norm_formula]
  have hden : ‖p‖ ^ 2 + a ^ 2 ≠ 0 := by
    nlinarith [sq_nonneg ‖p‖, sq_pos_of_pos ha]
  field_simp [hden]
  ring

end FiniteSpheroidChart

end

end Surface.Core.SpheroidBanach
