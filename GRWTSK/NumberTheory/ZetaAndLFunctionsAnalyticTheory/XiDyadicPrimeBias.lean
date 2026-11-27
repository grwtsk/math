import Mathlib.Analysis.Normed.Group.Tannery
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Descending blocks of the ordinary-prime discrepancy

The sample uses each ordinary prime once and the smooth density `dy / log y`.
The finite doubling identity and the free-successor criterion concern its actual
harmonic prefix. The order-theoretic argument only assumes convergence. The arithmetic limit
is obtained from the logarithm series and two dominated convergence arguments.
-/

open Filter MeasureTheory
open scoped Topology BigOperators

namespace GRWTSK.XiDyadicPrimeBias

noncomputable section

/-- The scalar test weight at the real argument `y`. -/
def weight (n : ℕ) (y : ℝ) : ℝ := (y ^ 2)⁻¹ * (1 - (y ^ 2)⁻¹) ^ n

/-- Ordinary-prime sum less its density integral on the open ray. -/
def primeBias (n : ℕ) : ℝ :=
  (∑' p : Nat.Primes, weight n (p.val : ℝ)) -
    ∫ y in Set.Ioi (1 : ℝ), weight n y / Real.log y

/-- Sum of the first `N` positive-index harmonic bias terms. -/
def harmonicPrefix (N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, primeBias (i + 1) / ((i : ℝ) + 1)

/-- The proposed limiting value for the actual harmonic prefix. -/
def primeLimit : ℝ :=
  2 * ((∑' p : Nat.Primes, Real.log (p.val : ℝ) / (p.val : ℝ) ^ 2) - 1)

theorem weight_mem_Icc {y : ℝ} (hy : 1 ≤ y) (n : ℕ) :
    weight n y ∈ Set.Icc 0 ((y ^ 2)⁻¹) := by
  have hsq : 1 ≤ y ^ 2 := by nlinarith [sq_nonneg (y - 1)]
  have h₀ : 0 ≤ (y ^ 2)⁻¹ := inv_nonneg.mpr (sq_nonneg y)
  have h₁ : (y ^ 2)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ hsq
  refine ⟨mul_nonneg h₀ (pow_nonneg (sub_nonneg.mpr h₁) n), ?_⟩
  change (y ^ 2)⁻¹ * (1 - (y ^ 2)⁻¹) ^ n ≤ _
  exact mul_le_of_le_one_right h₀ (pow_le_one₀ (sub_nonneg.mpr h₁) (sub_le_self _ h₀))

theorem summable_prime_weight (n : ℕ) :
    Summable (fun p : Nat.Primes ↦ weight n (p.val : ℝ)) := by
  have hp : ∀ p : Nat.Primes, 1 ≤ (p.val : ℝ) := fun p ↦ by exact_mod_cast p.property.one_lt.le
  apply Summable.of_nonneg_of_le (fun p ↦ (weight_mem_Icc (hp p) n).1)
    (fun p ↦ (weight_mem_Icc (hp p) n).2)
  exact (Real.summable_nat_pow_inv.mpr (show 1 < 2 by decide)).comp_injective
    (Subtype.val_injective (p := Nat.Prime))

/-- A single harmonic-weighted term at the positive index `i + 1`. -/
def sample (i : ℕ) (y : ℝ) : ℝ := weight (i+1) y / ((i : ℝ) + 1)
/-- The finite harmonic kernel before applying the prime sum and integral. -/
def row (N : ℕ) (y : ℝ) : ℝ := ∑ i ∈ Finset.range N, sample i y
/-- Sum of the nonnegative scalar log-series on the open ray `1 < y`. -/
def envelope (y : ℝ) : ℝ := 2 * (Real.log y / y^2)

private theorem sample_nonneg {y : ℝ} (hy : 1 < y) (i : ℕ) :
    0 ≤ sample i y := div_nonneg (weight_mem_Icc hy.le _).1 (by positivity)

theorem sample_hasSum {y : ℝ} (hy : 1 < y) :
    HasSum (fun i ↦ sample i y) (envelope y) := by
  have hy2 : 1 < y^2 := by nlinarith [sq_nonneg (y - 1)]
  have harg : |1-(y^2)⁻¹| < 1 := by
    rw [abs_of_nonneg (sub_nonneg.mpr (inv_le_one_of_one_le₀ hy2.le))]
    linarith [inv_pos.mpr (lt_trans zero_lt_one hy2)]
  have h := (Real.hasSum_pow_div_log_of_abs_lt_one harg).mul_left ((y^2)⁻¹)
  convert h using 1
  · ext i; simp [sample, weight, mul_div_assoc]
  · simp [envelope, Real.log_inv, Real.log_pow, div_eq_mul_inv, mul_comm, mul_left_comm]

theorem row_bounds {y : ℝ} (hy : 1 < y) (N : ℕ) :
    0 ≤ row N y ∧ row N y ≤ envelope y := by
  have hs := sample_hasSum hy
  refine ⟨Finset.sum_nonneg (fun i _ ↦ sample_nonneg hy i), ?_⟩
  rw [← hs.tsum_eq]
  exact hs.summable.sum_le_tsum _ (fun i _ ↦ sample_nonneg hy i)

private theorem envelope_div_log {y : ℝ} (hy : 1 < y) :
    envelope y / Real.log y = 2 * (y^2)⁻¹ := by
  unfold envelope
  field_simp [(Real.log_pos hy).ne', (lt_trans zero_lt_one hy).ne']

private theorem integrable_inverse_square :
    IntegrableOn (fun y : ℝ ↦ 2 * (y^2)⁻¹) (Set.Ioi 1) := by
  have h := (integrableOn_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num) zero_lt_one)
  apply Integrable.const_mul (c := (2 : ℝ))
  simpa [IntegrableOn] using h

private theorem summable_envelope :
    Summable (fun p : Nat.Primes ↦ envelope (p.val : ℝ)) := by
  have h := Real.summable_nat_rpow.mpr (show (-3/2 : ℝ) < -1 by norm_num)
  have h' := h.comp_injective (Subtype.val_injective (p := Nat.Prime))
  apply Summable.of_nonneg_of_le (fun p ↦ by
    have hp : 1 < (p.val : ℝ) := by exact_mod_cast p.property.one_lt
    exact mul_nonneg (by norm_num) (div_nonneg (Real.log_pos hp).le (sq_nonneg _)))
      _ (h'.mul_left 4)
  intro p
  have hp : 0 < (p.val : ℝ) := by exact_mod_cast p.property.pos
  change envelope (p.val : ℝ) ≤ 4 * (p.val : ℝ)^(-3/2 : ℝ)
  have hlog := Real.log_le_rpow_div hp.le (show 0 < (1/2 : ℝ) by norm_num)
  rw [show (-3/2 : ℝ) = 1/2-2 by norm_num, Real.rpow_sub hp, Real.rpow_two]
  unfold envelope
  have hdiv := div_le_div_of_nonneg_right hlog (sq_nonneg (p.val : ℝ))
  linarith only [show Real.log (p.val : ℝ) / (p.val : ℝ)^2 ≤
    2 * ((p.val : ℝ) ^ (1/2 : ℝ) / (p.val : ℝ)^2) by
      calc _ ≤ _ := hdiv
           _ = _ := by ring]

theorem prefix_eq_row (N : ℕ) :
    harmonicPrefix N = (∑' p : Nat.Primes, row N (p.val : ℝ)) -
      ∫ y in Set.Ioi (1 : ℝ), row N y / Real.log y := by
  have hs : ∀ i : ℕ, Summable (fun p : Nat.Primes ↦ sample i (p.val : ℝ)) :=
    fun i ↦ (summable_prime_weight (i+1)).div_const _
  have hi : ∀ i : ℕ, IntegrableOn (fun y ↦ sample i y / Real.log y) (Set.Ioi 1) := by
    intro i
    apply integrable_inverse_square.mono' (by apply Measurable.aestronglyMeasurable; unfold sample weight; fun_prop)
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
    have hs := sample_hasSum hy
    rw [Real.norm_eq_abs, abs_of_nonneg (div_nonneg (sample_nonneg hy i) (Real.log_pos hy).le),
      ← envelope_div_log hy, div_le_div_iff_of_pos_right (Real.log_pos hy), ← hs.tsum_eq]
    exact hs.summable.le_tsum _ (fun k _ ↦ sample_nonneg hy k)
  unfold harmonicPrefix row
  rw [Summable.tsum_finsetSum (fun i _ ↦ hs i)]
  simp_rw [Finset.sum_div]
  rw [integral_finsetSum _ (fun i _ ↦ hi i), ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp only [sample, primeBias, sub_div, tsum_div_const]
  congr 1
  rw [← integral_div]
  apply integral_congr_ae
  exact .of_forall fun y ↦ by ring

/-- The ordinary-prime harmonic prefix converges to its logarithmic Euler sum
minus the exact density integral. Both exchanges use genuine integrable or
summable majorants. -/
theorem tendsto_harmonicPrefix : Tendsto harmonicPrefix atTop (𝓝 primeLimit) := by
  have hp : ∀ p : Nat.Primes, 1 < (p.val : ℝ) := fun p ↦ by exact_mod_cast p.property.one_lt
  have hpr := tendsto_tsum_of_dominated_convergence summable_envelope
    (fun p ↦ (sample_hasSum (hp p)).tendsto_sum_nat)
    (.of_forall fun N p ↦ by
      change ‖row N (p.val : ℝ)‖ ≤ _
      rw [Real.norm_eq_abs, abs_of_nonneg (row_bounds (hp p) N).1]
      exact (row_bounds (hp p) N).2)
  have hd : Tendsto (fun N ↦ ∫ y in Set.Ioi (1 : ℝ), row N y / Real.log y) atTop
      (𝓝 (∫ y in Set.Ioi (1 : ℝ), 2 * (y^2)⁻¹)) := by
    apply tendsto_integral_of_dominated_convergence (fun y : ℝ ↦ 2 * (y^2)⁻¹)
      (fun n ↦ by apply Measurable.aestronglyMeasurable; unfold row sample weight; fun_prop) integrable_inverse_square
    · intro n
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
      rw [Real.norm_eq_abs, abs_of_nonneg (div_nonneg (row_bounds hy n).1 (Real.log_pos hy).le),
        ← envelope_div_log hy, div_le_div_iff_of_pos_right (Real.log_pos hy)]
      exact (row_bounds hy n).2
    · filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
      rw [← envelope_div_log hy]
      exact (sample_hasSum hy).tendsto_sum_nat.div_const _
  have integral_value : (∫ y in Set.Ioi (1 : ℝ), 2 * (y^2)⁻¹) = 2 := by
    rw [integral_const_mul]
    have h := integral_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num) (show (0 : ℝ) < 1 by norm_num)
    norm_num at h
    rw [h]
    norm_num
  rw [integral_value] at hd
  have hf : harmonicPrefix = fun N ↦ (∑' p : Nat.Primes, row N (p.val : ℝ)) -
        ∫ y in Set.Ioi (1 : ℝ), row N y / Real.log y := funext prefix_eq_row
  have hL : primeLimit = (∑' p : Nat.Primes, envelope (p.val : ℝ)) - 2 := by
    unfold primeLimit envelope
    rw [tsum_mul_left]
    ring
  rw [hf, hL]
  exact hpr.sub hd

/-- All terms in this difference have indices in `{N+1,...,N+K}`. -/
theorem prefix_sub_eq_block (N K : ℕ) :
    harmonicPrefix (N + K) - harmonicPrefix N =
      ∑ j ∈ Finset.range K, primeBias (N + j + 1) / (((N + j : ℕ) : ℝ) + 1) := by
  unfold harmonicPrefix
  rw [Finset.sum_range_add]
  abel

theorem doubling_descent_iff_block_nonpos (N : ℕ) :
    harmonicPrefix (2 * N) ≤ harmonicPrefix N ↔
      (∑ j ∈ Finset.range N, primeBias (N + j + 1) / (((N + j : ℕ) : ℝ) + 1)) ≤ 0 := by
  rw [← prefix_sub_eq_block, two_mul, sub_nonpos]

/-- A nonincreasing step to a strictly later index can be iterated to an
arbitrarily far witness, without assuming that every adjacent term decreases. -/
theorem limit_le_of_later_descent {s : ℕ → ℝ} {L : ℝ} {N : ℕ}
    (hs : Tendsto s atTop (𝓝 L))
    (hd : ∀ n ≥ N, ∃ m > n, s m ≤ s n) : L ≤ s N := by
  by_contra! hbad
  obtain ⟨K, hK⟩ := eventually_atTop.mp (hs.eventually (lt_mem_nhds hbad))
  have reach : ∀ k : ℕ, ∃ m, N + k ≤ m ∧ s m ≤ s N := by
    intro k
    induction k with
    | zero => exact ⟨N, by omega, le_rfl⟩
    | succ k ih =>
        obtain ⟨m, hm, hval⟩ := ih
        obtain ⟨l, hl, hstep⟩ := hd m (by omega)
        exact ⟨l, by omega, hstep.trans hval⟩
  obtain ⟨m, hm, hval⟩ := reach K
  exact (not_lt_of_ge hval) (hK m (by omega))

/-- For a convergent sequence, eventual domination of its limit is equivalent
to eventual existence of a later term no larger than the current one. A run
ending at the last exact touch of the limit can be omitted. -/
theorem eventually_limit_le_iff_later_descent {s : ℕ → ℝ} {L : ℝ}
    (hs : Tendsto s atTop (𝓝 L)) :
    (∀ᶠ n in atTop, L ≤ s n) ↔ (∀ᶠ n in atTop, ∃ m > n, s m ≤ s n) := by
  constructor
  · intro h
    by_cases hc : ∀ k : ℕ, ∃ m ≥ k, s m ≤ L
    · filter_upwards [h] with n hn
      obtain ⟨m, hm, hsm⟩ := hc (n + 1)
      exact ⟨m, by omega, hsm.trans hn⟩
    · push Not at hc
      obtain ⟨K, hK⟩ := hc
      filter_upwards [eventually_ge_atTop K] with n hn
      obtain ⟨M, hM⟩ := eventually_atTop.mp (hs.eventually (gt_mem_nhds (hK n hn)))
      exact ⟨max (n + 1) M, by omega, (hM _ (le_max_right _ _)).le⟩
  · intro hd
    obtain ⟨K, hK⟩ := eventually_atTop.mp hd
    filter_upwards [eventually_ge_atTop K] with n hn
    exact limit_le_of_later_descent hs (fun m hm ↦ hK m (hn.trans hm))

/-- A summably telescoping allowance is represented by its real tail `g`.
The adjusted sequence `s+g` descends when the raw doubling increment is
at most the loss in that allowance. -/
theorem limit_le_add_of_doubling_allowance {s g : ℕ → ℝ} {L : ℝ} {N : ℕ}
    (hs : Tendsto s atTop (𝓝 L)) (hg : Tendsto g atTop (𝓝 0)) (hN : 0 < N)
    (hd : ∀ m ≥ N, s (2*m) - s m ≤ g m - g (2*m)) :
    L ≤ s N + g N := by
  have hsum : Tendsto (fun m ↦ s m + g m) atTop (𝓝 L) := by simpa using hs.add hg
  apply limit_le_of_later_descent hsum
  intro m hm
  exact ⟨2*m, by omega, by linarith [hd m hm]⟩

/-- The arithmetic condition allows a different positive block length at
each start. Both sides concern the identical ordinary-prime source. -/
theorem eventually_primeLimit_le_iff_nonpositive_block :
    (∀ᶠ n in atTop, primeLimit ≤ harmonicPrefix n) ↔
      ∀ᶠ n in atTop, ∃ k : ℕ, 0 < k ∧
        (∑ j ∈ Finset.range k, primeBias (n + j + 1) / (((n + j : ℕ) : ℝ) + 1)) ≤ 0 := by
  rw [eventually_limit_le_iff_later_descent tendsto_harmonicPrefix]
  apply Filter.eventually_congr
  exact Filter.Eventually.of_forall fun n ↦ by
    constructor
    · rintro ⟨m, hm, hval⟩
      refine ⟨m-n, by omega, ?_⟩
      rw [← prefix_sub_eq_block, show n + (m - n) = m by omega, sub_nonpos]
      exact hval
    · rintro ⟨k, hk, hval⟩
      refine ⟨n+k, by omega, ?_⟩
      simpa only [← prefix_sub_eq_block, sub_nonpos] using hval

/-- An eventual sign of the actual next doubling block bounds the limiting
Euler sum by the current prefix at every positive index beyond its threshold. -/
theorem primeLimit_le_of_doubling_blocks {N : ℕ} (hN : 0 < N)
    (hd : ∀ m ≥ N, (∑ j ∈ Finset.range m,
      primeBias (m + j + 1) / (((m + j : ℕ) : ℝ) + 1)) ≤ 0) :
    primeLimit ≤ harmonicPrefix N := by
  apply limit_le_of_later_descent tendsto_harmonicPrefix
  intro m hm
  exact ⟨2*m, by omega, (doubling_descent_iff_block_nonpos m).2 (hd m hm)⟩

end
end GRWTSK.XiDyadicPrimeBias
