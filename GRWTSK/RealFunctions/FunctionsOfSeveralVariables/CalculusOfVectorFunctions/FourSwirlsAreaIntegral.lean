import GRWTSK.RealFunctions.FunctionsOfSeveralVariables.CalculusOfVectorFunctions.FourSwirlsFluxCurl
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Actual rectangle area and product curl integral for the four-swirls field

Local attribution: grwtsk contributors.
Primary Grant Sanderson, Divergence and curl (2018-06-21),
https://www.3blue1brown.com/lessons/divergence-and-curl/ .
Exact planar formula: 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2018/div_curl.py,four_swirls_function; upstream CC BY-NC-SA4.0.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

A real product-measure rectangle is constructed independently of its area.
Actual primitives supply its iterated curl integral; actual integrability and
Fubini then return that value to the product-measure set integral. This is a
source-field Green identity consumer,not an assumed general theorem/interface.
-/

namespace GRWTSK.VectorCalculus.FourSwirlsFluxCurl

open MeasureTheory Set
open scoped Interval

def rectangle (a b h k : ℝ) : Set (ℝ × ℝ) := Ioc (a-h) (a+h) ×ˢ Ioc (b-k) (b+k)
noncomputable def rectangleArea (a b h k : ℝ) : ℝ :=
  ((volume : Measure ℝ).prod volume (rectangle a b h k)).toReal
noncomputable def innerPrimitive (x y : ℝ) : ℝ := ((3*x^2-12)*y-y^3)/20
noncomputable def mixedPrimitive (x y : ℝ) : ℝ := (x^3*y-x*y^3-12*x*y)/20
noncomputable def iteratedCurl (a b h k : ℝ) : ℝ :=
  ∫ x in a-h..a+h, ∫ y in b-k..b+k, scalarCurl x y
noncomputable def surfaceCurl (a b h k : ℝ) : ℝ :=
  ∫ p in rectangle a b h k, scalarCurl p.1 p.2 ∂(volume : Measure ℝ).prod volume

theorem rectangle_measure (a b h k : ℝ) (hh : 0 < h) (hk : 0 < k) :
    (volume : Measure ℝ).prod volume (rectangle a b h k) = ENNReal.ofReal (4*h*k) := by
  rw [rectangle,Measure.prod_prod,Real.volume_Ioc,Real.volume_Ioc]
  rw [← ENNReal.ofReal_mul (by linarith : 0 ≤ a+h-(a-h))]
  congr 1
  ring

theorem rectangle_area (a b h k : ℝ) (hh : 0 < h) (hk : 0 < k) :
    rectangleArea a b h k = 4*h*k := by
  rw [rectangleArea,rectangle_measure a b h k hh hk,ENNReal.toReal_ofReal (by positivity)]

theorem inner_primitive_derivative (x y : ℝ) :
    HasDerivAt (innerPrimitive x) (scalarCurl x y) y := by
  have hd := (((hasDerivAt_id y).const_mul (3*x^2-12)).sub
    ((hasDerivAt_id y).pow 3)).div_const 20
  convert hd using 1 <;> simp [innerPrimitive,scalar_curl_formula] <;> ring

theorem mixed_primitive_derivative (x y : ℝ) :
    HasDerivAt (fun t => mixedPrimitive t y) (innerPrimitive x y) x := by
  have hd := (((((hasDerivAt_id x).pow 3).mul_const y).sub
    ((hasDerivAt_id x).mul_const (y^3))).sub
    ((hasDerivAt_id x).const_mul (12*y))).div_const 20
  convert hd using 1 <;> simp [mixedPrimitive,innerPrimitive] <;> ring

theorem inner_curl_integral (x c d : ℝ) :
    (∫ y in c..d, scalarCurl x y) = innerPrimitive x d-innerPrimitive x c := by
  have hc : Continuous (fun y : ℝ => scalarCurl x y) := by
    simp only [scalar_curl_formula]
    fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun y _ => inner_primitive_derivative x y) (hc.intervalIntegrable c d)

theorem primitive_difference_integral (u v c d : ℝ) :
    (∫ x in u..v, innerPrimitive x d-innerPrimitive x c) =
      (mixedPrimitive v d-mixedPrimitive v c)-(mixedPrimitive u d-mixedPrimitive u c) := by
  have hc : Continuous (fun x : ℝ => innerPrimitive x d-innerPrimitive x c) := by
    unfold innerPrimitive
    fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => (mixed_primitive_derivative x d).sub (mixed_primitive_derivative x c))
    (hc.intervalIntegrable u v)

theorem iterated_curl_eq_circulation (a b h k : ℝ) :
    iteratedCurl a b h k = circulation a b h k := by
  unfold iteratedCurl
  simp_rw [inner_curl_integral]
  rw [primitive_difference_integral,circulation_formula]
  dsimp [mixedPrimitive]
  ring

/-- Actual polynomial continuity on a compact rectangle supplies the Fubini premise. -/
theorem surface_curl_integrable (a b h k : ℝ) :
    IntegrableOn (fun p : ℝ × ℝ => scalarCurl p.1 p.2) (rectangle a b h k)
      ((volume : Measure ℝ).prod volume) := by
  have hc : Continuous (fun p : ℝ × ℝ => scalarCurl p.1 p.2) := by
    simp only [scalar_curl_formula]
    fun_prop
  have hi : IntegrableOn (fun p : ℝ × ℝ => scalarCurl p.1 p.2)
      (Icc (a-h,b-k) (a+h,b+k)) ((volume : Measure ℝ).prod volume) := hc.integrableOn_Icc
  apply hi.mono_set
  intro p hp
  exact ⟨⟨hp.1.1.le,hp.2.1.le⟩,⟨hp.1.2,hp.2.2⟩⟩

/-- Fubini and interval/set transport are supplied before identifying the surface integral. -/
theorem surface_curl_eq_iterated (a b h k : ℝ) (hh : 0 < h) (hk : 0 < k) :
    surfaceCurl a b h k = iteratedCurl a b h k := by
  have ha : a-h ≤ a+h := by linarith
  have hb : b-k ≤ b+k := by linarith
  rw [surfaceCurl,rectangle,MeasureTheory.setIntegral_prod _ (surface_curl_integrable a b h k)]
  rw [iteratedCurl,intervalIntegral.integral_of_le ha]
  congr 1
  funext x
  rw [intervalIntegral.integral_of_le hb]

/-- Explicit source-field Green identity with actual product-measure interior. -/
theorem surface_curl_eq_circulation (a b h k : ℝ) (hh : 0 < h) (hk : 0 < k) :
    surfaceCurl a b h k = circulation a b h k := by
  rw [surface_curl_eq_iterated a b h k hh hk,iterated_curl_eq_circulation]

theorem actual_area_normalization (a b h k : ℝ) (hh : 0 < h) (hk : 0 < k) :
    circulation a b h k/rectangleArea a b h k = normalizedCirculation a b h k := by
  rw [rectangle_area a b h k hh hk]
  rfl

/-- The actual mean interior curl equals actual boundary circulation per geometric area. -/
theorem actual_mean_curl (a b h k : ℝ) (hh : 0 < h) (hk : 0 < k) :
    surfaceCurl a b h k/rectangleArea a b h k = scalarCurl a b+(h^2-k^2)/20 := by
  rw [surface_curl_eq_circulation a b h k hh hk,actual_area_normalization a b h k hh hk,
    normalized_circulation_formula a b h k (ne_of_gt hh) (ne_of_gt hk)]

theorem actual_square_mean (a b h : ℝ) (hh : 0 < h) :
    surfaceCurl a b h h/rectangleArea a b h h = scalarCurl a b := by
  rw [actual_mean_curl a b h h hh hh]
  ring

theorem actual_mean_tendsto (a b : ℝ) (h k : ℕ → ℝ)
    (hh : ∀ n, 0 < h n) (hk : ∀ n, 0 < k n)
    (hl : Filter.Tendsto h Filter.atTop (nhds 0))
    (kl : Filter.Tendsto k Filter.atTop (nhds 0)) :
    Filter.Tendsto (fun n => surfaceCurl a b (h n) (k n)/rectangleArea a b (h n) (k n))
      Filter.atTop (nhds (scalarCurl a b)) := by
  have he : (fun n => surfaceCurl a b (h n) (k n)/rectangleArea a b (h n) (k n)) =
      (fun n => normalizedCirculation a b (h n) (k n)) := by
    funext n
    rw [surface_curl_eq_circulation a b (h n) (k n) (hh n) (hk n),
      actual_area_normalization a b (h n) (k n) (hh n) (hk n)]
  rw [he]
  exact shrinking_rectangles_tendsto a b h k hh hk hl kl

end GRWTSK.VectorCalculus.FourSwirlsFluxCurl
