/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusTwoPrimeRateFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Original signed dense-core dyadic slab: positive/negative mass balance

The exact original source is mu(m)*mu(n)*pickupResponseGram(T,m,n),
with original m,n, cutoff, two orientations, and original
geometricPairMask from TwoPrimeRateFrontier.

For N=2^j and T=j*log 2, restrict BOTH original integer indices
to (N/16,N/4]. The actual arithmetic source is NOT randomized or
replaced by an unsigned kernel.

An unconditional written mathematical proof shows for each fixed
eta in (0,1/2] and ALL rho in [1/2,1-eta] simultaneously:
- both positive and negative original weighted Gram populations
  are >= c*N at all sufficiently large dyadic scales (c>0),
  using only odd squarefree n paired with 2n and finite masks;
- the difference between those two COMPLETE selected populations
  has arbitrary logarithmic-power saving:
       |P_plus-P_minus| <= C_(eta,beta)*N/(1+log N)^beta.
  This uses the independent established unconditional classical
  Mertens log-power theorem, true finite Abel and original
  causal response. It assumes NO strict Mertens power saving,
  fixed-width zeta zero-free strip, or RH.

The mathematical proof is in the companion review. This source
formalizes only finite sign-splitting candidate scripts. Actual
odd-squarefree density, interval Gram integration, Mertens transfer
and uniform-in-rho estimates are named UNPROVED Lean propositions,
NEVER axioms or kernel-certified theorem claims.

This is a proper dyadic slab of the STILL-UNPAID signed R_rho,
not an upper bound for R_rho as a whole. Its saving has leading
exponent ONE. The missing all-positive-rate RH arithmetic bound
remains OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.DenseSlabSignedBalance

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TwoPrimeRateFrontier
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

classical

/-- Original prescribed dyadic horizon, with no numerical change
to the physical-time birth convention. -/
def slabTime (j : ℕ) : ℝ := (j : ℝ) * Real.log 2

/-- Original finite positive integer inventory in the thick
N/16-to-N/4 slab; j may be small, but estimates are eventual. -/
def slabIndices (j : ℕ) : Finset ℕ :=
  Finset.Ioc (2^j / 16) (2^j / 4)

/-- EXACT original reduced source mask, with all its negative cube
packets already taken into account by its source decomposition. -/
def slabPairMask (ρ : ℝ) (j m n : ℕ) : Prop :=
  geometricPairMask (2*ρ-1) (1-ρ) ρ (slabTime j) m n

/-- The literal original signed coefficient product and original
physical-time Gram. All zero squareful source terms remain present. -/
def slabPairValue (j m n : ℕ) : ℝ :=
  moebiusReal m * moebiusReal n *
    pickupResponseGram (slabTime j) m n

/-- The FULL selected signed ordered source, NOT its positive part. -/
def signedSlab (ρ : ℝ) (j : ℕ) : ℝ :=
  ∑ m ∈ slabIndices j, ∑ n ∈ slabIndices j,
    if slabPairMask ρ j m n then slabPairValue j m n else 0

/-- Positive ORIGINAL Möbius product pairs only, for inspecting the
two signed populations without treating either as the full source. -/
def positiveSlabMass (ρ : ℝ) (j : ℕ) : ℝ :=
  ∑ m ∈ slabIndices j, ∑ n ∈ slabIndices j,
    if slabPairMask ρ j m n ∧
         0 < moebiusReal m * moebiusReal n
    then slabPairValue j m n else 0

/-- Magnitude of negative ORIGINAL Möbius product pairs only.
The minus sign is part of the definition, not a free credit. -/
def negativeSlabMass (ρ : ℝ) (j : ℕ) : ℝ :=
  ∑ m ∈ slabIndices j, ∑ n ∈ slabIndices j,
    if slabPairMask ρ j m n ∧
         moebiusReal m * moebiusReal n < 0
    then -slabPairValue j m n else 0

/-- General exact signed coefficient split; no sign hypothesis on
the kernel weight is needed for the algebraic identity. -/
theorem real_pair_signed_split (a k : ℝ) :
    a*k =
      (if 0 < a then a*k else 0) -
        (if a < 0 then -(a*k) else 0) := by
  rcases lt_trichotomy a 0 with ha | ha | ha
  · have hn : ¬0 < a := not_lt.mpr (le_of_lt ha)
    simp [ha, hn]
  · subst a
    simp
  · have hn : ¬a < 0 := not_lt.mpr (le_of_lt ha)
    simp [ha, hn]

