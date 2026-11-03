/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
No new RH arithmetic premise, new axiom, or claimed all-rate estimate.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticRecordCertifiedBank
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupDyadicCoarseBounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Noncircular signed rate boundary for the actual elliptic-routed pickup

The original source already proves
  pickupEnergy T <= 2 * exp T * T^2
and the exact energy = nonnegative diagonal + pickupCross.
The elliptic fiber construction proved, WITHOUT a premise,
  matchedEllipticPacket B T + fullSignedResidual B T = pickupCross T.
Thus the transported complete SIGNED source has a genuine unconditional
upper bound for every T >= 0, and for all exponents delta > 1. It is NOT
bounded at every positive exponent by these results.

The original residual is also bounded ABOVE by the actual energy
allowance MINUS the full elliptic packet; its potentially large negative
compensation cannot be dropped. The attached integer polynomial
identifies the exact 7/19 occurrence-count shape on complete 133-blocks;
proving the source's actual tag classification and occurrence counting
in Lean is a separate adapter, not a silent hypothesis.

The stronger elementary paper bound 4(exp T-1), classical PNT/Vinogradov-
Korobov improvements, and forced -kappa^2*N^2 residual asymptotic are
given in the companion review, not asserted as newly kernel-verified here.
-/

namespace GRWTSK.NumberTheory.Moebius.EllipticFiberRateBoundary

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.RecordBank
open GRWTSK.NumberTheory.Moebius.PickupDyadicCoarseBounds
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Source-specific upper bound for the COMPLETE original signed packet
with all elliptic trace terms, rough/mixed indices and signed defect.
No rate hypothesis or estimate of the defect is supplied. -/
theorem routed_complete_le_energy
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {T : ℝ} (hT : 0 ≤ T) :
    matchedEllipticPacket B T + fullSignedResidual B T ≤ pickupEnergy T := by
  rw [← pickupCross_eq_elliptic_add_full_residual B T]
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have hdiag := pickupDiagonal_nonneg hT
  linarith

/-- Unconditional rate-one upper envelope with the original source's
polynomial time payment. This is a SIGNED combined estimate, not a
separate positive estimate for either elliptic packet or residual. -/
theorem routed_complete_coarse_upper
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {T : ℝ} (hT : 0 ≤ T) :
    matchedEllipticPacket B T + fullSignedResidual B T ≤
      2 * Real.exp T * T ^ 2 := by
  exact (routed_complete_le_energy B hT).trans
    (pickupEnergy_exponential_allowance hT)

/-- All exponent rates STRICTLY ABOVE one are unconditionally controlled
for EVERY nonnegative T. The gap delta in (0,1] remains OPEN. -/
theorem routed_complete_upper_rate_gt_one
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {δ T : ℝ} (hδ : 1 < δ) (hT : 0 ≤ T) :
    matchedEllipticPacket B T + fullSignedResidual B T ≤
      (4 / (δ - 1) ^ 2) * Real.exp (δ * T) := by
  exact (routed_complete_le_energy B hT).trans
    (pickupEnergy_upper_of_rate_gt_one hδ hT)

/-- The trace packet's full compensation is forced with its sign:
the residual is at most the known energy budget MINUS the trace packet.
A separate absolute-value bound for residual is neither used nor valid
at subquadratic scale for the fixed nonempty 7/19 bank. -/
theorem fullSignedResidual_le_energy_minus_trace
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {T : ℝ} (hT : 0 ≤ T) :
    fullSignedResidual B T ≤
      2 * Real.exp T * T ^ 2 - matchedEllipticPacket B T := by
  have h := routed_complete_coarse_upper B hT
  linarith

/-- Every original chord/curvature allowance is retained as the canonical
source's positive quarter, with NO new endpoint fitting or scale cutoff. -/
theorem endpointSum_coarse_of_routed
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤ 2 * Real.exp T * T ^ 2 + (1 / 4 : ℝ) := by
  have h := endpointSum_le_routed_complete B hT
  have hc := routed_complete_coarse_upper B hT
  linarith

/-- Source-exact nonempty original record bank; the theorem is NOT
conditional on a fictitious existence of elliptic point-count data. -/
theorem recordBank_complete_upper {T : ℝ} (hT : 0 ≤ T) :
    matchedEllipticPacket recordBank T + fullSignedResidual recordBank T ≤
      2 * Real.exp T * T ^ 2 :=
  routed_complete_coarse_upper recordBank hT

/-- The only rates obtained by this existing energy supplier are δ>1. -/
theorem recordBank_upper_rate_gt_one {δ T : ℝ}
    (hδ : 1 < δ) (hT : 0 ≤ T) :
    matchedEllipticPacket recordBank T + fullSignedResidual recordBank T ≤
      (4 / (δ - 1) ^ 2) * Real.exp (δ * T) :=
  routed_complete_upper_rate_gt_one recordBank hδ hT

/-! ## Exact arithmetic fixture for a complete 133-index block -/

/-- Pure count packet built from the actual record trace values -5,-7.
The two arguments are COUNTS of original indices tagged 7 and 19,
not asserted point counts of another elliptic curve. -/
def tracePacketFromTagCounts (sevenCount nineteenCount : ℕ) : ℤ :=
  ((5 : ℤ) * (sevenCount : ℤ) + 7 * (nineteenCount : ℤ)) ^ 2 -
    (25 * (sevenCount : ℤ) + 49 * (nineteenCount : ℤ))

/-- The explicit complete-133-block arithmetic identity. The separate
index-classification theorem must prove that the original least-tag bank
really has 19*k and 6*k source occurrences at cutoff 133*k. -/
theorem tracePacketFromTagCounts_full_blocks (k : ℕ) :
    tracePacketFromTagCounts (19 * k) (6 * k) =
      18769 * (k : ℤ) ^ 2 - 769 * (k : ℤ) := by
  unfold tracePacketFromTagCounts
  push_cast
  ring

/-- Exact finite-count floor expressions for the selected 7 and 19
source occurrences, with the overlapping 133-sector subtracted. -/
def recordCountSeven (N : ℕ) : ℕ := N / 7
def recordCountNineteenOnly (N : ℕ) : ℕ := N / 19 - N / 133

theorem recordCountSeven_full_blocks (k : ℕ) :
    recordCountSeven (133 * k) = 19 * k := by
  unfold recordCountSeven
  omega

theorem recordCountNineteenOnly_full_blocks (k : ℕ) :
    recordCountNineteenOnly (133 * k) = 6 * k := by
  unfold recordCountNineteenOnly
  omega

/-- Complete-block exact polynomial for the unique-prime tagged index
COUNT MODEL. It is a finite counting increment, NOT YET the genuine
bank's matchedEllipticPacket until the least-tag counting bridge is proved. -/
theorem tracePacketFromRecordCounts_full_blocks (k : ℕ) :
    tracePacketFromTagCounts
        (recordCountSeven (133 * k))
        (recordCountNineteenOnly (133 * k)) =
      18769 * (k : ℤ) ^ 2 - 769 * (k : ℤ) := by
  rw [recordCountSeven_full_blocks, recordCountNineteenOnly_full_blocks]
  exact tracePacketFromTagCounts_full_blocks k

end GRWTSK.NumberTheory.Moebius.EllipticFiberRateBoundary
