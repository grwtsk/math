/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Interfaces.EndpointCorrectedNewtonCandidateCore
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointLogRefinement
import GRWTSK.Analysis.ErrorBounds.RationalAtanhPower

/-!
# Isolated atanh/rounding refinement for the endpoint-corrected candidate

The prior candidate still requires CenterEstimates. This import supplies neither
its Euler--Maclaurin remainder nor its complete finite zeta jet. Existing targets
and the public root remain unchanged. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