/-- The literal source's exact complete ordered signed difference:
all positive AND negative selected pairs are retained. -/
theorem signedSlab_eq_positive_sub_negative (ρ : ℝ) (j : ℕ) :
    signedSlab ρ j =
      positiveSlabMass ρ j - negativeSlabMass ρ j := by
  unfold signedSlab positiveSlabMass negativeSlabMass
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask : slabPairMask ρ j m n
  · simpa [hmask, slabPairValue] using
      real_pair_signed_split
        (moebiusReal m * moebiusReal n)
        (pickupResponseGram (slabTime j) m n)
  · simp [hmask]

/-- Odd actual squarefree SOURCE indices between N/16 and N/8.
Every n here has mu(n)=+1 or -1 and its ORIGINAL 2n has the
opposite sign in (N/8,N/4]. -/
def oddSquarefreeSeeds (j : ℕ) : Finset ℕ :=
  (Finset.Ioc (2^j / 16) (2^j / 8)).filter
    (fun n => Odd n ∧ Squarefree n)

/-- UNPROVED Lean target: elementary square-divisor union count
gives >= 5N/1152 odd squarefree seeds for all j>=16.
No PNT hypothesis is needed for this finite arithmetic input. -/
def OddSquarefreeSeedsLinearTarget : Prop :=
  ∀ j : ℕ, 16 ≤ j →
    5 * 2^j ≤ 1152 * (oddSquarefreeSeeds j).card

/-- UNPROVED Lean target: source exact prefix and finite integration
for the WHOLE selected slab, including the original diagonal,
before any geometric mask or individual pair sign is applied. -/
def OriginalSlabFullGramSquareTarget : Prop :=
  ∀ j : ℕ, 5 ≤ j →
    (∑ m ∈ slabIndices j, ∑ n ∈ slabIndices j,
      slabPairValue j m n) =
      ∫ u in (0 : ℝ)..slabTime j,
        (∑ n ∈ slabIndices j,
          moebiusReal n * pickupResponse n u)^2

/-- UNPROVED Lean target: for every compact rho range bounded away
from 1, BOTH ORIGINAL source signs have linear weighted mass on
all sufficiently large dyadic scales. This is an arithmetic
density theorem, not statistical independence. -/
def BothOriginalSignsLinearUniformTarget : Prop :=
  ∀ η : ℝ, 0 < η → η ≤ 1/2 →
    ∃ c : ℝ, 0 < c ∧
      ∃ j₀ : ℕ, ∀ ρ : ℝ,
        1/2 ≤ ρ → ρ ≤ 1-η →
        ∀ j : ℕ, j₀ ≤ j →
          c * Real.exp (slabTime j) ≤ positiveSlabMass ρ j ∧
          c * Real.exp (slabTime j) ≤ negativeSlabMass ρ j

/-- UNPROVED Lean target: source-preserving conditional transport
of the independently known unconditional classical Mertens
log-power estimate, via finite signed Abel and the original
causal Gram square; NO strict exponent rho<1 is posited. -/
def UniformSlabLogPowerTransferTarget : Prop :=
  ClassicalMertensLogPowerInput →
  ∀ η β : ℝ, 0 < η → η ≤ 1/2 → 0 < β →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ, ∀ ρ : ℝ,
        1/2 ≤ ρ → ρ ≤ 1-η →
        ∀ j : ℕ, j₀ ≤ j →
          |signedSlab ρ j| ≤
            C * Real.exp (slabTime j) /
              (1 + (j : ℝ)) ^ β

/-- UNPROVED Lean target: positive and negative original source
masses are asymptotically equal to ANY fixed inverse log-power,
UNIFORMLY over compact profile ranges. The constants may depend
on η and β, but never on j or on rho in [1/2,1-η]. -/
def UniformRelativeSignedBalanceTarget : Prop :=
  ∀ η β : ℝ, 0 < η → η ≤ 1/2 → 0 < β →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ, ∀ ρ : ℝ,
        1/2 ≤ ρ → ρ ≤ 1-η →
        ∀ j : ℕ, j₀ ≤ j →
          |positiveSlabMass ρ j - negativeSlabMass ρ j| ≤
            C * (positiveSlabMass ρ j + negativeSlabMass ρ j) /
              (1 + (j : ℝ)) ^ β

end GRWTSK.NumberTheory.Moebius.DenseSlabSignedBalance
