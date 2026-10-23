/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Additive-circle/complex-circle homeomorphism and unit closed disk APIs:
Mathlib contributors, retaining their upstream attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#983. Parent draft PR #978 exact head:
d901f661103da93c9c4779e2eb3d595d0c5b7ca9.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
import Mathlib.Analysis.SpecialFunctions.Complex.Circle
import Mathlib.Analysis.Complex.UnitDisc.Basic
import Mathlib.Topology.Homeomorph.Lemmas
import Mathlib.Tactic

/-!
# The standard unit-circle cone is the closed complex unit disk

The parent source independently constructs the actual topological cone

  StandardCircleCone =
    (UnitAddCircle × unitInterval) / ((z, 0) ~ (w, 0))

and proves its exact equivalence fibers.  Mathlib supplies the genuine
homeomorphism from `UnitAddCircle` to the complex unit circle `Circle`,
and defines `Complex.UnitClosedDisc` from the closed metric ball of
radius one centered at zero.

This file uses the exact polar source map

  (z, r) ↦ r * unitAddCircleHomeomorphCircle(z)

into `Complex.UnitClosedDisc`.  Its norm is exactly `r`.  Its complete
source fiber criterion is therefore equality of source points or two
zero-radius points, exactly matching the cone relation.  The map
descends continuously to the quotient.

Every closed-disk point is reconstructed from its norm and, away from
zero, its normalized complex direction.  This proves bijectivity.  The
source cone is compact and the disk is Hausdorff, so Mathlib's
compact-to-Hausdorff theorem packages the continuous bijection as

  StandardCircleCone ≃ₜ Complex.UnitClosedDisc.

Composition with the parent transport identifies the authentic
unpaired polygon perimeter cone with the same closed disk.

This does NOT make the inherited `coneToFilled` map injective: paired
outer-boundary points are deliberately identified in the filled polygon
quotient.  No pushout universal property, CW surface, manifold,
cellular/singular comparison, van Kampen, Hurewicz, hyperbolic geometry,
trace formula, GUE, sofic/Chowla, zeta-divisor, or RH result is claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk

open Metric
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport

/-- Mathlib's actual homeomorphism from the standard additive unit
circle to the multiplicative unit circle in `ℂ`. -/
def unitAddCircleHomeomorphCircle : UnitAddCircle ≃ₜ Circle :=
  AddCircle.homeomorphCircle (T := (1 : ℝ)) (by norm_num)

/-- Exact imported exponential formula for the unit-circle coordinate. -/
@[simp] theorem unitAddCircleHomeomorphCircle_apply
    (z : UnitAddCircle) :
    unitAddCircleHomeomorphCircle z = AddCircle.toCircle z := by
  exact AddCircle.homeomorphCircle_apply (by norm_num) z

/-- Unquotiented complex polar source map. -/
def standardCircleConePolarComplexSource
    (p : StandardCircleConeCylinder) : ℂ :=
  (((p.2 : ℝ) : ℂ) *
    (unitAddCircleHomeomorphCircle p.1 : ℂ))

/-- The polar source has norm exactly equal to the true radial
coordinate. -/
@[simp] theorem norm_standardCircleConePolarComplexSource
    (p : StandardCircleConeCylinder) :
    ‖standardCircleConePolarComplexSource p‖ = (p.2 : ℝ) := by
  rw [standardCircleConePolarComplexSource, norm_mul,
    Circle.norm_coe]
  simp [abs_of_nonneg p.2.2.1]

/-- The polar source reaches the origin exactly at radius zero. -/
theorem standardCircleConePolarComplexSource_eq_zero_iff
    (p : StandardCircleConeCylinder) :
    standardCircleConePolarComplexSource p = 0 ↔ p.2 = 0 := by
  constructor
  · intro h
    have hn := congrArg norm h
    simp only [norm_standardCircleConePolarComplexSource,
      norm_zero] at hn
    exact Subtype.ext hn
  · intro h
    rw [h]
    simp [standardCircleConePolarComplexSource]

