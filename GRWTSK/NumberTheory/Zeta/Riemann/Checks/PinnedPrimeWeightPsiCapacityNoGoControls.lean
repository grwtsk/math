/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Source-level formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiCapacityNoGo
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightPsiCapacityNoGoControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- A classical-PNT source profile for one explicit finite octave envelope.
A later source constructor must obtain this from theta(x)=x+o(x) while proving
the envelope is valid on the same literal octave. -/
structure PNTThetaOctaveProfile where
  envelope : ℕ → ℝ
  nonnegative : ∀ j, 0 ≤ envelope j
  controls :
    ∀ j : ℕ, ∀ u ∈
      Set.Icc (dyadicScale j : ℝ)
        (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ envelope j
  sublinear : SublinearDyadicEnvelope envelope

/-- The remaining recurrence supplier must be derived from the ACTUAL
integerized capacity, its controlled theta octave envelope, and the pinned
psi-theta sqrt bound.  It is not automatic from this record's metadata. -/
def ActualPsiCapacityToEnvelopeRecurrence
    (profile : PNTThetaOctaveProfile) (H : ℝ) : Prop :=
  ∀ C : ℝ,
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C →
      SquareRootForcedQuadraticRecurrence
        profile.envelope (C * primeCoefficientL1Budget^2) H

/-- Conditional no-go: once the independently sourced PNT envelope,
recurrence transport, and prime-jump theorem are supplied, the ACTUAL fixed
integer psi capacity is inconsistent.  No implication to RH is used. -/
theorem no_fixed_integerPsiCapacity_under_classical_inputs
    (profile : PNTThetaOctaveProfile)
    {H : ℝ} (hH : 0 ≤ H)
    (hrec : ActualPsiCapacityToEnvelopeRecurrence profile H)
    (hjump : UnboundedAdjacentPsiJump)
    (C : ℝ) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C := by
  intro hcap
  have hK : 0 ≤ C * primeCoefficientL1Budget^2 :=
    mul_nonneg hcap.1 (sq_nonneg _)
  have hresponse :=
    integerPsiCapacity_to_envelopeQuadraticResponse
      hcap profile.envelope profile.nonnegative profile.controls
  exact
    no_uniform_integerPsiResponse_of_sublinear_recurrence_and_jumps
      profile.envelope hK hH profile.nonnegative
      profile.sublinear (hrec C hcap) hresponse hjump

/-- The existential fixed-capacity program is equally rejected under the
same separately identified classical-source proof obligations. -/
theorem no_integerPsiCapacity_under_classical_inputs
    (profile : PNTThetaOctaveProfile)
    {H : ℝ} (hH : 0 ≤ H)
    (hrec : ActualPsiCapacityToEnvelopeRecurrence profile H)
    (hjump : UnboundedAdjacentPsiJump) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity := by
  rintro ⟨C, hcap⟩
  exact
    no_fixed_integerPsiCapacity_under_classical_inputs
      profile hH hrec hjump C hcap

/-- The fact that a response-to-recurrence adapter is missing is not the same
as a mathematical loophole: the classical PNT/jump argument already rules out
the proposed all-target fixed capacity.  These are obligations for the Lean
proof of the no-go, not permission to continue the false positive supplier. -/
def remainingFormalNoGoSuppliers : List String :=
  ["construct the least current-octave theta envelope and prove its sublinearity from classical PNT",
   "prove the next-octave envelope recurrence from the ACTUAL integer psi capacity and pinned psi-theta sqrt bound",
   "prove the exact Chebyshev prime jump psi(p)-psi(p-1)=log(p)",
   "combine Bertrand's theorem with log divergence to instantiate UnboundedAdjacentPsiJump",
   "replay at exact source head and audit the generated theorem type and all axioms"]

/-- Hostile controls for prohibited mathematical promotions. -/
def prohibitedPromotions : List String :=
  ["PNT without a theorem term -> kernel-accepted profile",
   "Chebyshev theta O(X) -> sublinear theta envelope",
   "nonnegative envelope -> least envelope without a supremum theorem",
   "signed decomposition -> fixed quadratic response capacity",
   "moving the unit floor correction -> source-based cross-scale cancellation",
   "bounded response on next octave -> arbitrarily large prime jumps",
   "conditional RH adapter with a false premise -> evidence for RH",
   "SOURCE_DRAFT or Lean syntax -> accepted kernel theorem",
   "one negative source route -> disproof of RH or disproof of all nonlinear approaches"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightPsiCapacityNoGoControls
