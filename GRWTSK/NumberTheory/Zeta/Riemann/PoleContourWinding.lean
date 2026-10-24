/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.ExponentialLoopIndex
import GRWTSK.NumberTheory.Zeta.Riemann.PoleContourHomotopy

set_option autoImplicit false

/-!
# Checked analytic and surrogate contour images have the same integer loop index

Consume the EXISTING global punctured free-loop homotopy, not a fresh winding
invariance premise. Both endpoint maps keep the old complete dyadic traversal.
Actual source enclosures and all upstream checks remain required. The surrogate
index is still noncomputable; no rational winding algorithm, contour-integral
identity, argument principle, or regional upper count is supplied here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.PoleContourWinding

open scoped unitInterval
open ContinuousMap
open GRWTSK.Analysis.ComplexAnalysis
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open ExponentialLoopIndex RationalPoleContour CriticalStripHeightDescent

noncomputable section

def sourceLift {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) : C(I, Punctured) :=
  let hv := (RationalPoleContourTube.check_iff_valid _ _ _ _).mp h
  let hl := checked_lengths hv.1
  PolygonFreeHomotopy.sourceLift poleNormalizedZeta differentiable_poleNormalizedZeta.continuous
    hl.1 (PoleContourHomotopy.vertices v) (PoleContourHomotopy.vertices y)
    (PoleContourHomotopy.checked_cells h he)

def imageLift {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) : C(I, Punctured) :=
  let hv := (RationalPoleContourTube.check_iff_valid _ _ _ _).mp h
  let hl := checked_lengths hv.1
  PolygonFreeHomotopy.polygonLift poleNormalizedZeta differentiable_poleNormalizedZeta.continuous
    hl.1 (PoleContourHomotopy.vertices v) (PoleContourHomotopy.vertices y)
    (PoleContourHomotopy.checked_cells h he)

@[simp] theorem source_value {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) (t : I) :
    (sourceLift h he t).1 = PoleContourHomotopy.sourceLoop n v t := rfl

@[simp] theorem image_value {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) (t : I) :
    (imageLift h he t).1 = PoleContourHomotopy.imageLoop n y t := rfl

theorem source_closed {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) :
    sourceLift h he 0 = sourceLift h he 1 := by
  have hc := (checked_lengths ((RationalPoleContourTube.check_iff_valid _ _ _ _).mp h).1).2.2.2
  apply Subtype.ext
  simp only [source_value, PoleContourHomotopy.sourceLoop, PolygonFreeHomotopy.sourceMap,
    PolygonFreeHomotopy.polygon_start, PolygonFreeHomotopy.polygon_finish,
    PoleContourHomotopy.vertices, hc]

theorem image_closed {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) :
    imageLift h he 0 = imageLift h he 1 := by
  have hc := ((RationalPoleContourTube.check_iff_valid _ _ _ _).mp h).2.2.1
  apply Subtype.ext
  simp only [image_value, PoleContourHomotopy.imageLoop, PolygonFreeHomotopy.polygon_start,
    PolygonFreeHomotopy.polygon_finish, PoleContourHomotopy.vertices, hc]

/-- The index of the ACTUAL analytic source image along the full old polygon. -/
def sourceIndex {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) : ℤ :=
  winding (sourceLift h he) (source_closed h he)

/-- Mathematical index of the exact rational polygon, NOT a computed crossing sum. -/
def imageIndex {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) : ℤ :=
  winding (imageLift h he) (image_closed h he)

/-- No supplied invariance field: use the already constructed STANDARD free
homotopy and the new independently derived exponential-lift invariant. -/
theorem sourceIndex_eq_imageIndex {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) :
    sourceIndex h he = imageIndex h he :=
  winding_homotopy (source_closed h he) (image_closed h he)
    (PoleContourHomotopy.puncturedHomotopy h he)

/-- A proposed integer is transported only after its identification with the
SAME mathematical surrogate index. This premise is not a Boolean label. -/
theorem sourceIndex_eq_of_image {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    {k : ℤ} (hk : imageIndex h he = k) : sourceIndex h he = k :=
  (sourceIndex_eq_imageIndex h he).trans hk

/-- An exact constant surrogate gives index zero by its continuous constant log. -/
theorem imageIndex_zero_of_constant {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    {z : ℂ} (hz : z ≠ 0) (hconstant : ∀ t, PoleContourHomotopy.imageLoop n y t = z) :
    imageIndex h he = 0 := by
  apply winding_zero_of_closed_log _ _ (ContinuousMap.const I (Complex.log z))
  · intro t
    rw [image_value, hconstant t]
    exact Complex.exp_log hz
  · rfl

/-- This is a zero winding result, not an interior zero-count result. -/
theorem sourceIndex_zero_of_constant {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    {z : ℂ} (hz : z ≠ 0) (hconstant : ∀ t, PoleContourHomotopy.imageLoop n y t = z) :
    sourceIndex h he = 0 :=
  sourceIndex_eq_of_image h he (imageIndex_zero_of_constant h he hz hconstant)

end
end GRWTSK.RiemannHypothesis.PoleContourWinding
