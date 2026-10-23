/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndChebyshevThetaPort
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.ExternalPNTAndChebyshevThetaPortControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls

/-- Replay the actual all-real source comparison, including endpoints. -/
theorem replay_sourcePrimeLogSum_eq_localTheta (x : ℝ) :
    externalPNTAndPrimeLogSum x = Chebyshev.theta x :=
  externalPNTAndPrimeLogSum_eq_theta x

/-- PNT and the source proposition have the same exact mathematical
strength after the finite-index comparison; proof provenance is separate. -/
theorem replay_PNTAndAsymptotic_iff_namedThetaPNT :
    ExternalPNTAndChebyshevAsymptotic ↔ ThetaPrimeNumberTheorem :=
  externalPNTAndAsymptotic_iff_thetaPNT

/-- If the exact external PNT theorem term is eventually imported through
a compatible source-preserving port, the existing no-go consumes it
without a new mathematical hypothesis. This is a CONDITIONAL theorem. -/
theorem no_integerPsiCapacity_of_externalPNTAnd_proof
    (hExternal : ExternalPNTAndChebyshevAsymptotic) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity :=
  no_integerPsiCapacity_of_namedPNT
    (externalPNTAndAsymptotic_to_thetaPNT hExternal)

/-- Unconditional metadata equality is not proof of external theorem
admission, and no imported PNT theorem term inhabits the proposition. -/
def remainingSourcePortObligations : List String :=
  ["resolve cross-version theorem-term import or reprove chebyshev_asymptotic in local pinned Mathlib",
   "audit external PrimeNumberTheoremAnd proof closure and dependencies at exact source revision",
   "verify the PNTAnd finite source sum remains equal to Chebyshev.theta at the local pin",
   "obtain accepted Lean elaboration/axiom report and exact-head immutable replay #100",
   "retain not-capacity as a negative audit of one false fixed response route"]

/-- Hostile nonimplication ledger; these strings confer NO proof authority. -/
def prohibitedPromotions : List String :=
  ["external filename or theorem label -> proof of ExternalPNTAndChebyshevAsymptotic",
   "PNTAnd Lean 4.21 source imports into local Lean 4.33 without compatibility checking",
   "Chebyshev theta O(x) -> theta(x) ~ x",
   "asymptotic equivalence -> pointwise equality for every x",
   "equality of source prime index sets -> proof of prime number theorem",
   "conditional not-capacity -> unconditional not-capacity without accepted PNT proof",
   "false fixed psi capacity -> valid RH theorem supplier",
   "negative no-go for one uniform response -> impossibility of all smoothed approaches",
   "SOURCE_DRAFT -> KERNEL_CHECKED or accepted replay without running Lean/Lake"]

end GRWTSK.RiemannHypothesis.Checks.ExternalPNTAndChebyshevThetaPortControls
