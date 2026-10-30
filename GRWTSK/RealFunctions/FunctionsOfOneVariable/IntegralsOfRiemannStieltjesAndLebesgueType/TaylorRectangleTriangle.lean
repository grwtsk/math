import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic

/-!
# Rectangle, triangle and curvature in an actual accumulated integral

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (geometric view),2017-05-07,
text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series-geometric-view/ .
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

A quadratic graph is an exact local consumer of the source's geometric method.
Signed integral corrections and unsigned product-Lebesgue triangle area are
separate constructions. No general smooth-graph remainder theorem is assumed.
-/

namespace GRWTSK.RealAnalysis.TaylorRectangleTriangle

open MeasureTheory Set
open scoped Interval

noncomputable def graph (A B C a t : ℝ) : ℝ := A+B*(t-a)+C*(t-a)^2
noncomputable def primitive (A B C a t : ℝ) : ℝ :=
  A*(t-a)+B*(t-a)^2/2+C*(t-a)^3/3
noncomputable def accumulation (A B C a x : ℝ) : ℝ :=
  ∫ t in a..x, graph A B C a t

theorem graph_continuous (A B C a : ℝ) : Continuous (graph A B C a) := by
  unfold graph
  fun_prop

theorem graph_derivative (A B C a t : ℝ) :
    HasDerivAt (graph A B C a) (B+2*C*(t-a)) t := by
  have hd := ((hasDerivAt_const t A).add
    (((hasDerivAt_id t).sub_const a).const_mul B)).add
    ((((hasDerivAt_id t).sub_const a).pow 2).const_mul C)
  convert hd using 1 <;> simp [graph] <;> ring

theorem primitive_derivative (A B C a t : ℝ) :
    HasDerivAt (primitive A B C a) (graph A B C a t) t := by
  have hd := ((((hasDerivAt_id t).sub_const a).const_mul A).add
    (((((hasDerivAt_id t).sub_const a).pow 2).const_mul B).div_const 2)).add
    (((((hasDerivAt_id t).sub_const a).pow 3).const_mul C).div_const 3)
  convert hd using 1 <;> simp [primitive, graph] <;> ring

theorem graph_integrable (A B C a u v : ℝ) :
    IntervalIntegrable (graph A B C a) volume u v :=
  (graph_continuous A B C a).intervalIntegrable u v

theorem integral_graph (A B C a u v : ℝ) :
    (∫ t in u..v, graph A B C a t) = primitive A B C a v-primitive A B C a u :=
  intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => primitive_derivative A B C a t) (graph_integrable A B C a u v)

theorem accumulation_eq_primitive (A B C a x : ℝ) :
    accumulation A B C a x = primitive A B C a x := by
  rw [accumulation, integral_graph]
  simp [primitive]

theorem accumulation_derivative (A B C a x : ℝ) :
    HasDerivAt (accumulation A B C a) (graph A B C a x) x := by
  have he : accumulation A B C a = primitive A B C a :=
    funext (accumulation_eq_primitive A B C a)
  rw [he]
  exact primitive_derivative A B C a x

theorem accumulation_second_derivative (A B C a : ℝ) :
    HasDerivAt (deriv (accumulation A B C a)) B a := by
  have he : deriv (accumulation A B C a) = graph A B C a :=
    funext (fun x => (accumulation_derivative A B C a x).deriv)
  rw [he]
  simpa using graph_derivative A B C a a

/-- Actual signed increment, valid even for negative and zero h. -/
theorem rectangle_triangle_curvature (A B C a h : ℝ) :
    accumulation A B C a (a+h) = A*h+B*h^2/2+C*h^3/3 := by
  rw [accumulation_eq_primitive]
  simp [primitive]

theorem curvature_residual (A B C a h : ℝ) :
    accumulation A B C a (a+h)-(A*h+B*h^2/2) = C*h^3/3 := by
  rw [rectangle_triangle_curvature]
  ring

theorem curvature_error (A B C a h : ℝ) :
    |accumulation A B C a (a+h)-(A*h+B*h^2/2)| = |C|*|h|^3/3 := by
  rw [curvature_residual, abs_div, abs_mul, abs_pow]
  norm_num

theorem affine_exact (A B a h : ℝ) :
    accumulation A B 0 a (a+h) = A*h+B*h^2/2 := by
  rw [rectangle_triangle_curvature]
  ring

/-- The rectangle height and triangle slope are actual derivatives of accumulation. -/
theorem source_derivative_consumer (A B C a h : ℝ) :
    accumulation A B C a (a+h) =
      deriv (accumulation A B C a) a*h+
      deriv (deriv (accumulation A B C a)) a*h^2/2+C*h^3/3 := by
  rw [(accumulation_derivative A B C a a).deriv,
    (accumulation_second_derivative A B C a).deriv]
  simpa [graph] using rectangle_triangle_curvature A B C a h

/-- Actual planar triangle, with open vertical fibers and a half-open base. -/
def triangleRegion (B a h : ℝ) : Set (ℝ × ℝ) :=
  regionBetween (fun _ : ℝ => 0) (fun t => B*(t-a)) (Ioc a (a+h))

theorem triangle_measure (B a h : ℝ) (hB : 0 ≤ B) (hh : 0 ≤ h) :
    (volume : Measure ℝ).prod volume (triangleRegion B a h) =
      ENNReal.ofReal (B*h^2/2) := by
  have hab : a ≤ a+h := by linarith
  have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Ioc a (a+h)) volume :=
    (continuous_const.intervalIntegrable a (a+h)).1
  have hl : IntervalIntegrable (fun t : ℝ => B*(t-a)) volume a (a+h) :=
    (continuous_const.mul (continuous_id.sub continuous_const)).intervalIntegrable a (a+h)
  have hm := volume_regionBetween_eq_integral hz hl.1 measurableSet_Ioc
    (fun t ht => mul_nonneg hB (sub_nonneg.mpr (le_of_lt ht.1)))
  have he : (∫ t in a..a+h, B*(t-a)) = B*h^2/2 := by
    have hg : (fun t : ℝ => B*(t-a)) = graph 0 B 0 a := by
      funext t
      simp [graph]
    rw [hg, integral_graph]
    simp [primitive]
  calc
    (volume : Measure ℝ).prod volume (triangleRegion B a h) =
        ENNReal.ofReal (∫ t in Ioc a (a+h), B*(t-a)) := by
      simpa [triangleRegion] using hm
    _ = ENNReal.ofReal (B*h^2/2) := by
      rw [← intervalIntegral.integral_of_le hab, he]

theorem triangle_real_area (B a h : ℝ) (hB : 0 ≤ B) (hh : 0 ≤ h) :
    ((volume : Measure ℝ).prod volume (triangleRegion B a h)).toReal = B*h^2/2 := by
  rw [triangle_measure B a h hB hh, ENNReal.toReal_ofReal (by positivity)]

theorem actual_area_correction (A B a h : ℝ) (hB : 0 ≤ B) (hh : 0 ≤ h) :
    accumulation A B 0 a (a+h) = A*h+
      ((volume : Measure ℝ).prod volume (triangleRegion B a h)).toReal := by
  rw [affine_exact, triangle_real_area B a h hB hh]

theorem negative_slope_correction (A a h : ℝ) (hh : h ≠ 0) :
    accumulation A (-1) 0 a (a+h)-A*h < 0 := by
  rw [affine_exact]
  nlinarith [sq_pos_of_ne_zero hh]

end GRWTSK.RealAnalysis.TaylorRectangleTriangle
