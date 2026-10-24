# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature.Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29d2c509245e7ef991fce26dfee4e83c5ed7d64` · SHA-256 `7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.InterfaceState
import Mathlib.Analysis.Calculus.Gradient.Basic
import Mathlib.Analysis.InnerProductSpace.Calculus
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.LinearAlgebra.Trace
import Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Plane and cylinder patch witnesses

These are actual regular parametrized patches on one fixed Lebesgue rectangle.
Their area integrals agree, while the divergence of the normalized level gradient
and hence the pressure jump required by fixed positive tension differ at a shared
point with a shared normal. No closed-surface, enclosed-volume, or fluid solution
claim is made.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk
namespace CurvatureFixture
open scoped RealInnerProductSpace
noncomputable section

/-- A coordinate functional on the Euclidean ambient space. -/
def coord (i : Fin 3) : Space →L[ℝ] ℝ := PiLp.proj 2 (fun _ : Fin 3 => ℝ) i

/-- Orthogonal projection onto the first two coordinate axes. -/
def radial : Space →L[ℝ] Space :=
  (coord 0).smulRight (axis 0) + (coord 1).smulRight (axis 1)

/-- The radial projection has the stated coordinate expression. -/
theorem radial_apply (x : Space) : radial x = x 0 • axis 0 + x 1 • axis 1 := rfl

/-- The common surface point is fixed by radial projection. -/
theorem radial_axis_zero : radial (axis 0) = axis 0 := by
  simp [radial, coord, axis]

/-- The signed defining function of the plane through the first coordinate unit vector. -/
def planeLevel (x : Space) : ℝ := x 0 - 1

/-- The polynomial signed defining function of the unit cylinder around the third axis. -/
def cylinderLevel (x : Space) : ℝ := (1 / 2 : ℝ) * (‖radial x‖ ^ 2 - 1)

/-- The plane normal is obtained from an actual derivative of its defining function. -/
theorem plane_gradient (x : Space) : HasGradientAt planeLevel (axis 0) x := by
  apply hasGradientAt_iff_hasFDerivAt.mpr
  convert! (coord 0).hasFDerivAt.sub_const 1 using 1
  ext v
  simp [coord, axis, EuclideanSpace.inner_single_left]

/-- The cylinder defining function has its actual radial gradient everywhere. -/
theorem cylinder_gradient (x : Space) : HasGradientAt cylinderLevel (radial x) x := by
  apply hasGradientAt_iff_hasFDerivAt.mpr
  convert! (radial.hasFDerivAt.norm_sq.sub_const 1).const_mul (1 / 2 : ℝ) using 1
  ext v
  simp [axis, EuclideanSpace.inner_single_left, coord, radial]

/-- The radial norm has a genuine derivative at the common regular point. -/
theorem radial_norm_derivative :
    HasFDerivAt (fun x : Space => ‖radial x‖) (coord 0) (axis 0) := by
  have h := radial.hasFDerivAt.norm_sq.sqrt
    (show ‖radial (axis 0)‖ ^ 2 ≠ 0 by simp [radial_axis_zero])
  convert! h using 1
  · ext x
    simp
  · ext v
    simp [coord, radial_apply, axis, EuclideanSpace.inner_single_left]

/-- The actual normalized radial field differentiates to projection onto the second axis. -/
theorem radial_normal_derivative :
    HasFDerivAt (fun x : Space => NormedSpace.normalize (radial x))
      ((coord 1).smulRight (axis 1)) (axis 0) := by
  have h := ((hasDerivAt_inv (show ‖radial (axis 0)‖ ≠ 0 by
    simp [radial_axis_zero])).comp_hasFDerivAt (axis 0) radial_norm_derivative).smul
      radial.hasFDerivAt
  convert! h using 1
  ext v i
  simp [radial, coord, axis, PiLp.single_apply, ContinuousLinearMap.smulRight_apply]


/-- The level-defined outward plane normal is constant. -/
theorem plane_normal : interfaceNormal planeLevel = fun _ => axis 0 := by
  funext x
  rw [interfaceNormal, (plane_gradient x).gradient]
  exact NormedSpace.normalize_eq_self_of_norm_eq_one (axis_norm 0)

/-- The level-defined outward cylinder normal is the normalized radial field. -/
theorem cylinder_normal :
    interfaceNormal cylinderLevel = fun x => NormedSpace.normalize (radial x) := by
  funext x
  rw [interfaceNormal, (cylinder_gradient x).gradient]

/-- The trace of the actual plane-normal derivative is zero. -/
theorem plane_curvature : sumCurvature planeLevel (axis 0) = 0 := by
  simp [sumCurvature, divergence, plane_normal]

/-- The trace of the actual cylinder-normal derivative at the common point is one. -/
theorem cylinder_curvature : sumCurvature cylinderLevel (axis 0) = 1 := by
  rw [sumCurvature, divergence, cylinder_normal, radial_normal_derivative.fderiv]
  change LinearMap.trace ℝ Space ((coord 1).toLinearMap.smulRight (axis 1)) = 1
  rw [LinearMap.trace_smulRight]
  simp [coord, axis]

/-- A coordinate functional on the Euclidean parameter plane. -/
def parameterCoord (i : Fin 2) : ParameterPlane →L[ℝ] ℝ :=
  PiLp.proj 2 (fun _ : Fin 2 => ℝ) i

/-- A regular plane chart through the common surface point. -/
def planeChart (p : ParameterPlane) : Space :=
  axis 0 + p 0 • axis 1 + p 1 • axis 2

/-- The standard unit-cylinder chart, with outward cross-product orientation. -/
def cylinderChart (p : ParameterPlane) : Space :=
  Real.cos (p 0) • axis 0 + Real.sin (p 0) • axis 1 + p 1 • axis 2

/-- The explicit continuous linear derivative of the plane chart. -/
def planeDerivative : ParameterPlane →L[ℝ] Space :=
  (parameterCoord 0).smulRight (axis 1) + (parameterCoord 1).smulRight (axis 2)

/-- The explicit continuous linear derivative of the cylinder chart. -/
def cylinderDerivative (p : ParameterPlane) : ParameterPlane →L[ℝ] Space :=
  ((-Real.sin (p 0)) • parameterCoord 0).smulRight (axis 0) +
    ((Real.cos (p 0)) • parameterCoord 0).smulRight (axis 1) +
    (parameterCoord 1).smulRight (axis 2)

/-- The plane chart has its claimed genuine Fréchet derivative. -/
theorem plane_chart_derivative (p : ParameterPlane) :
    HasFDerivAt planeChart planeDerivative p :=
  (((parameterCoord 0).hasFDerivAt.smul_const (axis 1)).const_add (axis 0)).add
    ((parameterCoord 1).hasFDerivAt.smul_const (axis 2))

/-- The cylinder chart has its claimed genuine Fréchet derivative. -/
theorem cylinder_chart_derivative (p : ParameterPlane) :
    HasFDerivAt cylinderChart (cylinderDerivative p) p :=
  (((parameterCoord 0).hasFDerivAt.cos.smul_const (axis 0)).add
    ((parameterCoord 0).hasFDerivAt.sin.smul_const (axis 1))).add
    ((parameterCoord 1).hasFDerivAt.smul_const (axis 2))

/-- The first actual plane-chart tangent is the second coordinate unit vector. -/
theorem plane_patch_tangent_zero (p : ParameterPlane) : patchTangent planeChart p 0 = axis 1 := by
  rw [patchTangent, (plane_chart_derivative p).fderiv]
  simp [planeDerivative, parameterCoord]

/-- The second actual plane-chart tangent is the third coordinate unit vector. -/
theorem plane_patch_tangent_one (p : ParameterPlane) : patchTangent planeChart p 1 = axis 2 := by
  rw [patchTangent, (plane_chart_derivative p).fderiv]
  simp [planeDerivative, parameterCoord]

/-- The first actual cylinder-chart tangent follows the unit circle. -/
theorem cylinder_patch_tangent_zero (p : ParameterPlane) :
    patchTangent cylinderChart p 0 = -Real.sin (p 0) • axis 0 + Real.cos (p 0) • axis 1 := by
  rw [patchTangent, (cylinder_chart_derivative p).fderiv]
  simp [cylinderDerivative, parameterCoord]

/-- The second actual cylinder-chart tangent follows the cylinder axis. -/
theorem cylinder_patch_tangent_one (p : ParameterPlane) :
    patchTangent cylinderChart p 1 = axis 2 := by
  rw [patchTangent, (cylinder_chart_derivative p).fderiv]
  simp [cylinderDerivative, parameterCoord]

/-- The circular cylinder tangent has Euclidean norm one. -/
theorem cylinder_tangent_norm (t : ℝ) :
    ‖-Real.sin t • axis 0 + Real.cos t • axis 1‖ = 1 := by
  apply (sq_eq_sq₀ (norm_nonneg _) zero_le_one).mp
  rw [EuclideanSpace.real_norm_sq_eq]
  simp [Fin.sum_univ_succ, axis, PiLp.single_apply]

/-- The circular tangent is orthogonal to the cylinder axis. -/
theorem cylinder_tangent_orthogonal (t : ℝ) :
    ⟪-Real.sin t • axis 0 + Real.cos t • axis 1, axis 2⟫ = 0 := by
  simp [inner_add_left, inner_smul_left, axis, EuclideanSpace.inner_single_left]

/-- The actual plane-chart area density is identically one. -/
theorem plane_density (p : ParameterPlane) : patchAreaDensity planeChart p = 1 := by
  rw [patchAreaDensity, plane_patch_tangent_zero, plane_patch_tangent_one]
  apply tangentArea_eq_one_of_unit_orthogonal _ _ (axis_norm 1) (axis_norm 2)
  simp [axis, EuclideanSpace.inner_single_left]

/-- The actual cylinder-chart area density is identically one. -/
theorem cylinder_density (p : ParameterPlane) : patchAreaDensity cylinderChart p = 1 := by
  rw [patchAreaDensity, cylinder_patch_tangent_zero, cylinder_patch_tangent_one]
  exact tangentArea_eq_one_of_unit_orthogonal _ _ (cylinder_tangent_norm _) (axis_norm 2)
    (cylinder_tangent_orthogonal _)


open MeasureTheory

/-- The fixed parameter rectangle with both coordinates between negative and positive one half. -/
def parameterRectangle : Set ParameterPlane :=
  WithLp.ofLp ⁻¹' Set.Icc (fun _ : Fin 2 => (-1 / 2 : ℝ)) (fun _ => (1 / 2 : ℝ))

/-- Actual Euclidean Lebesgue measure restricted to the fixed parameter rectangle. -/
def parameterMeasure : Measure ParameterPlane := volume.restrict parameterRectangle

/-- The parameter rectangle has positive finite Lebesgue measure exactly one. -/
theorem parameterRectangle_volume : (volume : Measure ParameterPlane) parameterRectangle = 1 := by
  rw [parameterRectangle, (PiLp.volume_preserving_ofLp (Fin 2)).measure_preimage
    measurableSet_Icc.nullMeasurableSet]
  norm_num [Real.volume_Icc_pi]

/-- The restricted Lebesgue parameter measure is finite. -/
instance parameterMeasure_finite : IsFiniteMeasure parameterMeasure := by
  apply isFiniteMeasure_restrict.mpr
  rw [parameterRectangle_volume]
  simp

/-- The entire restricted parameter measure has mass one. -/
theorem parameterMeasure_univ : parameterMeasure Set.univ = 1 := by
  simp [parameterMeasure, parameterRectangle_volume]

/-- The actual plane-chart area density is integrable over the chosen rectangle. -/
theorem plane_area_integrable : Integrable (patchAreaDensity planeChart) parameterMeasure := by
  rw [show patchAreaDensity planeChart = fun _ => 1 from funext plane_density]
  exact integrable_const 1

/-- The actual cylinder-chart area density is integrable over the chosen rectangle. -/
theorem cylinder_area_integrable :
    Integrable (patchAreaDensity cylinderChart) parameterMeasure := by
  rw [show patchAreaDensity cylinderChart = fun _ => 1 from funext cylinder_density]
  exact integrable_const 1

/-- The genuine parametrized plane-patch area integral is one. -/
theorem plane_area : patchArea planeChart parameterMeasure = 1 := by
  simp [patchArea, plane_density, measureReal_def, parameterMeasure_univ]

/-- The genuine parametrized cylinder-patch area integral is one. -/
theorem cylinder_area : patchArea cylinderChart parameterMeasure = 1 := by
  simp [patchArea, cylinder_density, measureReal_def, parameterMeasure_univ]

/-- Every plane-chart point lies on its actual level surface. -/
theorem plane_chart_on_interface (p : ParameterPlane) : planeLevel (planeChart p) = 0 := by
  simp [planeLevel, planeChart, axis]

/-- Every cylinder-chart point lies on its actual level surface. -/
theorem cylinder_chart_on_interface (p : ParameterPlane) :
    cylinderLevel (cylinderChart p) = 0 := by
  unfold cylinderLevel
  rw [EuclideanSpace.real_norm_sq_eq]
  simp [radial, coord, cylinderChart, axis, PiLp.single_apply, Fin.sum_univ_succ,
    Real.cos_sq_add_sin_sq]

/-- The plane chart contains the common curvature evaluation point. -/
theorem plane_chart_zero : planeChart 0 = axis 0 := by simp [planeChart]

/-- The cylinder chart contains the same curvature evaluation point. -/
theorem cylinder_chart_zero : cylinderChart 0 = axis 0 := by simp [cylinderChart]

/-- The two-state family selects actual plane and cylinder charts. -/
def chartFamily (state : Bool) : ParameterPlane → Space :=
  if state then cylinderChart else planeChart

/-- The same two-state label selects the corresponding signed surface-defining function. -/
def levelFamily (state : Bool) : Space → ℝ :=
  if state then cylinderLevel else planeLevel

/-- Equal genuine patch areas collide while actual local curvatures differ. -/
def areaCurvatureObstruction :
    DescentObstruction (fun state => patchArea (chartFamily state) parameterMeasure)
      (fun state => sumCurvature (levelFamily state) (axis 0)) where
  left := false
  right := true
  sameCarrier := by simp [chartFamily, plane_area, cylinder_area]
  targetSeparated := by simp [levelFamily, plane_curvature, cylinder_curvature]

/-- Parametrized patch area cannot recover the actual local curvature in this family. -/
theorem curvature_not_determined_by_area :
    ¬DescendsThrough (fun state => patchArea (chartFamily state) parameterMeasure)
      (fun state => sumCurvature (levelFamily state) (axis 0)) :=
  descent_obstruction_not_descends areaCurvatureObstruction


/-- The plane patch has genuine derivatives, nondegenerate tangents, and integrable area. -/
theorem plane_regular_patch : RegularFinitePatch planeChart parameterMeasure where
  differentiable := Filter.Eventually.of_forall fun p => (plane_chart_derivative p).differentiableAt
  nondegenerate := Filter.Eventually.of_forall fun p => by
    apply norm_ne_zero_iff.mp
    change patchAreaDensity planeChart p ≠ 0
    rw [plane_density]
    norm_num
  areaIntegrable := plane_area_integrable

/-- The cylinder patch has genuine derivatives, nondegenerate tangents, and integrable area. -/
theorem cylinder_regular_patch : RegularFinitePatch cylinderChart parameterMeasure where
  differentiable := Filter.Eventually.of_forall fun p =>
    (cylinder_chart_derivative p).differentiableAt
  nondegenerate := Filter.Eventually.of_forall fun p => by
    apply norm_ne_zero_iff.mp
    change patchAreaDensity cylinderChart p ≠ 0
    rw [cylinder_density]
    norm_num
  areaIntegrable := cylinder_area_integrable

/-- The plane chart has no multiplicity anywhere. -/
theorem plane_chart_injective : Function.Injective planeChart := by
  intro p q h
  have h₀ := congrArg (fun x : Space => x 1) h
  have h₁ := congrArg (fun x : Space => x 2) h
  apply PiLp.ext
  intro i
  fin_cases i
  · simpa [planeChart, axis] using h₀
  · simpa [planeChart, axis] using h₁

/-- The cylinder chart has no repeated points on the fixed parameter rectangle. -/
theorem cylinder_chart_injective_on_rectangle : Set.InjOn cylinderChart parameterRectangle := by
  intro p hp q hq equal
  have hs := congrArg (fun x : Space => x 1) equal
  have hv := congrArg (fun x : Space => x 2) equal
  have hs' : Real.sin (p 0) = Real.sin (q 0) := by simpa [cylinderChart, axis] using hs
  have hv' : p 1 = q 1 := by simpa [cylinderChart, axis] using hv
  have hp' : p 0 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) := by
    have hlow : (-1 / 2 : ℝ) ≤ p 0 := hp.1 0
    have hhigh : p 0 ≤ (1 / 2 : ℝ) := hp.2 0
    constructor <;> linarith [Real.pi_gt_three]
  have hq' : q 0 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) := by
    have hlow : (-1 / 2 : ℝ) ≤ q 0 := hq.1 0
    have hhigh : q 0 ≤ (1 / 2 : ℝ) := hq.2 0
    constructor <;> linarith [Real.pi_gt_three]
  have hu := Real.injOn_sin hp' hq' hs'
  apply PiLp.ext
  intro i
  fin_cases i <;> assumption

/-- Both curvature evaluations use nonzero gradients and genuine level and normal derivatives. -/
theorem common_point_regular (state : Bool) :
    levelFamily state (axis 0) = 0 ∧
      gradient (levelFamily state) (axis 0) ≠ 0 ∧
      DifferentiableAt ℝ (levelFamily state) (axis 0) ∧
      DifferentiableAt ℝ (interfaceNormal (levelFamily state)) (axis 0) := by
  cases state
  · simp only [levelFamily, Bool.false_eq_true, ↓reduceIte]
    refine ⟨?_, ?_, (plane_gradient _).differentiableAt, ?_⟩
    · simpa [plane_chart_zero] using plane_chart_on_interface 0
    · rw [(plane_gradient _).gradient]
      exact norm_ne_zero_iff.mp (by simp)
    · rw [plane_normal]
      exact differentiableAt_const _
  · simp only [levelFamily, ↓reduceIte]
    refine ⟨?_, ?_, (cylinder_gradient _).differentiableAt, ?_⟩
    · simpa [cylinder_chart_zero] using cylinder_chart_on_interface 0
    · rw [(cylinder_gradient _).gradient, radial_axis_zero]
      exact norm_ne_zero_iff.mp (by simp)
    · rw [cylinder_normal]
      exact radial_normal_derivative.differentiableAt

/-- The pressure difference required by Young–Laplace at the common point, not a solution field. -/
def requiredPressureDifference (tension : ℝ) (state : Bool) : ℝ :=
  tension * sumCurvature (levelFamily state) (axis 0)

/-- For fixed nonzero tension, equal patch areas require different Young–Laplace pressure jumps. -/
def areaPressureObstruction (tension : ℝ) (nonzero : tension ≠ 0) :
    DescentObstruction (fun state => patchArea (chartFamily state) parameterMeasure)
      (requiredPressureDifference tension) where
  left := false
  right := true
  sameCarrier := areaCurvatureObstruction.sameCarrier
  targetSeparated := by
    simpa [requiredPressureDifference, levelFamily, plane_curvature, cylinder_curvature] using
      Ne.symm nonzero

/-- Fixed positive tension does not make area sufficient for the required local pressure jump. -/
theorem required_pressure_not_determined_by_area (tension : ℝ) (positive : 0 < tension) :
    ¬DescendsThrough (fun state => patchArea (chartFamily state) parameterMeasure)
      (requiredPressureDifference tension) :=
  descent_obstruction_not_descends (areaPressureObstruction tension positive.ne')

/-- No scalar function of patch area recovers the required pressure jump in this family. -/
theorem no_area_pressure_decoder (tension : ℝ) (positive : 0 < tension) :
    ¬∃ recover : ℝ → ℝ, ∀ state,
      recover (patchArea (chartFamily state) parameterMeasure) =
        requiredPressureDifference tension state :=
  descent_obstruction_no_factorization (areaPressureObstruction tension positive.ne')


/-- The common evaluation parameter lies inside the declared rectangle. -/
theorem zero_mem_parameterRectangle : (0 : ParameterPlane) ∈ parameterRectangle := by
  constructor <;> intro i <;> norm_num

/-- Both defining functions choose the same outward unit normal at the common point. -/
theorem common_normal (state : Bool) : interfaceNormal (levelFamily state) (axis 0) = axis 0 := by
  cases state <;>
    simp [levelFamily, plane_normal, cylinder_normal, radial_axis_zero,
      NormedSpace.normalize_eq_self_of_norm_eq_one (axis_norm 0)]

/-- An actual pressure-jump law requires precisely the fixture pressure-difference target. -/
theorem pressure_jump_requires_fixture_pressure (tension : ℝ) (state : Bool)
    (pressureMinus pressurePlus : Space → ℝ)
    (jump : pressureJumpResidual tension (levelFamily state)
      pressureMinus pressurePlus (axis 0) = 0) :
    pressureMinus (axis 0) - pressurePlus (axis 0) = requiredPressureDifference tension state :=
  sub_eq_zero.mp jump

end
end CurvatureFixture
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk
```
