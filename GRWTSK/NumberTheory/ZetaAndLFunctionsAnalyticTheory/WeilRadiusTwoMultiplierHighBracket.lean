/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierObservation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddDiagonalSeriesTail
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Shared logarithmic bracket for the radius-two diagonal multiplier

The first K multiplier terms are a shared rational sum minus a sum of
the increasing integrand (2α/(α²+w²)). The logarithmic integral for
the omitted tail contains the integral of that same integrand on the
retained index interval. Their difference is bounded by one endpoint
term. This leaves a uniform interval requiring only one logarithm per
mode and a shared rational constant. The full gamma diagonal also
keeps the signed image series. Its absolute contribution is bounded
by the boundary signal using the termwise ratio
`w²/(α²+w²) ≤ 1`. This bounds the bulk diagonal used in the rounded
Schur seed, with the prime diagonal and the shift accounted for
separately.

The proof applies the pinned Mathlib monotone sum and integral
comparisons in `Mathlib/Analysis/SumIntegralComparisons.lean`.
Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoMultiplierHighBracket

open OddOutputTrace OddMultiplierBounds OddMultiplierObservation

/-- The shared rational sum obtained by saturating the first terms. -/
def saturatedPartial (K : ℕ) : ℚ :=
  ∑ j ∈ Finset.range K, 2 / (2*(j:ℚ)+1/2)

/-- The lower center for all frequencies at least the cutoff rate. -/
def highCenter (K : ℕ) (w : ℝ) : ℝ :=
  (saturatedPartial K : ℝ) + Real.log (w / multiplierRate 0 K)

private def correction (w x : ℝ) : ℝ :=
  2 * multiplierRate 0 x / (multiplierRate 0 x ^ 2 + w^2)

private theorem rate_pos {x : ℝ} (hx : 0 ≤ x) : 0 < multiplierRate 0 x := by
  unfold multiplierRate
  positivity

private theorem correction_mono {K : ℕ} {w : ℝ} (hw : multiplierRate 0 K ≤ w) :
    MonotoneOn (correction w) (Icc 0 (K:ℝ)) := by
  intro x hx y hy hxy
  let a := multiplierRate 0 x
  let b := multiplierRate 0 y
  have ha : 0 < a := rate_pos hx.1
  have hb : 0 < b := rate_pos hy.1
  have hab : a ≤ b := by unfold a b multiplierRate; linarith
  have hbw : b ≤ w := by
    apply le_trans ?_ hw
    unfold b multiplierRate
    linarith [hy.2]
  have haw : a ≤ w := hab.trans hbw
  have hw0 : 0 < w := hb.trans_le hbw
  have hProd : a*b ≤ w^2 := by
    rw [pow_two]
    exact mul_le_mul haw hbw hb.le hw0.le
  change 2*a/(a^2+w^2) ≤ 2*b/(b^2+w^2)
  apply (div_le_div_iff₀ (by positivity) (by positivity)).2
  nlinarith only [mul_nonneg (sub_nonneg.mpr hab) (sub_nonneg.mpr hProd)]

private theorem correction_integral {w : ℝ} (hw : 0 < w) (K : ℕ) :
    (∫ x in (0:ℝ)..(K:ℝ), correction w x) =
      (1/2 : ℝ) * (Real.log (multiplierRate 0 K ^ 2 + w^2) -
        Real.log (multiplierRate 0 0 ^ 2 + w^2)) := by
  let D (x : ℝ) := multiplierRate 0 x ^ 2 + w^2
  let F (x : ℝ) := (1/2:ℝ) * Real.log (D x)
  have hD (x : ℝ) : 0 < D x := by unfold D; positivity
  have hDeriv (x : ℝ) : HasDerivAt F (correction w x) x := by
    have hA : HasDerivAt (multiplierRate 0) 2 x := by
      unfold multiplierRate
      simpa only [Nat.cast_zero, add_zero, id_eq, mul_one] using
        ((hasDerivAt_id x).const_mul (2:ℝ)).add_const (1/2:ℝ)
    have hDen : HasDerivAt D (4 * multiplierRate 0 x) x := by
      unfold D
      convert (hA.pow 2).add_const (w^2) using 1
      norm_num
      ring
    unfold F correction
    change HasDerivAt (fun y => (1/2:ℝ)*Real.log (D y))
      (2*multiplierRate 0 x/D x) x
    convert (hDen.log (hD x).ne').const_mul (1/2:ℝ) using 1
    ring
  have hC : Continuous (correction w) := by
    have hRate : Continuous (multiplierRate 0) := by unfold multiplierRate; fun_prop
    unfold correction
    exact (continuous_const.mul hRate).div ((hRate.pow 2).add continuous_const)
      (fun x => (hD x).ne')
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hDeriv x)
    (hC.intervalIntegrable _ _)]
  unfold F D
  ring

