/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JetPoleContour

set_option autoImplicit false

/-!
# Generated center-jet tubes feed the unchanged canonical regional count

New local source bounds are carried through the whole source/image homotopy.
All domain vertices still derive from the same checked unwrapped perimeter mesh.
Both boundary coverage and signed alignment are supplied internally. No old
Boolean gate or count is modified. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.JetRectangleCount

open Set ContinuousMap
open scoped unitInterval
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open ConstructedRectangleCount (Plan)
open CriticalStripHeightDescent
open RectangleFactorIndex PolygonFreeHomotopy ClosedCurveFactorIndex

/-- Reuse the old mesh and image-index algorithm, but use the proven jet tubes. -/
def evaluateBox (l u : Coordinates) (n : ℕ) (a : List ℚ)
    (plans : List Plan) (y : List Coordinates) : Option ℤ :=
  if decide (l.1 < u.1 ∧ l.2 < u.2) && RationalRectangleMesh.check n a then
    JetPoleContour.evaluate n (RationalRectangleMesh.vertices l u a) plans y
  else none

theorem evaluateBox_eq_some_iff (l u : Coordinates) (n : ℕ) (a : List ℚ)
    (p : List Plan) (y : List Coordinates) (k : ℤ) :
    evaluateBox l u n a p y = some k ↔
      (l.1 < u.1 ∧ l.2 < u.2) ∧ RationalRectangleMesh.check n a = true ∧
        JetPoleContour.evaluate n (RationalRectangleMesh.vertices l u a) p y = some k := by
  by_cases hg : l.1 < u.1 ∧ l.2 < u.2 <;>
    by_cases hm : RationalRectangleMesh.check n a = true <;> simp [evaluateBox, hg, hm]

def evaluate (T : ℚ) (n : ℕ) (a : List ℚ) (p : List Plan) (y : List Coordinates) : Option ℤ :=
  evaluateBox RationalRectangleCount.lower (RationalRectangleCount.upper T) n a p y

noncomputable section

/-- Source values are generated, and checked mesh range is the ENTIRE boundary. -/
theorem boundary_of_tube (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {p : List Plan} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : JetPoleContour.check n (RationalRectangleMesh.vertices l u a) p y = true) :
    ∀ z ∈ (RationalRectangleMesh.rectangle l u hx hy).boundary, poleNormalizedZeta z ≠ 0 := by
  intro z hz
  rw [← RationalRectangleMesh.range_eq_boundary l u hx hy hm] at hz
  obtain ⟨t, htz⟩ := hz
  have hn := JetPoleContour.source_nonzero ht t
  change poleNormalizedZeta (polygonMap n (RationalRectangleMesh.points l u a) t) ≠ 0 at hn
  rwa [htz] at hn

/-- Reuse the old boundary-valued real-perimeter homotopy. It does not cross
possible interior zeros by interpolating complex boundary points directly. -/
def sourceHomotopy (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {p : List Plan} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : JetPoleContour.check n (RationalRectangleMesh.vertices l u a) p y = true) :
    HomotopyWith (PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a))
      ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
        differentiable_poleNormalizedZeta.continuous.continuousOn)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) := by
  let D := RationalRectangleMesh.rectangle l u hx hy
  let H := RectanglePerimeterMesh.boundaryHomotopy D (RationalRectangleMesh.admissible hm)
  have hc := RationalRectangleMesh.curve_eq l u hx hy hm
  have hb := boundary_of_tube l u hx hy hm ht
  refine
    { toFun := fun q => poleNormalizedZeta (H q)
      continuous_toFun := differentiable_poleNormalizedZeta.continuous.comp (map_continuous H)
      map_zero_left := ?_
      map_one_left := ?_
      prop' := fun lam => ⟨congrArg poleNormalizedZeta (H.prop lam).1,
        fun t => hb _ ((H.prop lam).2 t)⟩ }
  · intro t
    rw [H.map_zero_left]
    change poleNormalizedZeta (RectanglePerimeterMesh.curve D n (RationalRectangleMesh.marks a) t) =
      poleNormalizedZeta (polygonMap n (RationalRectangleMesh.points l u a) t)
    exact congrArg poleNormalizedZeta (congrArg (fun g : C(I, ℂ) => g t) hc).symm
  · intro t
    rw [H.map_one_left]
    rfl

/-- Same signed source invariant; geometry is not an editable orientation label. -/
theorem sourceIndex_aligned (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {p : List Plan} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : JetPoleContour.check n (RationalRectangleMesh.vertices l u a) p y = true) :
    JetPoleContour.sourceIndex ht =
      index ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
          differentiable_poleNormalizedZeta.continuous.continuousOn)
        ((RationalRectangleMesh.rectangle l u hx hy).image_closed _ _)
        (fun t => boundary_of_tube l u hx hy hm ht _
          ((RationalRectangleMesh.rectangle l u hx hy).curve_boundary t)) :=
  index_homotopy (JetPoleContour.source_closed ht) _ (JetPoleContour.source_nonzero ht) _
    (sourceHomotopy l u hx hy hm ht)

/-- Finite success is the only substantive premise. All generated analytic
suppliers and the inherited canonical argument principle retain their trust duties. -/
theorem count_eq_of_evaluate {T : ℚ} {n : ℕ} {a : List ℚ}
    {p : List Plan} {y : List Coordinates} {k : ℤ}
    (hk : evaluate T n a p y = some k) :
    (MirrorCountingRectangle.count (T : ℝ) : ℤ) = k := by
  obtain ⟨hg,hm,hp⟩ := (evaluateBox_eq_some_iff _ _ _ _ _ _ _).mp hk
  have hT : (0 : ℝ) < (T : ℝ)+1/4 := by
    have hy := hg.2
    dsimp [RationalRectangleCount.lower, RationalRectangleCount.upper] at hy
    exact_mod_cast hy
  have ht := ((JetPoleContour.evaluate_eq_some_iff _ _ _ _ _).mp hp).1
  have hb := boundary_of_tube RationalRectangleCount.lower (RationalRectangleCount.upper T)
    hg.1 hg.2 hm ht
  have hD := RationalRectangleCount.target_rectangle T hg.2 hT
  have hboundary : CanonicalRectangleIndex.BoundaryNonzero (T : ℝ) hT := by
    simpa only [hD] using hb
  have hs := sourceIndex_aligned RationalRectangleCount.lower (RationalRectangleCount.upper T)
    hg.1 hg.2 hm ht
  have hi : JetPoleContour.sourceIndex ht = (MirrorCountingRectangle.count (T : ℝ) : ℤ) := by
    calc
      _ = index (CanonicalRectangleIndex.sourceCurve (T : ℝ) hT)
          (CanonicalRectangleIndex.sourceCurve_closed (T : ℝ) hT)
          (CanonicalRectangleIndex.sourceCurve_nonzero (T : ℝ) hT hboundary) := by
        simpa only [hD, CanonicalRectangleIndex.sourceCurve] using hs
      _ = _ := CanonicalRectangleIndex.index_eq_count (T : ℝ) hT hboundary
  exact hi.symm.trans (JetPoleContour.evaluate_sound ht hp)

theorem result_nonnegative {T : ℚ} {n : ℕ} {a : List ℚ}
    {p : List Plan} {y : List Coordinates} {k : ℤ}
    (h : evaluate T n a p y = some k) : 0 ≤ k := by
  rw [← count_eq_of_evaluate h]
  exact Int.natCast_nonneg _

/-- A concrete target must still discharge its exact finite equality IN LEAN. -/
theorem complete_pair_of_evaluate_one {n : ℕ} {a : List ℚ}
    {p : List Plan} {y : List Coordinates}
    (h : evaluate 15 n a p y = some 1) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} := by
  have hc := count_eq_of_evaluate h
  have hN : MirrorCountingRectangle.count (15 : ℝ) = 1 := by exact_mod_cast hc
  exact MirrorCountingRectangle.complete_pair_of_regional_upper hN.le

end
end GRWTSK.RiemannHypothesis.JetRectangleCount
