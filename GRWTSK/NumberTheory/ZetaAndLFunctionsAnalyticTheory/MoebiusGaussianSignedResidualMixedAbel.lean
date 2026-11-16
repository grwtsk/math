/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLaplace
import GRWTSK.MeasureAndIntegration.FiniteLaplaceTransform
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MoebiusReciprocalPrefix

/-!
# A uniform bound for the transient heated mixed integral

The genuine signed Abel integral of the pickup is bounded at damping one
half by finite Möbius divisor cancellation. This supplies the leading
exponential term of the heated transient. Its faster remainder can be
estimated absolutely, even using the elementary pickup growth bound.
-/

set_option autoImplicit false

noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualMixedAbel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions

private theorem wholePickup_abs_le_two_exp_half_coarse {T : ℝ} (hT : 0 ≤ T) :
    |wholePickup T| ≤ 2 * Real.exp (T / 2) := by
  have hvelocity (u : ℝ) : |pickupVelocity u| ≤ Real.exp (u / 2) := by
    rw [pickupVelocity, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ Real.exp (-u / 2) * Real.exp u :=
        mul_le_mul_of_nonneg_left (mertensPrefix_abs_le (Real.exp_pos u).le) (Real.exp_pos _).le
      _ = _ := by rw [← Real.exp_add]; congr 1; ring
  have hcont : Continuous (fun u : ℝ => Real.exp (u / 2)) := by fun_prop
  have hInt : (∫ u in (0 : ℝ)..T, Real.exp (u / 2)) = 2 * (Real.exp (T / 2) - 1) := by
    have hd (u : ℝ) : HasDerivAt (fun x : ℝ => 2 * Real.exp (x / 2)) (Real.exp (u / 2)) u := by
      have hbase : HasDerivAt (fun x : ℝ => x / 2) (1 / 2 : ℝ) u :=
        (hasDerivAt_id u).div_const 2
      have heq : (2 : ℝ) * (Real.exp (u / 2) * (1 / 2)) = Real.exp (u / 2) := by ring
      simpa only [heq] using hbase.exp.const_mul (2 : ℝ)
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u)
      (hcont.intervalIntegrable 0 T)]
    simp
    ring
  calc
    |wholePickup T| ≤ ∫ u in (0 : ℝ)..T, |pickupVelocity u| :=
      intervalIntegral.abs_integral_le_integral_abs hT
    _ ≤ ∫ u in (0 : ℝ)..T, Real.exp (u / 2) :=
      intervalIntegral.integral_mono_on hT (pickupVelocity_intervalIntegrable 0 T).abs
        (hcont.intervalIntegrable 0 T) (fun u _ => hvelocity u)
    _ ≤ _ := by rw [hInt]; linarith

