# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f91ce48dd90bb849bddb1a5c01f10a18ba20354` · SHA-256 `73341656d35cd9d689b59b4e0ab4743d332658c08a093a08113df362e4bef034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPositiveHeightCountIsolation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# From an admissible rectangle index to the canonical positive-height count

The repository already supplies a noncomputable admissible rectangle whose boundary
contains neither a zeta zero nor the pole. Its interior contains exactly:

* every canonical nontrivial zero with `|Im rho| <= contourHeight N`;
* the first `N` simple negative-even zeros;
* the simple pole at one.

This file fixes an explicit counterclockwise rectangle integral of `zeta'/zeta`.
A future argument-principle/Turing supplier must prove that its normalized value is

  heightCount(contourHeight N) + N - 1.

The `+N` retains all enclosed simple trivial zeros and the `-1` retains the pole.
Exact conjugation symmetry then converts the both-sign nontrivial count to twice the
standard positive-height count. A rational enclosure of the rectangle index is
transported affinely to a `CanonicalCountEnclosure`, where the existing strict
one-integer checker can isolate the exact natural count.

No residue theorem, contour estimate, argument-variation bound, or passing enclosure
is constructed here. The exact argument-principle identity remains an explicit field
of `CanonicalRectangleIndexEnclosure`. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleCountIsolation

open Set
open scoped Interval
open CanonicalZeroDivisor
open AdmissibleRectangles
open PositiveHeightCountDeficit
open PositiveHeightSymmetricCount
open RationalPositiveHeightCountIsolation

noncomputable section

/-- Bottom horizontal edge, oriented from the left edge to real part two. -/
def bottomPoint (N : ℕ) (u : ℝ) : ℂ :=
  (u : ℂ) - (contourHeight N : ℂ) * Complex.I

/-- Right vertical edge, oriented upward. -/
def rightPoint (N : ℕ) (t : ℝ) : ℂ :=
  (2 : ℂ) + (t : ℂ) * Complex.I

/-- Top horizontal edge, oriented from real part two back to the left edge. -/
def topPoint (N : ℕ) (u : ℝ) : ℂ :=
  (u : ℂ) + (contourHeight N : ℂ) * Complex.I

/-- Left vertical edge, oriented downward. -/
def rectangleLeftPoint (N : ℕ) (t : ℝ) : ℂ :=
  (leftEdge N : ℂ) + (t : ℂ) * Complex.I

@[simp] theorem bottomPoint_re (N : ℕ) (u : ℝ) :
    (bottomPoint N u).re = u := by
  simp [bottomPoint]

@[simp] theorem bottomPoint_im (N : ℕ) (u : ℝ) :
    (bottomPoint N u).im = -contourHeight N := by
  simp [bottomPoint]

@[simp] theorem topPoint_re (N : ℕ) (u : ℝ) :
    (topPoint N u).re = u := by
  simp [topPoint]

@[simp] theorem topPoint_im (N : ℕ) (u : ℝ) :
    (topPoint N u).im = contourHeight N := by
  simp [topPoint]

@[simp] theorem rightPoint_re (N : ℕ) (t : ℝ) :
    (rightPoint N t).re = 2 := by
  simp [rightPoint]

@[simp] theorem rightPoint_im (N : ℕ) (t : ℝ) :
    (rightPoint N t).im = t := by
  simp [rightPoint]

@[simp] theorem rectangleLeftPoint_re (N : ℕ) (t : ℝ) :
    (rectangleLeftPoint N t).re = leftEdge N := by
  simp [rectangleLeftPoint]

@[simp] theorem rectangleLeftPoint_im (N : ℕ) (t : ℝ) :
    (rectangleLeftPoint N t).im = t := by
  simp [rectangleLeftPoint]

/-- Every bottom-edge parameter lies on the maintained closed boundary. -/
theorem bottomPoint_mem_boundary (N : ℕ) {u : ℝ}
    (hu : u ∈ Icc (leftEdge N) 2) :
    bottomPoint N u ∈ boundary N := by
  have hy : |-contourHeight N| = contourHeight N := by
    rw [abs_neg, abs_of_pos (contourHeight_pos N)]
  simpa [bottomPoint, sub_eq_add_neg] using
    horizontal_mem_boundary N u (-contourHeight N) hu hy

/-- Every top-edge parameter lies on the maintained closed boundary. -/
theorem topPoint_mem_boundary (N : ℕ) {u : ℝ}
    (hu : u ∈ Icc (leftEdge N) 2) :
    topPoint N u ∈ boundary N := by
  have hy : |contourHeight N| = contourHeight N :=
    abs_of_pos (contourHeight_pos N)
  simpa [topPoint] using
    horizontal_mem_boundary N u (contourHeight N) hu hy

/-- Every right-edge parameter lies on the maintained closed boundary. -/
theorem rightPoint_mem_boundary (N : ℕ) {t : ℝ}
    (ht : t ∈ Icc (-contourHeight N) (contourHeight N)) :
    rightPoint N t ∈ boundary N := by
  have habs : |t| ≤ contourHeight N := (abs_le).2 ht
  simpa [rightPoint] using
    vertical_mem_boundary N 2 t (Or.inr rfl) habs

/-- Every left-edge parameter lies on the maintained closed boundary. -/
theorem rectangleLeftPoint_mem_boundary (N : ℕ) {t : ℝ}
    (ht : t ∈ Icc (-contourHeight N) (contourHeight N)) :
    rectangleLeftPoint N t ∈ boundary N := by
  have habs : |t| ≤ contourHeight N := (abs_le).2 ht
  simpa [rectangleLeftPoint] using
    vertical_mem_boundary N (leftEdge N) t (Or.inl rfl) habs

/-- All four parametrized edges avoid actual zeta zeros. -/
theorem zeta_ne_zero_bottom (N : ℕ) {u : ℝ}
    (hu : u ∈ Icc (leftEdge N) 2) :
    riemannZeta (bottomPoint N u) ≠ 0 :=
  zeta_ne_zero_on_boundary N _ (bottomPoint_mem_boundary N hu)

theorem zeta_ne_zero_top (N : ℕ) {u : ℝ}
    (hu : u ∈ Icc (leftEdge N) 2) :
    riemannZeta (topPoint N u) ≠ 0 :=
  zeta_ne_zero_on_boundary N _ (topPoint_mem_boundary N hu)

theorem zeta_ne_zero_right (N : ℕ) {t : ℝ}
    (ht : t ∈ Icc (-contourHeight N) (contourHeight N)) :
    riemannZeta (rightPoint N t) ≠ 0 :=
  zeta_ne_zero_on_boundary N _ (rightPoint_mem_boundary N ht)

theorem zeta_ne_zero_left (N : ℕ) {t : ℝ}
    (ht : t ∈ Icc (-contourHeight N) (contourHeight N)) :
    riemannZeta (rectangleLeftPoint N t) ≠ 0 :=
  zeta_ne_zero_on_boundary N _ (rectangleLeftPoint_mem_boundary N ht)

/-- All four parametrized edges also avoid the pole at one. -/
theorem bottomPoint_ne_one (N : ℕ) {u : ℝ}
    (hu : u ∈ Icc (leftEdge N) 2) : bottomPoint N u ≠ 1 :=
  boundary_ne_one N _ (bottomPoint_mem_boundary N hu)

theorem topPoint_ne_one (N : ℕ) {u : ℝ}
    (hu : u ∈ Icc (leftEdge N) 2) : topPoint N u ≠ 1 :=
  boundary_ne_one N _ (topPoint_mem_boundary N hu)

theorem rightPoint_ne_one (N : ℕ) {t : ℝ}
    (ht : t ∈ Icc (-contourHeight N) (contourHeight N)) :
    rightPoint N t ≠ 1 :=
  boundary_ne_one N _ (rightPoint_mem_boundary N ht)

theorem rectangleLeftPoint_ne_one (N : ℕ) {t : ℝ}
    (ht : t ∈ Icc (-contourHeight N) (contourHeight N)) :
    rectangleLeftPoint N t ≠ 1 :=
  boundary_ne_one N _ (rectangleLeftPoint_mem_boundary N ht)

/-- The explicit counterclockwise boundary integral of the actual zeta logarithmic derivative.
The vertical terms retain `ds = I dt`; reversed interval endpoints encode the top and
left orientations. -/
def rectangleLogDerivativeIntegral (N : ℕ) : ℂ :=
  (∫ u in leftEdge N..2,
      logDeriv riemannZeta (bottomPoint N u)) +
  (∫ t in (-contourHeight N)..contourHeight N,
      logDeriv riemannZeta (rightPoint N t) * Complex.I) +
  (∫ u in 2..leftEdge N,
      logDeriv riemannZeta (topPoint N u)) +
  (∫ t in contourHeight N..(-contourHeight N),
      logDeriv riemannZeta (rectangleLeftPoint N t) * Complex.I)

/-- Argument-principle normalization for the oriented rectangle. -/
def normalizedRectangleIndex (N : ℕ) : ℂ :=
  (2 * (Real.pi : ℂ) * Complex.I)⁻¹ * rectangleLogDerivativeIntegral N

/-- The source-correct real target for the rectangle index.

The nontrivial divisor contributes both height signs, the first `N` simple trivial
zeros contribute `N`, and the pole at one contributes `-1`. -/
def expectedRectangleIndex (N : ℕ) : ℝ :=
  (heightCount (contourHeight N) : ℝ) + (N : ℝ) - 1

/-- Rewrite the source target in the standard positive-height normalization. -/
theorem expectedRectangleIndex_eq_two_positive_add_trivial_sub_pole (N : ℕ) :
    expectedRectangleIndex N =
      2 * (positiveHeightCount (contourHeight N) : ℝ) + (N : ℝ) - 1 := by
  have hcount : (heightCount (contourHeight N) : ℝ) =
      2 * (positiveHeightCount (contourHeight N) : ℝ) := by
    exact_mod_cast heightCount_eq_two_mul_positiveHeightCount (contourHeight N)
  unfold expectedRectangleIndex
  rw [hcount]

/-- Undo the trivial-zero and pole contributions, then divide the two height signs. -/
def recoverPositiveCount (N : ℕ) (index : ℝ) : ℝ :=
  (index - (N : ℝ) + 1) / 2

@[simp] theorem recoverPositiveCount_expected (N : ℕ) :
    recoverPositiveCount N (expectedRectangleIndex N) =
      (positiveHeightCount (contourHeight N) : ℝ) := by
  rw [expectedRectangleIndex_eq_two_positive_add_trivial_sub_pole]
  unfold recoverPositiveCount
  ring

/-- A rational interval transported through the increasing affine correction map. -/
def positiveCountInterval (N : ℕ)
    (interval : RationalCountInterval) : RationalCountInterval where
  lower := (interval.lower - (N : ℚ) + 1) / 2
  upper := (interval.upper - (N : ℚ) + 1) / 2
  valid := by
    dsimp
    linarith [interval.valid]

@[simp] theorem cast_positiveCountInterval_lower (N : ℕ)
    (interval : RationalCountInterval) :
    ((positiveCountInterval N interval).lower : ℝ) =
      ((interval.lower : ℝ) - (N : ℝ) + 1) / 2 := by
  simp [positiveCountInterval]

@[simp] theorem cast_positiveCountInterval_upper (N : ℕ)
    (interval : RationalCountInterval) :
    ((positiveCountInterval N interval).upper : ℝ) =
      ((interval.upper : ℝ) - (N : ℝ) + 1) / 2 := by
  simp [positiveCountInterval]

