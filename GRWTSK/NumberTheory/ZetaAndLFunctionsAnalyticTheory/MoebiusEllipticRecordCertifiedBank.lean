/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The original curve and point-count mathematics retain their upstream
attribution in Record4239Curve.lean.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Explicit two-prime elliptic bank for the actual Möbius endpoint adapter

This file CONSTRUCTS finite good-prime certificates at p=7 and p=19
using the unchanged original record curve source. Discriminant nonvanishing
in ZMod p follows from the original exact integer modulus theorem via
ZMod.intCast_zmod_eq_zero_iff_dvd, without assuming any new good reduction.

This is the bridge from the genuinely selected finite prime factors
to real elliptic-count fibers, not a free arbitrary trace supplier.

The rank-32 Mordell-Weil assertion, local minimal-model comparison,
analytic zero counts, and RH signed endpoint bound are not concluded.
-/

namespace GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.RecordBank

open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.OrderedPrimeGroupAddress

/-- The actual named prime-index values (and proof of primehood). -/
def seven : PrimeIndex := ⟨7, by norm_num⟩
def nineteen : PrimeIndex := ⟨19, by norm_num⟩

/-- Good point-count certificate for the original integral rank-32
candidate model at 7. This supplies a finite group order, not MW rank. -/
def certificateSeven : GoodPointCountCertificate 7 where
  model := recordModel
  prime := by norm_num
  good := by
    rw [recordModel_discriminant]
    intro h
    have hdiv : (7 : ℤ) ∣ Record4239.recordDiscriminant :=
      (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp h
    have hzero : Record4239.recordDiscriminant % 7 = 0 :=
      Int.emod_eq_zero_of_dvd hdiv
    exact Record4239.goodAt7 hzero
  count := Record4239.reducedPointCount 7
  count_eq := (recordModel_count 7).symm

/-- Independent good point-count certificate at 19. -/
def certificateNineteen : GoodPointCountCertificate 19 where
  model := recordModel
  prime := by norm_num
  good := by
    rw [recordModel_discriminant]
    intro h
    have hdiv : (19 : ℤ) ∣ Record4239.recordDiscriminant :=
      (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp h
    have hzero : Record4239.recordDiscriminant % 19 = 0 :=
      Int.emod_eq_zero_of_dvd hdiv
    exact Record4239.goodAt19 hzero
  count := Record4239.reducedPointCount 19
  count_eq := (recordModel_count 19).symm

/-- A *nonempty* certificate bank with two genuinely distinct good primes,
bounded by 19, and both count records belonging to the SAME actual curve.
The source endpoint adapter derives every route by its original least
selected divisor rather than assigning a free prime or a guessed color. -/
def recordBank : GoodPrimeBank recordModel where
  primes := {seven, nineteen}
  bound := 19
  within := by
    intro p hp
    simp only [Finset.mem_insert, Finset.mem_singleton] at hp
    rcases hp with h7 | h19
    · subst p
      norm_num [seven]
    · subst p
      norm_num [nineteen]
  certificate := by
    intro p hp
    simp only [Finset.mem_insert, Finset.mem_singleton] at hp
    rcases hp with h7 | h19
    · subst p
      exact certificateSeven
    · subst p
      exact certificateNineteen
  model_eq := by
    intro p hp
    simp only [Finset.mem_insert, Finset.mem_singleton] at hp
    rcases hp with h7 | h19
    · subst p
      rfl
    · subst p
      rfl

/-- The ACTUAL canonical Möbius endpoint source at every horizon,
compared to the real p=7/19 elliptic trace bank; no omitted indices. -/
theorem record_pickupCross_exact (T : ℝ) :
    GRWTSK.RiemannHypothesis.CCC.pickupCross T =
      GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII.firstTagRoughCross
        recordBank.support T +
      GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII.firstTagMixedCross
        recordBank.support T +
      matchedEllipticPacket recordBank T +
      matchedSignedDefect recordBank T :=
  pickupCross_eq_rough_mixed_elliptic_defect recordBank T

/-- Every selected prime is bounded by 19. Both p=7 and 19 source
certificates survive, but the unmatched m=1 is still charged. -/
theorem record_one_unmatched : recordBank.route 1 = none :=
  recordBank.route_one_none

end GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.RecordBank
