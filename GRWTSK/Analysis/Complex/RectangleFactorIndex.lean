/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ClosedCurveFactorIndex
import GRWTSK.Analysis.Complex.RationalPolygonIndex

set_option autoImplicit false

/-!
# A positively oriented rectangle contributes one per interior linear factor

The boundary uses the EXISTING complete dyadic polygon traversal. Arbitrary
real/complex locations are permitted; zero coordinates are not rounded to a
rational proxy. Coordinate signs construct a free homotopy to the rational
unit square. Its index one comes from the existing finite index refinement.
A continuous zero-free extension over the WHOLE rectangle contributes zero.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.RectangleFactorIndex

open scoped unitInterval BigOperators
open Set ContinuousMap PolygonTube PolygonFreeHomotopy ClosedCurveFactorIndex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure

structure Rectangle where
  left : ℝ
  right : ℝ
  bottom : ℝ
  top : ℝ
  horizontal : left < right
  vertical : bottom < top

noncomputable section

def Rectangle.interior (D : Rectangle) : Set ℂ :=
  {z | D.left < z.re ∧ z.re < D.right ∧ D.bottom < z.im ∧ z.im < D.top}

def Rectangle.box (D : Rectangle) : Set ℂ :=
  {z | D.left ≤ z.re ∧ z.re ≤ D.right ∧ D.bottom ≤ z.im ∧ z.im ≤ D.top}

def Rectangle.boundary (D : Rectangle) : Set ℂ :=
  {z | z ∈ D.box ∧ (z.re = D.left ∨ z.re = D.right ∨ z.im = D.bottom ∨ z.im = D.top)}

/-- Bottom, right, top, left, then exact closure. -/
def Rectangle.corners (D : Rectangle) : ℕ → ℂ
  | 0 => ⟨D.left, D.bottom⟩
  | 1 => ⟨D.right, D.bottom⟩
  | 2 => ⟨D.right, D.top⟩
  | 3 => ⟨D.left, D.top⟩
  | _ => ⟨D.left, D.bottom⟩

def Rectangle.curve (D : Rectangle) : C(I, ℂ) := polygonMap 4 D.corners

theorem Rectangle.curve_closed (D : Rectangle) : D.curve 0 = D.curve 1 := by
  simp [Rectangle.curve, Rectangle.corners]

theorem weighted_mem {l r a b t : ℝ} (ha : a ∈ Icc l r) (hb : b ∈ Icc l r)
    (ht : t ∈ Icc (0 : ℝ) 1) : (1-t)*a+t*b ∈ Icc l r := by
  have h0 : 0 ≤ 1-t := by linarith [ht.2]
  constructor
  · nlinarith [mul_le_mul_of_nonneg_left ha.1 h0,
      mul_le_mul_of_nonneg_left hb.1 ht.1]
  · nlinarith [mul_le_mul_of_nonneg_left ha.2 h0,
      mul_le_mul_of_nonneg_left hb.2 ht.1]

theorem weighted_pos {a b t : ℝ} (ha : 0 < a) (hb : 0 < b)
    (ht : t ∈ Icc (0 : ℝ) 1) : 0 < (1-t)*a+t*b := by
  by_cases hz : t = 0
  · simpa [hz] using ha
  · have hp : 0 < t := lt_of_le_of_ne ht.1 (Ne.symm hz)
    exact add_pos_of_nonneg_of_pos (mul_nonneg (by linarith [ht.2]) ha.le) (mul_pos hp hb)

theorem weighted_neg {a b t : ℝ} (ha : a < 0) (hb : b < 0)
    (ht : t ∈ Icc (0 : ℝ) 1) : (1-t)*a+t*b < 0 := by
  have h := weighted_pos (neg_pos.mpr ha) (neg_pos.mpr hb) ht
  nlinarith

theorem Rectangle.blend_mem_box (D : Rectangle) {a b : ℂ} (ha : a ∈ D.box)
    (hb : b ∈ D.box) (t : I) : blend (t : ℝ) a b ∈ D.box := by
  have hr := weighted_mem ⟨ha.1, ha.2.1⟩ ⟨hb.1, hb.2.1⟩ t.2
  have hi := weighted_mem ⟨ha.2.2.1, ha.2.2.2⟩ ⟨hb.2.2.1, hb.2.2.2⟩ t.2
  simpa [Rectangle.box, blend, Complex.real_smul] using ⟨hr.1, hr.2, hi.1, hi.2⟩

theorem Rectangle.corner_mem_box (D : Rectangle) (i : ℕ) : D.corners i ∈ D.box := by
  unfold Rectangle.corners
  split <;> simp [Rectangle.box, D.horizontal.le, D.vertical.le]

theorem Rectangle.edge_boundary (D : Rectangle) {i : ℕ} (hi : i < 4) (t : I) :
    blend (t : ℝ) (D.corners i) (D.corners (i+1)) ∈ D.boundary := by
  refine ⟨D.blend_mem_box (D.corner_mem_box i) (D.corner_mem_box (i+1)) t, ?_⟩
  interval_cases i
  · right; right; left; simp [Rectangle.corners, blend, Complex.real_smul] <;> ring
  · right; left; simp [Rectangle.corners, blend, Complex.real_smul] <;> ring
  · right; right; right; simp [Rectangle.corners, blend, Complex.real_smul] <;> ring
  · left; simp [Rectangle.corners, blend, Complex.real_smul] <;> ring

theorem Rectangle.curve_boundary (D : Rectangle) (t : I) : D.curve t ∈ D.boundary := by
  have h : D.curve t ∈ PolygonTube.carrier 4 D.corners := by
    rw [← polygon_range (by norm_num : 0 < (4 : ℕ))]
    exact ⟨t, rfl⟩
  obtain ⟨i, u, hu, he⟩ := h
  rw [he]
  exact D.edge_boundary i.isLt ⟨u, hu⟩

theorem Rectangle.boundary_ne_interior (D : Rectangle) {a z : ℂ}
    (ha : a ∈ D.boundary) (hz : z ∈ D.interior) : a ≠ z := by
  intro he
  subst a
  rcases ha.2 with h | h | h | h <;> linarith [hz.1, hz.2.1, hz.2.2.1, hz.2.2.2]

theorem Rectangle.boundary_of_box_not_interior (D : Rectangle) {z : ℂ}
    (hz : z ∈ D.box) (hn : z ∉ D.interior) : z ∈ D.boundary := by
  refine ⟨hz, ?_⟩
  by_cases h1 : D.left < z.re
  · by_cases h2 : z.re < D.right
    · by_cases h3 : D.bottom < z.im
      · have h4 : ¬ z.im < D.top := fun h4 => hn ⟨h1,h2,h3,h4⟩
        exact Or.inr (Or.inr (Or.inr (le_antisymm hz.2.2.2 (le_of_not_gt h4))))
      · exact Or.inr (Or.inr (Or.inl (le_antisymm (le_of_not_gt h3) hz.2.2.1)))
    · exact Or.inr (Or.inl (le_antisymm hz.2.1 (le_of_not_gt h2)))
  · exact Or.inl (le_antisymm (le_of_not_gt h1) hz.1)

def Rectangle.factor (D : Rectangle) (z : ℂ) : C(I, ℂ) :=
  ⟨fun t => D.curve t-z, D.curve.continuous.sub continuous_const⟩

theorem Rectangle.factor_closed (D : Rectangle) (z : ℂ) : D.factor z 0 = D.factor z 1 := by
  change D.curve 0-z = D.curve 1-z
  rw [D.curve_closed]

theorem Rectangle.factor_nonzero (D : Rectangle) {z : ℂ} (hz : z ∈ D.interior) :
    ∀ t, D.factor z t ≠ 0 := fun t => sub_ne_zero.mpr
      (D.boundary_ne_interior (D.curve_boundary t) hz)

/-- Literal rational reference; its sign is fixed by the old algorithm. -/
def reference : List Coordinates := [(-1,-1), (1,-1), (1,1), (-1,1), (-1,-1)]

theorem reference_evaluates : RationalPolygonIndex.evaluate 4 reference = some 1 := by decide

theorem reference_checked : RationalPolygonIndex.check 4 reference = true :=
  ((RationalPolygonIndex.evaluate_eq_some_iff _ _ _).mp reference_evaluates).1

def referenceCurve : C(I, ℂ) := polygonMap 4 (RationalPolygonIndex.points reference)

theorem reference_closed : referenceCurve 0 = referenceCurve 1 := by
  simp [referenceCurve, reference, RationalPolygonIndex.points, RationalPolygonIndex.vertex]

theorem reference_nonzero : ∀ t, referenceCurve t ≠ 0 :=
  RationalPolygonIndex.checked_nonzero reference_checked

theorem reference_index : index referenceCurve reference_closed reference_nonzero = 1 := by
  exact RationalPolygonIndex.evaluate_sound reference_evaluates
    (lift referenceCurve reference_nonzero)
    (lift_closed referenceCurve reference_closed reference_nonzero) (fun _ => rfl)

/-- On each edge one coordinate has the SAME strict sign throughout both
curves and their deformation. This handles arbitrary, not just rational, z. -/
theorem Rectangle.factor_cells (D : Rectangle) {z : ℂ} (hz : z ∈ D.interior) :
    CellNonzero (fun w => w-z) 4 D.corners (RationalPolygonIndex.points reference) := by
  intro i hi t lam he
  interval_cases i
  · have hs := weighted_neg (sub_neg.mpr hz.2.2.1) (by norm_num : (-1 : ℝ) < 0) lam.2
    have hc := congrArg Complex.im he
    norm_num [deformation, blend, Rectangle.corners, reference,
      RationalPolygonIndex.points, RationalPolygonIndex.vertex, toComplex, Complex.real_smul] at hc
    ring_nf at hc
    nlinarith
  · have hs := weighted_pos (sub_pos.mpr hz.2.1) (by norm_num : (0 : ℝ) < 1) lam.2
    have hc := congrArg Complex.re he
    norm_num [deformation, blend, Rectangle.corners, reference,
      RationalPolygonIndex.points, RationalPolygonIndex.vertex, toComplex, Complex.real_smul] at hc
    ring_nf at hc
    nlinarith
  · have hs := weighted_pos (sub_pos.mpr hz.2.2.2) (by norm_num : (0 : ℝ) < 1) lam.2
    have hc := congrArg Complex.im he
    norm_num [deformation, blend, Rectangle.corners, reference,
      RationalPolygonIndex.points, RationalPolygonIndex.vertex, toComplex, Complex.real_smul] at hc
    ring_nf at hc
    nlinarith
  · have hs := weighted_neg (sub_neg.mpr hz.1) (by norm_num : (-1 : ℝ) < 0) lam.2
    have hc := congrArg Complex.re he
    norm_num [deformation, blend, Rectangle.corners, reference,
      RationalPolygonIndex.points, RationalPolygonIndex.vertex, toComplex, Complex.real_smul] at hc
    ring_nf at hc
    nlinarith

/-- Positive single traversal, not absolute winding or a count oracle. -/
theorem Rectangle.factor_index_one (D : Rectangle) {z : ℂ} (hz : z ∈ D.interior) :
    index (D.factor z) (D.factor_closed z) (D.factor_nonzero hz) = 1 := by
  let H := PolygonFreeHomotopy.freeHomotopy (fun w : ℂ => w-z) (by fun_prop)
    (by norm_num : 0 < (4 : ℕ)) D.corners (RationalPolygonIndex.points reference)
    rfl (by simp [RationalPolygonIndex.points, RationalPolygonIndex.vertex, reference])
    (D.factor_cells hz)
  exact (index_homotopy (D.factor_closed z) reference_closed
    (D.factor_nonzero hz) reference_nonzero H).trans reference_index

def Rectangle.center (D : Rectangle) : ℂ :=
  ⟨(D.left+D.right)/2, (D.bottom+D.top)/2⟩

theorem Rectangle.center_mem (D : Rectangle) : D.center ∈ D.box := by
  change D.left ≤ (D.left+D.right)/2 ∧ (D.left+D.right)/2 ≤ D.right ∧
    D.bottom ≤ (D.bottom+D.top)/2 ∧ (D.bottom+D.top)/2 ≤ D.top
  exact ⟨by linarith [D.horizontal], by linarith [D.horizontal],
    by linarith [D.vertical], by linarith [D.vertical]⟩

def Rectangle.image (D : Rectangle) (q : ℂ → ℂ) (hq : ContinuousOn q D.box) : C(I, ℂ) :=
  ⟨fun t => q (D.curve t), hq.comp_continuous D.curve.continuous
    (fun t => (D.curve_boundary t).1)⟩

theorem Rectangle.image_closed (D : Rectangle) (q : ℂ → ℂ) (hq : ContinuousOn q D.box) :
    D.image q hq 0 = D.image q hq 1 := congrArg q D.curve_closed

theorem Rectangle.image_nonzero (D : Rectangle) {q : ℂ → ℂ} (hq : ContinuousOn q D.box)
    (hn : ∀ w ∈ D.box, q w ≠ 0) : ∀ t, D.image q hq t ≠ 0 :=
  fun t => hn _ (D.curve_boundary t).1

/-- Boundary nonvanishing is insufficient. The remainder is nonzero at EVERY
point of the closed rectangle, so its boundary image contracts inside C\{0}. -/
theorem Rectangle.zero_free_index (D : Rectangle) {q : ℂ → ℂ}
    (hq : ContinuousOn q D.box) (hn : ∀ w ∈ D.box, q w ≠ 0) :
    index (D.image q hq) (D.image_closed q hq) (D.image_nonzero hq hn) = 0 := by
  have hmem (p : I × I) : blend (p.1 : ℝ) (D.curve p.2) D.center ∈ D.box :=
    D.blend_mem_box (D.curve_boundary p.2).1 D.center_mem p.1
  let H : HomotopyWith (D.image q hq) (ContinuousMap.const I (q D.center))
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) :=
    { toFun := fun p => q (blend (p.1 : ℝ) (D.curve p.2) D.center)
      continuous_toFun := hq.comp_continuous (by unfold blend; fun_prop) hmem
      map_zero_left := fun t => by simp [Rectangle.image]
      map_one_left := fun t => by simp
      prop' := fun lam => ⟨by change q _ = q _; rw [D.curve_closed],
        fun t => hn _ (hmem (lam,t))⟩ }
  exact (index_homotopy (D.image_closed q hq) rfl (D.image_nonzero hq hn)
    (fun _ => hn _ D.center_mem) H).trans (index_const _ (hn _ D.center_mem))

end
end GRWTSK.Analysis.Complex.RectangleFactorIndex
