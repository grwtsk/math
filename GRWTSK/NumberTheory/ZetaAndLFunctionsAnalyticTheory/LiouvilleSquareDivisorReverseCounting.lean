/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original response under square-divisor reversal

The finite source proof candidates here only use the ACTUAL
CCC.pickupResponse and finite positive-index arithmetic. The two classical
Liouville/Moebius square-divisor coefficient identities are displayed as
separately named open formalization gates; they are mathematically established
in the accompanying review, but NOT silently asserted as Lean theorems.

No signed arithmetic rectangle estimate, RH theorem, or native replay is
claimed. The original complete Liouville aggregate is never replaced.
-/

namespace GRWTSK.NumberTheory.LiouvilleSquareDivisorReverseCounting

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates

/-- For positive scaling factor, the positive part commutes with scaling
by its reciprocal.  The equality remains true at x = 0. -/
private theorem max_inv_mul (d x : ℝ) (hd : 0 < d) :
    max (d⁻¹ * x) 0 = d⁻¹ * max x 0 := by
  have hinv : 0 ≤ d⁻¹ := le_of_lt (inv_pos.mpr hd)
  by_cases hx : 0 ≤ x
  · rw [max_eq_left hx, max_eq_left (mul_nonneg hinv hx)]
  · have hxle : x ≤ 0 := le_of_lt (lt_of_not_ge hx)
    rw [max_eq_right hxle,
      max_eq_right (mul_nonpos_of_nonneg_of_nonpos hinv hxle)]
    ring

/-- The unchanged response has the exact square-index causal dilation.
No prime-sign information enters this source-specific analytic identity. -/
theorem pickupResponse_square_scaling (d k : ℕ)
    (hd : 1 ≤ d) (hk : 1 ≤ k) (u : ℝ) :
    pickupResponse (d * d * k) u =
      (d : ℝ)⁻¹ * pickupResponse k (u - 2 * Real.log (d : ℝ)) := by
  have hdpos : (0 : ℝ) < d := by exact_mod_cast
    (Nat.lt_of_lt_of_le Nat.zero_lt_one hd)
  have hkpos : (0 : ℝ) < k := by exact_mod_cast
    (Nat.lt_of_lt_of_le Nat.zero_lt_one hk)
  have hkrootne : Real.sqrt (k : ℝ) ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.mpr hkpos)
  have hdk : 1 ≤ d * d * k := by
    have hmul : 0 < d * d * k := Nat.mul_pos
      (Nat.mul_pos (by omega : 0 < d) (by omega : 0 < d))
      (by omega : 0 < k)
    omega
  have hcast : (((d * d * k : ℕ) : ℝ)) = (d : ℝ) ^ 2 * (k : ℝ) := by
    push_cast
    ring
  have hroot : Real.sqrt ((d * d * k : ℕ) : ℝ) =
      (d : ℝ) * Real.sqrt (k : ℝ) := by
    rw [hcast, Real.sqrt_mul (sq_nonneg (d : ℝ)),
      Real.sqrt_sq hdpos.le]
  have hinvroot : (Real.sqrt ((d * d * k : ℕ) : ℝ))⁻¹ =
      (d : ℝ)⁻¹ * (Real.sqrt (k : ℝ))⁻¹ := by
    rw [hroot, mul_inv_rev]
    ring
  have hexp : Real.exp (-(u - 2 * Real.log (d : ℝ)) / 2) =
      (d : ℝ) * Real.exp (-u / 2) := by
    have heq : -(u - 2 * Real.log (d : ℝ)) / 2 =
        Real.log (d : ℝ) + (-u / 2) := by ring
    rw [heq, Real.exp_add, Real.exp_log hdpos]
  have hsub :
      (Real.sqrt ((d * d * k : ℕ) : ℝ))⁻¹ - Real.exp (-u / 2) =
      (d : ℝ)⁻¹ *
        ((Real.sqrt (k : ℝ))⁻¹ -
          Real.exp (-(u - 2 * Real.log (d : ℝ)) / 2)) := by
    rw [hinvroot, hexp]
    field_simp [ne_of_gt hdpos, hkrootne]
    <;> ring
  rw [pickupResponse_eq_positivePart (d * d * k) hdk u,
    pickupResponse_eq_positivePart k hk
      (u - 2 * Real.log (d : ℝ)), hsub,
    max_inv_mul (d : ℝ) _ hdpos]
  ring

