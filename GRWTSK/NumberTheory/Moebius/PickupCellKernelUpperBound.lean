/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel

/-!
# A uniform upper bound on the actual active endpoint pair kernel

At each actual cell endpoint the two active response factors are nonnegative
and at most the inverse square root of a common positive lower label d. The
two endpoint integration weights are nonnegative and sum to the actual
logarithmic birth width. This bounds the literal cell kernel, without changing
its endpoint functional or dropping any mixed term.

For N<5*d the elementary logarithmic width estimate gives the uniform bound
20/N^2. This is a bound for one positive active kernel, used to pay the finite
removed gcd sector; no absolute-value bound for the retained signed source or
growth exponent is supplied.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupCellKernelUpperBound

open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord

private theorem inverse_sqrt_antitone {a b : ℕ}
    (ha : 1 ≤ a) (hab : a ≤ b) :
    (Real.sqrt b)⁻¹ ≤ (Real.sqrt a)⁻¹ := by
  apply inv_anti₀
  · exact Real.sqrt_pos.mpr (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one ha))
  · exact Real.sqrt_le_sqrt (by exact_mod_cast hab)

/-- At an active endpoint, the actual pair product is bounded by 4/d.
The lower-label condition and both active-factor signs are explicit. -/
theorem pairPolynomial_le_four_div {d n m L : ℕ}
    (hd : 1 ≤ d) (hdn : d ≤ n) (hdm : d ≤ m)
    (hnL : n ≤ L) (hmL : m ≤ L) :
    pairPolynomial n m (Real.sqrt L)⁻¹ ≤ 4 / (d : ℝ) := by
  have hn : 1 ≤ n := hd.trans hdn
  have hm : 1 ≤ m := hd.trans hdm
  have hdnInv := inverse_sqrt_antitone hd hdn
  have hdmInv := inverse_sqrt_antitone hd hdm
  have hleft : (Real.sqrt n)⁻¹ - (Real.sqrt L)⁻¹ ≤ (Real.sqrt d)⁻¹ := by
    linarith [inv_nonneg.mpr (Real.sqrt_nonneg (L : ℝ))]
  have hright : (Real.sqrt m)⁻¹ - (Real.sqrt L)⁻¹ ≤ (Real.sqrt d)⁻¹ := by
    linarith [inv_nonneg.mpr (Real.sqrt_nonneg (L : ℝ))]
  have hrightNonneg : 0 ≤ (Real.sqrt m)⁻¹ - (Real.sqrt L)⁻¹ :=
    sub_nonneg.mpr (inverse_sqrt_antitone hm hmL)
  have htopNonneg : 0 ≤ (Real.sqrt d)⁻¹ := by positivity
  calc
    pairPolynomial n m (Real.sqrt L)⁻¹ =
        4 * (((Real.sqrt n)⁻¹ - (Real.sqrt L)⁻¹) *
          ((Real.sqrt m)⁻¹ - (Real.sqrt L)⁻¹)) := by
      unfold pairPolynomial
      ring
    _ ≤ 4 * ((Real.sqrt d)⁻¹ * (Real.sqrt d)⁻¹) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul hleft hright hrightNonneg htopNonneg) (by norm_num)
    _ = 4 / (d : ℝ) := by
      rw [← pow_two, inv_pow, Real.sq_sqrt (Nat.cast_nonneg d)]
      rfl

/-- The actual endpoint weights sum to the literal logarithmic cell width.
The bound retains the exact source cutoff and the common lower label. -/
theorem cellPairKernel_le_birthWidth_div_gcd {N d n m : ℕ}
    (hd : 1 ≤ d) (hdn : d ≤ n) (hdm : d ≤ m)
    (hnN : n ≤ N) (hmN : m ≤ N) :
    cellPairKernel N n m ≤
      4 * Real.log (1 + 1 / (N : ℝ)) / (d : ℝ) := by
  have hN : 1 ≤ N := (hd.trans hdn).trans hnN
  have horder : Real.log (N : ℝ) ≤ Real.log ((N + 1 : ℕ) : ℝ) := by
    apply Real.log_le_log
    · exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    · exact_mod_cast Nat.le_succ N
  obtain ⟨hleft, hright⟩ := endpoint_weights_nonnegative horder
  have hfirst := pairPolynomial_le_four_div hd hdn hdm hnN hmN
  have hsecond := pairPolynomial_le_four_div hd hdn hdm
    (hnN.trans (Nat.le_succ N)) (hmN.trans (Nat.le_succ N))
  unfold cellPairKernel endpointReadout
  calc
    _ ≤ leftWeight (Real.log N) (Real.log ((N + 1 : ℕ) : ℝ)) * (4 / (d : ℝ)) +
        rightWeight (Real.log N) (Real.log ((N + 1 : ℕ) : ℝ)) * (4 / (d : ℝ)) :=
      add_le_add (mul_le_mul_of_nonneg_left hfirst hleft)
        (mul_le_mul_of_nonneg_left hsecond hright)
    _ = (leftWeight (Real.log N) (Real.log ((N + 1 : ℕ) : ℝ)) +
        rightWeight (Real.log N) (Real.log ((N + 1 : ℕ) : ℝ))) * (4 / (d : ℝ)) := by ring
    _ = 4 * Real.log (1 + 1 / (N : ℝ)) / (d : ℝ) := by
      rw [endpoint_weights_sum, birth_log_width hN]
      ring

/-- In the removed fixed sector, the actual active pair kernel costs at most
20/N^2. The strict sector boundary is weakened only in this upper estimate. -/
theorem cellPairKernel_le_twenty_div_sq {N d n m : ℕ}
    (hd : 1 ≤ d) (hdn : d ≤ n) (hdm : d ≤ m)
    (hnN : n ≤ N) (hmN : m ≤ N) (hlarge : N < 5 * d) :
    cellPairKernel N n m ≤ 20 / (N : ℝ) ^ 2 := by
  have hN : 1 ≤ N := (hd.trans hdn).trans hnN
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hdpos : (0 : ℝ) < d := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hd)
  have hwidth : Real.log (1 + 1 / (N : ℝ)) ≤ 1 / (N : ℝ) := by
    have h := birth_width_le hN le_rfl le_rfl
    rw [birth_log_width hN] at h
    exact h
  have hNd : (N : ℝ) ≤ 5 * (d : ℝ) := by
    exact_mod_cast (le_of_lt hlarge)
  have hinv : (1 : ℝ) / (d : ℝ) ≤ 5 / (N : ℝ) :=
    (div_le_div_iff₀ hdpos hNpos).mpr (by nlinarith)
  calc
    cellPairKernel N n m ≤ 4 * Real.log (1 + 1 / (N : ℝ)) / (d : ℝ) :=
      cellPairKernel_le_birthWidth_div_gcd hd hdn hdm hnN hmN
    _ ≤ (4 * (1 / (N : ℝ))) * (1 / (d : ℝ)) := by
      simpa only [one_div, div_eq_mul_inv] using
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hwidth (by norm_num)) (inv_nonneg.mpr hdpos.le)
    _ ≤ (4 * (1 / (N : ℝ))) * (5 / (N : ℝ)) :=
      mul_le_mul_of_nonneg_left hinv (by positivity)
    _ = 20 / (N : ℝ) ^ 2 := by
      field_simp [hNpos.ne']
      <;> ring

end GRWTSK.NumberTheory.Moebius.PickupCellKernelUpperBound
