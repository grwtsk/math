# Complete source: GRWTSK.Topology.GeneralTopology.BranchSubdivision.Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `895b733bb679fb6a458800744e769385f6e54f2c` · SHA-256 `cccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.ComplexAnalysis.RectangleContour

/-!
# CA-03 branch subdivision prototype

## F3a: rectangular intermediate contour

This scratch file proves the exact four-rectangle edge cancellation and the
resulting rectangular-hole excision theorem.  It is self-contained over the
existing raw rectangle API and introduces no canonical declarations.

## F3b: circular boundary blocker

The checked theorem below stops at an inner rectangular boundary.  Pinned
mathlib's annulus theorem
`Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable`
compares two concentric circles only.  Its rectangle Cauchy--Goursat theorem
compares four straight interval integrals only.  There is no theorem in this
pin identifying a rectangular boundary integral with a circle integral, and
there is no ready contour-cycle/winding-number residue API.

Subdividing the rectangular annulus into four rectangles therefore cannot
reach the circular target: the region between the inner rectangle and the
circle has curved boundary pieces and is not a finite union of axis-aligned
rectangles whose internal straight edges cancel.  Closing F3b requires one
additional analytic bridge.  A promising lower-level candidate does exist in
`Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare`: its
`ContinuousMap.Homotopy.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt`
is a `C²` homotopy theorem for closed one-forms.  It is not a drop-in bridge:
one must encode `f(z) dz` as a closed one-form, express the four raw rectangle
edges as a sum of segment curve integrals, express `circleIntegral` as a curve
integral, and construct a `C²` homotopy avoiding the deleted disk.  The raw
rectangle has corners, so it cannot itself be one `C²` endpoint without a
piecewise/smoothing argument.  Other options are an arbitrary-domain Cauchy
theorem or a polygonal/rectangular approximation plus convergence of boundary
integrals to `circleIntegral`.
-/

open Set Complex MeasureTheory intervalIntegral

namespace Surface.Core.ComplexAnalysis.Scratch

noncomputable section

/-- A complex point specified by Cartesian coordinates. -/
def corner (x y : ℝ) : ℂ := ⟨x, y⟩

@[simp]
theorem corner_eq_add_mul_I (x y : ℝ) :
    corner x y = (x : ℂ) + (y : ℂ) * Complex.I := by
  apply Complex.ext <;> simp [corner]

/-- Horizontal edge integral with explicitly real endpoints. -/
def horizontal (f : ℂ → ℂ) (a b y : ℝ) : ℂ :=
  ∫ x : ℝ in a..b, f (corner x y)

/-- Vertical edge integral with explicitly real endpoints. -/
def vertical (f : ℂ → ℂ) (x a b : ℝ) : ℂ :=
  Complex.I • (∫ y : ℝ in a..b, f (corner x y))

/-- Positively oriented boundary integral of `[a,b] × [p,q]`. -/
def boundary (f : ℂ → ℂ) (a b p q : ℝ) : ℂ :=
  horizontal f a b p - horizontal f a b q +
    vertical f b p q - vertical f a p q

theorem boundary_eq_rectangleBoundaryIntegral
    (f : ℂ → ℂ) (a b p q : ℝ) :
    boundary f a b p q =
      rectangleBoundaryIntegral f (corner a p) (corner b q) := by
  simp [boundary, horizontal, vertical, rectangleBoundaryIntegral,
    rectangleHorizontalIntegral, rectangleVerticalIntegral]

private theorem horizontal_intervalIntegrable_of_continuousOn
    (f : ℂ → ℂ) {a b p q y : ℝ}
    (hab : a ≤ b)
    (hy : y ∈ Set.uIcc p q)
    (hf : ContinuousOn f
      (closedRectangle (corner a p) (corner b q))) :
    IntervalIntegrable (fun x : ℝ => f (corner x y)) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  have hcorner : ContinuousOn (fun x : ℝ => corner x y) (Set.Icc a b) := by
    simp only [corner_eq_add_mul_I]
    fun_prop
  have hmaps : Set.MapsTo (fun x : ℝ => corner x y) (Set.Icc a b)
      (closedRectangle (corner a p) (corner b q)) := by
    intro x hx
    exact ⟨Set.Icc_subset_uIcc hx, hy⟩
  change ContinuousOn (f ∘ fun x : ℝ => corner x y) (Set.Icc a b)
  exact hf.comp hcorner hmaps

private theorem vertical_intervalIntegrable_of_continuousOn
    (f : ℂ → ℂ) {a b p q x : ℝ}
    (hpq : p ≤ q)
    (hx : x ∈ Set.uIcc a b)
    (hf : ContinuousOn f
      (closedRectangle (corner a p) (corner b q))) :
    IntervalIntegrable (fun y : ℝ => f (corner x y)) volume p q := by
  apply ContinuousOn.intervalIntegrable_of_Icc hpq
  have hcorner : ContinuousOn (fun y : ℝ => corner x y) (Set.Icc p q) := by
    simp only [corner_eq_add_mul_I]
    fun_prop
  have hmaps : Set.MapsTo (fun y : ℝ => corner x y) (Set.Icc p q)
      (closedRectangle (corner a p) (corner b q)) := by
    intro y hy
    exact ⟨hx, Set.Icc_subset_uIcc hy⟩
  change ContinuousOn (f ∘ fun y : ℝ => corner x y) (Set.Icc p q)
  exact hf.comp hcorner hmaps

private theorem horizontal_add_three
    (f : ℂ → ℂ) {a b c d y : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hint : IntervalIntegrable (fun x : ℝ => f (corner x y)) volume a d) :
    horizontal f a d y =
      horizontal f a b y + horizontal f b c y + horizontal f c d y := by
  have had : a ≤ d := hab.trans (hbc.trans hcd)
  have hac : a ≤ c := hab.trans hbc
  have hiab : IntervalIntegrable (fun x : ℝ => f (corner x y)) volume a b :=
    hint.mono_set (by
      rw [Set.uIcc_of_le hab, Set.uIcc_of_le had]
      exact Set.Icc_subset_Icc le_rfl (hbc.trans hcd))
  have hibc : IntervalIntegrable (fun x : ℝ => f (corner x y)) volume b c :=
    hint.mono_set (by
      rw [Set.uIcc_of_le hbc, Set.uIcc_of_le had]
      exact Set.Icc_subset_Icc hab hcd)
  have hicd : IntervalIntegrable (fun x : ℝ => f (corner x y)) volume c d :=
    hint.mono_set (by
      rw [Set.uIcc_of_le hcd, Set.uIcc_of_le had]
      exact Set.Icc_subset_Icc hac le_rfl)
  unfold horizontal
  symm
  calc
    (∫ x : ℝ in a..b, f (corner x y)) +
          (∫ x : ℝ in b..c, f (corner x y)) +
        (∫ x : ℝ in c..d, f (corner x y)) =
      (∫ x : ℝ in a..c, f (corner x y)) +
        (∫ x : ℝ in c..d, f (corner x y)) := by
          rw [integral_add_adjacent_intervals hiab hibc]
    _ = ∫ x : ℝ in a..d, f (corner x y) :=
      integral_add_adjacent_intervals (hiab.trans hibc) hicd

private theorem vertical_add_three
    (f : ℂ → ℂ) {x p q r s : ℝ}
    (hipq : IntervalIntegrable (fun y : ℝ => f (corner x y)) volume p q)
    (hiqr : IntervalIntegrable (fun y : ℝ => f (corner x y)) volume q r)
    (hirs : IntervalIntegrable (fun y : ℝ => f (corner x y)) volume r s) :
    vertical f x p s =
      vertical f x p q + vertical f x q r + vertical f x r s := by
  have hbase :
      (∫ y : ℝ in p..s, f (corner x y)) =
        (∫ y : ℝ in p..q, f (corner x y)) +
          (∫ y : ℝ in q..r, f (corner x y)) +
            (∫ y : ℝ in r..s, f (corner x y)) := by
    symm
    calc
      (∫ y : ℝ in p..q, f (corner x y)) +
            (∫ y : ℝ in q..r, f (corner x y)) +
          (∫ y : ℝ in r..s, f (corner x y)) =
        (∫ y : ℝ in p..r, f (corner x y)) +
          (∫ y : ℝ in r..s, f (corner x y)) := by
            rw [integral_add_adjacent_intervals hipq hiqr]
      _ = ∫ y : ℝ in p..s, f (corner x y) :=
        integral_add_adjacent_intervals (hipq.trans hiqr) hirs
  unfold vertical
  rw [hbase]
  simp only [smul_add]

/-- Four-rectangle edge cancellation.  The outer rectangle is
`[a,d] × [p,s]`, the inner rectangle is `[b,c] × [q,r]`, and the four
pieces are bottom, top, left-middle, and right-middle. -/
theorem four_rectangles_boundary_sum
    (f : ℂ → ℂ) {a b c d p q r s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hpq : p ≤ q) (hqr : q ≤ r) (hrs : r ≤ s)
    (hBottom : ContinuousOn f
      (closedRectangle (corner a p) (corner d q)))
    (hTop : ContinuousOn f
      (closedRectangle (corner a r) (corner d s)))
    (hLeft : ContinuousOn f
      (closedRectangle (corner a q) (corner b r)))
    (hRight : ContinuousOn f
      (closedRectangle (corner c q) (corner d r))) :
    boundary f a d p s - boundary f b c q r =
      boundary f a d p q + boundary f a d r s +
        boundary f a b q r + boundary f c d q r := by
  have had : a ≤ d := hab.trans (hbc.trans hcd)
  have hps : p ≤ s := hpq.trans (hqr.trans hrs)

  have hq : IntervalIntegrable (fun x : ℝ => f (corner x q)) volume a d :=
    horizontal_intervalIntegrable_of_continuousOn f had Set.right_mem_uIcc hBottom
  have hr : IntervalIntegrable (fun x : ℝ => f (corner x r)) volume a d :=
    horizontal_intervalIntegrable_of_continuousOn f had Set.left_mem_uIcc hTop
  have hqSplit := horizontal_add_three f hab hbc hcd hq
  have hrSplit := horizontal_add_three f hab hbc hcd hr

  have hvapq : IntervalIntegrable (fun y : ℝ => f (corner a y)) volume p q :=
    vertical_intervalIntegrable_of_continuousOn f hpq Set.left_mem_uIcc hBottom
  have hvaqr : IntervalIntegrable (fun y : ℝ => f (corner a y)) volume q r :=
    vertical_intervalIntegrable_of_continuousOn f hqr Set.left_mem_uIcc hLeft
  have hvars : IntervalIntegrable (fun y : ℝ => f (corner a y)) volume r s :=
    vertical_intervalIntegrable_of_continuousOn f hrs Set.left_mem_uIcc hTop
  have haSplit := vertical_add_three f hvapq hvaqr hvars

  have hvdpq : IntervalIntegrable (fun y : ℝ => f (corner d y)) volume p q :=
    vertical_intervalIntegrable_of_continuousOn f hpq Set.right_mem_uIcc hBottom
  have hvdqr : IntervalIntegrable (fun y : ℝ => f (corner d y)) volume q r :=
    vertical_intervalIntegrable_of_continuousOn f hqr Set.right_mem_uIcc hRight
  have hvdrs : IntervalIntegrable (fun y : ℝ => f (corner d y)) volume r s :=
    vertical_intervalIntegrable_of_continuousOn f hrs Set.right_mem_uIcc hTop
  have hdSplit := vertical_add_three f hvdpq hvdqr hvdrs

  unfold boundary
  rw [hqSplit, hrSplit, haSplit, hdSplit]
  abel

/-- Rectangular-hole excision: holomorphy on the four rectangular pieces
between an outer and an inner rectangle identifies their positive boundary
integrals. -/
theorem rectangleBoundaryIntegral_eq_innerRectangle
    (f : ℂ → ℂ) {a b c d p q r s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hpq : p ≤ q) (hqr : q ≤ r) (hrs : r ≤ s)
    (hBottom : DifferentiableOn ℂ f
      (closedRectangle (corner a p) (corner d q)))
    (hTop : DifferentiableOn ℂ f
      (closedRectangle (corner a r) (corner d s)))
    (hLeft : DifferentiableOn ℂ f
      (closedRectangle (corner a q) (corner b r)))
    (hRight : DifferentiableOn ℂ f
      (closedRectangle (corner c q) (corner d r))) :
    rectangleBoundaryIntegral f (corner a p) (corner d s) =
      rectangleBoundaryIntegral f (corner b q) (corner c r) := by
  have hsum := four_rectangles_boundary_sum f hab hbc hcd hpq hqr hrs
    hBottom.continuousOn hTop.continuousOn hLeft.continuousOn hRight.continuousOn
  simp only [boundary_eq_rectangleBoundaryIntegral] at hsum
  have hBottomZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner a p) (corner d q) hBottom
  have hTopZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner a r) (corner d s) hTop
  have hLeftZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner a q) (corner b r) hLeft
  have hRightZero :=
    rectangleBoundaryIntegral_eq_zero_of_differentiableOn f
      (corner c q) (corner d r) hRight
  rw [hBottomZero, hTopZero, hLeftZero, hRightZero] at hsum
  simpa only [add_zero, zero_add, sub_eq_zero] using hsum

/-- Rectangular-hole excision at the regularity of the shared circular target:
continuity is required on each closed cell, and complex differentiability only
on each open cell.  This remains a straight-edge theorem. -/
theorem rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn
    (f : ℂ → ℂ) {a b c d p q r s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d)
    (hpq : p ≤ q) (hqr : q ≤ r) (hrs : r ≤ s)
    (hBottomC : ContinuousOn f
      (closedRectangle (corner a p) (corner d q)))
    (hTopC : ContinuousOn f
      (closedRectangle (corner a r) (corner d s)))
    (hLeftC : ContinuousOn f
      (closedRectangle (corner a q) (corner b r)))
    (hRightC : ContinuousOn f
      (closedRectangle (corner c q) (corner d r)))
    (hBottomD : DifferentiableOn ℂ f (Set.Ioo a d ×ℂ Set.Ioo p q))
    (hTopD : DifferentiableOn ℂ f (Set.Ioo a d ×ℂ Set.Ioo r s))
    (hLeftD : DifferentiableOn ℂ f (Set.Ioo a b ×ℂ Set.Ioo q r))
    (hRightD : DifferentiableOn ℂ f (Set.Ioo c d ×ℂ Set.Ioo q r)) :
    rectangleBoundaryIntegral f (corner a p) (corner d s) =
      rectangleBoundaryIntegral f (corner b q) (corner c r) := by
  have had : a ≤ d := hab.trans (hbc.trans hcd)
  have hsum := four_rectangles_boundary_sum f hab hbc hcd hpq hqr hrs
    hBottomC hTopC hLeftC hRightC
  simp only [boundary_eq_rectangleBoundaryIntegral] at hsum
  have hBottomZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner a p) (corner d q) hBottomC (by
        simpa [corner, min_eq_left had, max_eq_right had,
          min_eq_left hpq, max_eq_right hpq] using hBottomD)
  have hTopZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner a r) (corner d s) hTopC (by
        simpa [corner, min_eq_left had, max_eq_right had,
          min_eq_left hrs, max_eq_right hrs] using hTopD)
  have hLeftZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner a q) (corner b r) hLeftC (by
        simpa [corner, min_eq_left hab, max_eq_right hab,
          min_eq_left hqr, max_eq_right hqr] using hLeftD)
  have hRightZero :=
    rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
      f (corner c q) (corner d r) hRightC (by
        simpa [corner, min_eq_left hcd, max_eq_right hcd,
          min_eq_left hqr, max_eq_right hqr] using hRightD)
  rw [hBottomZero, hTopZero, hLeftZero, hRightZero] at hsum
  simpa only [add_zero, zero_add, sub_eq_zero] using hsum

/-- A nondegenerate axis-aligned rectangle, stored in coordinate order. -/
structure OrderedRectangle where
  left : ℝ
  right : ℝ
  bottom : ℝ
  top : ℝ
  left_lt_right : left < right
  bottom_lt_top : bottom < top

namespace OrderedRectangle

def lowerCorner (R : OrderedRectangle) : ℂ := corner R.left R.bottom

def upperCorner (R : OrderedRectangle) : ℂ := corner R.right R.top

def boundaryIntegral (R : OrderedRectangle) (f : ℂ → ℂ) : ℂ :=
  rectangleBoundaryIntegral f R.lowerCorner R.upperCorner

/-- Coordinatewise strict containment of an inner rectangle. -/
structure Contains (outer inner : OrderedRectangle) : Prop where
  left_lt : outer.left < inner.left
  right_lt : inner.right < outer.right
  bottom_lt : outer.bottom < inner.bottom
  top_lt : inner.top < outer.top

/-- Ordered-rectangle wrapper around `rectangleBoundaryIntegral_eq_innerRectangle`.
The four differentiability hypotheses are exactly the four closed pieces of
the rectangular annulus. -/
theorem boundaryIntegral_eq_inner
    (outer inner : OrderedRectangle)
    (h : Contains outer inner)
    (f : ℂ → ℂ)
    (hBottom : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left outer.bottom)
        (corner outer.right inner.bottom)))
    (hTop : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left inner.top)
        (corner outer.right outer.top)))
    (hLeft : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left inner.bottom)
        (corner inner.left inner.top)))
    (hRight : DifferentiableOn ℂ f
      (closedRectangle
        (corner inner.right inner.bottom)
        (corner outer.right inner.top))) :
    outer.boundaryIntegral f = inner.boundaryIntegral f := by
  exact rectangleBoundaryIntegral_eq_innerRectangle f
    h.left_lt.le inner.left_lt_right.le h.right_lt.le
    h.bottom_lt.le inner.bottom_lt_top.le h.top_lt.le
    hBottom hTop hLeft hRight

end OrderedRectangle

end

end Surface.Core.ComplexAnalysis.Scratch

#print axioms Surface.Core.ComplexAnalysis.Scratch.four_rectangles_boundary_sum
#print axioms Surface.Core.ComplexAnalysis.Scratch.rectangleBoundaryIntegral_eq_innerRectangle
#print axioms Surface.Core.ComplexAnalysis.Scratch.rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn
#print axioms Surface.Core.ComplexAnalysis.Scratch.OrderedRectangle.boundaryIntegral_eq_inner
```
