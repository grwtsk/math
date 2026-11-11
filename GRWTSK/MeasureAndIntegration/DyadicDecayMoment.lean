/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic

/-!
# Counting bounds supply the complete Fourier moment and its dyadic tails

MSC2020: 40A05, 42A38, 28A25; consumers 11M26 and 11M41.

The existing `decayWeight` retains the full complex location. Dyadic shells
are determined by 1 + norm(z), not by an ordinate projection. The counting
hypothesis bounds the multiplicity mass of EVERY finite subset in each ball.
It is not a finite sample, nor an assumed summability statement.

For |Im z| <= B, A >= 0, k >= 1, and dyadic ball mass at most
C*(n+c)*2^n, the entire tail beyond 1+norm(z) >= 2^N is bounded by
exp(2*A*B)*C*r^N*((N+c)/(1-r)+r/(1-r)^2), r=2/2^(2*k).
The threshold k>=1 proves 0<r<1 before any geometric-series conclusion.
The sum over an arbitrary index type is controlled through all finite subsets.

Consumer: WeilCorrelationMoment.lean returns this estimate to the existing
correlation and signed reflected product. The actual zeta/Dirichlet counting
supplier and full arithmetic explicit formula remain open, separate premises.
No new Fourier transform, zero divisor, arithmetic form, or RH target is defined.

Source: research execution mandate RP-OC-01 and workstream B (2026-11-11),
a local classical dyadic consequence, not a direct paper formalization.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
and independent review NOT_RUN. Novelty UNASSESSED. Coordination: math#1801.
See the adjacent individual provenance records for pins and the written proof.
-/

set_option autoImplicit false
noncomputable section

open Set Filter
open scoped Topology

namespace GRWTSK.MeasureAndIntegration.DyadicDecayMoment

open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

/-- A canonical shell index for the full complex radius, including z=0. -/
def dyadicIndex (z : ℂ) : ℕ :=
  (exists_nat_pow_near (show (1 : ℝ) ≤ 1 + ‖z‖ by positivity)
    (show (1 : ℝ) < 2 by norm_num)).choose

theorem dyadicIndex_bounds (z : ℂ) :
    (2 : ℝ) ^ dyadicIndex z ≤ 1 + ‖z‖ ∧
      1 + ‖z‖ < (2 : ℝ) ^ (dyadicIndex z + 1) :=
  (exists_nat_pow_near (show (1 : ℝ) ≤ 1 + ‖z‖ by positivity)
    (show (1 : ℝ) < 2 by norm_num)).choose_spec

/-- The inclusive dyadic boundary is assigned to the upper shell. -/
theorem le_dyadicIndex_iff (z : ℂ) (N : ℕ) :
    N ≤ dyadicIndex z ↔ (2 : ℝ) ^ N ≤ 1 + ‖z‖ := by
  constructor
  · intro h
    exact (pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) h).trans
      (dyadicIndex_bounds z).1
  · intro h
    by_contra hn
    have hi : dyadicIndex z + 1 ≤ N := by omega
    have hp : (2 : ℝ) ^ (dyadicIndex z + 1) ≤ (2 : ℝ) ^ N :=
      pow_le_pow_right₀ (by norm_num) hi
    exact (not_lt_of_ge h) ((dyadicIndex_bounds z).2.trans_le hp)

/-- Ratio after combining linear counting growth with order-2k decay. -/
def dyadicRatio (k : ℕ) : ℝ := 2 / (2 : ℝ) ^ (2 * k)

theorem dyadicRatio_pos_lt_one {k : ℕ} (hk : 1 ≤ k) :
    0 < dyadicRatio k ∧ dyadicRatio k < 1 := by
  have hfour : (2 : ℝ) ^ 2 ≤ (2 : ℝ) ^ (2 * k) := by
    apply pow_le_pow_right₀ (by norm_num)
    omega
  constructor
  · unfold dyadicRatio
    positivity
  · unfold dyadicRatio
    apply (div_lt_one (by positivity)).mpr
    norm_num at hfour
    linarith

/-- Exact closed expression for the complete omitted moment budget. -/
def tailBudget (A B C c : ℝ) (k N : ℕ) : ℝ :=
  Real.exp (2 * A * B) * C * dyadicRatio k ^ N *
    (((N : ℝ) + c) / (1 - dyadicRatio k) +
      dyadicRatio k / (1 - dyadicRatio k) ^ 2)

/-- Evaluate the entire affine-geometric tail, not just a finite truncation. -/
theorem hasSum_affine_geometric_shift (c r : ℝ) (N : ℕ)
    (hr0 : 0 ≤ r) (hr1 : r < 1) :
    HasSum (fun j : ℕ => (((j + N : ℕ) : ℝ) + c) * r ^ (j + N))
      (r ^ N * (((N : ℝ) + c) / (1 - r) + r / (1 - r) ^ 2)) := by
  have hr : ‖r‖ < 1 := by simpa [Real.norm_eq_abs, abs_of_nonneg hr0] using hr1
  have h0 := hasSum_geometric_of_norm_lt_one hr
  have h1 := hasSum_coe_mul_geometric_of_norm_lt_one hr
  have h := (h1.add (h0.mul_left ((N : ℝ) + c))).mul_right (r ^ N)
  convert h using 1
  · ext j
    simp only [Nat.cast_add, pow_add]
    ring
  · simp only [div_eq_mul_inv]
    ring

private theorem ratio_pow (k n : ℕ) :
    (2 : ℝ) ^ n / ((2 : ℝ) ^ n) ^ (2 * k) = dyadicRatio k ^ n := by
  unfold dyadicRatio
  rw [div_pow]
  congr 1
  simp only [← pow_mul]
  rw [Nat.mul_comm n (2 * k)]

/-- A finite shell estimate derived from the original exponential/polynomial weight. -/
theorem shell_moment_le {ι : Type*} (m : ι → ℝ) (z : ι → ℂ)
    (A B C c : ℝ) (hA : 0 ≤ A) (hm : ∀ i, 0 ≤ m i)
    (hstrip : ∀ i, |(z i).im| ≤ B)
    (hcount : ∀ n : ℕ, ∀ s : Finset ι,
      (∀ i ∈ s, 1 + ‖z i‖ < (2 : ℝ) ^ (n + 1)) →
      (∑ i ∈ s, m i) ≤ C * ((n : ℝ) + c) * (2 : ℝ) ^ n)
    (k n : ℕ) (s : Finset ι) (hs : ∀ i ∈ s, dyadicIndex (z i) = n) :
    (∑ i ∈ s, m i * decayWeight A k (z i) ^ 2) ≤
      Real.exp (2 * A * B) * C * ((n : ℝ) + c) * dyadicRatio k ^ n := by
  have hden : 0 < ((2 : ℝ) ^ n) ^ (2 * k) := by positivity
  have hpoint (i : ι) (hi : i ∈ s) :
      decayWeight A k (z i) ^ 2 ≤
        Real.exp (2 * A * B) / ((2 : ℝ) ^ n) ^ (2 * k) := by
    have hl : (2 : ℝ) ^ n ≤ 1 + ‖z i‖ := by
      simpa only [hs i hi] using (dyadicIndex_bounds (z i)).1
    rw [decayWeight_sq]
    have he : Real.exp (2 * A * |(z i).im|) ≤ Real.exp (2 * A * B) :=
      Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (hstrip i) (by positivity))
    have hp : ((2 : ℝ) ^ n) ^ (2 * k) ≤ (1 + ‖z i‖) ^ (2 * k) := by
      gcongr
    apply (div_le_div_iff₀ (by positivity) hden).mpr
    exact (mul_le_mul_of_nonneg_right he hden.le).trans
      (mul_le_mul_of_nonneg_left hp (Real.exp_nonneg _))
  have hc := hcount n s (fun i hi => by
    simpa only [hs i hi] using (dyadicIndex_bounds (z i)).2)
  calc
    _ ≤ ∑ i ∈ s, m i *
        (Real.exp (2 * A * B) / ((2 : ℝ) ^ n) ^ (2 * k)) :=
      Finset.sum_le_sum (fun i hi => mul_le_mul_of_nonneg_left (hpoint i hi) (hm i))
    _ = (∑ i ∈ s, m i) *
        (Real.exp (2 * A * B) / ((2 : ℝ) ^ n) ^ (2 * k)) :=
      by rw [Finset.sum_mul]
    _ ≤ (C * ((n : ℝ) + c) * (2 : ℝ) ^ n) *
        (Real.exp (2 * A * B) / ((2 : ℝ) ^ n) ^ (2 * k)) :=
      mul_le_mul_of_nonneg_right hc (by positivity)
    _ = _ := by
      rw [← ratio_pow k n]
      ring

/-- Every finite subset of the radial tail is bounded by one infinite-series budget. -/
theorem finite_tail_moment_le {ι : Type*} (m : ι → ℝ) (z : ι → ℂ)
    (A B C c : ℝ) (hA : 0 ≤ A) (hC : 0 ≤ C) (hc : 0 ≤ c)
    (hm : ∀ i, 0 ≤ m i) (hstrip : ∀ i, |(z i).im| ≤ B)
    (hcount : ∀ n : ℕ, ∀ s : Finset ι,
      (∀ i ∈ s, 1 + ‖z i‖ < (2 : ℝ) ^ (n + 1)) →
      (∑ i ∈ s, m i) ≤ C * ((n : ℝ) + c) * (2 : ℝ) ^ n)
    (k N : ℕ) (hk : 1 ≤ k) (s : Finset ι)
    (hN : ∀ i ∈ s, (2 : ℝ) ^ N ≤ 1 + ‖z i‖) :
    (∑ i ∈ s, m i * decayWeight A k (z i) ^ 2) ≤ tailBudget A B C c k N := by
  classical
  let sigma : ι → ℕ := fun i => dyadicIndex (z i) - N
  let J : Finset ℕ := s.image sigma
  let b : ℕ → ℝ := fun j => Real.exp (2 * A * B) * C *
    ((((j + N : ℕ) : ℝ) + c) * dyadicRatio k ^ (j + N))
  have hr := dyadicRatio_pos_lt_one hk
  have hr0 : 0 ≤ dyadicRatio k := hr.1.le
  have hseries : HasSum b (tailBudget A B C c k N) := by
    convert (hasSum_affine_geometric_shift c (dyadicRatio k) N hr.1.le hr.2).mul_left
      (Real.exp (2 * A * B) * C) using 1
    · rfl
    · unfold tailBudget
      ring
  have hb (j : ℕ) : 0 ≤ b j := by dsimp [b]; positivity
  have hgroup : (∑ i ∈ s, m i * decayWeight A k (z i) ^ 2) =
      ∑ j ∈ J, ∑ i ∈ s.filter (fun i => sigma i = j),
        m i * decayWeight A k (z i) ^ 2 := by
    symm
    simp only [Finset.sum_filter]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i hi
    simp [J, Finset.mem_image_of_mem sigma hi]
  rw [hgroup]
  calc
    _ ≤ ∑ j ∈ J, b j := by
      apply Finset.sum_le_sum
      intro j hj
      have hs : ∀ i ∈ s.filter (fun i => sigma i = j), dyadicIndex (z i) = j + N := by
        intro i hi
        obtain ⟨his, hij⟩ := Finset.mem_filter.mp hi
        have hNi := (le_dyadicIndex_iff (z i) N).mpr (hN i his)
        dsimp [sigma] at hij
        omega
      simpa only [b, mul_assoc] using
        shell_moment_le m z A B C c hA hm hstrip hcount k (j + N) _ hs
    _ ≤ ∑' j, b j := hseries.summable.sum_le_tsum J (fun j _ => hb j)
    _ = _ := hseries.tsum_eq

/-- All-subset control proves genuine summability before the total sum is used. -/
theorem radial_tail_moment {ι : Type*} (m : ι → ℝ) (z : ι → ℂ)
    (A B C c : ℝ) (hA : 0 ≤ A) (hC : 0 ≤ C) (hc : 0 ≤ c)
    (hm : ∀ i, 0 ≤ m i) (hstrip : ∀ i, |(z i).im| ≤ B)
    (hcount : ∀ n : ℕ, ∀ s : Finset ι,
      (∀ i ∈ s, 1 + ‖z i‖ < (2 : ℝ) ^ (n + 1)) →
      (∑ i ∈ s, m i) ≤ C * ((n : ℝ) + c) * (2 : ℝ) ^ n)
    (k N : ℕ) (hk : 1 ≤ k) :
    Summable (fun i => if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then
      m i * decayWeight A k (z i) ^ 2 else 0) ∧
    (∑' i, if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then
      m i * decayWeight A k (z i) ^ 2 else 0) ≤ tailBudget A B C c k N := by
  classical
  let u : ι → ℝ := fun i => if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then
    m i * decayWeight A k (z i) ^ 2 else 0
  have hu (i : ι) : 0 ≤ u i := by dsimp [u]; split_ifs <;> positivity
  have hb (s : Finset ι) : (∑ i ∈ s, u i) ≤ tailBudget A B C c k N := by
    change (∑ i ∈ s, if (2 : ℝ) ^ N ≤ 1 + ‖z i‖ then
      m i * decayWeight A k (z i) ^ 2 else 0) ≤ _
    rw [← Finset.sum_filter]
    exact finite_tail_moment_le m z A B C c hA hC hc hm hstrip hcount k N hk _
      (fun i hi => (Finset.mem_filter.mp hi).2)
  exact ⟨summable_of_sum_le hu hb, Real.tsum_le_of_sum_le hu hb⟩

/-- The complete moment is the N=0 case; central locations are not discarded. -/
theorem full_moment {ι : Type*} (m : ι → ℝ) (z : ι → ℂ)
    (A B C c : ℝ) (hA : 0 ≤ A) (hC : 0 ≤ C) (hc : 0 ≤ c)
    (hm : ∀ i, 0 ≤ m i) (hstrip : ∀ i, |(z i).im| ≤ B)
    (hcount : ∀ n : ℕ, ∀ s : Finset ι,
      (∀ i ∈ s, 1 + ‖z i‖ < (2 : ℝ) ^ (n + 1)) →
      (∑ i ∈ s, m i) ≤ C * ((n : ℝ) + c) * (2 : ℝ) ^ n)
    (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun i => m i * decayWeight A k (z i) ^ 2) ∧
      (∑' i, m i * decayWeight A k (z i) ^ 2) ≤ tailBudget A B C c k 0 := by
  simpa only [pow_zero, le_add_iff_nonneg_right, norm_nonneg, ite_true] using
    radial_tail_moment m z A B C c hA hC hc hm hstrip hcount k 0 hk

/-- A height-counting estimate supplies radial dyadic counting with explicit constants.
The hypothesis covers every H >= 2 and every finite subset, counting weights.
Only an upper comparison is used: a radial ball lies in the corresponding height strip. -/
theorem dyadic_count_of_height_count {ι : Type*} (m : ι → ℝ) (z : ι → ℂ)
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hheight : ∀ H : ℝ, 2 ≤ H → ∀ s : Finset ι,
      (∀ i ∈ s, |(z i).re| < H) →
      (∑ i ∈ s, m i) ≤ D * H * (Real.log H + L)) :
    ∀ n : ℕ, ∀ s : Finset ι,
      (∀ i ∈ s, 1 + ‖z i‖ < (2 : ℝ) ^ (n + 1)) →
      (∑ i ∈ s, m i) ≤ (2 * D * (L + 1)) * ((n : ℝ) + 1) * (2 : ℝ) ^ n := by
  intro n s hs
  have hH : (2 : ℝ) ≤ (2 : ℝ) ^ (n + 1) := by
    simpa only [pow_one] using
      (pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) (show 1 ≤ n + 1 by omega))
  have hcount := hheight ((2 : ℝ) ^ (n + 1)) hH s (fun i hi =>
    (Complex.abs_re_le_norm (z i)).trans_lt (lt_trans (by linarith) (hs i hi)))
  have hlog : Real.log (2 : ℝ) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    linarith
  have hlogH : Real.log ((2 : ℝ) ^ (n + 1)) + L ≤ ((n : ℝ) + 1) * (L + 1) := by
    rw [Real.log_pow]
    push_cast
    have h := mul_le_mul_of_nonneg_left hlog (show 0 ≤ (n : ℝ) + 1 by positivity)
    nlinarith [mul_nonneg (Nat.cast_nonneg (α := ℝ) n) hL]
  calc
    _ ≤ D * (2 : ℝ) ^ (n + 1) * (Real.log ((2 : ℝ) ^ (n + 1)) + L) := hcount
    _ ≤ D * (2 : ℝ) ^ (n + 1) * (((n : ℝ) + 1) * (L + 1)) :=
      mul_le_mul_of_nonneg_left hlogH (by positivity)
    _ = _ := by rw [pow_succ]; ring

/-- The first derivative order already gives an explicit logarithmic-over-radius tail. -/
theorem tailBudget_one (A B C c : ℝ) (N : ℕ) :
    tailBudget A B C c 1 N =
      2 * Real.exp (2 * A * B) * C * ((N : ℝ) + c + 1) * (1 / 2 : ℝ) ^ N := by
  norm_num [tailBudget, dyadicRatio]
  ring

/-- The explicit budget tends to zero for fixed source and support constants.
This is not a varying-test interpolation-cost theorem. -/
theorem tailBudget_tendsto_zero (A B C c : ℝ) (k : ℕ) (hk : 1 ≤ k) :
    Tendsto (tailBudget A B C c k) atTop (𝓝 0) := by
  let r : ℝ := dyadicRatio k
  have hr := dyadicRatio_pos_lt_one hk
  have hnorm : ‖r‖ < 1 := by
    simpa only [r, Real.norm_eq_abs, abs_of_pos hr.1] using hr.2
  have h0 := (hasSum_geometric_of_norm_lt_one hnorm).summable.tendsto_atTop_zero
  have h1 := (hasSum_coe_mul_geometric_of_norm_lt_one hnorm).summable.tendsto_atTop_zero
  have h := (((h1.add (h0.const_mul c)).div_const (1 - r)).add
    ((h0.const_mul r).div_const ((1 - r) ^ 2))).const_mul (Real.exp (2 * A * B) * C)
  have hlim : Tendsto (fun N : ℕ => Real.exp (2 * A * B) * C *
      (((N : ℝ) * r ^ N + c * r ^ N) / (1 - r) + r * r ^ N / (1 - r) ^ 2))
      atTop (𝓝 0) := by simpa using h
  apply hlim.congr'
  exact Filter.Eventually.of_forall (fun N => by dsimp [tailBudget, r]; ring)

end GRWTSK.MeasureAndIntegration.DyadicDecayMoment