/-- A source-bound rectangle-index enclosure.

`argument_principle` is the substantive missing analytic theorem. The interval field
then bounds that exact normalized contour value; it cannot be replaced by an
asymptotic main term or an unrelated external count. -/
structure CanonicalRectangleIndexEnclosure (N : ℕ) where
  interval : RationalCountInterval
  argument_principle :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ)
  contains_index : interval.Contains (normalizedRectangleIndex N).re

namespace CanonicalRectangleIndexEnclosure

/-- The exact rectangle identity makes the normalized index real. -/
theorem normalized_re_eq_expected {N : ℕ}
    (report : CanonicalRectangleIndexEnclosure N) :
    (normalizedRectangleIndex N).re = expectedRectangleIndex N := by
  rw [report.argument_principle]
  simp

/-- The normalized rectangle index has zero imaginary component. -/
theorem normalized_im_eq_zero {N : ℕ}
    (report : CanonicalRectangleIndexEnclosure N) :
    (normalizedRectangleIndex N).im = 0 := by
  rw [report.argument_principle]
  simp

/-- Transport a source-correct rectangle enclosure to the canonical positive count. -/
noncomputable def toCanonicalCountEnclosure {N : ℕ}
    (report : CanonicalRectangleIndexEnclosure N) :
    CanonicalCountEnclosure (contourHeight N) where
  interval := positiveCountInterval N report.interval
  contains_count := by
    have hcontains := report.contains_index
    rw [report.normalized_re_eq_expected] at hcontains
    have hrecover := recoverPositiveCount_expected N
    constructor
    · rw [cast_positiveCountInterval_lower, ← hrecover]
      unfold recoverPositiveCount
      linarith [hcontains.1]
    · rw [cast_positiveCountInterval_upper, ← hrecover]
      unfold recoverPositiveCount
      linarith [hcontains.2]

/-- Decidable integer isolation after the exact pole/trivial/two-sign correction. -/
def accepts {N : ℕ} (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) : Bool :=
  report.toCanonicalCountEnclosure.accepts count

@[simp] theorem accepts_iff {N : ℕ}
    (report : CanonicalRectangleIndexEnclosure N) (count : ℕ) :
    report.accepts count = true ↔
      (positiveCountInterval N report.interval).Isolates count := by
  change report.toCanonicalCountEnclosure.accepts count = true ↔ _
  simpa [toCanonicalCountEnclosure] using
    report.toCanonicalCountEnclosure.accepts_iff count

/-- Exact argument identity, rational enclosure, and one-integer isolation yield the
maintained canonical positive-height count. -/
theorem exact_positive_count_of_accepts {N : ℕ}
    (report : CanonicalRectangleIndexEnclosure N) (count : ℕ)
    (accepted : report.accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  report.toCanonicalCountEnclosure.exact_count_of_accepts count accepted

/-- Two accepted candidates for one rectangle report are equal. -/
theorem accepted_count_unique {N : ℕ}
    (report : CanonicalRectangleIndexEnclosure N) {left right : ℕ}
    (leftAccepted : report.accepts left = true)
    (rightAccepted : report.accepts right = true) :
    left = right := by
  rw [← report.exact_positive_count_of_accepts left leftAccepted,
    ← report.exact_positive_count_of_accepts right rightAccepted]

end CanonicalRectangleIndexEnclosure

/-- Correctly retaining both the `N` trivial zeros and the pole recovers the count. -/
theorem pole_trivial_two_sign_correction_fixture (m N : ℝ) :
    ((2 * m + N - 1) - N + 1) / 2 = m := by
  ring

/-- Omitting the pole contribution shifts the recovered value by one half. -/
theorem omitted_pole_shifts_by_half_fixture (m N : ℝ) :
    ((2 * m + N) - N + 1) / 2 = m + 1 / 2 := by
  ring

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleCountIsolation
```