/-- Continuity of the unquotiented complex polar source. -/
theorem standardCircleConePolarComplexSource_continuous :
    Continuous standardCircleConePolarComplexSource := by
  unfold standardCircleConePolarComplexSource
  exact
    (Complex.continuous_ofReal.comp
      (continuous_subtype_val.comp continuous_snd)).mul
      (continuous_subtype_val.comp
        (unitAddCircleHomeomorphCircle.continuous.comp
          continuous_fst))

/-- The same source map, with its exact closed-unit-disk membership
proof bundled. -/
def standardCircleConePolarDiskSource
    (p : StandardCircleConeCylinder) : Complex.UnitClosedDisc :=
  Complex.UnitClosedDisc.mk
    (standardCircleConePolarComplexSource p)
    (by
      rw [norm_standardCircleConePolarComplexSource]
      exact p.2.2.2)

@[simp] theorem standardCircleConePolarDiskSource_coe
    (p : StandardCircleConeCylinder) :
    (standardCircleConePolarDiskSource p : ℂ) =
      standardCircleConePolarComplexSource p := rfl

/-- Continuity into the genuine closed-disk subtype. -/
theorem standardCircleConePolarDiskSource_continuous :
    Continuous standardCircleConePolarDiskSource := by
  rw [Complex.UnitClosedDisc.isEmbedding_coe.continuous_iff]
  exact standardCircleConePolarComplexSource_continuous

/-- Complete fibers of the unquotiented polar source.  Positive-radius
points retain both radius and angular coordinate; every zero-radius
point maps to the unique origin. -/
theorem standardCircleConePolarDiskSource_eq_iff
    (p q : StandardCircleConeCylinder) :
    standardCircleConePolarDiskSource p =
        standardCircleConePolarDiskSource q ↔
      p = q ∨ (p.2 = 0 ∧ q.2 = 0) := by
  constructor
  · intro h
    have hcomplex :
        standardCircleConePolarComplexSource p =
          standardCircleConePolarComplexSource q := by
      exact congrArg
        (fun z : Complex.UnitClosedDisc => (z : ℂ)) h
    have hnorm := congrArg norm hcomplex
    have hrval : (p.2 : ℝ) = (q.2 : ℝ) := by
      simpa only [norm_standardCircleConePolarComplexSource] using hnorm
    have hr : p.2 = q.2 := Subtype.ext hrval
    by_cases hp0 : p.2 = 0
    · exact Or.inr ⟨hp0, hr ▸ hp0⟩
    · left
      have hpval0 : (p.2 : ℝ) ≠ 0 := by
        intro hzero
        apply hp0
        exact Subtype.ext hzero
      have hscale : (((p.2 : ℝ) : ℂ) ≠ 0) :=
        Complex.ofReal_ne_zero.mpr hpval0
      have hcircleCoe :
          (unitAddCircleHomeomorphCircle p.1 : ℂ) =
            (unitAddCircleHomeomorphCircle q.1 : ℂ) := by
        apply mul_left_cancel₀ hscale
        simpa [standardCircleConePolarComplexSource, hrval] using
          hcomplex
      have hcircle :
          unitAddCircleHomeomorphCircle p.1 =
            unitAddCircleHomeomorphCircle q.1 :=
        Circle.ext hcircleCoe
      exact Prod.ext
        (unitAddCircleHomeomorphCircle.injective hcircle) hr
  · rintro (hpq | ⟨hp, hq⟩)
    · subst q
      rfl
    · apply Complex.UnitClosedDisc.coe_injective
      simp [standardCircleConePolarDiskSource_coe,
        standardCircleConePolarComplexSource, hp, hq]

/-- The exact cone relation is precisely equality under the polar disk
source map. -/
theorem standardCircleConeConnected_iff_polarDiskSource_eq
    (p q : StandardCircleConeCylinder) :
    StandardCircleConeConnected p q ↔
      standardCircleConePolarDiskSource p =
        standardCircleConePolarDiskSource q := by
  rw [standardCircleConeConnected_iff,
    standardCircleConePolarDiskSource_eq_iff]

/-- The polar source respects the exact apex quotient relation. -/
theorem standardCircleConeConnected_polarDiskSource_eq
    {p q : StandardCircleConeCylinder}
    (h : StandardCircleConeConnected p q) :
    standardCircleConePolarDiskSource p =
      standardCircleConePolarDiskSource q :=
  (standardCircleConeConnected_iff_polarDiskSource_eq p q).mp h

/-- The descended polar map from the genuine standard circle cone to
Mathlib's genuine closed complex unit disk. -/
def standardCircleConePolarMap :
    StandardCircleCone → Complex.UnitClosedDisc :=
  Quotient.lift standardCircleConePolarDiskSource (by
    intro p q h
    exact standardCircleConeConnected_polarDiskSource_eq h)

@[simp] theorem standardCircleConePolarMap_projection
    (p : StandardCircleConeCylinder) :
    standardCircleConePolarMap (standardCircleConeProjection p) =
      standardCircleConePolarDiskSource p := rfl

/-- Continuity of the descended polar quotient map. -/
theorem standardCircleConePolarMap_continuous :
    Continuous standardCircleConePolarMap := by
  apply Continuous.quotient_lift
    standardCircleConePolarDiskSource_continuous
  intro p q h
  exact standardCircleConeConnected_polarDiskSource_eq h

/-- The complex norm of the descended point is the cone's genuine
radial coordinate. -/
@[simp] theorem norm_standardCircleConePolarMap
    (x : StandardCircleCone) :
    ‖(standardCircleConePolarMap x : ℂ)‖ =
      (standardCircleConeRadius x : ℝ) := by
  refine Quotient.inductionOn x ?_
  intro p
  simpa using norm_standardCircleConePolarComplexSource p

/-- The standard cone apex is exactly the complex origin. -/
@[simp] theorem standardCircleConePolarMap_apex :
    standardCircleConePolarMap standardCircleConeApex = 0 := by
  apply Complex.UnitClosedDisc.coe_injective
  simp [standardCircleConeApex,
    standardCircleConePolarComplexSource]

/-- On the outer boundary, the polar map is the imported unit-circle
homeomorphism, included in the closed disk. -/
@[simp] theorem standardCircleConePolarMap_boundary
    (z : UnitAddCircle) :
    (standardCircleConePolarMap
        (standardCircleConeBoundary z) : ℂ) =
      (unitAddCircleHomeomorphCircle z : ℂ) := by
  simp [standardCircleConeBoundary,
    standardCircleConePolarComplexSource]

/-- Normalized complex direction of a nonzero point, as an actual point
of Mathlib's unit circle. -/
def normalizedCircle (w : ℂ) (hw : w ≠ 0) : Circle :=
  ⟨w / ((‖w‖ : ℝ) : ℂ),
    mem_sphere_zero_iff_norm.2 (by
      rw [norm_div]
      simp [norm_ne_zero_iff.mpr hw])⟩

@[simp] theorem normalizedCircle_coe
    (w : ℂ) (hw : w ≠ 0) :
    (normalizedCircle w hw : ℂ) =
      w / ((‖w‖ : ℝ) : ℂ) := rfl

/-- Multiplying the normalized direction by the original norm
reconstructs the nonzero point exactly. -/
theorem norm_mul_normalizedCircle
    (w : ℂ) (hw : w ≠ 0) :
    (((‖w‖ : ℝ) : ℂ) * (normalizedCircle w hw : ℂ)) = w := by
  have hnorm : (‖w‖ : ℝ) ≠ 0 := norm_ne_zero_iff.mpr hw
  have hscale : (((‖w‖ : ℝ) : ℂ) ≠ 0) :=
    Complex.ofReal_ne_zero.mpr hnorm
  rw [normalizedCircle_coe]
  field_simp [hscale]

/-- The radial coordinate of any closed-disk point. -/
def closedDiskRadius
    (w : Complex.UnitClosedDisc) : unitInterval :=
  ⟨‖(w : ℂ)‖,
    ⟨norm_nonneg _, Complex.UnitClosedDisc.norm_le_one w⟩⟩

@[simp] theorem closedDiskRadius_coe
    (w : Complex.UnitClosedDisc) :
    (closedDiskRadius w : ℝ) = ‖(w : ℂ)‖ := rfl

/-- The additive unit-circle angle associated to a nonzero complex
point through Mathlib's exact circle homeomorphism. -/
def closedDiskAngleOfNonzero
    (w : Complex.UnitClosedDisc) (hw : (w : ℂ) ≠ 0) :
    UnitAddCircle :=
  unitAddCircleHomeomorphCircle.symm
    (normalizedCircle (w : ℂ) hw)

@[simp] theorem unitCircle_of_closedDiskAngleOfNonzero
    (w : Complex.UnitClosedDisc) (hw : (w : ℂ) ≠ 0) :
    unitAddCircleHomeomorphCircle
        (closedDiskAngleOfNonzero w hw) =
      normalizedCircle (w : ℂ) hw := by
  simp [closedDiskAngleOfNonzero]

/-- Exact polar reconstruction of every nonzero closed-disk point. -/
theorem standardCircleConePolarDiskSource_reconstruct_nonzero
    (w : Complex.UnitClosedDisc) (hw : (w : ℂ) ≠ 0) :
    standardCircleConePolarDiskSource
        (closedDiskAngleOfNonzero w hw, closedDiskRadius w) = w := by
  apply Complex.UnitClosedDisc.coe_injective
  change
    (((‖(w : ℂ)‖ : ℝ) : ℂ) *
      (unitAddCircleHomeomorphCircle
        (closedDiskAngleOfNonzero w hw) : ℂ)) =
      (w : ℂ)
  rw [unitCircle_of_closedDiskAngleOfNonzero]
  exact norm_mul_normalizedCircle (w : ℂ) hw

/-- Every closed-disk point has an exact cone representative. -/
theorem standardCircleConePolarMap_surjective :
    Function.Surjective standardCircleConePolarMap := by
  intro w
  by_cases hw : (w : ℂ) = 0
  · refine ⟨standardCircleConeApex, ?_⟩
    have hw0 : w = 0 := by
      apply Complex.UnitClosedDisc.coe_injective
      simpa using hw
    simpa [hw0] using standardCircleConePolarMap_apex
  · refine ⟨standardCircleConeProjection
      (closedDiskAngleOfNonzero w hw, closedDiskRadius w), ?_⟩
    rw [standardCircleConePolarMap_projection]
    exact standardCircleConePolarDiskSource_reconstruct_nonzero w hw

/-- Equality of descended polar values forces equality of cone classes,
because the complete source fibers are exactly the defining quotient
relation. -/
theorem standardCircleConePolarMap_injective :
    Function.Injective standardCircleConePolarMap := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro p
  refine Quotient.inductionOn y ?_
  intro q h
  apply Quotient.sound
  apply (standardCircleConeConnected_iff_polarDiskSource_eq p q).mpr
  simpa only [standardCircleConePolarMap_projection] using h

/-- The descended polar map is globally bijective. -/
theorem standardCircleConePolarMap_bijective :
    Function.Bijective standardCircleConePolarMap :=
  ⟨standardCircleConePolarMap_injective,
    standardCircleConePolarMap_surjective⟩

/-- The standard unit-circle cone is genuinely homeomorphic to the
closed complex unit disk. -/
noncomputable def standardCircleConeHomeomorphUnitClosedDisc :
    StandardCircleCone ≃ₜ Complex.UnitClosedDisc := by
  letI : CompactSpace StandardCircleCone :=
    standardCircleConeCompactSpace
  exact standardCircleConePolarMap_continuous.homeoOfEquivCompactToT2
    (f := Equiv.ofBijective standardCircleConePolarMap
      standardCircleConePolarMap_bijective)

@[simp] theorem standardCircleConeHomeomorphUnitClosedDisc_apply
    (x : StandardCircleCone) :
    standardCircleConeHomeomorphUnitClosedDisc x =
      standardCircleConePolarMap x := rfl

/-- The homeomorphism records the exact radius/norm identity. -/
theorem standardCircleConeHomeomorphUnitClosedDisc_radius
    (x : StandardCircleCone) :
    ‖(standardCircleConeHomeomorphUnitClosedDisc x : ℂ)‖ =
      (standardCircleConeRadius x : ℝ) := by
  exact norm_standardCircleConePolarMap x

/-- The homeomorphism sends the selected cone apex to zero. -/
@[simp] theorem standardCircleConeHomeomorphUnitClosedDisc_apex :
    standardCircleConeHomeomorphUnitClosedDisc
        standardCircleConeApex = 0 :=
  standardCircleConePolarMap_apex

/-- The homeomorphism's outer boundary is precisely Mathlib's imported
unit-circle coordinate. -/
@[simp] theorem standardCircleConeHomeomorphUnitClosedDisc_boundary
    (z : UnitAddCircle) :
    (standardCircleConeHomeomorphUnitClosedDisc
        (standardCircleConeBoundary z) : ℂ) =
      (unitAddCircleHomeomorphCircle z : ℂ) :=
  standardCircleConePolarMap_boundary z

/-- Composition with the parent source-exact transport identifies the
authentic unpaired polygon perimeter cone with the closed disk. -/
noncomputable def perimeterConeHomeomorphUnitClosedDisc (k : ℕ) :
    PerimeterCone k ≃ₜ Complex.UnitClosedDisc :=
  (perimeterConeHomeomorphStandardCircleCone k).trans
    standardCircleConeHomeomorphUnitClosedDisc

/-- The authentic perimeter-cone radius becomes the complex norm. -/
theorem perimeterConeHomeomorphUnitClosedDisc_radius
    (k : ℕ) (x : PerimeterCone k) :
    ‖(perimeterConeHomeomorphUnitClosedDisc k x : ℂ)‖ =
      (coneRadius k x : ℝ) := by
  rw [perimeterConeHomeomorphUnitClosedDisc,
    Homeomorph.trans_apply,
    standardCircleConeHomeomorphUnitClosedDisc_radius,
    perimeterConeHomeomorphStandardCircleCone_radius]

/-- The authentic perimeter-cone apex becomes the complex origin. -/
@[simp] theorem perimeterConeHomeomorphUnitClosedDisc_apex
    (k : ℕ) :
    perimeterConeHomeomorphUnitClosedDisc k (coneApex k) = 0 := by
  rw [perimeterConeHomeomorphUnitClosedDisc,
    Homeomorph.trans_apply,
    perimeterConeHomeomorphStandardCircleCone_apex,
    standardCircleConeHomeomorphUnitClosedDisc_apex]

/-- The authentic outer perimeter maps by its already-proved canonical
unit-circle coordinate into the unit boundary of the closed disk. -/
@[simp] theorem perimeterConeHomeomorphUnitClosedDisc_boundary
    (k : ℕ) (x : UnpairedPerimeter k) :
    (perimeterConeHomeomorphUnitClosedDisc k
        (coneBoundary k x) : ℂ) =
      (unitAddCircleHomeomorphCircle
        (perimeterUnitCircleHomeomorph k x) : ℂ) := by
  rw [perimeterConeHomeomorphUnitClosedDisc,
    Homeomorph.trans_apply,
    perimeterConeHomeomorphStandardCircleCone_boundary,
    standardCircleConeHomeomorphUnitClosedDisc_boundary]

/-- Genus two receives the same exact closed-disk model. -/
def genusTwoPerimeterConeHomeomorphUnitClosedDisc :
    PerimeterCone 0 ≃ₜ Complex.UnitClosedDisc :=
  perimeterConeHomeomorphUnitClosedDisc 0

/-- Genus three receives the same exact closed-disk model while
retaining its original twelve directed source sides before transport. -/
def genusThreePerimeterConeHomeomorphUnitClosedDisc :
    PerimeterCone 1 ≃ₜ Complex.UnitClosedDisc :=
  perimeterConeHomeomorphUnitClosedDisc 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk
