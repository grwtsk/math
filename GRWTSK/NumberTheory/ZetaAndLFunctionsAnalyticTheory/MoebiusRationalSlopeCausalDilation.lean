/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongOddCoprimeDilation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine common dilation of an ORIGINAL rational-slope pair

At an exact rational slope (r,s) the positive ordered pairs
can be written (k*r,k*s). This source proves the exact
SIGNED Möbius factorization and the PREEXISTING causal
time-shift for any multiplier k coprime to both r and s.

  mu(k*r)*mu(k*s)*K_T(k*r,k*s)
   = mu(k)^2*mu(r)*mu(s)/k *
         K_(T-log k)(r,s).

The k-factor is a genuine reciprocal physical-time dilation,
not a chosen kernel replacement. Since mu(k)^2>=0, a
squarefree coprime common multiplier cannot reverse the
original primitive-slope sign; however the full slope
packet also includes non-coprime multipliers and must not
be identified with this subpacket without proving they
vanish (squareful-source condition).

The exact rational-slope grouping and full fourth-order
cancellation remain separate arithmetic obligations.
This is a source-preserving, noncircular partial result,
not a proof of fixed-q ratio-moment decay or GRH.

Lean proof bodies SOURCE PROOF CANDIDATES, native acceptance NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.RationalSlopeCausalDilation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift

/-- Genuine original signed source at a common-dilation pair. -/
def dilatedSignedPair (T : ℝ) (k r s : ℕ) : ℝ :=
  moebiusReal (k*r) * moebiusReal (k*s) *
    pickupResponseGram T (k*r) (k*s)

/-- Signed arithmetic Möbius pair multiplicativity with
EVERY required coprimality guard retained. -/
theorem dilatedMobiusPair_of_coprime
    (k r s : ℕ)
    (hkr : Nat.Coprime k r)
    (hks : Nat.Coprime k s) :
    moebiusReal (k*r)*moebiusReal (k*s) =
      (moebiusReal k)^2 *
        moebiusReal r * moebiusReal s := by
  rw [original_moebius_mul_of_coprime k r hkr,
    original_moebius_mul_of_coprime k s hks]
  ring

/-- Actual physical Gram time-shift AND exact original Möbius
factorization. The full signed k-common-dilation packet retains
its original orientation and natural birth supports. -/
theorem dilatedSignedPair_eq_shifted
    (T : ℝ) (k r s : ℕ)
    (hk : 1 ≤ k) (hr : 1 ≤ r) (hs : 1 ≤ s)
    (hkr : Nat.Coprime k r)
    (hks : Nat.Coprime k s) :
    dilatedSignedPair T k r s =
      (moebiusReal k)^2 *
        moebiusReal r * moebiusReal s *
        (k : ℝ)⁻¹ *
        pickupResponseGram
          (T - Real.log (k : ℝ)) r s := by
  unfold dilatedSignedPair
  rw [dilatedMobiusPair_of_coprime k r s hkr hks,
    pickupResponseGram_mul_timeShift k r s hk hr hs T]
  ring

end GRWTSK.NumberTheory.Moebius.RationalSlopeCausalDilation
