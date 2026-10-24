# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.JetPoleContour

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `626ee8358fa28f040b6e2bdf389e5ea29b70085d` · SHA-256 `daf680a29c1a0757003d66d2db32bac1a63625c0be2985db322fc99ae3285b40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch
import GRWTSK.NumberTheory.Zeta.Riemann.ConstructedRectangleCount

set_option autoImplicit false

/-!
# Complete generated-source contour tubes using the actual center jet

The old contour gate is NOT changed. Every new cell uses the jet supplier's
proved image radius consistently for the whole source arc and BOTH surrogate
endpoints. Source values, derivative balls and curvature are recomputed from the
same literal Plan. The generic polygon homotopy and the OLD signed index are
reused, not redefined. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.JetPoleContour

open Set Metric ContinuousMap
open scoped unitInterval
open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open CriticalStripHeightDescent RationalPoleContour
open ConstructedRectangleCount (Plan planAt)
open PolygonFreeHomotopy ClosedCurveFactorIndex
open PoleContourHomotopy (vertices sourceLoop imageLoop)

/-- Same generated source value as before; no editable value or error field. -/
def value (p : Plan) : Ball := RationalPoleValue.valueBall p.center p.parameters

def radius (p : Plan) : ℚ :=
  RationalJetPolePatch.imageRadius p.center p.inner p.outer p.parameters

/-- All four endpoint tests refer to this SAME plan and its computed image disk. -/
def EdgeValid (a b u v : Coordinates) (p : Plan) : Prop :=
  RationalJetPolePatch.check p.center p.inner p.outer p.parameters = true ∧
    inBall (sub a p.center) p.inner = true ∧
    inBall (sub b p.center) p.inner = true ∧
    inBall (sub u (value p).mid) (radius p) = true ∧
    inBall (sub v (value p).mid) (radius p) = true

instance edgeDecidable (a b u v : Coordinates) (p : Plan) :
    Decidable (EdgeValid a b u v p) := by unfold EdgeValid; infer_instance

def Valid (n : ℕ) (v : List Coordinates) (plans : List Plan) (y : List Coordinates) : Prop :=
  0 < n ∧ v.length = n+1 ∧ plans.length = n ∧ y.length = n+1 ∧
    pointAt v n = pointAt v 0 ∧ pointAt y n = pointAt y 0 ∧
    ∀ i ∈ Finset.range n,
      EdgeValid (pointAt v i) (pointAt v (i+1)) (pointAt y i) (pointAt y (i+1)) (planAt plans i)

instance validDecidable (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates) :
    Decidable (Valid n v p y) := by unfold Valid; infer_instance

def check (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates) : Bool :=
  decide (Valid n v p y)

theorem check_iff (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates) :
    check n v p y = true ↔ Valid n v p y := by simp [check]

theorem checked_edge {n i : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) (hi : i < n) :
    EdgeValid (pointAt v i) (pointAt v (i+1)) (pointAt y i) (pointAt y (i+1)) (planAt p i) :=
  ((check_iff _ _ _ _).mp h).2.2.2.2.2.2 i (Finset.mem_range.mpr hi)

/-- Convexity supplies the whole domain cell, not two unrelated endpoint disks. -/
theorem domain_covered {a b u v : Coordinates} {p : Plan} (h : EdgeValid a b u v p)
    {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    PolygonTube.blend t (toComplex a) (toComplex b) ∈ closedBall (toComplex p.center) (p.inner : ℝ) := by
  apply PolygonTube.blend_mem_closedBall
  · simpa only [toComplex_sub, mem_closedBall, dist_eq_norm] using (inBall_iff _ _).mp h.2.1
  · simpa only [toComplex_sub, mem_closedBall, dist_eq_norm] using (inBall_iff _ _).mp h.2.2.1
  · exact ht

/-- The source, surrogate chord and deformation all use the new SAME image radius. -/
theorem edge_nonzero {a b u v : Coordinates} {p : Plan} (h : EdgeValid a b u v p)
    {t lam : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) (hl : lam ∈ Icc (0 : ℝ) 1) :
    PolygonTube.deformation poleNormalizedZeta (toComplex a) (toComplex b)
      (toComplex u) (toComplex v) t lam ≠ 0 := by
  obtain ⟨hc,hR,hRS,_he,hm⟩ := (RationalJetPolePatch.check_iff _ _ _ _).mp h.1
  have hu : ‖toComplex u - toComplex (value p).mid‖ ≤ (radius p : ℝ) := by
    simpa only [toComplex_sub] using (inBall_iff _ _).mp h.2.2.2.1
  have hv : ‖toComplex v - toComplex (value p).mid‖ ≤ (radius p : ℝ) := by
    simpa only [toComplex_sub] using (inBall_iff _ _).mp h.2.2.2.2
  change radius p < RationalPolePatch.sampleLower (value p).mid at hm
  have hs : (radius p : ℝ) < ‖toComplex (value p).mid‖ :=
    lt_of_lt_of_le (by exact_mod_cast hm) (RationalPolePatch.sampleLower_le _)
  exact PolygonTube.deformation_nonzero
    (fun q hq => RationalJetPolePatch.image_bound hc hR hRS (domain_covered h hq))
    hu hv hs ht hl

/-- No additional source-value or all-cell nonzero oracle is required. -/
theorem checked_cells {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) :
    CellNonzero poleNormalizedZeta n (vertices v) (vertices y) := by
  intro i hi t lam
  exact edge_nonzero (checked_edge h hi) t.2 lam.2

noncomputable section

/-- Reuse the existing complete concatenation, with its actual moving basepoint. -/
def freeHomotopy {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) :
    HomotopyWith (sourceLoop n v) (imageLoop n y)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) := by
  obtain ⟨hn,_hv,_hp,_hy,hvc,hyc,_⟩ := (check_iff _ _ _ _).mp h
  exact PolygonFreeHomotopy.freeHomotopy poleNormalizedZeta
    differentiable_poleNormalizedZeta.continuous hn (vertices v) (vertices y)
    (congrArg toComplex hvc) (congrArg toComplex hyc) (checked_cells h)

theorem source_closed {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) : sourceLoop n v 0 = sourceLoop n v 1 := by
  calc
    _ = freeHomotopy h (0, 0) := ((freeHomotopy h).map_zero_left 0).symm
    _ = freeHomotopy h (0, 1) := ((freeHomotopy h).prop (0 : I)).1
    _ = _ := (freeHomotopy h).map_zero_left 1

theorem source_nonzero {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) : ∀ t, sourceLoop n v t ≠ 0 := by
  intro t
  rw [← (freeHomotopy h).map_zero_left t]
  exact ((freeHomotopy h).prop (0 : I)).2 t

theorem image_closed {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) : imageLoop n y 0 = imageLoop n y 1 := by
  calc
    _ = freeHomotopy h (1, 0) := ((freeHomotopy h).map_one_left 0).symm
    _ = freeHomotopy h (1, 1) := ((freeHomotopy h).prop (1 : I)).1
    _ = _ := (freeHomotopy h).map_one_left 1

theorem image_nonzero {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) : ∀ t, imageLoop n y t ≠ 0 := by
  intro t
  rw [← (freeHomotopy h).map_one_left t]
  exact ((freeHomotopy h).prop (1 : I)).2 t

/-- Only a wrapper around the OLD signed lift index of the SAME source map. -/
def sourceIndex {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) : ℤ :=
  index (sourceLoop n v) (source_closed h) (source_nonzero h)

theorem sourceIndex_eq_imageIndex {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) :
    sourceIndex h = index (imageLoop n y) (image_closed h) (image_nonzero h) :=
  index_homotopy (source_closed h) (image_closed h) (source_nonzero h) (image_nonzero h) (freeHomotopy h)

end

/-- The OLD rational chart-index algorithm; none is not a zero winding. -/
def evaluate (n : ℕ) (v : List Coordinates) (p : List Plan) (y : List Coordinates) : Option ℤ :=
  if check n v p y then RationalPolygonIndex.evaluate n y else none

theorem evaluate_eq_some_iff (n : ℕ) (v : List Coordinates) (p : List Plan)
    (y : List Coordinates) (k : ℤ) : evaluate n v p y = some k ↔
      check n v p y = true ∧ RationalPolygonIndex.evaluate n y = some k := by
  by_cases h : check n v p y = true <;> simp [evaluate, h]

theorem evaluate_sound {n : ℕ} {v y : List Coordinates} {p : List Plan} {k : ℤ}
    (h : check n v p y = true) (hk : evaluate n v p y = some k) : sourceIndex h = k := by
  have hy := ((evaluate_eq_some_iff _ _ _ _ _).mp hk).2
  rw [sourceIndex_eq_imageIndex h]
  unfold ClosedCurveFactorIndex.index
  exact RationalPolygonIndex.evaluate_sound hy
    (lift (imageLoop n y) (image_nonzero h))
    (lift_closed _ (image_closed h) (image_nonzero h)) (fun _ => rfl)

end GRWTSK.RiemannHypothesis.JetPoleContour
```
