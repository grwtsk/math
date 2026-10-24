# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fc8951cc96ae40d777e4cd3c5b5bca1c1e8fe2f` · SHA-256 `f3de15f02ca5cb44daa452f8dcfca7390035f45739724a03cbccdc153f63f887`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContourTube
import GRWTSK.NumberTheory.Zeta.Riemann.MirrorCountingRectangle

set_option autoImplicit false

/-!
# Closed-contour positive and hostile controls

A literal square around the removed pole uses the SOURCE value F(1)=1. All four
edges, including closure, are covered and deform without zero to a constant
rational image. This is not a contour enclosing the height-fifteen zero head.
All decisions and source compositions remain NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.PoleContourCoverage

open Set
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalPoleContour CriticalStripHeightDescent

def square : List Coordinates :=
  [(19 / 20, -1 / 20), (21 / 20, -1 / 20), (21 / 20, 1 / 20),
    (19 / 20, 1 / 20), (19 / 20, -1 / 20)]

def poleEdge : EdgeData := ⟨one, 1 / 10, 1 / 2, ⟨one, 0⟩⟩
def squareData : List EdgeData := List.replicate 4 poleEdge
def constantImage : List Coordinates := List.replicate 5 one

theorem square_checked : RationalPoleContour.check 4 square squareData = true := by decide

theorem image_checked :
    RationalPoleContourTube.check 4 square squareData constantImage = true := by decide

theorem square_enclosures : Enclosures 4 squareData := by
  intro i hi
  have hi' : i < 4 := Finset.mem_range.mp hi
  interval_cases i <;> simp [squareData, edgeAt, poleEdge, Holds]

/-- No free source-value enclosure remains in this concrete positive control. -/
theorem whole_square_nonzero :
    ∀ z ∈ RationalPoleContour.carrier 4 square, poleNormalizedZeta z ≠ 0 :=
  RationalPoleContour.check_sound square_checked square_enclosures

/-- The corresponding exact canonical predicate is excluded on every edge. -/
theorem whole_square_no_target :
    ∀ z ∈ RationalPoleContour.carrier 4 square, ¬ NontrivialZetaZero z :=
  RationalPoleContour.no_target_on_carrier square_checked square_enclosures

/-- Every deformation cell, not only t=0,1 or lam=0,1, avoids zero. -/
theorem whole_square_deformation {i : ℕ} (hi : i < 4) {t lam : ℝ}
    (ht : t ∈ Icc (0 : ℝ) 1) (hlam : lam ∈ Icc (0 : ℝ) 1) :
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt square i)) (toComplex (pointAt square (i + 1)))
      (toComplex (pointAt constantImage i)) (toComplex (pointAt constantImage (i + 1))) t lam ≠ 0 :=
  RationalPoleContourTube.edge_deformation_nonzero image_checked square_enclosures hi ht hlam

theorem computed_image_radius : RationalPoleContourTube.imageRadius poleEdge = 3 / 4 := by decide

theorem malformed_lengths_rejected :
    RationalPoleContour.check 4 square (List.replicate 3 poleEdge) = false ∧
    RationalPoleContour.check 4 square (List.replicate 5 poleEdge) = false ∧
    RationalPoleContour.check 4 (square.take 4) squareData = false ∧
    RationalPoleContour.check 0 [one] [] = false := by decide

theorem last_edge_cannot_be_skipped :
    RationalPoleContour.check 4 square
      [poleEdge, poleEdge, poleEdge, ⟨one, 1 / 100, 1 / 2, ⟨one, 0⟩⟩] = false := by decide

theorem changed_external_vertex_rejected :
    RationalPoleContour.check 4
      [(19 / 20, -1 / 20), (6 / 5, 0), (21 / 20, 1 / 20),
        (19 / 20, 1 / 20), (19 / 20, -1 / 20)] squareData = false := by decide

theorem domain_and_image_closure_required :
    RationalPoleContour.check 4
      [(19 / 20, -1 / 20), (21 / 20, -1 / 20), (21 / 20, 1 / 20),
        (19 / 20, 1 / 20), (1, 0)] squareData = false ∧
    RationalPoleContourTube.check 4 square squareData [one, one, one, one, (101 / 100, 0)] = false := by decide

theorem imaginary_image_escape_rejected :
    RationalPoleContourTube.check 4 square squareData [one, (1, 1), one, one, one] = false := by decide

