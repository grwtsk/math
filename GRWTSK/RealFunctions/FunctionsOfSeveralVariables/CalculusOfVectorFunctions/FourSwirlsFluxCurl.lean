import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic

/-!
# Analytic flux and circulation of the actual four-swirls animation field

Local attribution: grwtsk contributors.
Primary: Grant Sanderson, Divergence and curl (2018-06-21),
https://www.3blue1brown.com/lessons/divergence-and-curl/ .
Field provenance: 3b1b/videos, revision306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2018/div_curl.py, four_swirls_function, current pinned animation source.
Upstream animation source license: CC BY-NC-SA4.0; attribution retained.
This is a new analytic mathematical consumer of its planar polynomial formula,
not an execution/port of finite-dt helpers or a spoken-video transcript audit.
All bodies and suppliers: NOT_RUN_USER_DEFERRED.
-/

namespace GRWTSK.VectorCalculus.FourSwirlsFluxCurl

open Filter MeasureTheory
open scoped Topology Interval

noncomputable def P (x y : ℝ) : ℝ := (y^3-4*y)/20
noncomputable def Q (x y : ℝ) : ℝ := (x^3-16*x)/20
noncomputable def analyticDivergence (x y : ℝ) : ℝ :=
  deriv (fun t => P t y) x+deriv (fun t => Q x t) y
noncomputable def scalarCurl (x y : ℝ) : ℝ :=
  deriv (fun t => Q t y) x-deriv (fun t => P x t) y

/-- Four counterclockwise tangent edge integrals, with top and left reversed. -/
noncomputable def circulation (a b h k : ℝ) : ℝ :=
  (∫ x in a-h..a+h, P x (b-k))+(∫ y in b-k..b+k, Q (a+h) y)-
  (∫ x in a-h..a+h, P x (b+k))-(∫ y in b-k..b+k, Q (a-h) y)

/-- Four outward-normal edge integrals; these are distinct from tangent circulation. -/
noncomputable def outwardFlux (a b h k : ℝ) : ℝ :=
  (∫ y in b-k..b+k, P (a+h) y)-(∫ y in b-k..b+k, P (a-h) y)+
  (∫ x in a-h..a+h, Q x (b+k))-(∫ x in a-h..a+h, Q x (b-k))

noncomputable def normalizedCirculation (a b h k : ℝ) : ℝ := circulation a b h k/(4*h*k)

theorem P_x_derivative (x y : ℝ) : HasDerivAt (fun t => P t y) 0 x := by
  simpa [P] using hasDerivAt_const x ((y^3-4*y)/20)

theorem P_y_derivative (x y : ℝ) : HasDerivAt (fun t => P x t) ((3*y^2-4)/20) y := by
  have hd := (((hasDerivAt_id y).pow 3).sub ((hasDerivAt_id y).const_mul 4)).div_const 20
  convert hd using 1 <;> simp [P] <;> ring

theorem Q_x_derivative (x y : ℝ) : HasDerivAt (fun t => Q t y) ((3*x^2-16)/20) x := by
  have hd := (((hasDerivAt_id x).pow 3).sub ((hasDerivAt_id x).const_mul 16)).div_const 20
  convert hd using 1 <;> simp [Q] <;> ring

theorem Q_y_derivative (x y : ℝ) : HasDerivAt (fun t => Q x t) 0 y := by
  simpa [Q] using hasDerivAt_const y ((x^3-16*x)/20)

theorem divergence_zero (x y : ℝ) : analyticDivergence x y = 0 := by
  rw [analyticDivergence,(P_x_derivative x y).deriv,(Q_y_derivative x y).deriv]
  ring

theorem scalar_curl_formula (x y : ℝ) : scalarCurl x y = (3*x^2-3*y^2-12)/20 := by
  rw [scalarCurl,(Q_x_derivative x y).deriv,(P_y_derivative x y).deriv]
  ring

theorem edge_integrability (a b h k : ℝ) :
    IntervalIntegrable (fun x => P x (b-k)) volume (a-h) (a+h) ∧
    IntervalIntegrable (fun y => Q (a+h) y) volume (b-k) (b+k) ∧
    IntervalIntegrable (fun x => P x (b+k)) volume (a-h) (a+h) ∧
    IntervalIntegrable (fun y => Q (a-h) y) volume (b-k) (b+k) := by
  simp only [P,Q]
  exact ⟨continuous_const.intervalIntegrable _ _,continuous_const.intervalIntegrable _ _,
    continuous_const.intervalIntegrable _ _,continuous_const.intervalIntegrable _ _⟩

theorem normal_edge_integrability (a b h k : ℝ) :
    IntervalIntegrable (fun y => P (a+h) y) volume (b-k) (b+k) ∧
    IntervalIntegrable (fun y => P (a-h) y) volume (b-k) (b+k) ∧
    IntervalIntegrable (fun x => Q x (b+k)) volume (a-h) (a+h) ∧
    IntervalIntegrable (fun x => Q x (b-k)) volume (a-h) (a+h) := by
  refine ⟨?_,?_,?_,?_⟩
  all_goals
    apply Continuous.intervalIntegrable
    simp only [P,Q]
    fun_prop

theorem outward_flux_zero (a b h k : ℝ) : outwardFlux a b h k = 0 := by
  simp [outwardFlux,P,Q]

theorem circulation_formula (a b h k : ℝ) :
    circulation a b h k = (h*k/5)*(3*a^2-3*b^2+h^2-k^2-12) := by
  simp [circulation,P,Q,intervalIntegral.integral_const]
  <;> ring

/-- Nonzero side lengths are required before normalizing by the literal side-length product. -/
theorem normalized_circulation_formula (a b h k : ℝ) (hh : h ≠ 0) (hk : k ≠ 0) :
    normalizedCirculation a b h k = scalarCurl a b+(h^2-k^2)/20 := by
  rw [normalizedCirculation,circulation_formula,scalar_curl_formula]
  field_simp [hh,hk]
  <;> ring

theorem normalized_error_bound (a b h k : ℝ) (hh : h ≠ 0) (hk : k ≠ 0) :
    |normalizedCirculation a b h k-scalarCurl a b| ≤ (h^2+k^2)/20 := by
  rw [normalized_circulation_formula a b h k hh hk]
  have he : scalarCurl a b+(h^2-k^2)/20-scalarCurl a b = (h^2-k^2)/20 := by ring
  rw [he,abs_div]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 20)]
  apply (div_le_div_iff_of_pos_right (by norm_num : (0 : ℝ) < 20)).2
  exact (abs_sub _ _).trans (by rw [abs_of_nonneg (sq_nonneg h),abs_of_nonneg (sq_nonneg k)])

theorem square_exact (a b h : ℝ) (hh : 0 < h) :
    normalizedCirculation a b h h = scalarCurl a b := by
  rw [normalized_circulation_formula a b h h (ne_of_gt hh) (ne_of_gt hh)]
  ring

/-- Every positive shrinking rectangular mesh returns the actual scalar curl. -/
theorem shrinking_rectangles_tendsto (a b : ℝ) (h k : ℕ → ℝ)
    (hh : ∀ n, 0 < h n) (hk : ∀ n, 0 < k n)
    (hl : Tendsto h atTop (𝓝 0)) (kl : Tendsto k atTop (𝓝 0)) :
    Tendsto (fun n => normalizedCirculation a b (h n) (k n)) atTop (𝓝 (scalarCurl a b)) := by
  have ht : Tendsto (fun n => scalarCurl a b+((h n)^2-(k n)^2)/20)
      atTop (𝓝 (scalarCurl a b)) := by
    simpa using tendsto_const_nhds.add (((hl.pow 2).sub (kl.pow 2)).div_const 20)
  have hf : (fun n => normalizedCirculation a b (h n) (k n)) =
      (fun n => scalarCurl a b+((h n)^2-(k n)^2)/20) := by
    funext n
    exact normalized_circulation_formula a b (h n) (k n) (ne_of_gt (hh n)) (ne_of_gt (hk n))
  rw [hf]
  simpa using ht

/-- A zero-width quotient is not a curl observation; the field curl at the origin is nonzero. -/
theorem zero_width_boundary : normalizedCirculation 0 0 0 1 = 0 ∧ scalarCurl 0 0 = (-3/5 : ℝ) := by
  constructor
  · simp [normalizedCirculation]
  · rw [scalar_curl_formula]
    norm_num

end GRWTSK.VectorCalculus.FourSwirlsFluxCurl
