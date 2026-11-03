/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseSlabSignedBalance
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusBalancedEndpointRateOne
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete ORIGINAL geometric dense core: signed classical-PNT balance

The ACTUAL source is the original mu(m)*mu(n)*pickupResponseGram,
with exact original 1..floor(exp T) cutoff, both ordered orientations,
the ORIGINAL positive diagonal, the existing full two-prime internal
cube/odd-ratio partition, and the original source geometricPairMask.

The companion complete written mathematical proof establishes for
1/2<=rho<1 and T>=0, with R_rho=the EXACT profileCore:

 |R_rho(T)| <= pickupEnergy(T)+4*T^2
       +16*T*(1+T)*exp(T/2)
       +(64*T+4*T^2)*exp(rho*T).

This follows from:
 X=H-D, Q in [-D,0],
 complete negative odd packet P_- with
 |P_-|<=16T(1+T)exp(T/2),
 and the EXACT THREE discarded geometric pair sectors, with
 sum absolute <=(64T+4T^2)exp(rho*T).
 NO arithmetic power saving, RH, modeled Gram, or invented residual.

The KNOWN unconditional classical quantitative Mertens estimate gives
H(T)<=C_A exp(T)/(1+T)^A for every fixed A>0.
Thus for each fixed eta>0 (eta<=1/2), all rho in [1/2,1-eta]
share an arbitrary log-power source bound on the COMPLETE signed
profileCore. No fixed exponent below one is established.

The genuine odd-squarefree source slab in the preceding module
has P_plus,P_minus>=c*exp T and is contained in the full source.
Therefore both FULL positive and negative population masses have
linear lower bounds, while their difference has arbitrary inverse-
logarithmic relative saving, uniformly away from rho=1.

The finite complete original sign decomposition is written as a
candidate Lean theorem. The full source Gram/packet comparison,
external classical Mertens port, and asymptotic claims remain
UNPROVED Lean Prop targets, NEVER accepted axioms or RH proofs.
-/

namespace GRWTSK.NumberTheory.Moebius.CompleteSignedProfilePNT

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TwoPrimeRateFrontier
open GRWTSK.NumberTheory.Moebius.DenseSlabSignedBalance
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

classical

/-- The full original positive-pair component of the EXACT
selected profileCore, not a hypothetical positive kernel. -/
def fullPositiveMass (ρ T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if geometricPairMask (2*ρ-1) (1-ρ) ρ T m n ∧
           0 < moebiusReal m * moebiusReal n
      then moebiusReal m * moebiusReal n *
          pickupResponseGram T m n
      else 0

/-- Magnitudes of the full original negative-pair components.
No source negative edge is promoted to a positive certificate
without its exact sign being retained here. -/
def fullNegativeMass (ρ T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if geometricPairMask (2*ρ-1) (1-ρ) ρ T m n ∧
           moebiusReal m * moebiusReal n < 0
      then -(moebiusReal m * moebiusReal n *
          pickupResponseGram T m n)
      else 0

/-- The complete original signed source is EXACTLY its
positive minus negative original weighted populations. -/
theorem profileCore_eq_positive_sub_negative (ρ T : ℝ) :
    profileCore ρ T =
      fullPositiveMass ρ T - fullNegativeMass ρ T := by
  unfold profileCore parametricSignedCore
    fullPositiveMass fullNegativeMass
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask : geometricPairMask (2*ρ-1) (1-ρ) ρ T m n
  · simpa [hmask] using
      real_pair_signed_split
        (moebiusReal m * moebiusReal n)
        (pickupResponseGram T m n)
  · simp [hmask]

/-- UNPROVED Lean target: the COMPLETE signed-profile source upper
using no PNT input, just the original physical Gram and already
source-derived absolute payments. -/
def FullOriginalProfileTwoSidedBudgetTarget : Prop :=
  ∀ ρ T : ℝ, (1/2 : ℝ) ≤ ρ → ρ < 1 → 0 ≤ T →
    |profileCore ρ T| ≤
      pickupEnergy T + 4*T^2 +
        16*T*(1+T)*Real.exp (T/2) +
        (64*T+4*T^2)*Real.exp (ρ*T)

/-- UNPROVED Lean target: the real classical arithmetic theorem is
independently established, but its Lean port and exact whole-
source transfer have not been kernel checked here. -/
def FullOriginalProfileAllLogPowerTarget : Prop :=
  ClassicalMertensLogPowerInput →
    ∀ η β : ℝ, 0 < η → η ≤ 1/2 → 0 < β →
      ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
        ∀ ρ T : ℝ, (1/2 : ℝ) ≤ ρ → ρ ≤ 1-η →
          R ≤ T →
          |profileCore ρ T| ≤
            C * Real.exp T / (1+T)^β

/-- UNPROVED Lean target: the original squarefree parity slab
supplies positive and negative ACTUAL full-profile mass,
uniformly in rho bounded away from 1. -/
def BothFullProfileSignsLinearTarget : Prop :=
  ∀ η : ℝ, 0 < η → η ≤ 1/2 →
    ∃ c : ℝ, 0 < c ∧
      ∃ j₀ : ℕ, ∀ ρ : ℝ,
        1/2 ≤ ρ → ρ ≤ 1-η →
        ∀ j : ℕ, j₀ ≤ j →
          c * Real.exp (slabTime j) ≤
            fullPositiveMass ρ (slabTime j) ∧
          c * Real.exp (slabTime j) ≤
            fullNegativeMass ρ (slabTime j)

/-- UNPROVED Lean target: PNT-level source-signed balance of BOTH
linearly large COMPLETE original geometric-core populations.
The resulting exponent is ONE, not any strict sub-one rate. -/
def FullRelativeBalanceAllLogPowersTarget : Prop :=
  ∀ η β : ℝ, 0 < η → η ≤ 1/2 → 0 < β →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ, ∀ ρ : ℝ,
        1/2 ≤ ρ → ρ ≤ 1-η →
        ∀ j : ℕ, j₀ ≤ j →
          |fullPositiveMass ρ (slabTime j) -
            fullNegativeMass ρ (slabTime j)| ≤
          C * (fullPositiveMass ρ (slabTime j) +
               fullNegativeMass ρ (slabTime j)) /
            (1+(j:ℝ))^β

end GRWTSK.NumberTheory.Moebius.CompleteSignedProfilePNT
