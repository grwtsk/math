import GRWTSK.Algebra.QuarticCubicDiscriminant
import GRWTSK.Algebra.QuarticBaseResolvent

/-!
# Polynomial realization of the quartic adjacency cubic

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The Cubic structure used for the discriminant and the actual
Polynomial defining the base-field resolvent are the same polynomial.
No splitting, separability, or restriction on characteristic is used.
-/

namespace GRWTSK.Algebra.QuarticCubicPolynomialComparison

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticBaseResolvent
open GRWTSK.Algebra.PolygonalQuarticDescent

variable {R : Type*} [CommRing R]

/-- The pinned Mathlib Cubic.toPoly equals the explicit adjacency
resolvent defined in the earlier quartic descent source. -/
theorem adjacencyCubic_toPoly_eq_resolvent (s₁ s₂ s₃ s₄ : R) :
    (adjacencyCubic s₁ s₂ s₃ s₄).toPoly =
      adjacencyResolventFromVieta s₁ s₂ s₃ s₄ := by
  simp only [adjacencyCubic, Cubic.toPoly, adjacencyResolventFromVieta]
  simp only [map_one, map_neg, map_mul, map_sub, map_add]
  ring

/-- The base-field polynomial is literally the polynomial represented
by the cubic structure whose discriminant we studied. -/
theorem baseAdjacencyResolvent_eq_toPoly
    {K : Type*} [Field K] (A B C₀ D : K) :
    baseAdjacencyResolvent A B C₀ D =
      (adjacencyCubic (-A) B (-C₀) D).toPoly := by
  unfold baseAdjacencyResolvent adjacencyResolventOfMonicCoefficients
  exact (adjacencyCubic_toPoly_eq_resolvent (-A) B (-C₀) D).symm

end GRWTSK.Algebra.QuarticCubicPolynomialComparison
