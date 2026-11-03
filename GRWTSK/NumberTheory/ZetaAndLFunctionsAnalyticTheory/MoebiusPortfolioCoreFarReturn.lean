/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathematical source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUnifiedObservationPortfolio
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedCoreFarCommonEnergy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact source portfolio -> BOTH competing original RH-facing residuals

The current UnifiedObservationPortfolio preserves the ACTUAL
original signed cross through several independent exact ledgers:
finite source-atom decoder, integer rounding, radius energy,
elliptic matched plus signed residual, and Putnam sparse plus
dense signed residual. Its pointwise MINIMUM is a valid upper
of the full pickupCross ONLY with the original prime and
decoder ErrorCertificate hypotheses.

This module REUSES that actual theorem once, and transports
it to the two DIFFERENT original arithmetic partitions:
  F_B(J)=farReducedOrLongCross(B,empty,J)
  C_*(T_J)=fixedCompensatedCore(T_J).
The correct inequalities are:
  F_B(J) <= Portfolio(T_J)+|incident|+|short|+|close|
  C_*(T_J) <= Portfolio(T_J)+fixedCrossOriginalAbsoluteBill(T_J).
All mixed signed terms, opposite pair orientations and
original coefficient squareful zeros remain in their
original ledger. The diagonal does not reappear in
the compensated core cost.

The original actual signed cost fixedCrossOriginalAbsoluteBill
is bounded by the earlier TRUE gap/weak/gcd absolute
source estimates, without any RH-level arithmetic
assumption. But the portfolio's own arithmetic growth
is still the RH-strength unproved premise.
No new RH theorem or finite sampled proof is asserted.
-/

namespace GRWTSK.NumberTheory.Moebius.PortfolioCoreFarReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio
open GRWTSK.NumberTheory.Moebius.FixedCoreFarCommonEnergy
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison

universe u

/-- The full original portfolio bounds the COMPLETE genuine
original signed FAR residual plus its THREE distinct paid
off-diagonal packet magnitudes. No source mask is replaced
by an elliptic or finite-phase model. -/
theorem far_le_portfolio_plus_original_paid
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (E : GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (eps : ℝ)
    (B : PrimeBand) (J : ℕ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta (dyadicTime J)) :
    farReducedOrLongCross B ∅ J ≤
      sourcePortfolioUpper E phase decode eta eps (dyadicTime J)
        depth primes +
      |collarIncidentCross B ∅ J| +
      |shortRatioCross B ∅ J| +
      |reducedCloseCross B ∅ J| := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  have hUpper := cross_le_sourcePortfolioUpper E phase decode
    eta eps hT depth primes hp hcert
  have hSource := pickupCross_eq_paid_add_far B J
  have hi := (abs_le.mp (le_refl |collarIncidentCross B ∅ J|)).1
  have hs := (abs_le.mp (le_refl |shortRatioCross B ∅ J|)).1
  have hq := (abs_le.mp (le_refl |reducedCloseCross B ∅ J|)).1
  linarith

/-- The SAME portfolio bounds the ORIGINAL deterministic
fixed compensated core, but pays its own exact Putnam-gap,
weak-overlap and high-gcd signed bill. No extra diagonal
is charged; fixedCrossOriginalAbsoluteBill is a separate
source-certified positive envelope, not the FAR selector. -/
theorem fixed_core_le_portfolio_plus_fixed_cross_bill
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (E : GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (eps : ℝ) (J : ℕ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta (dyadicTime J)) :
    fixedCompensatedCore (dyadicTime J) ≤
      sourcePortfolioUpper E phase decode eta eps (dyadicTime J)
        depth primes +
      fixedCrossOriginalAbsoluteBill (dyadicTime J) := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  have hUpper := cross_le_sourcePortfolioUpper E phase decode
    eta eps hT depth primes hp hcert
  have hSource := originalCross_eq_fixed_core_add_defect J
  have hBill := fixed_core_cross_defect_abs_le_original_bill J
  have hLower := neg_le_of_abs_le hBill
  linarith

/-- A single fully source-grounded portfolio certificate
transfers to BOTH original RH-facing signed sources
simultaneously, with no hidden common-mask premise and
without claiming asymptotic bounds for the portfolio. -/
theorem portfolio_bounds_far_and_fixed_core
    {Phase : Type u} {W : WeierstrassCurve ℤ}
    (E : GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (eps : ℝ)
    (B : PrimeBand) (J : ℕ)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta (dyadicTime J)) :
    farReducedOrLongCross B ∅ J ≤
      sourcePortfolioUpper E phase decode eta eps (dyadicTime J)
        depth primes +
      |collarIncidentCross B ∅ J| +
      |shortRatioCross B ∅ J| +
      |reducedCloseCross B ∅ J| ∧
    fixedCompensatedCore (dyadicTime J) ≤
      sourcePortfolioUpper E phase decode eta eps (dyadicTime J)
        depth primes +
      fixedCrossOriginalAbsoluteBill (dyadicTime J) := by
  constructor
  · exact far_le_portfolio_plus_original_paid E phase decode eta
      eps B J depth primes hp hcert
  · exact fixed_core_le_portfolio_plus_fixed_cross_bill
      E phase decode eta eps J depth primes hp hcert

end GRWTSK.NumberTheory.Moebius.PortfolioCoreFarReturn