private theorem pickupDirichletPrefix_one_eq_reciprocal (x : ℝ) :
    pickupDirichletPrefix ⌊x⌋₊ 1 = (densityMobiusReciprocalPrefix x : ℂ) := by
  unfold pickupDirichletPrefix densityMobiusReciprocalPrefix
  rw [Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast (Finset.mem_Icc.mp hn).1
  have he : Complex.exp (-(1 : ℂ) * (Real.log (n : ℝ) : ℂ)) =
      (((n : ℝ)⁻¹ : ℝ) : ℂ) := by
    rw [neg_one_mul, ← Complex.ofReal_neg, ← Complex.ofReal_exp, Real.exp_neg,
      Real.exp_log hnpos]
  rw [he, ← Complex.ofReal_mul, div_eq_mul_inv]
  rfl

private theorem noteWindowLaplace_half_eq_real {T : ℝ} (hT : 0 ≤ T) :
    noteWindowLaplace wholePickup (1 / 2 : ℂ) T =
      Complex.ofReal (∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * wholePickup u) := by
  unfold noteWindowLaplace
  rw [max_eq_right hT, ← intervalIntegral.integral_ofReal]
  apply intervalIntegral.integral_congr
  intro u _
  dsimp only
  rw [Complex.ofReal_mul, Complex.ofReal_exp]
  congr 2
  push_cast
  ring

/-- The exact half-rate finite Abel integral retains the reciprocal prefix
and both signed finite-window endpoint terms. -/
theorem wholePickup_half_decay_integral_eq {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * wholePickup u) =
      2 * densityMobiusReciprocalPrefix (Real.exp T) -
        2 * Real.exp (-T / 2) * wholePickup T -
        2 * Real.exp (-T) * mertensPrefix (Real.exp T) := by
  have hExpHalf : Complex.exp (-(1 / 2 : ℂ) * (T : ℂ)) =
      (Real.exp (-T / 2) : ℂ) := by
    rw [Complex.ofReal_exp]
    congr 1
    push_cast
    ring
  have hExpOne : Complex.exp (-(1 : ℂ) * (T : ℂ)) = (Real.exp (-T) : ℂ) := by
    rw [Complex.ofReal_exp, Complex.ofReal_neg, neg_one_mul]
  have hcut := wholePickup_cutoff_laplace hT (z := (1 / 2 : ℂ)) (s := 1)
    (by norm_num) (by norm_num) (by norm_num)
  have hreal :
      (∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * wholePickup u) =
        2 * densityMobiusReciprocalPrefix (Real.exp T) -
          4 * Real.exp (-T / 2) * pickupWeightedPrefix ⌊Real.exp T⌋₊ +
          2 * Real.exp (-T) * mertensPrefix (Real.exp T) := by
    apply Complex.ofReal_injective
    calc
      _ = noteWindowLaplace wholePickup (1 / 2 : ℂ) T :=
        (noteWindowLaplace_half_eq_real hT).symm
      _ = _ := by
        rw [hcut, pickupDirichletPrefix_one_eq_reciprocal, hExpHalf, hExpOne,
          pickupMertensPrefix_at_cutoff]
        push_cast
        ring
  have hflux : wholePickup T =
      2 * pickupWeightedPrefix ⌊Real.exp T⌋₊ -
        2 * Real.exp (-T / 2) * mertensPrefix (Real.exp T) := by
    simpa only [pickupWeightedPrefix] using wholePickup_closed_prefix_flux hT
  have hsq : Real.exp (-T / 2) ^ 2 = Real.exp (-T) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [hreal, hflux, ← hsq]
  ring

/-- The signed half-rate primitive is bounded uniformly over the exact
finite window. -/
theorem wholePickup_half_decay_integral_abs_le {T : ℝ} (hT : 0 ≤ T) :
    |∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * wholePickup u| ≤ 8 := by
  have hrec := density_mobius_reciprocal_prefix_abs_le_one
    (Real.one_le_exp_iff.mpr hT)
  have hwhole : |Real.exp (-T / 2) * wholePickup T| ≤ 2 := by
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ Real.exp (-T / 2) * (2 * Real.exp (T / 2)) :=
        mul_le_mul_of_nonneg_left (wholePickup_abs_le_two_exp_half_coarse hT)
          (Real.exp_pos _).le
      _ = 2 * (Real.exp (-T / 2) * Real.exp (T / 2)) := by ring
      _ = 2 := by
        rw [← Real.exp_add, neg_div, neg_add_cancel, Real.exp_zero, mul_one]
  have hm : |Real.exp (-T) * mertensPrefix (Real.exp T)| ≤ 1 := by
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ Real.exp (-T) * Real.exp T :=
        mul_le_mul_of_nonneg_left (mertensPrefix_abs_le (Real.exp_pos T).le)
          (Real.exp_pos _).le
      _ = 1 := by rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  rw [wholePickup_half_decay_integral_eq hT]
  have hfirst := abs_add_le
    (2 * densityMobiusReciprocalPrefix (Real.exp T))
    (-(2 * (Real.exp (-T / 2) * wholePickup T)))
  have hsecond := abs_add_le
    (2 * densityMobiusReciprocalPrefix (Real.exp T) +
      -(2 * (Real.exp (-T / 2) * wholePickup T)))
    (-(2 * (Real.exp (-T) * mertensPrefix (Real.exp T))))
  have hscale (x : ℝ) : |2 * x| = 2 * |x| := by
    rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  simp only [← sub_eq_add_neg, abs_neg, hscale] at hfirst hsecond
  simp only [mul_assoc]
  linarith

private theorem abs_intervalIntegral_le_of_half_exp {f : ℝ → ℝ} (hf : Continuous f)
    {T B : ℝ} (hT : 0 ≤ T) (hB : 0 ≤ B)
    (hbound : ∀ u : ℝ, 0 ≤ u → |f u| ≤ B * Real.exp (-u / 2)) :
    |∫ u in (0 : ℝ)..T, f u| ≤ 2 * B := by
  have he : Continuous (fun u : ℝ => B * Real.exp (-u / 2)) := by fun_prop
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, |f u| := intervalIntegral.abs_integral_le_integral_abs hT
    _ ≤ ∫ u in (0 : ℝ)..T, B * Real.exp (-u / 2) :=
      intervalIntegral.integral_mono_on hT (hf.abs.intervalIntegrable 0 T)
        (he.intervalIntegrable 0 T) (fun u hu => hbound u hu.1)
    _ ≤ _ := by
      rw [intervalIntegral.integral_const_mul, pickup_negative_half_integral]
      simp only [neg_zero, zero_div, Real.exp_zero]
      nlinarith [mul_nonneg hB (Real.exp_pos (-T / 2)).le]

private def heatedWaveBound (s : ℝ) : ℝ := |heatedLimit s| + 2 * heatedAbsMass s

private theorem heatedWaveBound_nonneg (s : ℝ) : 0 ≤ heatedWaveBound s :=
  add_nonneg (abs_nonneg _) (mul_nonneg (by norm_num) (heatedAbsMass_nonneg s))

private theorem heatedWave_abs_le_bound {s : ℝ} (hs : 0 < s) {u : ℝ} (hu : 0 ≤ u) :
    |heatedWave s u| ≤ heatedWaveBound s := by
  have hb : Real.exp (-u / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  calc
    _ ≤ |heatedLimit s| + |heatedWave s u - heatedLimit s| := by
      have h := norm_add_le (heatedLimit s) (heatedWave s u - heatedLimit s)
      rw [show heatedLimit s + (heatedWave s u - heatedLimit s) = heatedWave s u by ring] at h
      simpa only [Real.norm_eq_abs] using h
    _ ≤ _ := add_le_add le_rfl
      ((heatedWave_sub_limit_abs_le hs u).trans
        (mul_le_of_le_one_right (mul_nonneg (by norm_num) (heatedAbsMass_nonneg s)) hb))

private theorem residualWave_abs_le_exp_half {s : ℝ} (hs : 0 < s) {u : ℝ} (hu : 0 ≤ u) :
    |residualWave s u| ≤ (2 + heatedWaveBound s) * Real.exp (u / 2) := by
  have he : 1 ≤ Real.exp (u / 2) := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  calc
    _ ≤ |wholePickup u| + |heatedWave s u| := by
      simpa only [residualWave, Real.norm_eq_abs] using norm_sub_le (wholePickup u) (heatedWave s u)
    _ ≤ 2 * Real.exp (u / 2) + heatedWaveBound s :=
      add_le_add (wholePickup_abs_le_two_exp_half_coarse hu) (heatedWave_abs_le_bound hs hu)
    _ ≤ _ := by
      rw [add_mul]
      exact add_le_add le_rfl (le_mul_of_one_le_right (heatedWaveBound_nonneg s) he)

private theorem residual_half_decay_integral_abs_le {s T : ℝ} (hs : 0 < s) (hT : 0 ≤ T) :
    |∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * residualWave s u| ≤ 8 + 2 * heatedWaveBound s := by
  have hdec : Continuous (fun u : ℝ => Real.exp (-u / 2)) := by fun_prop
  have hw : |∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * heatedWave s u| ≤ 2 * heatedWaveBound s :=
    abs_intervalIntegral_le_of_half_exp (hdec.mul (heatedWave_continuous s))
      hT (heatedWaveBound_nonneg s) (fun u hu => by
      change |Real.exp (-u / 2) * heatedWave s u| ≤ heatedWaveBound s * Real.exp (-u / 2)
      rw [abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
      exact mul_le_mul_of_nonneg_right (heatedWave_abs_le_bound hs hu) (Real.exp_pos _).le)
  have hP : IntervalIntegrable (fun u => Real.exp (-u / 2) * wholePickup u) volume 0 T :=
    (hdec.mul wholePickup_continuous).intervalIntegrable 0 T
  have hW : IntervalIntegrable (fun u => Real.exp (-u / 2) * heatedWave s u) volume 0 T :=
    (hdec.mul (heatedWave_continuous s)).intervalIntegrable 0 T
  simp only [residualWave, mul_sub, intervalIntegral.integral_sub hP hW]
  exact (by
    simpa only [Real.norm_eq_abs] using norm_sub_le
      (∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * wholePickup u)
      (∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * heatedWave s u) :
    |(∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * wholePickup u) -
      (∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * heatedWave s u)| ≤ _).trans
      (add_le_add (wholePickup_half_decay_integral_abs_le hT) hw)

/-- The mixed integral of the actual signed residual and the transient
heated wave is uniformly bounded at every nonnegative horizon. The full
heated mixed term consequently needs only the settled coefficient times
the signed residual primitive, up to a bounded error. -/
theorem exists_residual_heated_mixed_sub_settled_abs_le {s t : ℝ} (hs : 0 < s) (ht : 0 < t) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ T : ℝ, 0 ≤ T →
      |(∫ u in (0 : ℝ)..T, residualWave s u * heatedWave t u) -
        heatedLimit t * (∫ u in (0 : ℝ)..T, residualWave s u)| ≤ B := by
  obtain ⟨K, hK, htail⟩ := exists_heatedWave_exponential_remainder ht
  let a := 2 * heatedSignedMass t
  let r (u : ℝ) := heatedWave t u - heatedLimit t + a * Real.exp (-u / 2)
  let L := (2 + heatedWaveBound s) * K
  have hL : 0 ≤ L := mul_nonneg (add_nonneg (by norm_num) (heatedWaveBound_nonneg s)) hK
  have hdec : Continuous (fun u : ℝ => Real.exp (-u / 2)) := by fun_prop
  have hr : Continuous r :=
    ((heatedWave_continuous t).sub continuous_const).add (continuous_const.mul hdec)
  have hres := residualWave_continuous s
  refine ⟨2 * L + |a| * (8 + 2 * heatedWaveBound s), ?_, ?_⟩
  · exact add_nonneg (mul_nonneg (by norm_num) hL)
      (mul_nonneg (abs_nonneg _) (by linarith [heatedWaveBound_nonneg s]))
  intro T hT
  have hcross := abs_intervalIntegral_le_of_half_exp (hres.mul hr) hT hL (fun u hu => by
    change |residualWave s u * r u| ≤ L * Real.exp (-u / 2)
    rw [abs_mul]
    calc
      _ ≤ ((2 + heatedWaveBound s) * Real.exp (u / 2)) * (K * Real.exp (-u)) :=
        mul_le_mul (residualWave_abs_le_exp_half hs hu) (htail u hu) (abs_nonneg _)
          (mul_nonneg (add_nonneg (by norm_num) (heatedWaveBound_nonneg _)) (Real.exp_pos _).le)
      _ = L * (Real.exp (u / 2) * Real.exp (-u)) := by unfold L; ring
      _ = _ := by rw [← Real.exp_add]; congr 2; ring)
  have heq (u : ℝ) : residualWave s u * heatedWave t u =
      heatedLimit t * residualWave s u +
        (residualWave s u * r u - a * (Real.exp (-u / 2) * residualWave s u)) := by
    unfold r
    ring
  have h₁ : IntervalIntegrable (fun u => heatedLimit t * residualWave s u) volume 0 T :=
    (continuous_const.mul hres).intervalIntegrable 0 T
  have h₂ : IntervalIntegrable (fun u => residualWave s u * r u) volume 0 T :=
    (hres.mul hr).intervalIntegrable 0 T
  have h₃ : IntervalIntegrable (fun u => a * (Real.exp (-u / 2) * residualWave s u))
      volume 0 T := (continuous_const.mul (hdec.mul hres)).intervalIntegrable 0 T
  have hsplit : IntervalIntegrable (fun u => residualWave s u * r u -
      a * (Real.exp (-u / 2) * residualWave s u)) volume 0 T := h₂.sub h₃
  simp_rw [heq]
  rw [intervalIntegral.integral_add h₁ hsplit, intervalIntegral.integral_sub h₂ h₃,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul, add_sub_cancel_left]
  have habs := norm_sub_le (∫ u in (0 : ℝ)..T, residualWave s u * r u)
    (a * ∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * residualWave s u)
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.norm_eq_abs, abs_mul] at habs
  exact habs.trans (add_le_add hcross (mul_le_mul_of_nonneg_left
    (residual_half_decay_integral_abs_le hs hT) (abs_nonneg _)))

/-- Replacing the heated wave by its settled constant changes the genuine
residual energy by a uniformly bounded error, with no energy envelope. -/
theorem exists_residualEnergy_sub_centeredPickup_abs_le {s : ℝ} (hs : 0 < s) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T →
      |residualEnergy s T - (∫ u in (0 : ℝ)..T, (wholePickup u - heatedLimit s) ^ 2)| ≤ C := by
  obtain ⟨B, hB, hmixed⟩ := exists_residual_heated_mixed_sub_settled_abs_le hs hs
  let K := 2 * heatedAbsMass s
  let e (u : ℝ) := heatedWave s u - heatedLimit s
  have hK : 0 ≤ K := mul_nonneg (by norm_num) (heatedAbsMass_nonneg s)
  have he : Continuous e := (heatedWave_continuous s).sub continuous_const
  have hf := residualWave_continuous s
  refine ⟨2 * B + 2 * K ^ 2, by positivity, fun T hT => ?_⟩
  have hw : IntervalIntegrable (fun u => residualWave s u * heatedWave s u) volume 0 T :=
    (hf.mul (heatedWave_continuous s)).intervalIntegrable 0 T
  have hc : IntervalIntegrable (fun u => heatedLimit s * residualWave s u) volume 0 T :=
    (continuous_const.mul hf).intervalIntegrable 0 T
  have hcross : |∫ u in (0 : ℝ)..T, residualWave s u * e u| ≤ B := by
    have heq : (fun u => residualWave s u * e u) =
        fun u => residualWave s u * heatedWave s u - heatedLimit s * residualWave s u := by
      funext u
      dsimp only [e]
      ring
    rw [heq, intervalIntegral.integral_sub hw hc, intervalIntegral.integral_const_mul]
    exact hmixed T hT
  have htail : |∫ u in (0 : ℝ)..T, e u ^ 2| ≤ 2 * K ^ 2 :=
    abs_intervalIntegral_le_of_half_exp (he.pow 2) hT (sq_nonneg K) (fun u hu => by
      change |e u ^ 2| ≤ K ^ 2 * Real.exp (-u / 2)
      have hb := pow_le_pow_left₀ (abs_nonneg _) (heatedWave_sub_limit_abs_le hs u) 2
      rw [sq_abs, mul_pow] at hb
      rw [abs_of_nonneg (sq_nonneg _)]
      have hdec : Real.exp (-u / 2) ≤ 1 :=
        Real.exp_le_one_iff.mpr (by linarith)
      have hdecSq : Real.exp (-u / 2) ^ 2 ≤ Real.exp (-u / 2) := by
        rw [pow_two]
        exact mul_le_of_le_one_right (Real.exp_pos _).le hdec
      exact hb.trans (mul_le_mul_of_nonneg_left hdecSq (sq_nonneg K)))
  have heq : (fun u => (wholePickup u - heatedLimit s) ^ 2 - residualWave s u ^ 2) =
      fun u => 2 * (residualWave s u * e u) + e u ^ 2 := by
    funext u
    dsimp only [e, residualWave]
    ring
  have hcenter : IntervalIntegrable (fun u => (wholePickup u - heatedLimit s) ^ 2) volume 0 T :=
    ((wholePickup_continuous.sub continuous_const).pow 2).intervalIntegrable 0 T
  have hres : IntervalIntegrable (fun u => residualWave s u ^ 2) volume 0 T :=
    (hf.pow 2).intervalIntegrable 0 T
  have hm : IntervalIntegrable (fun u => 2 * (residualWave s u * e u)) volume 0 T :=
    (continuous_const.mul (hf.mul he)).intervalIntegrable 0 T
  have hsquared : IntervalIntegrable (fun u => e u ^ 2) volume 0 T :=
    (he.pow 2).intervalIntegrable 0 T
  rw [residualEnergy, abs_sub_comm, ← intervalIntegral.integral_sub hcenter hres, heq,
    intervalIntegral.integral_add hm hsquared, intervalIntegral.integral_const_mul]
  exact (abs_add_le _ _).trans (add_le_add
    (by rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
        exact mul_le_mul_of_nonneg_left hcross (by norm_num)) htail)

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualMixedAbel
