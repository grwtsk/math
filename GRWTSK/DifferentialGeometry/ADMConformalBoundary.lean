/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Conformal-coordinate ADM boundary contraction in dimension three

For a conformal coordinate metric `gᵢⱼ = φ δᵢⱼ`, the coordinate
contraction `∑ᵢ (∂ᵢ gᵢⱼ - ∂ⱼ gᵢᵢ)` equals `-2 ∂ⱼ φ` in dimension three.
The result below is the *finite-index algebra* underlying this observation
in the ADM flux (Bray–Kazaras–Khuri–Stern, arXiv:1911.06754v1, eq. (1.2)).

It is a pointwise algebraic calibration. It is **not** a statement about the
sphere integral, its asymptotic limit, harmonic functions, scalar curvature,
the positive mass theorem, or any RH/GRH positivity functional. Connecting
these requires separate analytical and source-identity theorems.

Source-local review and further work: grwtsk/math issue #1829.
-/

namespace GRWTSK.DifferentialGeometry.ADMConformalBoundary

/-- The three-dimensional conformal ADM coordinate integrand before the
surface integration and the factor `1 / (16 * π)`. The arguments
`dφ i` and `ν j` stand for the coordinate derivatives of the conformal
factor and the normal components, respectively. No differentiability
or normal-length assumption is needed for this finite algebraic identity. -/
def conformalCoordinateDensity (dφ ν : Fin 3 → ℝ) : ℝ :=
  ∑ j : Fin 3,
    ((∑ i : Fin 3, if i = j then dφ i else 0) -
      (∑ _i : Fin 3, dφ j)) * ν j

/-- Exact conformal contraction of the original three-dimensional ADM
boundary integrand. In particular, the density has nonnegative sign when
the outward directional derivative of the conformal factor is nonpositive.
Neither hypothesis nor conclusion asserts nonnegative *general* ADM mass. -/
theorem conformalCoordinateDensity_eq (dφ ν : Fin 3 → ℝ) :
    conformalCoordinateDensity dφ ν =
      -2 * (∑ j : Fin 3, dφ j * ν j) := by
  simp [conformalCoordinateDensity, Fin.sum_univ_three]
  ring

end GRWTSK.DifferentialGeometry.ADMConformalBoundary