/-- A complete finite reverse-counting/Fubini equality on positive labels.
Both source factors and every ordered square divisor (d,k) are preserved;
no absolute values or arithmetic independence are introduced. -/
theorem finite_square_factor_reverse
    (D K : Finset ℕ) (a b : ℕ → ℝ) (u : ℝ)
    (hD : ∀ d ∈ D, 1 ≤ d) (hK : ∀ k ∈ K, 1 ≤ k) :
    (∑ d ∈ D, ∑ k ∈ K,
      a d * b k * pickupResponse (d * d * k) u) =
    ∑ d ∈ D, (a d / (d : ℝ)) *
      (∑ k ∈ K, b k *
        pickupResponse k (u - 2 * Real.log (d : ℝ))) := by
  classical
  calc
    _ = ∑ d ∈ D, ∑ k ∈ K,
          (a d / (d : ℝ)) *
            (b k * pickupResponse k
              (u - 2 * Real.log (d : ℝ))) := by
          apply Finset.sum_congr rfl
          intro d hd
          apply Finset.sum_congr rfl
          intro k hk
          rw [pickupResponse_square_scaling d k (hD d hd) (hK k hk) u]
          ring
    _ = _ := by
          apply Finset.sum_congr rfl
          intro d _
          rw [Finset.mul_sum]

/-- The exact classical coefficient relation lambda = mu convolved with
the square-indicator, stated as a Lean FORMALIZATION TARGET only. -/
def LiouvilleSquareCoefficientIdentity : Prop :=
  ∀ n : ℕ, 1 ≤ n →
    coefficient n =
      ∑ d ∈ Finset.Icc 1 n,
        if d * d ∣ n then moebiusReal (n / (d * d)) else 0

/-- The inverse coefficient relation mu = lambda convolved with the
square-supported mu coefficient, also a FORMALIZATION TARGET only. -/
def MoebiusInverseSquareCoefficientIdentity : Prop :=
  ∀ n : ℕ, 1 ≤ n →
    moebiusReal n =
      ∑ d ∈ Finset.Icc 1 n,
        if d * d ∣ n then
          moebiusReal d * coefficient (n / (d * d)) else 0

/-- Exact original Liouville waveform equals the forward square-divisor
delay of the original Moebius response waveform. The arithmetic reindexing
needed for a Lean proof remains an explicitly OPEN bridge. -/
def LiouvilleSquareWaveformBridge : Prop :=
  ∀ u : ℝ, 0 ≤ u →
    waveform u =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊,
        (d : ℝ)⁻¹ * wholePickup (u - 2 * Real.log (d : ℝ))

/-- Exact inverse square-divisor delay, retaining mu(d) with its sign.
This is an OPEN Lean formalization target, not an asserted theorem. -/
def MoebiusInverseSquareWaveformBridge : Prop :=
  ∀ u : ℝ, 0 ≤ u →
    wholePickup u =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp (u / 2)⌋₊,
        moebiusReal d / (d : ℝ) *
          waveform (u - 2 * Real.log (d : ℝ))

/-- Mathematical two-sided finite-horizon energy comparison, retained as
an OPEN Lean formalization target until both exact waveform bridges and
the required interval-integral norm inequalities are implemented. -/
def SquareDelayEnergyEquivalence : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    energy T ≤ (1 + T / 2) ^ 2 * pickupEnergy T ∧
      pickupEnergy T ≤ (1 + T / 2) ^ 2 * energy T

end GRWTSK.NumberTheory.LiouvilleSquareDivisorReverseCounting
