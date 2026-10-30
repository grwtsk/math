import Mathlib
import GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveTrivialZeroAnchor

/-!
# Certified residual composition for adaptive explicit-formula truncation

Copyright (c) 2026 grwtsk contributors. MIT.
Source-level finite error accounting only. The hypotheses must be supplied
by analytic proofs tied to actual zeta-zero data; they are not inferred from
trivial-zero geometry or sofic graph visualization.
Compilation / kernel replay / transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveExplicitFormulaErrorBudget

/-- An explicit record of independently bounded analytic residuals.
The actual estimates are premises and not fields silently defaulting to zero. -/
structure ResidualCertificate where
  omittedNontrivial : ℂ
  omittedTrivial : ℂ
  contour : ℂ
  endpoint : ℂ
  boundNontrivial : ℝ
  boundTrivial : ℝ
  boundContour : ℝ
  boundEndpoint : ℝ
  hNontrivial : ‖omittedNontrivial‖ ≤ boundNontrivial
  hTrivial : ‖omittedTrivial‖ ≤ boundTrivial
  hContour : ‖contour‖ ≤ boundContour
  hEndpoint : ‖endpoint‖ ≤ boundEndpoint

/-- Total residual is an exact source-preserving sum. -/
def ResidualCertificate.total (C : ResidualCertificate) : ℂ :=
  C.omittedNontrivial + C.omittedTrivial + C.contour + C.endpoint

/-- Total budget retains all four analytic-error classes. -/
def ResidualCertificate.budget (C : ResidualCertificate) : ℝ :=
  C.boundNontrivial + C.boundTrivial + C.boundContour + C.boundEndpoint

/-- Triangle inequality transfers the component certificates to the total. -/
theorem ResidualCertificate.norm_total_le_budget
    (C : ResidualCertificate) : ‖C.total‖ ≤ C.budget := by
  unfold ResidualCertificate.total ResidualCertificate.budget
  calc
    ‖C.omittedNontrivial + C.omittedTrivial + C.contour + C.endpoint‖
        ≤ ‖C.omittedNontrivial + C.omittedTrivial + C.contour‖ +
          ‖C.endpoint‖ := norm_add_le _ _
    _ ≤ (‖C.omittedNontrivial + C.omittedTrivial‖ + ‖C.contour‖) +
          ‖C.endpoint‖ := by
            gcongr
            exact norm_add_le _ _
    _ ≤ ((‖C.omittedNontrivial‖ + ‖C.omittedTrivial‖) +
          ‖C.contour‖) + ‖C.endpoint‖ := by
            gcongr
            exact norm_add_le _ _
    _ ≤ C.boundNontrivial + C.boundTrivial + C.boundContour +
          C.boundEndpoint := by
            linarith [C.hNontrivial, C.hTrivial, C.hContour, C.hEndpoint]

/-- A dynamically chosen cutoff is accepted only if the full certified
budget lies below tolerance, not merely the trivial-zero budget. -/
theorem certified_adaptive_error (C : ResidualCertificate)
    (epsilon : ℝ) (h : C.budget ≤ epsilon) :
    ‖C.total‖ ≤ epsilon :=
  (C.norm_total_le_budget).trans h

end GRWTSK.NumberTheory.Zeta.Riemann.AdaptiveExplicitFormulaErrorBudget
