import GRWTSK.OrdinaryDifferentialEquations.GeneralTheoryForOrdinaryDifferentialEquations.LinearOrdinaryDifferentialEquationsAndSystems.SourcePlanarFlows
import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar

/-!
# Actual image areas of the source planar flows

Local attribution: grwtsk contributors.
Grant Sanderson, Divergence and curl (2018-06-21),
https://www.3blue1brown.com/lessons/divergence-and-curl/ .
Current animation 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
Introduction.construct204..225, CC BY-NC-SA4.0.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

The plane is Fin 2 → ℝ with its actual product Lebesgue measure throughout.
The maps below are the same coordinate trajectories, identified with linear maps
before applying the Haar image theorem. No product-pair measure identification,
physical PDE, or general ODE uniqueness claim is needed.
-/
namespace GRWTSK.ODE.SourcePlanarFlows

open MeasureTheory Set Matrix
open scoped Matrix

noncomputable def radialMap (t : ℝ) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  ![radialX t (v 0) (v 1),radialY t (v 0) (v 1)]
noncomputable def rotationMap (t : ℝ) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  ![rotationX t (v 0) (v 1),rotationY t (v 0) (v 1)]
noncomputable def radialLinear (t : ℝ) : (Fin 2 → ℝ) →ₗ[ℝ] (Fin 2 → ℝ) :=
  Matrix.toLin' (spatialJacobian (radialX t) (radialY t) 0 0)
noncomputable def rotationLinear (t : ℝ) : (Fin 2 → ℝ) →ₗ[ℝ] (Fin 2 → ℝ) :=
  Matrix.toLin' (spatialJacobian (rotationX t) (rotationY t) 0 0)

theorem radial_linear_coordinates (t : ℝ) (v : Fin 2 → ℝ) :
    radialLinear t v = radialMap t v := by
  ext i
  fin_cases i <;> simp [radialLinear,radial_spatial_jacobian,Matrix.toLin'_apply,
    Matrix.mulVec,Fin.sum_univ_two,radialMap,radialX,radialY]

theorem rotation_linear_coordinates (t : ℝ) (v : Fin 2 → ℝ) :
    rotationLinear t v = rotationMap t v := by
  ext i
  fin_cases i <;> simp [rotationLinear,rotation_spatial_jacobian,Matrix.toLin'_apply,
    Matrix.mulVec,Fin.sum_univ_two,rotationMap,rotationX,rotationY]

theorem radial_linear_det (t : ℝ) :
    LinearMap.det (radialLinear t) = Real.exp (2*t/3) := by
  rw [radialLinear,LinearMap.det_toLin',radial_jacobian_det]

theorem rotation_linear_det (t : ℝ) : LinearMap.det (rotationLinear t) = 1 := by
  rw [rotationLinear,LinearMap.det_toLin',rotation_jacobian_det]

/-- Actual image measure, with the direct determinant rather than its inverse. -/
theorem radial_image_measure (t : ℝ) (s : Set (Fin 2 → ℝ)) :
    volume (radialMap t '' s) = ENNReal.ofReal (Real.exp (2*t/3))*volume s := by
  have h := MeasureTheory.addHaar_image_linearMap (volume : Measure (Fin 2 → ℝ))
    (radialLinear t) s
  simpa only [radial_linear_coordinates,radial_linear_det,
    abs_of_pos (Real.exp_pos _)] using h

theorem rotation_image_measure (t : ℝ) (s : Set (Fin 2 → ℝ)) :
    volume (rotationMap t '' s) = volume s := by
  have h := MeasureTheory.addHaar_image_linearMap (volume : Measure (Fin 2 → ℝ))
    (rotationLinear t) s
  simpa only [rotation_linear_coordinates,rotation_linear_det,abs_one,
    ENNReal.ofReal_one,one_mul] using h

/-- In contrast, pushforward uses the reciprocal determinant. -/
theorem radial_pushforward (t : ℝ) :
    Measure.map (radialMap t) volume =
      ENNReal.ofReal ((Real.exp (2*t/3))⁻¹) • (volume : Measure (Fin 2 → ℝ)) := by
  have h := MeasureTheory.map_linearMap_addHaar_eq_smul_addHaar
    (volume : Measure (Fin 2 → ℝ))
    (f := radialLinear t) (by rw [radial_linear_det]; exact ne_of_gt (Real.exp_pos _))
  simpa only [radial_linear_coordinates,radial_linear_det,
    abs_of_pos (inv_pos.mpr (Real.exp_pos _))] using h

noncomputable def flowRectangle (a b h k : ℝ) : Set (Fin 2 → ℝ) :=
  Set.pi Set.univ (fun i => Set.Ioc (![a-h,b-k] i) (![a+h,b+k] i))

theorem flow_rectangle_measure (a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    volume (flowRectangle a b h k) = ENNReal.ofReal (4*h*k) := by
  rw [flowRectangle,Real.volume_pi_Ioc]
  simp only [Fin.prod_univ_two,Matrix.cons_val_zero,Matrix.cons_val_one,
    Matrix.cons_val_fin_one]
  rw [← ENNReal.ofReal_mul (by linarith : 0 ≤ a+h-(a-h))]
  congr 1 <;> ring

theorem flow_rectangle_real_area (a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    (volume (flowRectangle a b h k)).toReal = 4*h*k := by
  rw [flow_rectangle_measure a b h k hh hk,ENNReal.toReal_ofReal]
  positivity

theorem radial_rectangle_measure (t a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    volume (radialMap t '' flowRectangle a b h k) =
      ENNReal.ofReal (Real.exp (2*t/3)*(4*h*k)) := by
  rw [radial_image_measure,flow_rectangle_measure a b h k hh hk,
    ← ENNReal.ofReal_mul (le_of_lt (Real.exp_pos _))]

theorem rotation_rectangle_measure (t a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    volume (rotationMap t '' flowRectangle a b h k) = ENNReal.ofReal (4*h*k) := by
  rw [rotation_image_measure,flow_rectangle_measure a b h k hh hk]

theorem radial_rectangle_real_area (t a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    (volume (radialMap t '' flowRectangle a b h k)).toReal =
      Real.exp (2*t/3)*(4*h*k) := by
  rw [radial_rectangle_measure t a b h k hh hk,ENNReal.toReal_ofReal]
  positivity

theorem rotation_rectangle_real_area (t a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    (volume (rotationMap t '' flowRectangle a b h k)).toReal = 4*h*k := by
  rw [rotation_rectangle_measure t a b h k hh hk,ENNReal.toReal_ofReal]
  positivity

/-- The derivative belongs to the actual finite real image-area observation. -/
theorem radial_actual_area_rate (a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    HasDerivAt (fun t => (volume (radialMap t '' flowRectangle a b h k)).toReal)
      ((2/3)*(volume (flowRectangle a b h k)).toReal) 0 := by
  simp_rw [radial_rectangle_real_area _ a b h k hh hk]
  rw [flow_rectangle_real_area a b h k hh hk]
  have hd := ((Real.hasDerivAt_exp (2*(0 : ℝ)/3)).comp 0
    (((hasDerivAt_id (0 : ℝ)).const_mul 2).div_const 3)).mul_const (4*h*k)
  simpa using hd

theorem radial_actual_area_divergence (a b h k : ℝ) (hh : 0 ≤ h) (hk : 0 ≤ k) :
    HasDerivAt (fun t => (volume (radialMap t '' flowRectangle a b h k)).toReal)
      ((deriv (fun x => radialFieldX x b) a+deriv (fun y => radialFieldY a y) b)*
        (volume (flowRectangle a b h k)).toReal) 0 := by
  rw [planar_radial_divergence]
  exact radial_actual_area_rate a b h k hh hk

end GRWTSK.ODE.SourcePlanarFlows
