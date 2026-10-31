import GRWTSK.GroupTheoryAndGeneralizations.Foundations.AxiomaticsAndElementaryPropertiesOfGroups.EulerComplexActions
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# Explicit planar source flows and their infinitesimal area factors

Local attribution: grwtsk contributors.
Grant Sanderson,Divergence and curl (2018-06-21),
https://www.3blue1brown.com/lessons/divergence-and-curl/ .
Source3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2018/div_curl.py,Introduction.construct204..225,CC BY-NC-SA4.0.
The z0 planar idealization uses positive counterclockwise quarter-turn convention.
No Python floating-point rotation refinement or ambient3D transport is claimed.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

Actual coordinate trajectories solve the literal planar linear ODEs. Matrices
are constructed from actual spatial partial derivatives;their determinants give
an infinitesimal area factor,not an unproved image-measure theorem.
-/

namespace GRWTSK.ODE.SourcePlanarFlows

open Matrix
open GRWTSK.GroupTheory.Elementary.EulerComplexActions
open scoped Matrix

noncomputable def radialX (t x y : ℝ) : ℝ := Real.exp (t/3)*x+0*y
noncomputable def radialY (t x y : ℝ) : ℝ := 0*x+Real.exp (t/3)*y
noncomputable def rotationX (t x y : ℝ) : ℝ := Real.cos (t/3)*x+(-Real.sin (t/3))*y
noncomputable def rotationY (t x y : ℝ) : ℝ := Real.sin (t/3)*x+Real.cos (t/3)*y
noncomputable def radialFieldX (x y : ℝ) : ℝ := x/3
noncomputable def radialFieldY (x y : ℝ) : ℝ := y/3
noncomputable def rotationFieldX (x y : ℝ) : ℝ := -y/3
noncomputable def rotationFieldY (x y : ℝ) : ℝ := x/3

