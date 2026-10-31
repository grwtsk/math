/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDyadicEndpoint
import GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.SharedShadowPullback
import GRWTSK.CommutativeAlgebra.IntegralTwoDeltaFrobenius
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual signed Möbius pairs on the geometric 2^j grid

The original source here is the actual moebiusReal used by
PickupCellQuadratic.crossDensity and the exact
PickupDyadicEndpoint.birthExpression. The full signed dyadic
cutoff N=2^j is already proved by dyadic_cutoff.

For EVERY integer z, the residue z % 2 alone loses the sign:
-1 and 1 both have digit 1. Retain the signed quotient z / 2
as the exact vertical fiber. The Euclidean identity
z=(z % 2)+2*(z / 2) holds also for negative numbers.

For each ORDERED pair (m,n) retain the integer identity
mu(m)mu(n)=digit(m)digit(n)+2*carryPair(m,n).
Both pair orientations and the full diagonal exclusion remain
in the actual crossDensity. The geometric response weights
are NOT reduced mod 2: the original real
pickupResponse(m,u)*pickupResponse(n,u) is unchanged.

The full pointwise density and its integral are reconstructed.
The existing signed endpoint curvature residual is also
retained exactly rather than discarded into a positivity
assumption. No new RH cancellation estimate is claimed.
This does not construct a completed prism or a prismatic
cohomology theory: IntegralTwoDeltaFrobenius supplies a
genuine integral delta ring and finite cochain identity,
while completion/ideal/cohomology remain independent.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Algebra.SharedShadowPullback
open GRWTSK.Algebra.FinitePrismaticSurfaceModel.IntegralTwoDeltaFrobenius

/-- Integer lift of the ACTUAL arithmetic-function Möbius coefficient. -/
def signedMu (n : ℕ) : ℤ := ArithmeticFunction.moebius n

/-- The source-real coefficient is the very same integer, cast to R. -/
theorem source_mu_cast (n : ℕ) :
    moebiusReal n = (signedMu n : ℝ) := by
  rfl

/-- The INTEGER representative of the mod-two shadow. -/
def digit (z : ℤ) : ℤ := z % 2

/-- The signed carry is precisely the information forgotten mod two. -/
def carry (z : ℤ) : ℤ := z / 2

theorem digit_zero_or_one (z : ℤ) :
    digit z = 0 ∨ digit z = 1 := by
  exact Int.emod_two_eq_zero_or_one z

theorem signed_roundtrip (z : ℤ) :
    z = digit z + 2 * carry z := by
  calc
    z = 2 * (z / 2) + z % 2 :=
      (Int.mul_ediv_add_emod z 2).symm
    _ = digit z + 2 * carry z := by
      simp [digit, carry, add_comm]

/-- Distinct integers have the same lower parity but different lifts. -/
theorem positive_negative_one_parity_collision :
    digit (1 : ℤ) = digit (-1 : ℤ) ∧
      carry (1 : ℤ) ≠ carry (-1 : ℤ) := by
  norm_num [digit, carry]

/-- Source-specific parity and signed carry of each Möbius coefficient. -/
def muDigit (n : ℕ) : ℤ := digit (signedMu n)
def muCarry (n : ℕ) : ℤ := carry (signedMu n)

theorem mu_roundtrip (n : ℕ) :
    signedMu n = muDigit n + 2 * muCarry n :=
  signed_roundtrip (signedMu n)

/-- Complete signed correction of a two-point source product. -/
def pairCarry (m n : ℕ) : ℤ :=
  muDigit m * muCarry n +
    muCarry m * muDigit n +
      2 * muCarry m * muCarry n

/-- The signed product, not just the F2 pairing, is recovered
EXACTLY for every ordered original integer pair. -/
theorem signed_pair_roundtrip (m n : ℕ) :
    signedMu m * signedMu n =
      muDigit m * muDigit n + 2 * pairCarry m n := by
  conv_lhs => rw [mu_roundtrip m, mu_roundtrip n]
  unfold pairCarry
  ring

/-- No change of the original real response or pair orientation. -/
def originalPair (m n : ℕ) (u : ℝ) : ℝ :=
  moebiusReal m * moebiusReal n *
    (pickupResponse m u * pickupResponse n u)

def shadowPair (m n : ℕ) (u : ℝ) : ℝ :=
  ((muDigit m * muDigit n : ℤ) : ℝ) *
    (pickupResponse m u * pickupResponse n u)

def carryPair (m n : ℕ) (u : ℝ) : ℝ :=
  ((pairCarry m n : ℤ) : ℝ) *
    (pickupResponse m u * pickupResponse n u)

/-- Exact source-specific, sign-preserving real lift at each pair. -/
theorem originalPair_eq_shadow_add_carry
    (m n : ℕ) (u : ℝ) :
    originalPair m n u = shadowPair m n u + 2 * carryPair m n u := by
  have h := signed_pair_roundtrip m n
  have hr : ((signedMu m * signedMu n : ℤ) : ℝ) =
      ((muDigit m * muDigit n : ℤ) : ℝ) +
        2 * ((pairCarry m n : ℤ) : ℝ) := by
    exact_mod_cast h
  have hcast : (signedMu m : ℝ) * (signedMu n : ℝ) =
      ((signedMu m * signedMu n : ℤ) : ℝ) := by push_cast; ring
  unfold originalPair shadowPair carryPair
  rw [source_mu_cast, source_mu_cast, hcast, hr]
  ring

/-- The ORIGINAL complete off-diagonal pair inventory at geometric
scale 2^j: no n=m term is reintroduced and no prime-power is dropped. -/
def dyadicShadowDensity (j : ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (2 ^ j), ∑ n ∈ Finset.Icc 1 (2 ^ j),
    if m ≠ n then shadowPair m n u else 0

def dyadicCarryDensity (j : ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (2 ^ j), ∑ n ∈ Finset.Icc 1 (2 ^ j),
    if m ≠ n then carryPair m n u else 0

/-- Actual signed pickup density = mod-2 digit density + COMPLETE
integer carry density, with all original real geometric weights. -/
theorem dyadic_crossDensity_decomposition (j : ℕ) (u : ℝ) :
    crossDensity (dyadicTime j) u =
      dyadicShadowDensity j u + 2 * dyadicCarryDensity j u := by
  let S := Finset.Icc 1 (2 ^ j)
  have hlocal (m n : ℕ) :
      (if m ≠ n then originalPair m n u else 0) =
      (if m ≠ n then shadowPair m n u else 0) +
        2 * (if m ≠ n then carryPair m n u else 0) := by
    by_cases h : m ≠ n
    · simp only [if_pos h]
      exact originalPair_eq_shadow_add_carry m n u
    · simp [h]
  calc
    crossDensity (dyadicTime j) u =
      ∑ m ∈ S, ∑ n ∈ S,
        if m ≠ n then originalPair m n u else 0 := by
      rw [crossDensity_eq_ordered, dyadic_cutoff]
      rfl
    _ = ∑ m ∈ S, ∑ n ∈ S,
          ((if m ≠ n then shadowPair m n u else 0) +
            2 * (if m ≠ n then carryPair m n u else 0)) := by
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      exact hlocal m n
    _ = dyadicShadowDensity j u + 2 * dyadicCarryDensity j u := by
      simp only [dyadicShadowDensity, dyadicCarryDensity]
      simp_rw [Finset.sum_add_distrib, ← Finset.mul_sum]
      rfl

/-- Exact integration of the ACTUAL off-diagonal source.
This is a source identity, not a conjectured decay estimate. -/
theorem dyadic_pickupCross_decomposition (j : ℕ) :
    pickupCross (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        (dyadicShadowDensity j u + 2 * dyadicCarryDensity j u) := by
  calc
    pickupCross (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        crossDensity (dyadicTime j) u :=
      (integral_crossDensity _).symm
    _ = _ := by
      apply intervalIntegral.integral_congr
      intro u _
      exact dyadic_crossDensity_decomposition j u

/-- Signed curvature term for the exact ORIGINAL source chord.
The terminal zero-width birth is retained with its original index. -/
def dyadicCurvature (j : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j),
    coefficient2 (k + 1) *
      curvatureMass (eventCut (dyadicTime j) k)
        (eventCut (dyadicTime j) (k + 1))

/-- The whole DYADIC endpoint is reconstructed as pair shadow +
COMPLETE signed carry + COMPLETE signed curvature.
This is stronger in source fidelity than a quarter-unit allowance. -/
theorem dyadicBirthSum_exact_source_reconstruction (j : ℕ) :
    dyadicBirthSum j =
      (∫ u in (0 : ℝ)..dyadicTime j,
        (dyadicShadowDensity j u + 2 * dyadicCarryDensity j u)) +
          dyadicCurvature j := by
  have h := endpointSum_signed_defect (dyadicTime_nonnegative j)
  rw [endpoint_dyadic_eq_birthSum,
    dyadic_pickupCross_decomposition, dyadic_cutoff] at h
  unfold dyadicCurvature
  linarith

/-- An unconditional source-derived uniform budget on the SAME pair
source and SAME signed curvature; not on its arithmetic magnitude. -/
theorem dyadicBirthSum_quarter_error (j : ℕ) :
    |dyadicBirthSum j -
      (∫ u in (0 : ℝ)..dyadicTime j,
        (dyadicShadowDensity j u + 2 * dyadicCarryDensity j u))| ≤
          1 / 4 := by
  have h := endpointSum_error (dyadicTime_nonnegative j)
  rw [endpoint_dyadic_eq_birthSum,
    dyadic_pickupCross_decomposition] at h
  exact h

/-- The exact all-positive-rate target remains a nontrivial signed
budget for the ENTIRE reconstructed source. A positive upper bound
on the mod-2 shadow alone is not enough. -/
def SignedPairAndCurvatureBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      ((∫ u in (0 : ℝ)..dyadicTime j,
          (dyadicShadowDensity j u + 2 * dyadicCarryDensity j u)) +
            dyadicCurvature j) ≤
        C * (2 : ℝ) ^ (δ * (j : ℝ))

theorem signedPairAndCurvatureBudget_iff_dyadicBirthBound :
    SignedPairAndCurvatureBudget ↔ DyadicBirthBound := by
  simp only [SignedPairAndCurvatureBudget, DyadicBirthBound,
    dyadicBirthSum_exact_source_reconstruction]

/-- Explicit conditional transfer, with no supplied arithmetic
cancellation estimate and no fabricated prismatic vanishing. -/
theorem riemannHypothesis_of_signedPairAndCurvatureBudget
    (h : SignedPairAndCurvatureBudget) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_dyadicBirthBound
    (signedPairAndCurvatureBudget_iff_dyadicBirthBound.mp h)

end GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift
