/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalThetaGridRecurrence
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightPsiCapacityNoGoControls
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightPsiCapacityNoGoControls
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- A classical PNT theorem, stated as its exact needed real-theta
error proposition.  This is a named PROP, not a constructed theorem term
from the pinned mathlib. -/
def ThetaPrimeNumberTheorem : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ B : ℝ, ∀ u : ℝ, B ≤ u →
      |thetaError u| ≤ ε * u

/-- Elementary growth of the exact dyadic scale. -/
theorem index_le_dyadicScale (j : ℕ) :
    j ≤ dyadicScale j := by
  induction j with
  | zero =>
      simp [dyadicScale]
  | succ j ih =>
      rw [dyadicScale_succ_eq_two_mul]
      have hp := dyadicScale_pos j
      omega

/-- The classical PNT proposition would imply smallness of the
CANONICAL finite theta-grid envelope. This bridge is an elementary
finite-max argument, not an imported or kernel-accepted PNT theorem. -/
theorem canonicalThetaGridEnvelope_sublinear_of_PNT
    (hPNT : ThetaPrimeNumberTheorem) :
    SublinearDyadicEnvelope canonicalThetaGridEnvelope := by
  intro ε hε
  let δ : ℝ := ε / 4
  have hδ : 0 < δ := by
    dsimp [δ]
    positivity
  obtain ⟨B, hB⟩ := hPNT δ hδ
  obtain ⟨nB, hnB⟩ := exists_nat_gt B
  obtain ⟨nE, hnE⟩ := exists_nat_gt (4 / ε)
  let j₀ : ℕ := max nB nE
  refine ⟨j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  have hindex : j ≤ X := index_le_dyadicScale j
  have hBn : nB ≤ j := le_trans (le_max_left _ _) hj
  have hEn : nE ≤ j := le_trans (le_max_right _ _) hj
  have hXgtB : B < (X : ℝ) := by
    have hcast : (nB : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast hBn.trans hindex
    exact hnB.trans_le hcast
  have hXgtFour : 4 / ε < (X : ℝ) := by
    have hcast : (nE : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast hEn.trans hindex
    exact hnE.trans_le hcast
  have hεX : 4 ≤ ε * (X : ℝ) := by
    have hp : 4 < (X : ℝ) * ε :=
      (div_lt_iff₀ hε).mp hXgtFour
    nlinarith [hp]
  have htwocost : (2 : ℝ) ≤ (ε / 2) * (X : ℝ) := by
    nlinarith [hεX]
  apply canonicalThetaGridEnvelope_le_of_grid_bound
  intro m hm
  have hbounds :
      X ≤ m ∧ m ≤ 2 * X := by
    simpa [X, canonicalThetaGridWindow] using
      (Finset.mem_Icc.mp hm)
  have hXmr : (X : ℝ) ≤ (m : ℝ) := by
    exact_mod_cast hbounds.1
  have hmupper : (m : ℝ) ≤ 2 * (X : ℝ) := by
    exact_mod_cast hbounds.2
  have hB≤m : B ≤ (m : ℝ) :=
    (le_of_lt hXgtB).trans hXmr
  have htheta :
      |thetaError (m : ℝ)| ≤ δ * (m : ℝ) :=
    hB (m : ℝ) hB≤m
  have htheta2 :
      |thetaError (m : ℝ)| ≤ δ * (2 * (X : ℝ)) :=
    htheta.trans (mul_le_mul_of_nonneg_left hmupper hδ.le)
  have htotal :
      |thetaError (m : ℝ)| + 2 ≤ ε * (X : ℝ) := by
    dsimp [δ] at htheta2
    nlinarith [htwocost]
  simpa [X] using htotal

/-- Instantiate the parent's PNT profile with an ACTUAL finite maximum.
Unlike an arbitrary oversized envelope, this object has a proved
next-octave recurrence. -/
def canonicalThetaGridPNTProfile
    (hsmall : SublinearDyadicEnvelope canonicalThetaGridEnvelope) :
    PNTThetaOctaveProfile where
  envelope := canonicalThetaGridEnvelope
  nonnegative := canonicalThetaGridEnvelope_nonnegative
  controls := canonicalThetaGridEnvelope_controls_real_octave
  sublinear := hsmall

/-- The parent's previously open recurrence adapter is now supplied
for this PARTICULAR canonical finite maximum. The residual H does not
depend on C. -/
theorem actualIntegerPsiCapacity_to_canonicalGridRecurrence
    (hsmall : SublinearDyadicEnvelope canonicalThetaGridEnvelope) :
    ActualPsiCapacityToEnvelopeRecurrence
      (canonicalThetaGridPNTProfile hsmall)
      canonicalThetaGridRootBudget := by
  intro C hcap
  exact integerPsiCapacity_to_canonicalThetaGridRecurrence hcap

/-- Fixed-budget contradiction, conditional only on the canonical grid
envelope's sublinearity; the jump and recurrence are source-derived. -/
theorem no_fixed_integerPsiCapacity_of_canonicalGridSublinear
    (hsmall : SublinearDyadicEnvelope canonicalThetaGridEnvelope)
    (C : ℝ) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C := by
  exact no_fixed_integerPsiCapacity_under_classical_inputs
    (canonicalThetaGridPNTProfile hsmall)
    canonicalThetaGridRootBudget_nonnegative
    (actualIntegerPsiCapacity_to_canonicalGridRecurrence hsmall)
    unboundedAdjacentPsiJump_of_bertrand C

/-- Existential uniform fixed-budget form, conditional on the same
single (classically true) sublinearity proposition. -/
theorem no_integerPsiCapacity_of_canonicalGridSublinear
    (hsmall : SublinearDyadicEnvelope canonicalThetaGridEnvelope) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity := by
  exact no_integerPsiCapacity_under_classical_inputs
    (canonicalThetaGridPNTProfile hsmall)
    canonicalThetaGridRootBudget_nonnegative
    (actualIntegerPsiCapacity_to_canonicalGridRecurrence hsmall)
    unboundedAdjacentPsiJump_of_bertrand

/-- Strongest local endpoint, still CONDITIONAL on the named classical
PNT proposition, for which this source packet has no proof term. -/
theorem no_integerPsiCapacity_of_namedPNT
    (hPNT : ThetaPrimeNumberTheorem) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity := by
  exact no_integerPsiCapacity_of_canonicalGridSublinear
    (canonicalThetaGridEnvelope_sublinear_of_PNT hPNT)

/-- Explicitly remaining arithmetic, trust, and replay obligations. -/
def remainingCanonicalEnvelopeObligations : List String :=
  ["import or prove the classical theta prime number theorem at the exact pinned revision",
   "elaborate and kernel-check the finite sup and capacity-to-recurrence source",
   "audit the pre-existing abstract dyadic bootstrap and prime-jump source",
   "obtain exact-head clean replay and generated declaration/axiom report under #100"]

/-- Hostile acceptance guards. -/
def prohibitedPromotions : List String :=
  ["an arbitrary loose upper envelope satisfies the next-octave recurrence",
   "a pointwise next bound automatically controls an un-attained supremum",
   "the real theta staircase equals its integer grid without floor allowance",
   "Chebyshev theta O(X) implies the prime number theorem",
   "a named PNT proposition is already inhabited by a kernel term",
   "a conditional not-capacity theorem proves the Riemann Hypothesis",
   "false fixed psi capacity can be used as a positive RH supplier",
   "draft source compiles because it was committed without Lean/Lake execution"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls
