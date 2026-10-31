/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedTwoTermCohomology
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedHodgeShell
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-marked spectral data: the precise sign-gauge obstruction

The original source is the complete signed Mobius incidence at the geometric
cutoff 2^j, and its distinct real-weighted causal response. Its unmarked
two-term differential has the form K_a(i,k)=a_i*a_k for i≠k, K_a(i,i)=0.

For ANY coordinate unit-sign system e_i satisfying e_i²=1, the operator
for the transformed coefficients e_i*a_i is conjugate to the original
operator by the diagonal sign gauge. In particular its abstract kernel,
cokernel and characteristic polynomial cannot distinguish these two
coefficient presentations. This is a genuine information-loss obstruction,
not an arithmetic assertion that e_i*a_i equals Mobius.

A source-marked consumer must retain the original integer coefficient at
each original index and the real response/birth-time observation. The
OpenAI two-point correlation and Anthropic rank-trace methods are external
research precedents only: no source-independent growth, zero-counting,
prismatic comparison, kernel acceptance, or RH theorem is imported here.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicMarkedSignGauge

open GRWTSK.NumberTheory.Moebius.DyadicSignedTwoTermCohomology
open GRWTSK.NumberTheory.Moebius.DyadicSignedHodgeShell
open GRWTSK.NumberTheory.Moebius.DyadicPadicIntCompletion
open GRWTSK.NumberTheory.Moebius.DyadicTwoDeltaCochain
open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift

universe u v
variable {I : Type u} [Fintype I] [DecidableEq I]
variable {R : Type v} [CommRing R]

/-- Preserve the original zero diagonal and all ordered off-diagonal terms. -/
def signedOffDiagonal (a : I → R) (i k : I) : R :=
  if i = k then 0 else a i * a k

/-- The original unweighted signed correlation operator for any coefficient list. -/
def signedOperator (a : I → R) (x : I → R) (i : I) : R :=
  ∑ k : I, signedOffDiagonal a i k * x k

/-- A coordinatewise sign gauge. Involutivity needs an actual proof e_i²=1. -/
def gaugeCoordinates (e : I → R) (x : I → R) (i : I) : R :=
  e i * x i

/-- Every off-diagonal pair transforms by BOTH original endpoint signs.
There is no deletion of the diagonal, repeated-prime zeros or orientations. -/
theorem signedOffDiagonal_gauge (a e : I → R) (i k : I) :
    signedOffDiagonal (fun n => e n * a n) i k =
      e i * signedOffDiagonal a i k * e k := by
  by_cases h : i = k
  · simp [signedOffDiagonal, h]
  · simp only [signedOffDiagonal, if_neg h]
    ring

/-- Conjugation holds at each source coordinate when the chosen signs
square to one. The stronger coefficientwise statement is retained. -/
theorem signedOperator_gauge (a e x : I → R)
    (he : ∀ i, e i * e i = 1) (i : I) :
    signedOperator (fun n => e n * a n) (gaugeCoordinates e x) i =
      e i * signedOperator a x i := by
  simp only [signedOperator, gaugeCoordinates]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  rw [signedOffDiagonal_gauge]
  have h := he k
  calc
    (e i * signedOffDiagonal a i k * e k) * (e k * x k) =
      e i * signedOffDiagonal a i k * (e k * e k) * x k := by ring
    _ = e i * (signedOffDiagonal a i k * x k) := by rw [h]; ring

/-- The gauge itself is lossless if every chosen coordinate sign squares to 1. -/
theorem gaugeCoordinates_involutive (e x : I → R)
    (he : ∀ i, e i * e i = 1) :
    gaugeCoordinates e (gaugeCoordinates e x) = x := by
  funext i
  simp only [gaugeCoordinates]
  rw [← mul_assoc, he i, one_mul]

/-- Exact equality of zero-output spaces up to the given reversible gauge.
This is NOT equality of their embedded source-marked states. -/
theorem signedOperator_zero_iff_gauge (a e x : I → R)
    (he : ∀ i, e i * e i = 1) :
    (∀ i, signedOperator (fun n => e n * a n)
        (gaugeCoordinates e x) i = 0) ↔
      (∀ i, signedOperator a x i = 0) := by
  constructor
  · intro h i
    have hi := signedOperator_gauge a e x he i
    rw [h i] at hi
    have hzero : e i * signedOperator a x i = 0 := hi.symm
    have hne : e i ≠ 0 := by
      intro hz
      have hc := he i
      rw [hz, zero_mul] at hc
      exact one_ne_zero hc.symm
    exact (mul_eq_zero.mp hzero).resolve_left hne
  · intro h i
    rw [signedOperator_gauge a e x he i, h i, mul_zero]

/-- Merely negating every source coefficient leaves the unmarked
incidence IDENTICAL; this is not a sign-preserving source operation. -/
theorem signedOffDiagonal_global_flip (a : I → R) (i k : I) :
    signedOffDiagonal (fun n => -a n) i k = signedOffDiagonal a i k := by
  by_cases h : i = k
  · simp [signedOffDiagonal, h]
  · simp [signedOffDiagonal, h]

/-- A one-point source-marking is not determined by the unmarked matrix:
the original signed moment is linear in the coefficient list. -/
def markedMoment (a x : I → R) : R :=
  ∑ i : I, a i * x i

theorem markedMoment_global_flip (a x : I → R) :
    markedMoment (fun i => -a i) x = -markedMoment a x := by
  unfold markedMoment
  simp_rw [neg_mul]
  exact Finset.sum_neg_distrib

/-- This is the ACTUAL previously published 2-adic source matrix. -/
theorem actual_signed_incidence (j : ℕ)
    (m n : DyadicIndex j) :
    padicIncidence j m n =
      signedOffDiagonal (sourceCoefficient j) m n := by
  by_cases h : m = n
  · simp [padicIncidence, signedIncidence, signedOffDiagonal, h]
  · simp [padicIncidence, signedIncidence, signedOffDiagonal,
      sourceCoefficient, padicMu, h]
    push_cast
    ring

/-- The abstract pair operator specializes to the genuine
cohomological differential with the ORIGINAL signed coefficient list. -/
theorem actual_sourceDifferential (j : ℕ) (x : Cochains j)
    (m : DyadicIndex j) :
    (sourceDifferential j x) m =
      signedOperator (sourceCoefficient j) x m := by
  change (∑ n : DyadicIndex j, padicIncidence j m n * x n) =
    ∑ n : DyadicIndex j,
      signedOffDiagonal (sourceCoefficient j) m n * x n
  apply Finset.sum_congr rfl
  intro n _
  rw [actual_signed_incidence j m n]

/-- The complete REAL-WEIGHTED source marking, separate from the
2-adic coefficient complex; no map Z_2 → R is silently supplied. -/
def originalRealMark (j : ℕ) (u : ℝ) (n : DyadicIndex j) : ℝ :=
  response (n.val + 1) u

theorem originalRealMark_source (j : ℕ) (u : ℝ)
    (n : DyadicIndex j) :
    originalRealMark j u n =
      GRWTSK.RiemannHypothesis.CCC.moebiusReal (n.val + 1) *
        GRWTSK.RiemannHypothesis.CCC.pickupResponse (n.val + 1) u :=
  rfl

end GRWTSK.NumberTheory.Moebius.DyadicMarkedSignGauge