theorem equality_margin_rejected :
    RationalPoleContour.check 4 square
      (List.replicate 4 ⟨one, 1 / 8, 1 / 2, ⟨one, 0⟩⟩) = false := by decide

/-- Passing false data is not an analytic certificate even for a WHOLE contour. -/
def fictitiousData : List EdgeData := List.replicate 4 ⟨one, 1 / 10, 1 / 2, ⟨(2, 0), 0⟩⟩

theorem fictitious_data_pass : RationalPoleContour.check 4 square fictitiousData = true := by decide

theorem fictitious_data_have_no_enclosures : ¬ Enclosures 4 fictitiousData := by
  intro h
  have he := h 0 (by simp)
  norm_num [fictitiousData, edgeAt, Holds, toComplex, one] at he

/-- Coverage is not a simple-Jordan-curve or positive-orientation certificate. -/
theorem degenerate_and_reversed_chains_allowed :
    RationalPoleContour.check 1 [one, one] [⟨one, 0, 1 / 2, ⟨one, 0⟩⟩] = true ∧
    RationalPoleContour.check 4 square.reverse squareData = true := by decide

/-- SYNTHETIC source g(s)=s-1: endpoint nonvanishing alone misses the middle zero. -/
theorem endpoints_do_not_cover_edge :
    (9 / 10 : ℂ) - 1 ≠ 0 ∧ (11 / 10 : ℂ) - 1 ≠ 0 ∧
    PolygonTube.blend (1 / 2) (9 / 10 : ℂ) (11 / 10 : ℂ) - 1 = 0 := by
  norm_num [PolygonTube.blend, Complex.real_smul]

/-- The image seam must use the same vertex: separate nonzero endpoints do not glue. -/
theorem mismatched_image_seam :
    PolygonTube.deformation (fun _ : ℂ => 1) 0 1 1 1 1 1 ≠
      PolygonTube.deformation (fun _ : ℂ => 1) 1 2 2 1 0 1 := by simp

/-- SYNTHETIC identity source: a zero-free entire boundary can surround a zero. -/
def unitSquare : List Coordinates := [(-1, -1), (1, -1), (1, 1), (-1, 1), (-1, -1)]

theorem unit_square_boundary_nonzero :
    ∀ z ∈ RationalPoleContour.carrier 4 unitSquare, z ≠ 0 := by
  rintro z ⟨i, t, ht, rfl⟩ hz
  obtain ⟨i, hi⟩ := i
  have hr := congrArg Complex.re hz
  have him := congrArg Complex.im hz
  interval_cases i <;>
    norm_num [unitSquare, pointAt, toComplex, PolygonTube.blend, Complex.real_smul] at hr him <;>
    linarith

theorem boundary_nonzero_does_not_exclude_interior :
    (∀ z ∈ RationalPoleContour.carrier 4 unitSquare, z ≠ 0) ∧
      (fun z : ℂ => z) 0 = 0 := ⟨unit_square_boundary_nonzero, rfl⟩

/-- The target cutoff is inside the proposed OPEN rectangle, not on its top. -/
theorem counting_rectangle_geometry :
    (MirrorCountingRectangle.vertices 15).length = 5 ∧
    (pointAt (MirrorCountingRectangle.vertices 15) 2).2 = 61 / 4 ∧
    ∀ i ∈ Finset.range 5, 0 < (pointAt (MirrorCountingRectangle.vertices 15) i).1 := by decide

/-- SYNTHETIC off-line coordinates: reflect an omitted left point into the
rectangle without changing its ordinate, including exactly the target height. -/
theorem reflected_cutoff_control :
    (⟨1 / 8, 15⟩ : ℂ) ∉ MirrorCountingRectangle.interior 15 ∧
      criticalReflection (⟨1 / 8, 15⟩ : ℂ) ∈ MirrorCountingRectangle.interior 15 := by
  norm_num [MirrorCountingRectangle.interior, criticalReflection]

/-- The removed pole lies on the bottom edge; using raw zeta would need a
meromorphic pole contribution. The normalized source has value one there. -/
theorem pole_on_counting_bottom :
    PolygonTube.blend (3 / 4) (1 / 4 : ℂ) (5 / 4 : ℂ) = 1 ∧ poleNormalizedZeta 1 = 1 := by
  norm_num [PolygonTube.blend, Complex.real_smul]

end GRWTSK.RiemannHypothesis.Checks.PoleContourCoverage
```
