/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightUnboundedPrimeJump
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightPsiCapacityNoGoControls
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightUnboundedPrimeJumpControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightPsiCapacityNoGoControls
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Replay the exact prime jump, not the jump of a smoothed observable. -/
theorem concrete_chebyshev_prime_jump
    {p : ℕ} (hp : p.Prime) :
    Chebyshev.psi (p : ℝ) -
        Chebyshev.psi ((p - 1 : ℕ) : ℝ) =
      Real.log (p : ℝ) :=
  chebyshevPsi_nat_prime_jump hp

/-- The integer-centering subtraction changes the prime jump by -1. -/
theorem concrete_psi_error_prime_jump
    {p : ℕ} (hp : p.Prime) :
    psiError (p : ℝ) -
        psiError ((p - 1 : ℕ) : ℝ) =
      Real.log (p : ℝ) - 1 :=
  psiError_nat_prime_jump hp

/-- Replay with both quantifiers: arbitrarily large jump and arbitrarily
late dyadic stage. This is exactly the parent source declaration. -/
theorem concrete_unbounded_adjacent_psi_jump :
    UnboundedAdjacentPsiJump :=
  unboundedAdjacentPsiJump_of_bertrand

/-- The parent conditional fixed-budget no-go no longer needs an
uninterpreted jump theorem.  The PNT envelope and the actual
capacity-to-envelope recurrence are still explicit analytic suppliers. -/
theorem fixed_integerPsiCapacity_rejected_given_PNT_and_recurrence
    (profile : PNTThetaOctaveProfile)
    {H : ℝ} (hH : 0 ≤ H)
    (hrec : ActualPsiCapacityToEnvelopeRecurrence profile H)
    (C : ℝ) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C :=
  no_fixed_integerPsiCapacity_under_classical_inputs
    profile hH hrec unboundedAdjacentPsiJump_of_bertrand C

/-- The existential fixed-capacity form is similarly excluded, under
the same *remaining* analytic inputs and no extra jump premise. -/
theorem integerPsiCapacity_rejected_given_PNT_and_recurrence
    (profile : PNTThetaOctaveProfile)
    {H : ℝ} (hH : 0 ≤ H)
    (hrec : ActualPsiCapacityToEnvelopeRecurrence profile H) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity :=
  no_integerPsiCapacity_under_classical_inputs
    profile hH hrec unboundedAdjacentPsiJump_of_bertrand

/-- Exact remaining obligations for the formal no-go, not new unproved
premises hidden inside the jump construction. -/
def remainingNoGoSuppliers : List String :=
  ["construct a source-identical PNT theta-octave envelope with sublinear norm",
   "derive the actual next-octave envelope recurrence from the integer psi capacity",
   "audit the generated Lean declarations and transitive axioms at exact head",
   "obtain the accepted source-bound replay receipt under issue #100"]

/-- Hostile controls and theorem-scope boundaries. -/
def prohibitedPromotions : List String :=
  ["psi prime jump = log(p)-1 (wrong; log(p)-1 is the psiError jump)",
   "prime p in (2X,4X] -> p-1 outside next integer target octave",
   "a single prime -> unbounded jumps and arbitrary late-stage quantifiers",
   "Bertrand's theorem -> prime in any shorter unsupplied interval",
   "unbounded jumps -> PNT envelope or next-octave quadratic recurrence",
   "source-level written Lean proof -> kernel-accepted proof without replay",
   "false uniform psi capacity -> unconditional Riemann Hypothesis",
   "this no-go -> impossibility of all smoothed or averaged arithmetic routes"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightUnboundedPrimeJumpControls
