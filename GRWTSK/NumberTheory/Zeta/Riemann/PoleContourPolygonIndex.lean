/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalPolygonIndex
import GRWTSK.NumberTheory.Zeta.Riemann.PoleContourWinding

set_option autoImplicit false

/-!
# The checked rational polygon computes the existing source-image index

Reuse the unchanged tube guard, actual source enclosures, endpoint maps,
free-homotopy transport and exponential-lift index. The former free premise
imageIndex=k is replaced by a derived finite polygon computation. This is NOT
an argument principle or the regional analytic-multiplicity upper bound.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.PoleContourPolygonIndex

open scoped unitInterval
open GRWTSK.Analysis.ComplexAnalysis
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPoleContour

/-- Failure of either the source tube geometry or the polygon chart check is
none; an accepted signed zero is some 0. Source Enclosures remain proof inputs. -/
def evaluate (n : ℕ) (v : List Coordinates) (d : List EdgeData) (y : List Coordinates) :
    Option ℤ :=
  if RationalPoleContourTube.check n v d y then RationalPolygonIndex.evaluate n y else none

theorem evaluate_eq_some_iff (n : ℕ) (v : List Coordinates) (d : List EdgeData)
    (y : List Coordinates) (k : ℤ) :
    evaluate n v d y = some k ↔ RationalPoleContourTube.check n v d y = true ∧
      RationalPolygonIndex.evaluate n y = some k := by
  by_cases h : RationalPoleContourTube.check n v d y = true <;> simp [evaluate, h]

/-- The independent computed sum has the SAME mathematical polygon index.
No relabeling, reordering, reparameterization, or supplied index equation. -/
theorem imageIndex_computed {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    (hy : RationalPolygonIndex.check n y = true) :
    PoleContourWinding.imageIndex h he = RationalPolygonIndex.prefix y n := by
  apply RationalPolygonIndex.winding_eq_prefix hy
    (PoleContourWinding.imageLift h he) (PoleContourWinding.image_closed h he)
  intro t
  rfl

/-- The source's full index is computed; all actual evaluation premises remain. -/
theorem sourceIndex_computed {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    (hy : RationalPolygonIndex.check n y = true) :
    PoleContourWinding.sourceIndex h he = RationalPolygonIndex.prefix y n :=
  (PoleContourWinding.sourceIndex_eq_imageIndex h he).trans (imageIndex_computed h he hy)

/-- Neither a parser flag nor the returned integer proves the source enclosures.
Given those actual proofs, the computed integer equals the existing source index. -/
theorem evaluate_sound {n : ℕ} {v y : List Coordinates} {d : List EdgeData} {k : ℤ}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    (hk : evaluate n v d y = some k) : PoleContourWinding.sourceIndex h he = k := by
  have hy := ((evaluate_eq_some_iff _ _ _ _ _).mp hk).2
  obtain ⟨hc, hp⟩ := (RationalPolygonIndex.evaluate_eq_some_iff _ _ _).mp hy
  exact (sourceIndex_computed h he hc).trans hp

end GRWTSK.RiemannHypothesis.PoleContourPolygonIndex
