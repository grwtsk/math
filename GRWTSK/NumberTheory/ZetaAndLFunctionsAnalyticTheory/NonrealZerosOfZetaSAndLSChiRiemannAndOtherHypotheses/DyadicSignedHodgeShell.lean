/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicModTwoPairLift
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The actual signed dyadic source as a centered indefinite shell

At every geometric cutoff 2^j, retain every original integer index
1,...,2^j and its ACTUAL signed Möbius response. There are zero
coefficients at repeated prime powers, but those indices remain in
the mean and residual inventory rather than being dropped.

The signed full off-diagonal density is the rank-one coherent square
MINUS its complete diagonal square. Centering those very same
response coordinates at their arithmetic mean yields a pointwise
orthogonal decomposition:

   crossDensity = N*(N-1)*center^2 - residualEnergy,
   N=2^j.

Both terms on the right are nonnegative before the subtraction.
This gives genuine upper/lower shells and retains the full range
of the signed source without pretending that it is positive Gram.
The source-specific endpoint curvature is then returned exactly.
This does not give an all-positive-rate cancellation bound.

The null shell of this indefinite form is a quadratic cone, NOT
by itself a geometric cusp or the Riemann critical line.
A boundary point can be in both closures of opposite SIGN
regions without belonging to both disjoint open regions.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicSignedHodgeShell

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift

/-- Exactly the original closed arithmetic inventory. -/
def sourceIndices (j : ℕ) : Finset ℕ := Finset.Icc 1 (2 ^ j)

/-- A source response retains the sign, squareful zeros, endpoint and
the same real response weight used in PickupCellQuadratic. -/
def response (n : ℕ) (u : ℝ) : ℝ :=
  moebiusReal n * pickupResponse n u

/-- The source mean, with the COMPLETE original N=2^j inventory. -/
def center (j : ℕ) (u : ℝ) : ℝ :=
  (∑ n ∈ sourceIndices j, response n u) / (2 ^ j : ℕ)

/-- The full nonnegative residual quadratic, including the zero
Möbius coordinates rather than silently deleting them. -/
def residualEnergy (j : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ sourceIndices j, (response n u - center j u) ^ 2

/-- The coherent contribution defines the exact upper shell. -/
def coherentEnergy (j : ℕ) (u : ℝ) : ℝ :=
  ((2 ^ j : ℕ) : ℝ) * (((2 ^ j : ℕ) : ℝ) - 1) * (center j u) ^ 2

theorem card_sourceIndices (j : ℕ) :
    (sourceIndices j).card = 2 ^ j := by
  simp [sourceIndices, Finset.card_Icc, Nat.add_sub_cancel_left]

/-- This is actual arithmetic centering: the residual has zero total
sum over ALL original labels, not just primes. -/
theorem residual_sum_zero (j : ℕ) (u : ℝ) :
    (∑ n ∈ sourceIndices j, (response n u - center j u)) = 0 := by
  have hn : (0 : ℝ) < ((2 ^ j : ℕ) : ℝ) := by positivity
  have hsum :
      (∑ n ∈ sourceIndices j, response n u) =
        ((2 ^ j : ℕ) : ℝ) * center j u := by
    unfold center
    field_simp
  rw [Finset.sum_sub_distrib]
  simp only [Finset.sum_const_zero, Finset.sum_const, card_sourceIndices,
    nsmul_eq_mul]
  rw [hsum]
  ring

/-- The exact finite Hodge/Pythagorean variance identity, with
an explicit source denominator that is always nonzero. -/
theorem sum_sq_eq_coherent_add_residual (j : ℕ) (u : ℝ) :
    (∑ n ∈ sourceIndices j, (response n u) ^ 2) =
      ((2 ^ j : ℕ) : ℝ) * (center j u) ^ 2 +
        residualEnergy j u := by
  have hzero := residual_sum_zero j u
  have hsq :
      (∑ n ∈ sourceIndices j,
          (response n u - center j u) ^ 2) =
      (∑ n ∈ sourceIndices j, (response n u) ^ 2) -
        2 * center j u * (∑ n ∈ sourceIndices j, response n u) +
          ((2 ^ j : ℕ) : ℝ) * (center j u) ^ 2 := by
    calc
      _ = ∑ n ∈ sourceIndices j,
          ((response n u) ^ 2 -
            2 * center j u * response n u +
              (center j u) ^ 2) := by
          apply Finset.sum_congr rfl
          intro n hn
          ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
        simp only [Finset.sum_const, card_sourceIndices, nsmul_eq_mul,
          ← Finset.mul_sum]
        ring
  have hn : (0 : ℝ) < ((2 ^ j : ℕ) : ℝ) := by positivity
  have hsum :
      (∑ n ∈ sourceIndices j, response n u) =
        ((2 ^ j : ℕ) : ℝ) * center j u := by
    unfold center
    field_simp
  unfold residualEnergy
  rw [hsq, hsum]
  ring

/-- The FULL original signed density is an indefinite centered
shell with a nonnegative coherent upper and residual lower part. -/
theorem crossDensity_eq_centered_shell (j : ℕ) (u : ℝ) :
    crossDensity (dyadicTime j) u =
      coherentEnergy j u - residualEnergy j u := by
  rw [crossDensity, dyadic_cutoff]
  change (∑ n ∈ sourceIndices j, response n u) ^ 2 -
      ∑ n ∈ sourceIndices j, (response n u) ^ 2 =
        coherentEnergy j u - residualEnergy j u
  rw [sum_sq_eq_coherent_add_residual]
  have hn : (0 : ℝ) < ((2 ^ j : ℕ) : ℝ) := by positivity
  have hsum :
      (∑ n ∈ sourceIndices j, response n u) =
        ((2 ^ j : ℕ) : ℝ) * center j u := by
    unfold center
    field_simp
  rw [hsum]
  unfold coherentEnergy
  ring

theorem coherentEnergy_nonneg (j : ℕ) (u : ℝ) :
    0 ≤ coherentEnergy j u := by
  unfold coherentEnergy
  have hn : (1 : ℝ) ≤ ((2 ^ j : ℕ) : ℝ) := by
    have hp : 0 < (2 : ℕ) ^ j := by positivity
    have hnat : 1 ≤ (2 : ℕ) ^ j := by omega
    exact_mod_cast hnat
  have hdiff : 0 ≤ ((2 ^ j : ℕ) : ℝ) - 1 :=
    sub_nonneg.mpr hn
  exact mul_nonneg
    (mul_nonneg (by positivity) hdiff) (sq_nonneg _)

theorem residualEnergy_nonneg (j : ℕ) (u : ℝ) :
    0 ≤ residualEnergy j u := by
  unfold residualEnergy
  exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- The actual source is bounded by its centered SIGNED structure,
not by an invented positive semidefinite version of itself. -/
theorem centered_shell_lower_le_source (j : ℕ) (u : ℝ) :
    -residualEnergy j u ≤ crossDensity (dyadicTime j) u := by
  rw [crossDensity_eq_centered_shell]
  linarith [coherentEnergy_nonneg j u]

theorem centered_shell_source_le_upper (j : ℕ) (u : ℝ) :
    crossDensity (dyadicTime j) u ≤ coherentEnergy j u := by
  rw [crossDensity_eq_centered_shell]
  exact sub_le_self _ (residualEnergy_nonneg j u)

/-- Return the actual source endpoint, including the COMPLETE signed
curvature term, without replacing signs by a mod-two proxy. -/
theorem dyadicBirthSum_eq_shell_plus_curvature (j : ℕ) :
    dyadicBirthSum j =
      (∫ u in (0 : ℝ)..dyadicTime j,
        (coherentEnergy j u - residualEnergy j u)) +
          dyadicCurvature j := by
  have h := dyadicBirthSum_exact_source_reconstruction j
  calc
    dyadicBirthSum j =
        (∫ u in (0 : ℝ)..dyadicTime j,
          (dyadicShadowDensity j u + 2 * dyadicCarryDensity j u)) +
            dyadicCurvature j := h
    _ = _ := by
      congr 1
      apply intervalIntegral.integral_congr
      intro u _
      rw [← dyadic_crossDensity_decomposition,
        crossDensity_eq_centered_shell]

end GRWTSK.NumberTheory.Moebius.DyadicSignedHodgeShell
