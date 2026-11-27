import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Data.Nat.Log

/-! # Comparison of the exponents in classical integer factoring bounds

Use `t = log N`. The deterministic bound takes `a = 3/4, g = 0` and
coefficient three. The Las Vegas time and space envelopes use
`a = 1/3, g = 2/3` and their separate limsup constants.
-/
namespace GRWTSK.IntegerFactorization

open Filter Real
open scoped Topology

noncomputable def rateExponent (a g t : ℝ) : ℝ := t ^ a * (log t) ^ g

theorem exponent_sublinear {a : ℝ} (ha : a < 1) (g : ℝ) :
    Tendsto (fun t => rateExponent a g t / t) atTop (𝓝 0) := by
  refine (isLittleO_log_rpow_rpow_atTop g (sub_pos.mpr ha)).tendsto_div_nhds_zero.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with t ht
  simp only [rateExponent, Real.rpow_sub ht, Real.rpow_one, div_div_eq_mul_div]
  ring

theorem exponent_superlogarithmic {a g : ℝ} (ha : 0 < a) (hg : 0 ≤ g) :
    Tendsto (fun t => rateExponent a g t / log t) atTop atTop := by
  have hsmall : Tendsto (fun t : ℝ => log t / rateExponent a g t) atTop (𝓝 0) := by
    refine squeeze_zero' ?_ ?_ (isLittleO_log_rpow_atTop ha).tendsto_div_nhds_zero
    · filter_upwards [eventually_gt_atTop (1 : ℝ)] with t ht
      exact div_nonneg (log_nonneg ht.le)
        (mul_nonneg (Real.rpow_nonneg (by linarith) _) (Real.rpow_nonneg (log_nonneg ht.le) _))
    · filter_upwards [eventually_gt_atTop (1 : ℝ), tendsto_log_atTop.eventually_ge_atTop 1] with t ht hlog
      apply div_le_div_of_nonneg_left (log_nonneg ht.le) (Real.rpow_pos_of_pos (by linarith) _)
      exact le_mul_of_one_le_right (Real.rpow_nonneg (by linarith) _) (Real.one_le_rpow hlog hg)
  have hpos : ∀ᶠ t : ℝ in atTop, 0 < log t / rateExponent a g t := by
    filter_upwards [eventually_gt_atTop (1 : ℝ)] with t ht
    exact div_pos (log_pos ht) (mul_pos (Real.rpow_pos_of_pos (by linarith) _)
      (Real.rpow_pos_of_pos (log_pos ht) _))
  simpa only [Function.comp_def, inv_div] using
    (tendsto_inv_nhdsGT_zero.comp (tendsto_nhdsWithin_iff.mpr ⟨hsmall, hpos⟩))

/-- The dyadic interval of the canonical natural bit length, after taking
natural logarithms. -/
theorem log_dyadic_interval (n : ℕ) (hn : n ≠ 0) :
    (n.log2 : ℝ) * log 2 ≤ log n ∧
    log n < ((n.log2 : ℝ) + 1) * log 2 := by
  have hh : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have h₁ : (2 : ℝ) ^ n.log2 ≤ n := by
    rw [Nat.log2_eq_log_two]
    exact_mod_cast Nat.pow_log_le_self 2 hn
  have h₂ : (n : ℝ) < (2 : ℝ) ^ (n.log2 + 1) := by
    rw [Nat.log2_eq_log_two]
    exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) n
  constructor
  · simpa only [log_pow] using log_le_log (by positivity) h₁
  · simpa only [log_pow, Nat.cast_add, Nat.cast_one] using log_lt_log hh h₂

theorem exponent_bit_limits {a g : ℝ} (ha : 0 < a) (ha' : a < 1) (hg : 0 ≤ g) :
    Tendsto (fun n : ℕ => rateExponent a g (log n) / ((n.log2 : ℝ) + 1)) atTop (𝓝 0) ∧
    Tendsto (fun n : ℕ => rateExponent a g (log n) / log ((n.log2 : ℝ) + 1)) atTop atTop := by
  have ht : Tendsto (fun n : ℕ => log (n : ℝ)) atTop atTop :=
    tendsto_log_atTop.comp tendsto_natCast_atTop_atTop
  have htwo : 0 < log 2 := log_pos (by norm_num)
  constructor
  · have hu := (exponent_sublinear ha' g).comp ht
    have hup := hu.mul_const (log 2)
    rw [zero_mul] at hup
    apply squeeze_zero' _ _ hup
    · filter_upwards [ht.eventually_ge_atTop 1] with n hn
      exact div_nonneg (mul_nonneg (rpow_nonneg (by linarith) _)
        (rpow_nonneg (log_nonneg hn) _)) (by positivity)
    · filter_upwards [ht.eventually_ge_atTop 1, eventually_ge_atTop (1 : ℕ)] with n hn hn'
      obtain ⟨_, hd⟩ := log_dyadic_interval n (by omega)
      dsimp [Function.comp_def]
      have hpos : 0 < log (n : ℝ) := by linarith
      have hu0 : 0 ≤ rateExponent a g (log n) :=
        mul_nonneg (rpow_nonneg hpos.le _) (rpow_nonneg (log_nonneg hn) _)
      rw [div_mul_eq_mul_div, div_le_div_iff₀ (by positivity) hpos]
      calc
        _ ≤ rateExponent a g (log n) * (((n.log2 : ℝ) + 1) * log 2) :=
          mul_le_mul_of_nonneg_left hd.le hu0
        _ = _ := by ring
  · have hu := (exponent_superlogarithmic ha hg).comp ht
    apply tendsto_atTop_mono' atTop _ (hu.atTop_mul_const (by norm_num : 0 < (1/2 : ℝ)))
    filter_upwards [ht.eventually_ge_atTop (2 + 2 / log 2), eventually_ge_atTop (2 : ℕ)] with n hn hn'
    obtain ⟨hlo, _⟩ := log_dyadic_interval n (by omega)
    have hnlog : 1 ≤ n.log2 := (Nat.le_log2 (by omega : n ≠ 0)).mpr (by simpa)
    have ht1 : 1 < log (n : ℝ) := by linarith [div_pos (by norm_num : 0 < (2 : ℝ)) htwo]
    have ht2 : 1 / log 2 ≤ log (n : ℝ) - 1 := by
      rw [div_eq_mul_inv] at hn ⊢
      linarith [inv_pos.mpr htwo]
    have hdiv := (le_div_iff₀ htwo).mpr hlo
    have hbb : ((n.log2 : ℝ) + 1) ≤ (log (n : ℝ))^2 := by
      have hmul := mul_le_mul_of_nonneg_left ht2 (zero_le_one.trans ht1.le)
      rw [div_eq_mul_inv] at hdiv hmul
      nlinarith
    have hlog := log_le_log (by positivity : (0 : ℝ) < n.log2 + 1) hbb
    rw [log_pow, Nat.cast_ofNat] at hlog
    have hbdpos : 0 < log ((n.log2 : ℝ) + 1) := log_pos (by exact_mod_cast (by omega : 1 < n.log2 + 1))
    have htlpos := log_pos ht1
    have hnum : 0 ≤ rateExponent a g (log n) :=
      mul_nonneg (rpow_nonneg (zero_le_one.trans ht1.le) _) (rpow_nonneg htlpos.le _)
    dsimp [Function.comp_def]
    rw [div_mul_eq_mul_div, div_le_div_iff₀ htlpos hbdpos]
    nlinarith [mul_le_mul_of_nonneg_left hlog hnum]

end GRWTSK.IntegerFactorization
