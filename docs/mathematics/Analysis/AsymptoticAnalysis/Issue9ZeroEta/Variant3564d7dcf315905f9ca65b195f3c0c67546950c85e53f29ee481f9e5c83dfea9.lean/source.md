# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Issue9ZeroEta.Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0233afeef45f71937e064fb9ff8f203d38c0343b` · SHA-256 `3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.Complex.Convex
import Mathlib.Analysis.PSeries
import Mathlib.Tactic

/- Disposable Issue 9 direct alternating-Dirichlet probe, frozen source b88f24d. -/
namespace Issue9ZeroEta
open Complex Set Filter
open scoped Topology
noncomputable section

def pair (z : ℂ) (n : ℕ) : ℂ :=
  (2 * n + 1 : ℂ) ^ (-z) - (2 * n + 2 : ℂ) ^ (-z)

theorem pair_bound {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    ‖pair z n‖ ≤ ‖z‖ * (2 * n + 1 : ℝ) ^ (-z.re - 1) := by
  have hn : 0 < (2 * n + 1 : ℝ) := by positivity
  have hzn : -z ≠ 0 := neg_ne_zero.mpr (ne_zero_of_re_pos hz)
  have h := norm_image_sub_le_of_norm_deriv_le_segment'
    (f := fun x : ℝ ↦ (x : ℂ) ^ (-z))
    (f' := fun x : ℝ ↦ -z * (x : ℂ) ^ (-z - 1))
    (a := (2 * n + 1 : ℝ)) (b := (2 * n + 2 : ℝ))
    (C := ‖z‖ * (2 * n + 1 : ℝ) ^ (-z.re - 1))
    (fun x hx ↦ (hasDerivAt_ofReal_cpow_const (ne_of_gt (hn.trans_le hx.1)) hzn).hasDerivWithinAt)
    (fun x hx ↦ ?_) (2 * n + 2 : ℝ) (by constructor <;> linarith)
  · rw [norm_sub_rev] at h
    simpa only [pair, ofReal_add, ofReal_mul, ofReal_natCast, ofReal_ofNat, ofReal_one,
      show (2 * n + 2 : ℝ) - (2 * n + 1) = 1 by ring, mul_one] using h
  · rw [norm_mul, norm_neg, norm_cpow_eq_rpow_re_of_pos (hn.trans_le hx.1), sub_re,
      neg_re, one_re]
    exact mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow_of_nonpos hn hx.1 (by linarith)) (norm_nonneg z)

#print axioms pair_bound

theorem pair_bound_uniform {δ M : ℝ} (hδ : 0 < δ) {z : ℂ}
    (hz : δ ≤ z.re) (hM : ‖z‖ ≤ M) (n : ℕ) :
    ‖pair z n‖ ≤ M * (n + 1 : ℝ) ^ (-δ - 1) := by
  calc
    ‖pair z n‖ ≤ ‖z‖ * (2 * n + 1 : ℝ) ^ (-z.re - 1) := pair_bound (hδ.trans_le hz) n
    _ ≤ M * (2 * n + 1 : ℝ) ^ (-z.re - 1) :=
      mul_le_mul_of_nonneg_right hM (Real.rpow_nonneg (by positivity) _)
    _ ≤ M * (2 * n + 1 : ℝ) ^ (-δ - 1) :=
      mul_le_mul_of_nonneg_left (Real.rpow_le_rpow_of_exponent_le (by have := Nat.cast_nonneg (α := ℝ) n; linarith) (by linarith))
        ((norm_nonneg z).trans hM)
    _ ≤ M * (n + 1 : ℝ) ^ (-δ - 1) :=
      mul_le_mul_of_nonneg_left (Real.rpow_le_rpow_of_nonpos (by positivity)
        (by have := Nat.cast_nonneg (α := ℝ) n; linarith) (by linarith)) ((norm_nonneg z).trans hM)

theorem summable_majorant {δ : ℝ} (hδ : 0 < δ) (M : ℝ) :
    Summable (fun n : ℕ ↦ M * (n + 1 : ℝ) ^ (-δ - 1)) := by
  apply Summable.mul_left
  have h : Summable (fun n : ℕ ↦ (n : ℝ) ^ (-δ - 1)) :=
    Real.summable_nat_rpow.mpr (by linarith)
  simpa only [Nat.cast_add, Nat.cast_one] using (summable_nat_add_iff 1).mpr h

theorem pair_summable {z : ℂ} (hz : 0 < z.re) : Summable (pair z) := by
  exact (summable_majorant hz ‖z‖).of_norm_bounded (pair_bound_uniform hz le_rfl le_rfl)

def eta (z : ℂ) : ℂ := ∑' n, pair z n

theorem differentiableAt_eta {z : ℂ} (hz : 0 < z.re) : DifferentiableAt ℂ eta z := by
  let U : Set ℂ := {w | z.re / 2 < w.re ∧ ‖w‖ < ‖z‖ + 1}
  have hU : IsOpen U := (isOpen_lt continuous_const continuous_re).inter
    (isOpen_lt continuous_norm continuous_const)
  have hzU : z ∈ U := ⟨by linarith, by linarith⟩
  have hdiff : ∀ n : ℕ, DifferentiableOn ℂ (fun w ↦ pair w n) U := by
    intro n
    have h1 : (2 * n + 1 : ℂ) ≠ 0 := by exact_mod_cast (show (2 * n + 1 : ℕ) ≠ 0 by omega)
    have h2 : (2 * n + 2 : ℂ) ≠ 0 := by exact_mod_cast (show (2 * n + 2 : ℕ) ≠ 0 by omega)
    apply Differentiable.differentiableOn
    unfold pair
    exact (differentiable_neg.const_cpow (Or.inl h1)).sub
      (differentiable_neg.const_cpow (Or.inl h2))
  have h := Complex.differentiableOn_tsum_of_summable_norm
    (summable_majorant (by linarith : 0 < z.re / 2) (‖z‖ + 1)) hdiff hU
    (fun n w hw ↦ pair_bound_uniform (by linarith : 0 < z.re / 2) hw.1.le hw.2.le n)
  exact h.differentiableAt (hU.mem_nhds hzU)

#print axioms pair_summable
#print axioms differentiableAt_eta

theorem eta_eq_zeta_of_one_lt_re {z : ℂ} (hz : 1 < z.re) :
    eta z = (1 - (2 : ℂ) ^ (1 - z)) * riemannZeta z := by
  let a : ℕ → ℂ := fun n ↦ (n + 1 : ℂ) ^ (-z)
  have ha : Summable a := by
    have hh : Summable (fun n : ℕ ↦ 1 / (n : ℂ) ^ z) :=
      Complex.summable_one_div_nat_cpow.mpr hz
    have ht := (summable_nat_add_iff 1).mpr hh
    simpa only [a, cpow_neg, one_div, Nat.cast_add, Nat.cast_one] using ht
  have he : Summable (fun n ↦ a (2*n)) := ha.comp_injective (by intro n m h; change 2*n=2*m at h; omega)
  have ho : Summable (fun n ↦ a (2*n+1)) := ha.comp_injective (by intro n m h; dsimp only at h; omega)
  have ht : (∑' n, a n) = riemannZeta z := by
    simpa only [a, cpow_neg, one_div] using (zeta_eq_tsum_one_div_nat_add_one_cpow hz).symm
  have hsum := tsum_even_add_odd he ho
  have heven : (∑' n, a (2*n+1)) = (2 : ℂ)^(-z) * riemannZeta z := by
    rw [← ht, ← tsum_mul_left]
    congr 1
    funext n
    simp only [a, Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat]
    have hh := mul_cpow_ofReal_nonneg (a := 2) (b := n+1) (by norm_num) (by positivity) (-z)
    simpa only [ofReal_mul, ofReal_add, ofReal_natCast, ofReal_ofNat, ofReal_one, mul_add, mul_one,
      add_assoc, one_add_one_eq_two] using hh
  have hp : eta z = (∑' n, a (2*n)) - ∑' n, a (2*n+1) := by
    rw [← he.tsum_sub ho]
    unfold eta
    congr 1
    funext n
    simp only [a, pair, Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat, add_assoc,
      one_add_one_eq_two]
  rw [hp, heven]
  rw [heven, ht] at hsum
  have hpow : (2 : ℂ) ^ (1-z) = 2 * (2 : ℂ)^(-z) := by
    rw [sub_eq_add_neg, cpow_add _ _ (by norm_num), cpow_one]
  rw [hpow]
  linear_combination hsum

#print axioms eta_eq_zeta_of_one_lt_re

def regularizedZeta (z : ℂ) : ℂ :=
  (z * (z - 1) * completedRiemannZeta₀ z + 1) * (Gammaℝ z)⁻¹

theorem regularizedZeta_eq {z : ℂ} (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    regularizedZeta z = z * (z - 1) * riemannZeta z := by
  rw [riemannZeta_def_of_ne_zero hz0, completedRiemannZeta_eq]
  unfold regularizedZeta
  have h1 : 1 - z ≠ 0 := sub_ne_zero.mpr hz1.symm
  field_simp [hz0, h1]
  ring

theorem differentiable_regularizedZeta : Differentiable ℂ regularizedZeta := by
  unfold regularizedZeta
  exact ((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀ |>.add_const 1).mul differentiable_Gammaℝ_inv

theorem eta_eq_zeta {z : ℂ} (hz : 0 < z.re) (hz1 : z ≠ 1) :
    eta z = (1 - (2 : ℂ) ^ (1 - z)) * riemannZeta z := by
  let U : Set ℂ := {w | 0 < w.re}
  have hU : IsOpen U := isOpen_lt continuous_const continuous_re
  have hleft : AnalyticOnNhd ℂ (fun w ↦ w * (w - 1) * eta w) U := by
    apply DifferentiableOn.analyticOnNhd _ hU
    intro w hw
    exact ((differentiableAt_id.mul (differentiableAt_id.sub_const 1)).mul
      (differentiableAt_eta hw)).differentiableWithinAt
  have hright : AnalyticOnNhd ℂ
      (fun w ↦ (1 - (2 : ℂ) ^ (1 - w)) * regularizedZeta w) U := by
    have hd : Differentiable ℂ
        (fun w ↦ (1 - (2 : ℂ) ^ (1 - w)) * regularizedZeta w) :=
      (((differentiable_id.const_sub 1).const_cpow (Or.inl (by norm_num))).const_sub 1).mul
        differentiable_regularizedZeta
    exact fun w _ ↦ hd.analyticAt w
  have heq := hleft.eqOn_of_preconnected_of_eventuallyEq hright
    (convex_halfSpace_re_gt 0).isPreconnected (show (2 : ℂ) ∈ U by norm_num [U])
    (show (fun w ↦ w * (w - 1) * eta w) =ᶠ[𝓝 (2 : ℂ)]
      (fun w ↦ (1 - (2 : ℂ) ^ (1 - w)) * regularizedZeta w) from ?_)
    (show z ∈ U from hz)
  · dsimp only at heq
    rw [regularizedZeta_eq (ne_zero_of_re_pos hz) hz1] at heq
    have hcancel : z * (z - 1) ≠ 0 := mul_ne_zero (ne_zero_of_re_pos hz) (sub_ne_zero.mpr hz1)
    apply mul_left_cancel₀ hcancel
    linear_combination heq
  · have hV : {w : ℂ | 1 < w.re} ∈ 𝓝 (2 : ℂ) :=
      (isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)
    filter_upwards [hV] with w hw
    rw [eta_eq_zeta_of_one_lt_re hw, regularizedZeta_eq (ne_zero_of_one_lt_re hw)
      (by intro hw1; simp [hw1] at hw)]
    ring

#print axioms eta_eq_zeta

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

theorem pair_ofReal (s : ℝ) (n : ℕ) :
    pair (s : ℂ) n = (pairedEtaTerm s n : ℂ) := by
  unfold pairedEtaTerm
  rw [ofReal_sub, ofReal_cpow (by positivity), ofReal_cpow (by positivity)]
  simp only [pair, ofReal_add, ofReal_mul, ofReal_natCast, ofReal_ofNat, ofReal_one, ofReal_neg]

theorem paired_eta_identity : PairedEtaIdentityObligation := by
  intro s hs0 hs1
  have hz1 : (s : ℂ) ≠ 1 := by exact_mod_cast ne_of_lt hs1
  have hs : 0 < (s : ℂ).re := hs0
  have hsum := Complex.hasSum_re (pair_summable hs).hasSum
  change HasSum (fun n ↦ (pair (s : ℂ) n).re) (eta (s : ℂ)).re at hsum
  rw [eta_eq_zeta hs hz1] at hsum
  have hc : (1 - (2 : ℂ) ^ (1 - (s : ℂ))) = ((1 - (2 : ℝ) ^ (1 - s) : ℝ) : ℂ) := by
    rw [ofReal_sub, ofReal_one, ofReal_cpow (by norm_num)]
    simp only [ofReal_sub, ofReal_one, ofReal_ofNat]
  simpa only [pair_ofReal, ofReal_re, hc, mul_re, ofReal_re, ofReal_im, zero_mul, sub_zero] using hsum

theorem real_zero_exclusion : RealZeroExclusionObligation :=
  real_zero_exclusion_of_paired_eta paired_eta_identity

theorem zero_object_admission : ZeroObjectAdmissionObligation :=
  admission_of_realZeroExclusion real_zero_exclusion

#print paired_eta_identity
#print axioms paired_eta_identity
#print axioms real_zero_exclusion
#print axioms zero_object_admission

end
end Issue9ZeroEta
```
