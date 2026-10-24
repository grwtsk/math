/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RectangleDivisorIndex
import GRWTSK.NumberTheory.Zeta.Riemann.MirrorCountingRectangle
import GRWTSK.NumberTheory.Zeta.Riemann.PoleContourPolygonIndex

set_option autoImplicit false

/-!
# The rectangle lift index equals the actual canonical regional divisor count

Boundary nonvanishing is the one analytic counting premise here. The finite
inventory is the unchanged canonical regional head, not an external list.
Its source-defined multiplicities provide exact local powers; normal-form
removal CONSTRUCTS the analytic zero-free quotient and full factorization.
An arbitrary evaluated polygon still needs exact oriented traversal agreement.
No successful large-contour data, regional numeric upper count or RH is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CanonicalRectangleIndex

open scoped unitInterval BigOperators Topology
open Set ContinuousMap
open GRWTSK.Analysis.Complex
open ClosedCurveFactorIndex RectangleFactorIndex PolygonFreeHomotopy
open CanonicalZeroDivisor CriticalStripHeightDescent
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPoleContour

noncomputable section

def region (T : ℝ) (hT : 0 < T+1/4) : Rectangle :=
  ⟨1/4, 5/4, 0, T+1/4, by norm_num, hT⟩

@[simp] theorem region_interior (T : ℝ) (hT : 0 < T+1/4) :
    (region T hT).interior = MirrorCountingRectangle.interior T := rfl

def BoundaryNonzero (T : ℝ) (hT : 0 < T+1/4) : Prop :=
  ∀ w ∈ (region T hT).boundary, poleNormalizedZeta w ≠ 0

theorem source_analytic (T : ℝ) (hT : 0 < T+1/4) :
    AnalyticOnNhd ℂ poleNormalizedZeta (region T hT).box :=
  fun w _ => differentiable_poleNormalizedZeta.analyticAt w

/-- Exact actual orders, including hypothetical repeated zeros. The removed
pole has no record and is not assigned order one. -/
theorem source_local (z : ZeroPoint) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A z.1 ∧ A z.1 ≠ 0 ∧
      poleNormalizedZeta =ᶠ[nhds z.1] fun w => (w-z.1) ^ multiplicity z * A w := by
  have ho : analyticOrderAt poleNormalizedZeta z.1 = (multiplicity z : ℕ∞) := by
    rw [PoleNormalizedContourBounds.analytic_order_eq z.2.2.2]
    exact (multiplicity_cast z).symm
  obtain ⟨A,hA,hA0,he⟩ :=
    (differentiable_poleNormalizedZeta.analyticAt z.1).analyticOrderAt_eq_natCast.mp ho
  exact ⟨A,hA,hA0,by simpa only [smul_eq_mul] using he⟩

abbrev RegionalPoint (T : ℝ) := {z : ZeroPoint // z ∈ MirrorCountingRectangle.head T}

theorem regional_location (T : ℝ) (hT : 0 < T+1/4) (i : RegionalPoint T) :
    i.1.1 ∈ (region T hT).interior :=
  (MirrorCountingRectangle.mem_head_iff T i.1).mp i.2

/-- Completeness on the CLOSED box follows from the exact canonical predicate
and the independent boundary exclusion, not from discovered sample points. -/
theorem source_covered (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT)
    {w : ℂ} (hw : w ∈ (region T hT).box) (hz : poleNormalizedZeta w = 0) :
    ∃ i : RegionalPoint T, w = i.1.1 := by
  have hr : 0 < w.re := by have := hw.1; change (1/4 : ℝ) ≤ w.re at this; linarith
  have ht := (PoleNormalizedContourBounds.zero_iff_target hr).mp hz
  have hi : w ∈ (region T hT).interior := by
    by_contra hn
    exact hb w ((region T hT).boundary_of_box_not_interior hw hn) hz
  let z : ZeroPoint := ⟨w,ht⟩
  have hm : z ∈ MirrorCountingRectangle.head T :=
    (MirrorCountingRectangle.mem_head_iff T z).mpr hi
  exact ⟨⟨z,hm⟩,rfl⟩

/-- The quotient is constructed from source germs and the exact head. No
quotient, factorization or zero-free-remainder premise is passed in. -/
theorem exists_source_quotient (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT) :
    ∃ q : ℂ → ℂ, AnalyticOnNhd ℂ q (region T hT).box ∧
      (∀ w ∈ (region T hT).box, q w ≠ 0) ∧
      (∀ w ∈ (region T hT).box, poleNormalizedZeta w = q w *
        ∏ i : RegionalPoint T, (w-i.1.1) ^ multiplicity i.1) ∧
      (∀ w ∈ (region T hT).box, (∀ i : RegionalPoint T, w ≠ i.1.1) →
        q w = poleNormalizedZeta w / ∏ i : RegionalPoint T, (w-i.1.1) ^ multiplicity i.1) := by
  classical
  apply FiniteLinearRemoval.exists_quotient (fun i : RegionalPoint T => i.1.1)
    (fun i => multiplicity i.1) poleNormalizedZeta (region T hT).box
  · intro i j he; exact Subtype.ext (Subtype.ext he)
  · intro i; exact multiplicity_pos i.1
  · intro i
    have hi := regional_location T hT i
    exact ⟨hi.1.le,hi.2.1.le,hi.2.2.1.le,hi.2.2.2.le⟩
  · exact source_analytic T hT
  · intro i; exact source_local i.1
  · intro w hw hz; exact source_covered T hT hb hw hz

def sourceCurve (T : ℝ) (hT : 0 < T+1/4) : C(I, ℂ) :=
  (region T hT).image poleNormalizedZeta (source_analytic T hT).continuousOn

theorem sourceCurve_closed (T : ℝ) (hT : 0 < T+1/4) : sourceCurve T hT 0 = sourceCurve T hT 1 :=
  (region T hT).image_closed poleNormalizedZeta (source_analytic T hT).continuousOn

theorem sourceCurve_nonzero (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT) :
    ∀ t, sourceCurve T hT t ≠ 0 := fun t => hb _ ((region T hT).curve_boundary t)

/-- Lift-index form of the argument principle for the maintained rectangle.
Only boundary nonvanishing remains; there is no supplied divisor/index equality. -/
theorem index_eq_count (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT) :
    index (sourceCurve T hT) (sourceCurve_closed T hT) (sourceCurve_nonzero T hT hb) =
      (MirrorCountingRectangle.count T : ℤ) := by
  classical
  obtain ⟨q,hq,hqn,he,_⟩ := exists_source_quotient T hT hb
  have hi := RectangleDivisorIndex.index_of_factorization (region T hT)
    (fun i : RegionalPoint T => i.1.1) (fun i => multiplicity i.1)
    (regional_location T hT) poleNormalizedZeta q (source_analytic T hT).continuousOn
    hq.continuousOn hqn he (sourceCurve_nonzero T hT hb)
  refine hi.trans ?_
  simp only [MirrorCountingRectangle.count, Nat.cast_sum]
  apply Finset.sum_bij (fun i _ => i.1)
  · intro i _; exact i.2
  · intro i _ j _ he; exact Subtype.ext he
  · intro j hj; exact ⟨⟨j,hj⟩,Finset.mem_univ _,rfl⟩
  · intro i _; rfl

/-- The fixed four-edge map is the SAME maintained corner inventory. -/
theorem curve_eq_maintained (T : ℚ) (hT : (0 : ℝ) < (T : ℝ)+1/4) :
    (region (T : ℝ) hT).curve = polygonMap 4
      (PoleContourHomotopy.vertices (MirrorCountingRectangle.vertices T)) := by
  apply polygonMap_congr
  intro i hi
  interval_cases i <;> simp [region, Rectangle.corners, PoleContourHomotopy.vertices,
    pointAt, MirrorCountingRectangle.vertices, toComplex]

/-- Arbitrary refined numerical contours must prove this traversal agreement.
A shared carrier, signed area or endpoint agreement alone is not enough. -/
theorem evaluated_index_eq_count {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (ht : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT)
    (r : C(I,I)) (r0 : r 0 = 0) (r1 : r 1 = 1)
    (hparam : ∀ t, polygonMap n (PoleContourHomotopy.vertices v) t =
      (region T hT).curve (r t)) :
    PoleContourWinding.sourceIndex ht he = (MirrorCountingRectangle.count T : ℤ) := by
  let g := lift (sourceCurve T hT) (sourceCurve_nonzero T hT hb)
  have gc : g 0 = g 1 := lift_closed _ (sourceCurve_closed T hT) _
  have hloop : PoleContourWinding.sourceLift ht he = g.comp r := by
    ext t
    simp only [PoleContourWinding.source_value, PoleContourHomotopy.sourceLoop,
      PolygonFreeHomotopy.sourceMap, sourceCurve, Rectangle.image,
      ContinuousMap.comp_apply, g, lift, hparam t]
  unfold PoleContourWinding.sourceIndex
  rw [hloop]
  exact (LoopIndexOperations.winding_reparam g gc r r0 r1).trans (index_eq_count T hT hb)

/-- The computed integer is a count ONLY with the exact traversal and actual
source premises. No successful target-rectangle trace is asserted here. -/
theorem count_eq_of_evaluate {n : ℕ} {v y : List Coordinates} {d : List EdgeData} {k : ℤ}
    (he : Enclosures n d) (hk : PoleContourPolygonIndex.evaluate n v d y = some k)
    (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT)
    (r : C(I,I)) (r0 : r 0 = 0) (r1 : r 1 = 1)
    (hparam : ∀ t, polygonMap n (PoleContourHomotopy.vertices v) t =
      (region T hT).curve (r t)) : (MirrorCountingRectangle.count T : ℤ) = k := by
  have ht := ((PoleContourPolygonIndex.evaluate_eq_some_iff _ _ _ _ _).mp hk).1
  exact (evaluated_index_eq_count ht he T hT hb r r0 r1 hparam).symm.trans
    (PoleContourPolygonIndex.evaluate_sound ht he hk)

/-- Conditional numerical completion at the unchanged height fifteen. NONE of
its boundary, enclosure, evaluation or traversal premises is asserted here. -/
theorem complete_pair_of_evaluate_one {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (he : Enclosures n d) (hk : PoleContourPolygonIndex.evaluate n v d y = some 1)
    (hb : BoundaryNonzero 15 (by norm_num))
    (r : C(I,I)) (r0 : r 0 = 0) (r1 : r 1 = 1)
    (hparam : ∀ t, polygonMap n (PoleContourHomotopy.vertices v) t =
      (region 15 (by norm_num)).curve (r t)) :
    ∃ z : ZeroPoint, multiplicity z = 1 ∧ z.1.re = (1/2 : ℝ) ∧
      heightHead (15 : ℝ) = {z, LocalZeroSymmetry.conjugatePoint z} := by
  have hc := count_eq_of_evaluate he hk 15 (by norm_num) hb r r0 r1 hparam
  have hcN : MirrorCountingRectangle.count (15 : ℝ) = 1 := by exact_mod_cast hc
  exact MirrorCountingRectangle.complete_pair_of_regional_upper hcN.le

end
end GRWTSK.RiemannHypothesis.CanonicalRectangleIndex
