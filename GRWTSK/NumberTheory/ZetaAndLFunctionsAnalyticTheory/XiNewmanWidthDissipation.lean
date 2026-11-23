/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Tactic

/-! Scalar comparison for transverse zero motion in the backward heat equation. -/
namespace GRWTSK.XiNewmanWidthDissipation

/-- A maximal root's opposite lower reflection gives this additional speed. -/
theorem opposite_reflection {x y : ℝ} (hy : 0 < y) :
    4*y*(2*y)/((2*x)^2+(2*y)^2) = 2*y^2/(x^2+y^2) := by
  have h : 0 < x^2+y^2 := by positivity
  have h' : 0 < (2*x)^2+(2*y)^2 := by positivity
  field_simp
  ring

/-- A real sign bracket supplies one further lower bound on the speed. -/
theorem real_anchor {w r R : ℝ} (hw : 0 < w) (hr : r^2 ≤ R^2) :
    4*w/(R^2+w) ≤ 4*w/(r^2+w) := by
  exact div_le_div_of_nonneg_left (by positivity) (by positivity) (by linarith)

/-- The rational majorant of reciprocal speed is exact at the two endpoints. -/
theorem reciprocal_speed_bound {a b v : ℝ} (ha : 0 < a) (hv : 0 ≤ v) (hb : v ≤ b) :
    (a+v)/(2*(a+2*v)) ≤ 1/2-v/(2*(a+2*b)) := by
  have h1 : 0 < a+2*b := by linarith
  have h2 : 0 < a+2*v := by linarith
  field_simp
  nlinarith [mul_nonneg hv (sub_nonneg.mpr hb)]

/-- Polynomial primitive needed to integrate the rational upper estimate. -/
theorem bound_primitive {a b : ℝ} (hab : 0 < a+2*b) (v : ℝ) :
    HasDerivAt (fun u : ℝ => u/2-u^2/(4*(a+2*b))) (1/2-v/(2*(a+2*b))) v := by
  convert ((hasDerivAt_id v).div_const 2).sub (((hasDerivAt_pow 2 v).div_const (4*(a+2*b)))) using 1
  · rfl
  · simp
    field_simp
    ring

/-- Exact logarithmic primitive of the reciprocal quartet speed. -/
theorem quartet_primitive {a v : ℝ} (ha : 0 < a) (hv : 0 ≤ v) :
    HasDerivAt (fun u : ℝ => u/4 + a/8*Real.log (1+2*u/a))
      ((a+v)/(2*(a+2*v))) v := by
  have h : 0 < 1+2*v/a := by positivity
  have h' : 0 < a+2*v := by positivity
  have hd := ((hasDerivAt_const v (1:ℝ)).add
    (((hasDerivAt_id v).const_mul 2).div_const a)).log h.ne'
  convert ((hasDerivAt_id v).div_const 4).add (hd.const_mul (a/8)) using 1
  · rfl
  · simp
    field_simp
    ring

/-- The resulting rational endpoint saving increases with the initial width. -/
theorem margin_mono {a u v : ℝ} (ha : 0 < a) (hu : 0 ≤ u) (huv : u ≤ v) :
    u^2/(2*a+4*u) ≤ v^2/(2*a+4*v) := by
  have hu' : 0 < 2*a+4*u := by positivity
  have hv' : 0 < 2*a+4*v := by linarith
  rw [div_le_div_iff₀ hu' hv']
  nlinarith [mul_nonneg (sub_nonneg.mpr huv)
    (show 0 ≤ 2*a*(v+u)+4*(v*u) by have hv : 0 ≤ v := le_trans hu huv; positivity)]

/-- Midpoint-time bookkeeping. The polynomial deficit is a strict saving when
the terminal time and the supplied locator are positive. -/
theorem endpoint_bound {a w lambda w0 : ℝ} (ha : 0 < a) (hl : 0 < lambda)
    (hlw : lambda ≤ w) (hpre : w+lambda ≤ w0)
    (hpost : lambda ≤ w-w^2/(2*a+4*w)) :
    lambda^2/(2*a+4*lambda) ≤ w0-2*lambda := by
  linarith [margin_mono ha hl.le hlw]

/-- A general speed gain has a rational deficit from the constant strip speed. -/
theorem anchor_reciprocal_defect {a k u : ℝ} (ha : 0 < a) (hk : 0 ≤ k) (hu : 0 ≤ u) :
    1/2-(a+u)/(2*a+(2+k)*u) = k*u/(2*(2*a+(2+k)*u)) := by
  have h : 0 < 2*a+(2+k)*u := by positivity
  field_simp
  ring

/-- Twenty-two real anchors and the opposite lower reflection share the larger
radius after preserving their distinct positive contributions. -/
theorem twenty_two_anchors {a b w : ℝ} (hw : 0 < w) (ha : 0 ≤ a) (hab : a ≤ b) :
    2+90*w/(b+w) ≤ 2+2*w/(a+w)+22*(4*w/(b+w)) := by
  have h : (2*w)/(b+w) ≤ 2*w/(a+w) :=
    div_le_div_of_nonneg_left (by positivity) (by positivity) (by linarith)
  linarith [show 90*w/(b+w) = 2*w/(b+w)+22*(4*w/(b+w)) by ring]

/-- Integrate the quartet speed on one regular time interval. Only continuity
is needed at its endpoints, allowing the adjacent collision limits. -/
theorem quartet_duration {a s t : ℝ} (ha : 0 < a) (hst : s ≤ t) (w rate : ℝ → ℝ)
    (hc : ContinuousOn w (Set.Icc s t)) (hw : ∀ x ∈ Set.Icc s t, 0 ≤ w x)
    (hd : ∀ x ∈ Set.Ioo s t, HasDerivAt w (rate x) x)
    (hs : ∀ x ∈ Set.Ioo s t, rate x ≤ -(2+2*w x/(a+w x))) :
    t-s ≤ (w s/4+a/8*Real.log (1+2*w s/a)) -
      (w t/4+a/8*Real.log (1+2*w t/a)) := by
  let P (u : ℝ) := u/4+a/8*Real.log (1+2*u/a)
  have hc' : ContinuousOn (fun x => x+P (w x)) (Set.Icc s t) := by
    intro x hx
    exact continuousAt_id.continuousWithinAt.add
      ((quartet_primitive ha (hw x hx)).continuousAt.comp_continuousWithinAt (hc x hx))
  have hd' (x : ℝ) (hx : x ∈ Set.Ioo s t) :
      HasDerivAt (fun y => y+P (w y)) (1+(a+w x)/(2*(a+2*w x))*rate x) x := by
    exact (hasDerivAt_id x).add ((quartet_primitive ha (hw x ⟨hx.1.le,hx.2.le⟩)).comp x (hd x hx))
  have hf : AntitoneOn (fun x => x+P (w x)) (Set.Icc s t) := by
    apply antitoneOn_of_hasDerivWithinAt_nonpos (f' := fun x => 1+(a+w x)/(2*(a+2*w x))*rate x)
      (convex_Icc s t) hc'
    · intro x hx
      rw [interior_Icc] at hx
      exact (hd' x hx).hasDerivWithinAt
    · intro x hx
      rw [interior_Icc] at hx
      have h0 := hw x ⟨hx.1.le,hx.2.le⟩
      have h1 : 0 < a+w x := by positivity
      have h2 : 0 < a+2*w x := by positivity
      have h := mul_le_mul_of_nonneg_left (hs x hx)
        (by positivity : 0 ≤ (a+w x)/(2*(a+2*w x)))
      have heq : (a+w x)/(2*(a+2*w x)) * (-(2+2*w x/(a+w x))) = -1 := by
        field_simp
        ring
      linarith
  have h := hf (Set.left_mem_Icc.mpr hst) (Set.right_mem_Icc.mpr hst) hst
  dsimp [P] at h
  linarith

end GRWTSK.XiNewmanWidthDissipation
