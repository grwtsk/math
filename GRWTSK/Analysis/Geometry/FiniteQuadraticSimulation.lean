/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib/GRWTSK work retains original authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteQuadraticMidpointError
import GRWTSK.Analysis.Geometry.FiniteQuadraticContactHeat

set_option autoImplicit false
noncomputable section

/-!
# Source-identified finite quadratic simulation theorem

A single actual real quadratic source produces:
1. exact left/right patch contact at the interior midpoint,
2. a compatible positive-metric harmonic seam,
3. an injective three-observation/three-control decoder,
4. an algebraic identity return with exact finite trace moments,
5. quantitative *separately named* observation and seam-error bounds.

The source is the actual quadratic segment built from `x`; no arbitrary
trace matrix, fitted zero source, or invented boundary quotient is used.
The decoder return is algebraic; this theorem does NOT construct a
geometric monodromy/closed geodesic, prove a sheaf-global spectral
identification, or prove RH.
-/

namespace GRWTSK.Analysis.Geometry.FiniteQuadraticMidpointDecoder

open GRWTSK.Analysis.Geometry.QuadraticBezierContact
open GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph
open GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge
open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

/-- A genuinely constructed finite simulation packet for one *source*
with fixed contact orientation, exact source decoding, harmonic true seam,
finite identity-return trace, and exact heat invariance of its true seam. -/
theorem exact_midpoint_simulation
    (x : Controls) (t : ℝ) (n : ℕ) :
    decoderMatrix *ᵥ contactSamples x = x ∧
      (midpointGraph x).seam.Positive ∧
      laplacian ((midpointGraph x).seamValues ()) = 0 ∧
      heat t ((midpointGraph x).seamValues ()) =
        (midpointGraph x).seamValues () ∧
      closedWalkMoment midpointSystem.complexReturnOperator n = (3 : ℂ) := by
  refine ⟨decode_contactSamples x, ?_, ?_, ?_, ?_⟩
  · exact (midpointGraph x).seam_positive
  · exact (midpointGraph x).seamValues_laplacian_zero ()
  · exact (midpointGraph x).heat_seamValues_fixed () t
  · exact midpointSystem_closedWalkMoment n

/-- Quantitative finite certificate: arbitrary sample error can amplify
by a factor 3 in the central source control, while the independent
left/right contact measurement mismatch decays with its *exact* Hodge
factor. A bound on the former is never inferred from the latter. -/
theorem bounded_midpoint_simulation
    (x e : Controls) (ε : ℝ)
    (hε : ∀ i, ‖e i‖ ≤ ε)
    (errorLeft errorRight t : ℝ) :
    ‖(decoderMatrix *ᵥ (contactSamples x + e) - x) 1‖ ≤ 3 * ε ∧
      coboundary
          (heat t ((midpointGraph x).measuredSeam ()
            errorLeft errorRight)) =
        Real.exp (-2 * t) * (errorRight - errorLeft) ∧
      pairing
          (heat t ((midpointGraph x).measuredSeam ()
            errorLeft errorRight))
          (laplacian
            (heat t ((midpointGraph x).measuredSeam ()
              errorLeft errorRight))) =
        (Real.exp (-2 * t)) ^ 2 * (errorRight - errorLeft) ^ 2 := by
  constructor
  · have hresidual := congrFun (decode_contactSamples_add_error x e) (1 : Fin 3)
    rw [hresidual]
    exact decoder_error_control_uniform e ε hε
  constructor
  · exact (midpointGraph x).measuredSeam_heat_coboundary ()
      errorLeft errorRight t
  · exact (midpointGraph x).measuredSeam_heat_energy ()
      errorLeft errorRight t

/-- Negative control: even the exact quadratic contact model admits a
different harmonic reading via common-mode measurement offset.
Consequently its positive Hodge energy is not an injective source code. -/
theorem midpoint_harmonic_observation_not_source (x : Controls) :
    ∃ reading : Cochain0,
      laplacian reading = 0 ∧
        reading ≠ (midpointGraph x).seamValues () := by
  exact (midpointGraph x).exists_harmonic_non_source_observation ()

end GRWTSK.Analysis.Geometry.FiniteQuadraticMidpointDecoder