noncomputable def spatialJacobian (F G : ℝ → ℝ → ℝ) (x y : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![deriv (fun u => F u y) x,deriv (fun v => F x v) y;
     deriv (fun u => G u y) x,deriv (fun v => G x v) y]

/-- Actual partial derivatives,not desired coefficients stored in a Jacobian interface. -/
theorem linear_spatial_jacobian (c d e f x y : ℝ) :
    spatialJacobian (fun u v => c*u+d*v) (fun u v => e*u+f*v) x y = !![c,d;e,f] := by
  have hx (p q : ℝ) : HasDerivAt (fun u : ℝ => p*u+q*y) p x := by
    simpa using ((hasDerivAt_id x).const_mul p).add_const (q*y)
  have hy (p q : ℝ) : HasDerivAt (fun v : ℝ => p*x+q*v) q y := by
    simpa using ((hasDerivAt_id y).const_mul q).const_add (p*x)
  simp [spatialJacobian,(hx c d).deriv,(hy c d).deriv,(hx e f).deriv,(hy e f).deriv]

theorem radial_initial (x y : ℝ) : radialX 0 x y = x ∧ radialY 0 x y = y := by
  simp [radialX,radialY]

theorem rotation_initial (x y : ℝ) : rotationX 0 x y = x ∧ rotationY 0 x y = y := by
  simp [rotationX,rotationY]

theorem radial_time_x (t x y : ℝ) :
    HasDerivAt (fun s => radialX s x y)
      (radialFieldX (radialX t x y) (radialY t x y)) t := by
  have hd := ((Real.hasDerivAt_exp (t/3)).comp t ((hasDerivAt_id t).div_const 3)).mul_const x
  convert hd using 1 <;> simp [radialX,radialY,radialFieldX] <;> ring

theorem radial_time_y (t x y : ℝ) :
    HasDerivAt (fun s => radialY s x y)
      (radialFieldY (radialX t x y) (radialY t x y)) t := by
  have hd := ((Real.hasDerivAt_exp (t/3)).comp t ((hasDerivAt_id t).div_const 3)).mul_const y
  convert hd using 1 <;> simp [radialX,radialY,radialFieldY] <;> ring

theorem rotation_time_x (t x y : ℝ) :
    HasDerivAt (fun s => rotationX s x y)
      (rotationFieldX (rotationX t x y) (rotationY t x y)) t := by
  have hc := (Real.hasDerivAt_cos (t/3)).comp t ((hasDerivAt_id t).div_const 3)
  have hs := (Real.hasDerivAt_sin (t/3)).comp t ((hasDerivAt_id t).div_const 3)
  have hd := (hc.mul_const x).add (hs.neg.mul_const y)
  convert hd using 1 <;> simp [rotationX,rotationY,rotationFieldX] <;> ring

theorem rotation_time_y (t x y : ℝ) :
    HasDerivAt (fun s => rotationY s x y)
      (rotationFieldY (rotationX t x y) (rotationY t x y)) t := by
  have hc := (Real.hasDerivAt_cos (t/3)).comp t ((hasDerivAt_id t).div_const 3)
  have hs := (Real.hasDerivAt_sin (t/3)).comp t ((hasDerivAt_id t).div_const 3)
  have hd := (hs.mul_const x).add (hc.mul_const y)
  convert hd using 1 <;> simp [rotationX,rotationY,rotationFieldY] <;> ring

theorem radial_spatial_jacobian (t x y : ℝ) :
    spatialJacobian (radialX t) (radialY t) x y = !![Real.exp (t/3),0;0,Real.exp (t/3)] :=
  linear_spatial_jacobian _ _ _ _ _ _

theorem rotation_spatial_jacobian (t x y : ℝ) :
    spatialJacobian (rotationX t) (rotationY t) x y =
      !![Real.cos (t/3),-Real.sin (t/3);Real.sin (t/3),Real.cos (t/3)] :=
  linear_spatial_jacobian _ _ _ _ _ _

theorem radial_jacobian_det (t x y : ℝ) :
    (spatialJacobian (radialX t) (radialY t) x y).det = Real.exp (2*t/3) := by
  have he : (spatialJacobian (radialX t) (radialY t) x y).det =
      Real.exp (t/3)*Real.exp (t/3) := by
    rw [radial_spatial_jacobian]
    simp [Matrix.det_fin_two]
  rw [he]
  rw [← Real.exp_add]
  congr 1 <;> ring

theorem rotation_jacobian_det (t x y : ℝ) :
    (spatialJacobian (rotationX t) (rotationY t) x y).det = 1 := by
  rw [rotation_spatial_jacobian]
  simp [Matrix.det_fin_two] <;> nlinarith [Real.sin_sq_add_cos_sq (t/3)]

theorem radial_infinitesimal_area_rate (x y : ℝ) :
    HasDerivAt (fun t => (spatialJacobian (radialX t) (radialY t) x y).det) (2/3) 0 := by
  simp_rw [radial_jacobian_det]
  have hd := (Real.hasDerivAt_exp (2*(0 : ℝ)/3)).comp 0
    (((hasDerivAt_id (0 : ℝ)).const_mul 2).div_const 3)
  simpa using hd

theorem planar_radial_divergence (x y : ℝ) :
    deriv (fun u => radialFieldX u y) x+deriv (fun v => radialFieldY x v) y = (2/3 : ℝ) := by
  have hx := ((hasDerivAt_id x).div_const 3).deriv
  have hy := ((hasDerivAt_id y).div_const 3).deriv
  simpa [radialFieldX,radialFieldY] using (by rw [hx,hy]; norm_num :
    deriv (fun u : ℝ => u/3) x+deriv (fun v : ℝ => v/3) y = (2/3 : ℝ))

theorem planar_rotation_curl (x y : ℝ) :
    deriv (fun u => rotationFieldY u y) x-deriv (fun v => rotationFieldX x v) y = (2/3 : ℝ) := by
  have hx := ((hasDerivAt_id x).div_const 3).deriv
  have hy := (((hasDerivAt_id y).neg).div_const 3).deriv
  simpa [rotationFieldX,rotationFieldY] using (by rw [hx,hy]; norm_num :
    deriv (fun u : ℝ => u/3) x-deriv (fun v : ℝ => -v/3) y = (2/3 : ℝ))

/-- The rotation law reuses the existing actual circle action,with source time rescaling. -/
theorem rotation_action_composition (s t : ℝ) (z : ℂ) :
    rotate ((s+t)/3) z = rotate (s/3) (rotate (t/3) z) := by
  have he : (s+t)/3 = s/3+t/3 := by ring
  rw [he,rotate_compose]

/-- Explicit coordinate bridge to the independently supplied rotation action. -/
theorem rotation_action_coordinates (t x y : ℝ) :
    rotate (t/3) ((x : ℂ)+(y : ℂ)*Complex.I) =
      (rotationX t x y : ℂ)+(rotationY t x y : ℂ)*Complex.I := by
  apply Complex.ext
  · simp [rotate,Circle.coe_exp,Complex.exp_mul_I,rotationX,rotationY]
    <;> ring
  · simp [rotate,Circle.coe_exp,Complex.exp_mul_I,rotationX,rotationY]
    <;> ring

theorem radial_composition (s t x y : ℝ) :
    radialX (s+t) x y = radialX s (radialX t x y) (radialY t x y) ∧
    radialY (s+t) x y = radialY s (radialX t x y) (radialY t x y) := by
  have he : (s+t)/3 = s/3+t/3 := by ring
  simp [radialX,radialY,he,Real.exp_add] <;> constructor <;> ring

theorem rotation_coordinate_composition (s t x y : ℝ) :
    rotationX (s+t) x y = rotationX s (rotationX t x y) (rotationY t x y) ∧
    rotationY (s+t) x y = rotationY s (rotationX t x y) (rotationY t x y) := by
  have he := rotation_action_composition s t ((x : ℂ)+(y : ℂ)*Complex.I)
  simp_rw [rotation_action_coordinates] at he
  constructor
  · simpa using congrArg Complex.re he
  · simpa using congrArg Complex.im he

theorem radial_area_divergence_consumer (x y : ℝ) :
    HasDerivAt (fun t => (spatialJacobian (radialX t) (radialY t) x y).det)
      (deriv (fun u => radialFieldX u y) x+deriv (fun v => radialFieldY x v) y) 0 := by
  rw [planar_radial_divergence]
  exact radial_infinitesimal_area_rate x y

theorem angular_speed_curl_factor (x y : ℝ) :
    HasDerivAt (fun t : ℝ => t/3) (1/3) 0 ∧
    deriv (fun u => rotationFieldY u y) x-deriv (fun v => rotationFieldX x v) y = 2*(1/3) := by
  constructor
  · simpa using (hasDerivAt_id (0 : ℝ)).div_const 3
  · rw [planar_rotation_curl]
    norm_num

end GRWTSK.ODE.SourcePlanarFlows
