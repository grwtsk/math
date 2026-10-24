# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee6cbc4969b3160be45b205b710dee3aa722b452` · SHA-256 `815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Sébastien Gouëzel,
  Rémy Degenne, David Loeffler
-/
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal

#align_import analysis.special_functions.pow.asymptotics from "leanprover-community/mathlib"@"0b9eaaa7686280fad8cce467f5c3c57ee6ce77f8"

/-!
# Limits and asymptotics of power functions at `+∞`

This file contains results about the limiting behaviour of power functions at `+∞`. For convenience
some results on asymptotics as `x → 0` (those which are not just continuity statements) are also
located here.
-/

set_option linter.uppercaseLean3 false

noncomputable section

open Classical Real Topology NNReal ENNReal Filter BigOperators ComplexConjugate Finset Set

/-!
## Limits at `+∞`
-/


section Limits

open Real Filter

/-- The function `x ^ y` tends to `+∞` at `+∞` for any positive real `y`. -/
theorem tendsto_rpow_atTop {y : ℝ} (hy : 0 < y) : Tendsto (fun x : ℝ => x ^ y) atTop atTop := by
  rw [tendsto_atTop_atTop]
  intro b
  use max b 0 ^ (1 / y)
  intro x hx
  exact
    le_of_max_le_left
      (by
        convert rpow_le_rpow (rpow_nonneg_of_nonneg (le_max_right b 0) (1 / y)) hx (le_of_lt hy)
          using 1
        rw [← rpow_mul (le_max_right b 0), (eq_div_iff (ne_of_gt hy)).mp rfl, Real.rpow_one])
#align tendsto_rpow_at_top tendsto_rpow_atTop

/-- The function `x ^ (-y)` tends to `0` at `+∞` for any positive real `y`. -/
theorem tendsto_rpow_neg_atTop {y : ℝ} (hy : 0 < y) : Tendsto (fun x : ℝ => x ^ (-y)) atTop (𝓝 0) :=
  Tendsto.congr' (eventuallyEq_of_mem (Ioi_mem_atTop 0) fun _ hx => (rpow_neg (le_of_lt hx) y).symm)
    (tendsto_rpow_atTop hy).inv_tendsto_atTop
#align tendsto_rpow_neg_at_top tendsto_rpow_neg_atTop

open Asymptotics in
lemma tendsto_rpow_atTop_of_base_lt_one (b : ℝ) (hb₀ : -1 < b) (hb₁ : b < 1) :
    Tendsto (rpow b) atTop (𝓝 (0:ℝ)) := by
  show Tendsto (fun z => b^z) atTop (𝓝 0)
  rcases lt_trichotomy b 0 with hb|rfl|hb
  case inl =>   -- b < 0
    simp_rw [Real.rpow_def_of_nonpos hb.le, hb.ne, ite_false]
    rw [←isLittleO_const_iff (c := (1:ℝ)) one_ne_zero, (one_mul (1 : ℝ)).symm]
    refine IsLittleO.mul_isBigO ?exp ?cos
    case exp =>
      rw [isLittleO_const_iff one_ne_zero]
      refine tendsto_exp_atBot.comp <| (tendsto_const_mul_atBot_of_neg ?_).mpr tendsto_id
      rw [←log_neg_eq_log, log_neg_iff (by linarith)]
      linarith
    case cos =>
      rw [isBigO_iff]
      exact ⟨1, eventually_of_forall fun x => by simp [Real.abs_cos_le_one]⟩
  case inr.inl =>  -- b = 0
    refine Tendsto.mono_right ?_ (Iff.mpr pure_le_nhds_iff rfl)
    rw [tendsto_pure]
    filter_upwards [eventually_ne_atTop 0] with _ hx
    simp [hx]
  case inr.inr =>   -- b > 0
    simp_rw [Real.rpow_def_of_pos hb]
    refine tendsto_exp_atBot.comp <| (tendsto_const_mul_atBot_of_neg ?_).mpr tendsto_id
    exact (log_neg_iff hb).mpr hb₁

lemma tendsto_rpow_atTop_of_base_gt_one (b : ℝ) (hb : 1 < b) :
    Tendsto (rpow b) atBot (𝓝 (0:ℝ)) := by
  show Tendsto (fun z => b^z) atBot (nhds 0)
  simp_rw [Real.rpow_def_of_pos (by positivity : 0 < b)]
  refine tendsto_exp_atBot.comp <| (tendsto_const_mul_atBot_of_pos ?_).mpr tendsto_id
  exact (log_pos_iff (by positivity)).mpr <| by aesop

lemma tendsto_rpow_atBot_of_base_lt_one (b : ℝ) (hb₀ : 0 < b) (hb₁ : b < 1) :
    Tendsto (rpow b) atBot atTop := by
  show Tendsto (fun z => b^z) atBot atTop
  simp_rw [Real.rpow_def_of_pos (by positivity : 0 < b)]
  refine tendsto_exp_atTop.comp <| (tendsto_const_mul_atTop_iff_neg <| tendsto_id (α := ℝ)).mpr ?_
  exact (log_neg_iff hb₀).mpr hb₁

lemma tendsto_rpow_atBot_of_base_gt_one (b : ℝ) (hb : 1 < b) : Tendsto (rpow b) atBot (𝓝 0) := by
  show Tendsto (fun z => b^z) atBot (𝓝 0)
  simp_rw [Real.rpow_def_of_pos (by positivity : 0 < b)]
  refine tendsto_exp_atBot.comp <| (tendsto_const_mul_atBot_iff_pos <| tendsto_id (α := ℝ)).mpr ?_
  exact (log_pos_iff (by positivity)).mpr <| by aesop


/-- The function `x ^ (a / (b * x + c))` tends to `1` at `+∞`, for any real numbers `a`, `b`, and
`c` such that `b` is nonzero. -/
theorem tendsto_rpow_div_mul_add (a b c : ℝ) (hb : 0 ≠ b) :
    Tendsto (fun x => x ^ (a / (b * x + c))) atTop (𝓝 1) := by
  refine'
    Tendsto.congr' _
      ((tendsto_exp_nhds_0_nhds_1.comp
            (by
              simpa only [mul_zero, pow_one] using
                (@tendsto_const_nhds _ _ _ a _).mul
                  (tendsto_div_pow_mul_exp_add_atTop b c 1 hb))).comp
        tendsto_log_atTop)
  apply eventuallyEq_of_mem (Ioi_mem_atTop (0 : ℝ))
  intro x hx
  simp only [Set.mem_Ioi, Function.comp_apply] at hx ⊢
  rw [exp_log hx, ← exp_log (rpow_pos_of_pos hx (a / (b * x + c))), log_rpow hx (a / (b * x + c))]
  field_simp
#align tendsto_rpow_div_mul_add tendsto_rpow_div_mul_add

/-- The function `x ^ (1 / x)` tends to `1` at `+∞`. -/
theorem tendsto_rpow_div : Tendsto (fun x => x ^ ((1 : ℝ) / x)) atTop (𝓝 1) := by
  convert tendsto_rpow_div_mul_add (1 : ℝ) _ (0 : ℝ) zero_ne_one
  funext
  congr 2
  ring
#align tendsto_rpow_div tendsto_rpow_div

/-- The function `x ^ (-1 / x)` tends to `1` at `+∞`. -/
theorem tendsto_rpow_neg_div : Tendsto (fun x => x ^ (-(1 : ℝ) / x)) atTop (𝓝 1) := by
  convert tendsto_rpow_div_mul_add (-(1 : ℝ)) _ (0 : ℝ) zero_ne_one
  funext
  congr 2
  ring
#align tendsto_rpow_neg_div tendsto_rpow_neg_div

/-- The function `exp(x) / x ^ s` tends to `+∞` at `+∞`, for any real number `s`. -/
theorem tendsto_exp_div_rpow_atTop (s : ℝ) : Tendsto (fun x : ℝ => exp x / x ^ s) atTop atTop := by
  cases' archimedean_iff_nat_lt.1 Real.instArchimedean s with n hn
  refine' tendsto_atTop_mono' _ _ (tendsto_exp_div_pow_atTop n)
  filter_upwards [eventually_gt_atTop (0 : ℝ), eventually_ge_atTop (1 : ℝ)]with x hx₀ hx₁
  rw [div_le_div_left (exp_pos _) (pow_pos hx₀ _) (rpow_pos_of_pos hx₀ _), ← Real.rpow_nat_cast]
  exact rpow_le_rpow_of_exponent_le hx₁ hn.le
#align tendsto_exp_div_rpow_at_top tendsto_exp_div_rpow_atTop

/-- The function `exp (b * x) / x ^ s` tends to `+∞` at `+∞`, for any real `s` and `b > 0`. -/
theorem tendsto_exp_mul_div_rpow_atTop (s : ℝ) (b : ℝ) (hb : 0 < b) :
    Tendsto (fun x : ℝ => exp (b * x) / x ^ s) atTop atTop := by
  refine' ((tendsto_rpow_atTop hb).comp (tendsto_exp_div_rpow_atTop (s / b))).congr' _
  filter_upwards [eventually_ge_atTop (0 : ℝ)]with x hx₀
  simp [Real.div_rpow, (exp_pos x).le, rpow_nonneg_of_nonneg, ← Real.rpow_mul, ← exp_mul,
    mul_comm x, hb.ne', *]
#align tendsto_exp_mul_div_rpow_at_top tendsto_exp_mul_div_rpow_atTop

/-- The function `x ^ s * exp (-b * x)` tends to `0` at `+∞`, for any real `s` and `b > 0`. -/
theorem tendsto_rpow_mul_exp_neg_mul_atTop_nhds_0 (s : ℝ) (b : ℝ) (hb : 0 < b) :
    Tendsto (fun x : ℝ => x ^ s * exp (-b * x)) atTop (𝓝 0) := by
  refine' (tendsto_exp_mul_div_rpow_atTop s b hb).inv_tendsto_atTop.congr' _
  filter_upwards with x using by simp [exp_neg, inv_div, div_eq_mul_inv _ (exp _)]
#align tendsto_rpow_mul_exp_neg_mul_at_top_nhds_0 tendsto_rpow_mul_exp_neg_mul_atTop_nhds_0

nonrec theorem NNReal.tendsto_rpow_atTop {y : ℝ} (hy : 0 < y) :
    Tendsto (fun x : ℝ≥0 => x ^ y) atTop atTop := by
  rw [Filter.tendsto_atTop_atTop]
  intro b
  obtain ⟨c, hc⟩ := tendsto_atTop_atTop.mp (tendsto_rpow_atTop hy) b
  use c.toNNReal
  intro a ha
  exact_mod_cast hc a (Real.toNNReal_le_iff_le_coe.mp ha)
#align nnreal.tendsto_rpow_at_top NNReal.tendsto_rpow_atTop

theorem ENNReal.tendsto_rpow_at_top {y : ℝ} (hy : 0 < y) :
    Tendsto (fun x : ℝ≥0∞ => x ^ y) (𝓝 ⊤) (𝓝 ⊤) := by
  rw [ENNReal.tendsto_nhds_top_iff_nnreal]
  intro x
  obtain ⟨c, _, hc⟩ :=
    (atTop_basis_Ioi.tendsto_iff atTop_basis_Ioi).mp (NNReal.tendsto_rpow_atTop hy) x trivial
  have hc' : Set.Ioi ↑c ∈ 𝓝 (⊤ : ℝ≥0∞) := Ioi_mem_nhds ENNReal.coe_lt_top
  refine' eventually_of_mem hc' _
  intro a ha
  by_cases ha' : a = ⊤
  · simp [ha', hy]
  lift a to ℝ≥0 using ha'
  -- Porting note: reduced defeq abuse
  simp only [Set.mem_Ioi, coe_lt_coe] at ha hc
  rw [ENNReal.coe_rpow_of_nonneg _ hy.le]
  exact_mod_cast hc a ha
#align ennreal.tendsto_rpow_at_top ENNReal.tendsto_rpow_at_top

end Limits

/-!
## Asymptotic results: `IsBigO`, `IsLittleO` and `IsTheta`
-/


namespace Complex

section

variable {α : Type*} {l : Filter α} {f g : α → ℂ}

open Asymptotics

theorem isTheta_exp_arg_mul_im (hl : IsBoundedUnder (· ≤ ·) l fun x => |(g x).im|) :
    (fun x => Real.exp (arg (f x) * im (g x))) =Θ[l] fun _ => (1 : ℝ) := by
  rcases hl with ⟨b, hb⟩
  refine' Real.isTheta_exp_comp_one.2 ⟨π * b, _⟩
  rw [eventually_map] at hb ⊢
  refine' hb.mono fun x hx => _
  erw [abs_mul]
  exact mul_le_mul (abs_arg_le_pi _) hx (abs_nonneg _) Real.pi_pos.le
#align complex.is_Theta_exp_arg_mul_im Complex.isTheta_exp_arg_mul_im

theorem isBigO_cpow_rpow (hl : IsBoundedUnder (· ≤ ·) l fun x => |(g x).im|) :
    (fun x => f x ^ g x) =O[l] fun x => abs (f x) ^ (g x).re :=
  calc
    (fun x => f x ^ g x) =O[l]
        (show α → ℝ from fun x => abs (f x) ^ (g x).re / Real.exp (arg (f x) * im (g x))) :=
      isBigO_of_le _ fun x => (abs_cpow_le _ _).trans (le_abs_self _)
    _ =Θ[l] (show α → ℝ from fun x => abs (f x) ^ (g x).re / (1 : ℝ)) :=
      ((isTheta_refl _ _).div (isTheta_exp_arg_mul_im hl))
    _ =ᶠ[l] (show α → ℝ from fun x => abs (f x) ^ (g x).re) := by
      simp only [ofReal_one, div_one]
      rfl
#align complex.is_O_cpow_rpow Complex.isBigO_cpow_rpow

theorem isTheta_cpow_rpow (hl_im : IsBoundedUnder (· ≤ ·) l fun x => |(g x).im|)
    (hl : ∀ᶠ x in l, f x = 0 → re (g x) = 0 → g x = 0) :
    (fun x => f x ^ g x) =Θ[l] fun x => abs (f x) ^ (g x).re :=
  calc
    (fun x => f x ^ g x) =Θ[l]
        (show α → ℝ from fun x => abs (f x) ^ (g x).re / Real.exp (arg (f x) * im (g x))) :=
      isTheta_of_norm_eventuallyEq' <| hl.mono fun x => abs_cpow_of_imp
    _ =Θ[l] (show α → ℝ from fun x => abs (f x) ^ (g x).re / (1 : ℝ)) :=
      ((isTheta_refl _ _).div (isTheta_exp_arg_mul_im hl_im))
    _ =ᶠ[l] (show α → ℝ from fun x => abs (f x) ^ (g x).re) := by
      simp only [ofReal_one, div_one]
      rfl
#align complex.is_Theta_cpow_rpow Complex.isTheta_cpow_rpow

theorem isTheta_cpow_const_rpow {b : ℂ} (hl : b.re = 0 → b ≠ 0 → ∀ᶠ x in l, f x ≠ 0) :
    (fun x => f x ^ b) =Θ[l] fun x => abs (f x) ^ b.re :=
  isTheta_cpow_rpow isBoundedUnder_const <| by
    -- Porting note: was
    -- simpa only [eventually_imp_distrib_right, Ne.def, ← not_frequently, not_imp_not, Imp.swap]
    --   using hl
    -- but including `Imp.swap` caused an infinite loop
    convert hl
    rw [eventually_imp_distrib_right]
    tauto
#align complex.is_Theta_cpow_const_rpow Complex.isTheta_cpow_const_rpow

end

end Complex

open Real

namespace Asymptotics

variable {α : Type*} {r c : ℝ} {l : Filter α} {f g : α → ℝ}

theorem IsBigOWith.rpow (h : IsBigOWith c l f g) (hc : 0 ≤ c) (hr : 0 ≤ r) (hg : 0 ≤ᶠ[l] g) :
    IsBigOWith (c ^ r) l (fun x => f x ^ r) fun x => g x ^ r := by
  apply IsBigOWith.of_bound
  filter_upwards [hg, h.bound]with x hgx hx
  calc
    |f x ^ r| ≤ |f x| ^ r := abs_rpow_le_abs_rpow _ _
    _ ≤ (c * |g x|) ^ r := (rpow_le_rpow (abs_nonneg _) hx hr)
    _ = c ^ r * |g x ^ r| := by rw [mul_rpow hc (abs_nonneg _), abs_rpow_of_nonneg hgx]
#align asymptotics.is_O_with.rpow Asymptotics.IsBigOWith.rpow

theorem IsBigO.rpow (hr : 0 ≤ r) (hg : 0 ≤ᶠ[l] g) (h : f =O[l] g) :
    (fun x => f x ^ r) =O[l] fun x => g x ^ r :=
  let ⟨_, hc, h'⟩ := h.exists_nonneg
  (h'.rpow hc hr hg).isBigO
#align asymptotics.is_O.rpow Asymptotics.IsBigO.rpow

theorem IsLittleO.rpow (hr : 0 < r) (hg : 0 ≤ᶠ[l] g) (h : f =o[l] g) :
    (fun x => f x ^ r) =o[l] fun x => g x ^ r :=
  IsLittleO.of_isBigOWith fun c hc =>
    ((h.forall_isBigOWith (rpow_pos_of_pos hc r⁻¹)).rpow (rpow_nonneg_of_nonneg hc.le _) hr.le
          hg).congr_const
      (by rw [← rpow_mul hc.le, inv_mul_cancel hr.ne', Real.rpow_one])
#align asymptotics.is_o.rpow Asymptotics.IsLittleO.rpow

end Asymptotics

open Asymptotics

/-- `x ^ s = o(exp(b * x))` as `x → ∞` for any real `s` and positive `b`. -/
theorem isLittleO_rpow_exp_pos_mul_atTop (s : ℝ) {b : ℝ} (hb : 0 < b) :
    (fun x : ℝ => x ^ s) =o[atTop] fun x => exp (b * x) :=
  Iff.mpr (isLittleO_iff_tendsto fun x h => absurd h (exp_pos _).ne') <| by
    simpa only [div_eq_mul_inv, exp_neg, neg_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_0 s b hb
#align is_o_rpow_exp_pos_mul_at_top isLittleO_rpow_exp_pos_mul_atTop

/-- `x ^ k = o(exp(b * x))` as `x → ∞` for any integer `k` and positive `b`. -/
theorem isLittleO_zpow_exp_pos_mul_atTop (k : ℤ) {b : ℝ} (hb : 0 < b) :
    (fun x : ℝ => x ^ k) =o[atTop] fun x => exp (b * x) := by
  simpa only [rpow_int_cast] using isLittleO_rpow_exp_pos_mul_atTop k hb
#align is_o_zpow_exp_pos_mul_at_top isLittleO_zpow_exp_pos_mul_atTop

/-- `x ^ k = o(exp(b * x))` as `x → ∞` for any natural `k` and positive `b`. -/
theorem isLittleO_pow_exp_pos_mul_atTop (k : ℕ) {b : ℝ} (hb : 0 < b) :
    (fun x : ℝ => x ^ k) =o[atTop] fun x => exp (b * x) := by
  simpa using isLittleO_zpow_exp_pos_mul_atTop k hb
#align is_o_pow_exp_pos_mul_at_top isLittleO_pow_exp_pos_mul_atTop

/-- `x ^ s = o(exp x)` as `x → ∞` for any real `s`. -/
theorem isLittleO_rpow_exp_atTop (s : ℝ) : (fun x : ℝ => x ^ s) =o[atTop] exp := by
  simpa only [one_mul] using isLittleO_rpow_exp_pos_mul_atTop s one_pos
#align is_o_rpow_exp_at_top isLittleO_rpow_exp_atTop

/-- `exp (-a * x) = o(x ^ s)` as `x → ∞`, for any positive `a` and real `s`. -/
theorem isLittleO_exp_neg_mul_rpow_atTop {a : ℝ} (ha : 0 < a) (b : ℝ) :
    IsLittleO atTop (fun x : ℝ => exp (-a * x)) fun x : ℝ => x ^ b := by
  apply isLittleO_of_tendsto'
  · refine' (eventually_gt_atTop 0).mp (eventually_of_forall fun t ht h => _)
    rw [rpow_eq_zero_iff_of_nonneg ht.le] at h
    exact (ht.ne' h.1).elim
  · refine' (tendsto_exp_mul_div_rpow_atTop (-b) a ha).inv_tendsto_atTop.congr' _
    refine' (eventually_ge_atTop 0).mp (eventually_of_forall fun t ht => _)
    dsimp only
    rw [Pi.inv_apply, inv_div, ← inv_div_inv, neg_mul, Real.exp_neg, rpow_neg ht, inv_inv]
#align is_o_exp_neg_mul_rpow_at_top isLittleO_exp_neg_mul_rpow_atTop

theorem isLittleO_log_rpow_atTop {r : ℝ} (hr : 0 < r) : log =o[atTop] fun x => x ^ r :=
  calc
    log =O[atTop] fun x => r * log x := isBigO_self_const_mul _ hr.ne' _ _
    _ =ᶠ[atTop] fun x => log (x ^ r) :=
      ((eventually_gt_atTop 0).mono fun _ hx => (log_rpow hx _).symm)
    _ =o[atTop] fun x => x ^ r := isLittleO_log_id_atTop.comp_tendsto (tendsto_rpow_atTop hr)
#align is_o_log_rpow_at_top isLittleO_log_rpow_atTop

theorem isLittleO_log_rpow_rpow_atTop {s : ℝ} (r : ℝ) (hs : 0 < s) :
    (fun x => log x ^ r) =o[atTop] fun x => x ^ s :=
  let r' := max r 1
  have hr : 0 < r' := lt_max_iff.2 <| Or.inr one_pos
  have H : 0 < s / r' := div_pos hs hr
  calc
    (fun x => log x ^ r) =O[atTop] fun x => log x ^ r' :=
      IsBigO.of_bound 1 <|
        (tendsto_log_atTop.eventually_ge_atTop 1).mono fun x hx => by
          have hx₀ : 0 ≤ log x := zero_le_one.trans hx
          simp [norm_eq_abs, abs_rpow_of_nonneg, abs_rpow_of_nonneg hx₀,
            rpow_le_rpow_of_exponent_le (hx.trans (le_abs_self _))]
    _ =o[atTop] fun x => (x ^ (s / r')) ^ r' :=
      ((isLittleO_log_rpow_atTop H).rpow hr <|
        (_root_.tendsto_rpow_atTop H).eventually <| eventually_ge_atTop 0)
    _ =ᶠ[atTop] fun x => x ^ s :=
      (eventually_ge_atTop 0).mono fun x hx => by simp only [← rpow_mul hx, div_mul_cancel _ hr.ne']
#align is_o_log_rpow_rpow_at_top isLittleO_log_rpow_rpow_atTop

theorem isLittleO_abs_log_rpow_rpow_nhds_zero {s : ℝ} (r : ℝ) (hs : s < 0) :
    (fun x => |log x| ^ r) =o[𝓝[>] 0] fun x => x ^ s :=
  ((isLittleO_log_rpow_rpow_atTop r (neg_pos.2 hs)).comp_tendsto tendsto_inv_zero_atTop).congr'
    (mem_of_superset (Icc_mem_nhdsWithin_Ioi <| Set.left_mem_Ico.2 one_pos) fun x hx => by
      simp [abs_of_nonpos, log_nonpos hx.1 hx.2])
    (eventually_mem_nhdsWithin.mono fun x hx => by
      rw [Function.comp_apply, inv_rpow hx.out.le, rpow_neg hx.out.le, inv_inv])
#align is_o_abs_log_rpow_rpow_nhds_zero isLittleO_abs_log_rpow_rpow_nhds_zero

theorem isLittleO_log_rpow_nhds_zero {r : ℝ} (hr : r < 0) : log =o[𝓝[>] 0] fun x => x ^ r :=
  (isLittleO_abs_log_rpow_rpow_nhds_zero 1 hr).neg_left.congr'
    (mem_of_superset (Icc_mem_nhdsWithin_Ioi <| Set.left_mem_Ico.2 one_pos) fun x hx => by
      simp [abs_of_nonpos (log_nonpos hx.1 hx.2)])
    EventuallyEq.rfl
#align is_o_log_rpow_nhds_zero isLittleO_log_rpow_nhds_zero

theorem tendsto_log_div_rpow_nhds_zero {r : ℝ} (hr : r < 0) :
    Tendsto (fun x => log x / x ^ r) (𝓝[>] 0) (𝓝 0) :=
  (isLittleO_log_rpow_nhds_zero hr).tendsto_div_nhds_zero
#align tendsto_log_div_rpow_nhds_zero tendsto_log_div_rpow_nhds_zero

theorem tendsto_log_mul_rpow_nhds_zero {r : ℝ} (hr : 0 < r) :
    Tendsto (fun x => log x * x ^ r) (𝓝[>] 0) (𝓝 0) :=
  (tendsto_log_div_rpow_nhds_zero <| neg_lt_zero.2 hr).congr' <|
    eventually_mem_nhdsWithin.mono fun x hx => by rw [rpow_neg hx.out.le, div_inv_eq_mul]
#align tendsto_log_mul_rpow_nhds_zero tendsto_log_mul_rpow_nhds_zero
```
