/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseReducedPrimeDilationCancellation
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupDyadicCoarseBounds
import Mathlib

/-!
# Forced signed compensation outside a negative prime-dilation sector

This module addresses the ORIGINAL RH Möbius pickupCross rather than
an elliptic surrogate or a newly assigned source coefficient.

The previously constructed reduced-ratio dense core is exactly the
negative prime-dilation sector PLUS its actual signed complement R.
That prime-dilation sector is potentially EXPONENTIALLY NEGATIVE.
Since the complete original causal Gram is positive semidefinite,
pickupCross is bounded below by minus its original diagonal. The
three independently controlled sparse sectors have explicit
all-positive-rate absolute bounds.

Consequently the signed complement R has the new UNCONDITIONAL
source-bound forced lower compensation

  R(ε,T) >= credit(ε,T) - 2*T^2
             - 96/ε^2 * exp(ε*T),

where credit = -primeDilationCorePacket >= 0.
This is NOT a proof that R is small. On the contrary, classical
unconditional PNT and the original real causal Gram show on paper
that credit >= c*exp(T/2)/T for all sufficiently large T at
every fixed 0<ε<1/2, so R cannot satisfy the previously proposed
all-positive-rate upper bound on ANY unbounded fixed scale set.

The PNT-to-credit analytic bridge and the ultimate no-go growth
statement are recorded in the companion review; they are NOT
claimed as kernel-verified Lean theorems in this module.
The Lean declarations below prove the complete FINITE
signed compensation identity and its quantitative necessary bound
using only the existing exact source and existing paid sectors.
The canonical RH is not proved or disproved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeDilationForcedCompensation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation
open GRWTSK.NumberTheory.Moebius.PickupDyadicCoarseBounds

/-- The true sign-controlled source credit, NOT a new positive
replacement for the full signed Möbius energy. -/
def primeDilationCredit (A Q : Finset ℕ) (T : ℝ) : ℝ :=
  -primeDilationCorePacket A Q T

/-- Positive credit follows from the original Möbius prime multiplication
and the nonnegative original causal response Gram. -/
theorem primeDilationCredit_nonneg
    (A Q : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ primeDilationCredit A Q T := by
  unfold primeDilationCredit
  exact neg_nonneg.mpr (primeDilationCorePacket_nonpos A Q T hT)

/-- EXACT identity for the entire original dense remainder after
removing all three sparse sectors and the original negative
prime-dilation sector. Both original pair orientations remain. -/
theorem outside_eq_credit_add_original_minus_sparse
    (A Q : Finset ℕ) (T : ℝ) :
    outsidePrimeDilationCorePacket A Q T =
      primeDilationCredit A Q T + pickupCross T -
        endpointGapSetCross A T -
        endpointRatioOutsideGapCross A T -
        endpointRationalSlopeOutsideGapRatioCross A Q T := by
  have hsplit := pickupCross_eq_gap_ratio_slope_reduced A Q T
  have hdense := reducedCore_eq_primeDilation_add_outside A Q T
  unfold primeDilationCredit
  linarith

/-- Positivity of the COMPLETE original Möbius Gram forces the outside
signed remainder to compensate for the removed negative prime edges,
up to the original diagonal and the three SPARSE signed sectors.
No positivity is assumed of R itself. -/
theorem outside_lower_of_credit_with_original_sparse
    (A Q : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    primeDilationCredit A Q T - 2 * T ^ 2 -
      |endpointGapSetCross A T| -
      |endpointRatioOutsideGapCross A T| -
      |endpointRationalSlopeOutsideGapRatioCross A Q T| ≤
        outsidePrimeDilationCorePacket A Q T := by
  have hcross := pickupCross_lower hT
  have hsource := outside_eq_credit_add_original_minus_sparse A Q T
  have hgap := le_abs_self (endpointGapSetCross A T)
  have hratio := le_abs_self (endpointRatioOutsideGapCross A T)
  have hslope := le_abs_self (endpointRationalSlopeOutsideGapRatioCross A Q T)
  linarith

/-- The original source's T-dependent sparse schedule is retained
without changing its exponent or any of its three index filters. -/
def scheduledCredit (ε T : ℝ) : ℝ :=
  primeDilationCredit
    (putnamRateGapSet ε T)
    (putnamSlopeParameterSet ε T) T

def scheduledOutside (ε T : ℝ) : ℝ :=
  outsidePrimeDilationCorePacket
    (putnamRateGapSet ε T)
    (putnamSlopeParameterSet ε T) T

/-- Exact original-source identity for the negative credit plus
the three previously paid sparse sectors at every cutoff. -/
theorem scheduledOutside_eq_credit_add_original_minus_sparse
    (ε T : ℝ) :
    scheduledOutside ε T =
      scheduledCredit ε T + pickupCross T -
        endpointGapSetCross (putnamRateGapSet ε T) T -
        endpointRatioOutsideGapCross (putnamRateGapSet ε T) T -
        endpointRationalSlopeOutsideGapRatioCross
          (putnamRateGapSet ε T)
          (putnamSlopeParameterSet ε T) T :=
  outside_eq_credit_add_original_minus_sparse
    (putnamRateGapSet ε T)
    (putnamSlopeParameterSet ε T) T

/-- Every sign, branch and original source cutoff is retained. The
three existing sparse absolute bounds contribute 32+32+32,
whereas the complete original Gram lower bound costs only 2*T^2.

This is a genuinely unconditional QUANTITATIVE lower bound for R in
terms of the independently observable prime-dilation credit.
It is NOT an upper bound or RH-strength supplier. -/
theorem scheduledOutside_forced_compensation
    (ε T : ℝ) (hε : 0 < ε) (hT : 0 ≤ T) :
    scheduledCredit ε T - 2 * T ^ 2 -
        (96 / ε ^ 2) * Real.exp (ε * T) ≤
      scheduledOutside ε T := by
  have hlower := outside_lower_of_credit_with_original_sparse
    (putnamRateGapSet ε T) (putnamSlopeParameterSet ε T) hT
  have hg := putnam_sparse_gap_all_rate ε hε hT
  have hr := putnam_ratio_outside_gap_all_rate ε hε hT
  have hs := putnam_rationalSlope_outside_gap_ratio_all_rate ε hε hT
  change
    scheduledCredit ε T - 2 * T ^ 2 -
      (96 / ε ^ 2) * Real.exp (ε * T) ≤
      scheduledOutside ε T
  unfold scheduledCredit scheduledOutside
  have hsum :
      |endpointGapSetCross (putnamRateGapSet ε T) T| +
      |endpointRatioOutsideGapCross (putnamRateGapSet ε T) T| +
      |endpointRationalSlopeOutsideGapRatioCross
          (putnamRateGapSet ε T)
          (putnamSlopeParameterSet ε T) T|
       ≤ (96 / ε ^ 2) * Real.exp (ε * T) := by
    calc
      _ ≤ (32 / ε ^ 2) * Real.exp (ε * T) +
          (32 / ε ^ 2) * Real.exp (ε * T) +
          (32 / ε ^ 2) * Real.exp (ε * T) :=
        add_le_add (add_le_add hg hr) hs
      _ = _ := by ring
  linarith

/-- Any large TRUE prime-credit observation above the explicitly paid
diagonal and sparse budgets forces R above a proposed positive-rate
allowance at that same actual scale. This is a finite, fully
quantified obstruction, not an assumed bound on R. -/
theorem outside_exceeds_rate_of_prime_credit
    (ε T C : ℝ) (hε : 0 < ε) (hT : 0 ≤ T)
    (hcredit :
      2 * T ^ 2 +
        (96 / ε ^ 2) * Real.exp (ε * T) +
        C * Real.exp (ε * T) < scheduledCredit ε T) :
    C * Real.exp (ε * T) < scheduledOutside ε T := by
  have hforce := scheduledOutside_forced_compensation ε T hε hT
  linarith

/-- The CORRECTED, genuinely compensated source is R-credit,
which is exactly the old signed dense core, not the overly strong
positive outside-only obligation. This is a mathematical identity,
not an independent proof of its rate bound. -/
theorem scheduledOutside_sub_credit_eq_original_core
    (ε T : ℝ) :
    scheduledOutside ε T - scheduledCredit ε T =
      endpointDenseReducedRatioCoreCross
        (putnamRateGapSet ε T)
        (putnamSlopeParameterSet ε T) T := by
  have h := reducedCore_eq_primeDilation_add_outside
    (putnamRateGapSet ε T) (putnamSlopeParameterSet ε T) T
  unfold scheduledOutside scheduledCredit primeDilationCredit
  linarith

/-- The mathematically correct BALANCED rate supplier. The full
negative prime packet must be paid with the same sign as the
positive outside residual. This is merely a reformulation of the
original dense-core obligation; the required SIGNED cancellation
remains unproved. -/
def BalancedPrimeDilationAllRateOn (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        scheduledOutside ε T - scheduledCredit ε T ≤
          C * Real.exp (ε * T)

/-- Exact equality of the proper compensated goal and the earlier
SOURCE-EXACT reduced-ratio-core all-rate proposition on the same
FIXED scale set G. Unlike the impossible outside-only criterion,
the net signed difference retains its full original cancellation. -/
theorem balancedPrimeDilationAllRateOn_iff_original_core
    (G : Set ℝ) :
    BalancedPrimeDilationAllRateOn G ↔
      DenseReducedRatioCoreAllRateOn G := by
  constructor
  · intro h ε hε
    obtain ⟨C, R, hC, hR, hb⟩ := h ε hε
    refine ⟨C, R, hC, hR, ?_⟩
    intro T hG hTR
    rw [← scheduledOutside_sub_credit_eq_original_core ε T]
    exact hb T hG hTR
  · intro h ε hε
    obtain ⟨C, R, hC, hR, hb⟩ := h ε hε
    refine ⟨C, R, hC, hR, ?_⟩
    intro T hG hTR
    rw [scheduledOutside_sub_credit_eq_original_core ε T]
    exact hb T hG hTR

/-- A correct RH conditional consumer. This source DOES NOT prove
BalancedPrimeDilationAllRateOn or the canonical Riemann Hypothesis.
It only removes the overstrong outside-only obligation. -/
theorem riemannHypothesis_of_balanced_prime_dilation_good_scales
    {G : Set ℝ}
    (hG : AffineFrequent G)
    (hbalanced : BalancedPrimeDilationAllRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_dense_reduced_ratio_core_good_scales
    hG ((balancedPrimeDilationAllRateOn_iff_original_core G).mp
      hbalanced)

end GRWTSK.NumberTheory.Moebius.PrimeDilationForcedCompensation
