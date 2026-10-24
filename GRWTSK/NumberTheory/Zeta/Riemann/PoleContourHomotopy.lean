/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.PolygonFreeHomotopy
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContourTube

set_option autoImplicit false

/-!
# The checked pole contour supplies a global free-loop homotopy

No patch gate, analytic source, rectangle, finite evaluator or enclosure premise
is changed. The old full-cell theorem is consumed, not assumed again. Both
closures and n>0 come from the old finite checks. This construction does NOT
compute winding, prove an argument principle, or supply the regional upper count.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.PoleContourHomotopy

open scoped unitInterval
open ContinuousMap
open GRWTSK.Analysis.ComplexAnalysis
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPoleContour CriticalStripHeightDescent

noncomputable section

def vertices (v : List Coordinates) (i : ℕ) : ℂ := toComplex (pointAt v i)

def sourceLoop (n : ℕ) (v : List Coordinates) : C(I, ℂ) :=
  PolygonFreeHomotopy.sourceMap poleNormalizedZeta
    differentiable_poleNormalizedZeta.continuous n (vertices v)

def imageLoop (n : ℕ) (v : List Coordinates) : C(I, ℂ) :=
  PolygonFreeHomotopy.polygonMap n (vertices v)

/-- No new all-point premise is introduced: the checked tubes already supply it. -/
theorem checked_cells {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) :
    PolygonFreeHomotopy.CellNonzero poleNormalizedZeta n (vertices v) (vertices y) := by
  intro i hi t lam
  exact RationalPoleContourTube.edge_deformation_nonzero h he hi t.2 lam.2

/-- The new parameterized domain is exactly the maintained full-edge carrier. -/
theorem domain_range {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) :
    Set.range (PolygonFreeHomotopy.polygonMap n (vertices v)) = carrier n v := by
  have hn := (checked_lengths ((RationalPoleContourTube.check_iff_valid _ _ _ _).mp h).1).1
  exact PolygonFreeHomotopy.polygon_range hn (vertices v)

/-- A standard Mathlib global homotopy WITH closedness and zero avoidance.
The basepoint is permitted to move; this is not a fixed-endpoint Path.Homotopy. -/
def freeHomotopy {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) :
    HomotopyWith (sourceLoop n v) (imageLoop n y)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) := by
  have hv := (RationalPoleContourTube.check_iff_valid _ _ _ _).mp h
  have hl := checked_lengths hv.1
  exact PolygonFreeHomotopy.freeHomotopy poleNormalizedZeta
    differentiable_poleNormalizedZeta.continuous hl.1 (vertices v) (vertices y)
    (congrArg toComplex hl.2.2.2) (congrArg toComplex hv.2.2.1) (checked_cells h he)

/-- The source slice is literally F composed with the full ordered domain chain. -/
theorem source_endpoint {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) (t : I) :
    freeHomotopy h he (0, t) = poleNormalizedZeta (PolygonFreeHomotopy.polygonMap n (vertices v) t) :=
  (freeHomotopy h he).map_zero_left t

theorem image_endpoint {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) (t : I) :
    freeHomotopy h he (1, t) = imageLoop n y t := (freeHomotopy h he).map_one_left t

/-- Explicit target-space refinement: the whole homotopy is valued in C minus zero. -/
def puncturedHomotopy {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) :=
  let hv := (RationalPoleContourTube.check_iff_valid _ _ _ _).mp h
  let hl := checked_lengths hv.1
  PolygonFreeHomotopy.puncturedHomotopy poleNormalizedZeta
    differentiable_poleNormalizedZeta.continuous hl.1 (vertices v) (vertices y)
    (congrArg toComplex hl.2.2.2) (congrArg toComplex hv.2.2.1) (checked_cells h he)

/-- This is the actual moving basepoint. Rational surrogate vertices need not
be exact evaluations, so fixed-base claims would need an additional argument. -/
theorem basepoint_formula {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d) (lam : I) :
    freeHomotopy h he (lam, 0) =
      PolygonTube.blend (lam : ℝ) (poleNormalizedZeta (vertices v 0)) (vertices y 0) :=
  PolygonFreeHomotopy.moving_basepoint poleNormalizedZeta
    differentiable_poleNormalizedZeta.continuous n (vertices v) (vertices y) lam

end
end GRWTSK.RiemannHypothesis.PoleContourHomotopy