private theorem partial_eq_saturated_sub {w : ℝ} (hw : 0 < w) (K : ℕ) :
    periodicMultiplierPartial 0 w K =
      (saturatedPartial K : ℝ) - ∑ j ∈ Finset.range K, correction w j := by
  unfold periodicMultiplierPartial saturatedPartial
  push_cast
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  let a := multiplierRate 0 j
  have ha : 0 < a := rate_pos (Nat.cast_nonneg _)
  have hD : 0 < a^2+w^2 := by positivity
  simp only [periodicMultiplierTerm, PeriodicBoundary.multiplierSummand, correction]
  change 2*(w^2/(a*(a^2+w^2))) = 2/(2*(j:ℝ)+1/2) - 2*a/(a^2+w^2)
  have haEq : 2*(j:ℝ)+1/2 = a := by simp [a, multiplierRate]
  rw [haEq]
  field_simp [ha.ne',hD.ne']
  ring

private theorem log_reciprocal_split {w A : ℝ} (hw : 0 < w) (hA : 0 < A) :
    (1/2:ℝ)*Real.log (1+w^2/A^2) =
      Real.log (w/A)+(1/2:ℝ)*Real.log (1+A^2/w^2) := by
  have hArg : 1+w^2/A^2 = (w/A)^2*(1+A^2/w^2) := by
    field_simp [hw.ne',hA.ne']
    ring
  rw [hArg, Real.log_mul (by positivity : (w/A)^2 ≠ 0)
    (by positivity : 1+A^2/w^2 ≠ 0), Real.log_pow]
  push_cast
  ring

private theorem log_extract {w : ℝ} (hw : 0 < w) (A : ℝ) :
    Real.log (A^2+w^2) = Real.log (1+A^2/w^2) + 2*Real.log w := by
  have h : A^2+w^2 = (1+A^2/w^2)*w^2 := by
    field_simp [hw.ne']
    ring
  rw [h]
  rw [Real.log_mul (by positivity : 1+A^2/w^2 ≠ 0) (by positivity : w^2 ≠ 0),
    Real.log_pow]
  norm_num

/-- The high-frequency multiplier lies between one shared rational
sum plus a logarithm and the stated explicit upper allowance. -/
theorem periodicMultiplier_high_bracket (K : ℕ) {w : ℝ}
    (hw : multiplierRate 0 K ≤ w) :
    highCenter K w ≤ periodicMultiplier 0 w ∧
      periodicMultiplier 0 w ≤ highCenter K w + (3 / multiplierRate 0 K + 1/(8*w^2)) := by
  let A := multiplierRate 0 K
  have hA : 0 < A := rate_pos (Nat.cast_nonneg _)
  have hw0 : 0 < w := hA.trans_le hw
  let S := ∑ j ∈ Finset.range K, correction w j
  let I := ∫ x in (0:ℝ)..(K:ℝ), correction w x
  let E := (1/2:ℝ)*Real.log (1+(1/2:ℝ)^2/w^2)
  have hMono : MonotoneOn (correction w) (Icc 0 (0+(K:ℝ))) := by
    simpa only [zero_add] using correction_mono hw
  have hSI : S ≤ I := by simpa only [S,I,zero_add] using hMono.sum_le_integral
  have hIS : I ≤ S + correction w K := by
    have h := hMono.integral_le_sum
    have h₁ := Finset.sum_range_succ (fun j : ℕ => correction w j) K
    have h₂ := Finset.sum_range_succ' (fun j : ℕ => correction w j) K
    have hz : 0 ≤ correction w 0 := by unfold correction multiplierRate; positivity
    simp only [zero_add] at h
    simp only [Nat.cast_zero] at h₂
    unfold S I
    linarith only [h,h₁,h₂,hz]
  have hElo : 0 ≤ E := by
    unfold E
    exact mul_nonneg (by norm_num) (Real.log_nonneg (by linarith [show 0≤(1/2:ℝ)^2/w^2 by positivity]))
  have hEhi : E ≤ 1/(8*w^2) := by
    have h := Real.log_le_sub_one_of_pos (by positivity : 0 < 1+(1/2:ℝ)^2/w^2)
    refine (mul_le_mul_of_nonneg_left h (by norm_num : (0:ℝ) ≤ 1/2)).trans_eq ?_
    field_simp [hw0.ne']
    ring
  have hCorr : correction w K ≤ 1/A := by
    change 2*A/(A^2+w^2) ≤ 1/A
    apply (div_le_div_iff₀ (by positivity) hA).2
    have h := pow_le_pow_left₀ hA.le hw 2
    nlinarith only [h]
  have hTail : periodicMultiplierTerm 0 w K ≤ 2/A := by
    change 2*(w^2/(A*(A^2+w^2))) ≤ 2/A
    have hD : 0 < A^2+w^2 := by positivity
    calc
      _ = (2/A)*(w^2/(A^2+w^2)) := by
        field_simp [hA.ne', hD.ne']
      _ ≤ _ := mul_le_of_le_one_right (by positivity)
        ((div_le_one hD).2 (le_add_of_nonneg_left (sq_nonneg _)))
  have hITail : periodicMultiplierTailIntegral 0 w K = Real.log (w/A) + E + I := by
    unfold periodicMultiplierTailIntegral
    change (1/2:ℝ)*Real.log (1+w^2/A^2) = _
    rw [log_reciprocal_split hw0 hA]
    have hI : I = (1/2:ℝ)*Real.log (1+A^2/w^2) - E := by
      unfold I E
      rw [correction_integral hw0 K, log_extract hw0, log_extract hw0]
      have h0 : multiplierRate 0 0 = 1/2 := by simp [multiplierRate]
      rw [h0]
      unfold A
      ring
    rw [hI]
    ring
  obtain ⟨hLo,hHi⟩ := periodicMultiplier_truncation_bounds 0 w K
  rw [partial_eq_saturated_sub hw0 K, hITail] at hLo hHi
  unfold highCenter
  change (saturatedPartial K:ℝ)+Real.log (w/A) ≤ periodicMultiplier 0 w ∧
    periodicMultiplier 0 w ≤ (saturatedPartial K:ℝ)+Real.log (w/A)+(3/A+1/(8*w^2))
  change (saturatedPartial K:ℝ)-S+(Real.log (w/A)+E+I) ≤ _ at hLo
  change _ ≤ (saturatedPartial K:ℝ)-S+
    ((Real.log (w/A)+E+I)+periodicMultiplierTerm 0 w K) at hHi
  constructor
  · linarith only [hLo,hSI,hElo]
  · have hThree : 3/A = 1/A+2/A := by rw [← add_div]; norm_num
    rw [hThree]
    linarith only [hHi,hIS,hEhi,hCorr,hTail]

/-- Every bulk mode in the radius-two diagonal admits the shared K=256 bracket. -/
theorem radiusTwo_mode_ge_327_bracket {m : ℕ} (hm : 327 ≤ m) :
    highCenter 256 (frequency 2 m) ≤ periodicMultiplier 0 (frequency 2 m) ∧
      periodicMultiplier 0 (frequency 2 m) ≤ highCenter 256 (frequency 2 m) +
        (3 / (1025/2 : ℝ) + 1/(8*frequency 2 m^2)) := by
  have hmR : (327:ℝ) ≤ m := by exact_mod_cast hm
  have hw : multiplierRate 0 (256 : ℕ) ≤ frequency 2 m := by
    unfold frequency multiplierRate
    have hp : (157/50:ℝ) ≤ Real.pi := by linarith [Real.pi_gt_d2]
    have h := mul_le_mul hp hmR (by positivity : 0 ≤ (327:ℝ)) Real.pi_pos.le
    norm_num at *
    linarith
  simpa only [multiplierRate, Nat.cast_zero, add_zero, Nat.cast_ofNat, show
    (2:ℝ)*256+1/2 = 1025/2 by norm_num] using periodicMultiplier_high_bracket 256 hw

/-- At radius two the entire mode dependence of the bulk center is
`log m`, so the other logarithm can be enclosed once. -/
theorem radiusTwo_highCenter_eq {m : ℕ} (hm : 0 < m) :
    highCenter 256 (frequency 2 m) =
      ((saturatedPartial 256 : ℝ) + Real.log (Real.pi/1025)) + Real.log (m:ℝ) := by
  have hmR : (0:ℝ) < m := by exact_mod_cast hm
  unfold highCenter frequency multiplierRate
  have h : Real.pi * (m:ℝ) / 2 / (2*(256:ℝ)+(0:ℕ)+1/2) =
      (Real.pi/1025)*(m:ℝ) := by ring
  norm_num only [Nat.cast_zero, Nat.cast_ofNat] at h ⊢
  rw [h, Real.log_mul (by positivity) hmR.ne']
  ring

open OddBoundarySignalBounds OddDiagonalObservation OddDiagonalSeriesTail
open OddRootProjection

private theorem neg_boundarySignalTerm_le_sineBoundaryTerm (n j : ℕ) :
    -boundarySignalTerm 2 n j ≤ sineBoundaryTerm 2 n j := by
  rw [sineBoundaryTerm_eq_exponential 2 (by norm_num)]
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  let w := frequency 2 n
  let d := a ^ 2 + w ^ 2
  let weight := 1 - Real.exp (-(2 * a * 2))
  have hd : 0 < d := by unfold d a; positivity
  have hw : w ^ 2 ≤ d := le_add_of_nonneg_left (sq_nonneg _)
  have hweight : 0 ≤ weight := by
    unfold weight
    apply sub_nonneg.mpr (Real.exp_le_one_iff.mpr ?_)
    unfold a
    linarith [Nat.cast_nonneg (α := ℝ) j]
  have hLiteral : boundarySignalTerm 2 n j = (1 - Real.exp (-2 * a * 2)) / d := rfl
  rw [hLiteral, show -2 * a * 2 = -(2 * a * 2) by ring]
  change -(weight / d) ≤ -(2 * w ^ 2 * weight) / (2 * d ^ 2)
  have heq : -(2 * w ^ 2 * weight) / (2 * d ^ 2) =
      -(weight / d * (w ^ 2 / d)) := by field_simp
  rw [heq, neg_le_neg_iff]
  exact mul_le_of_le_one_right (div_nonneg hweight hd.le) ((div_le_one hd).2 hw)

private theorem radiusTwo_boundaryDiagonal_bounds {n : ℕ} (hn : 0 < n) :
    -(1 / (2 * (n : ℝ)) + 1 / (n : ℝ) ^ 2) ≤ ∑' j, sineBoundaryTerm 2 n j ∧
      (∑' j, sineBoundaryTerm 2 n j) ≤ 0 := by
  have hs := (hasSum_sineBoundaryTerm 2 (by norm_num) hn).summable
  have hb := (boundarySignal_summable 2 (by norm_num) n).neg
  have hcomp := hb.tsum_le_tsum (neg_boundarySignalTerm_le_sineBoundaryTerm n) hs
  rw [tsum_neg] at hcomp
  change -boundarySignal 2 n ≤ _ at hcomp
  have hsig := boundarySignal_le 2 (by norm_num) hn
  have hnR : (0 : ℝ) < n := by exact_mod_cast hn
  have hp : 4 ≤ Real.pi ^ 2 := by nlinarith [Real.pi_gt_three, Real.pi_pos]
  have hpos : 0 < Real.pi ^ 2 * (n : ℝ) ^ 2 := by positivity
  have hfrac : 4 / (Real.pi ^ 2 * (n : ℝ) ^ 2) ≤ 1 / (n : ℝ) ^ 2 := by
    apply (div_le_div_iff₀ hpos (by positivity)).2
    nlinarith [mul_nonneg (sub_nonneg.mpr hp) (sq_nonneg (n : ℝ))]
  have hmain : 2 / (4 * (n : ℝ)) = 1 / (2 * (n : ℝ)) := by field_simp; norm_num
  have hsig' : boundarySignal 2 n ≤ 1 / (2 * (n : ℝ)) + 1 / (n : ℝ) ^ 2 := by
    norm_num at hsig
    exact hsig.trans (add_le_add hmain.le hfrac)
  exact ⟨(neg_le_neg hsig').trans hcomp, tsum_nonpos (sineBoundaryTerm_nonpos 2 (by norm_num) n)⟩

/-- Enclose the full gamma diagonal on the high branch, including the negative
boundary image series. The independent prime diagonal and shift are separate. -/
theorem radiusTwo_gammaDiagonal_high_bracket {n : ℕ} (hn : 327 ≤ n) :
    let base := gammaConstant 1 0 + highCenter 256 (frequency 2 n)
    base - (1 / (2 * (n : ℝ)) + 1 / (n : ℝ) ^ 2) ≤
        sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n ∧
    sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n ≤
        base + (3 / (1025 / 2 : ℝ) + 1 / (8 * frequency 2 n ^ 2)) := by
  dsimp only
  obtain ⟨hpLo, hpHi⟩ := radiusTwo_mode_ge_327_bracket hn
  obtain ⟨hbLo, hbHi⟩ := radiusTwo_boundaryDiagonal_bounds (show 0 < n by omega)
  have hsum := (hasSum_sineBoundaryTerm 2 (by norm_num) (show 0 < n by omega)).tsum_eq
  exact ⟨by linarith only [hpLo, hbLo, hsum], by linarith only [hpHi, hbHi, hsum]⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoMultiplierHighBracket
