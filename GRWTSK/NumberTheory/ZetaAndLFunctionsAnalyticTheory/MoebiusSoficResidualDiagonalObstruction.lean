/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import Mathlib.NumberTheory.SumPrimeReciprocals
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficIndependentThinning

/-!
# Superlinear diagonal in the genuine signed thinning residual

Every prime contributes a fixed positive multiple of its reciprocal to
the diagonal divided by the horizon, once the response interval has
matured. The divergence of the prime reciprocals makes the diagonal
superlinear. The exact thinning identity therefore forces growing
signed compensation on any scales carrying a linear residual bound.
The mixed term is bounded above by residual energy plus a linear
heated-wave cost, so the signed pickup deviation must itself grow
superlinearly on those scales.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficResidualDiagonalObstruction

open GRWTSK.RiemannHypothesis.CCC
open GaussianSignedResidualLaplace MoebiusSoficBlockObstruction
  MoebiusSoficHeatedResidualBridge MoebiusSoficResidualCompensation
  MoebiusSoficIndependentThinning

private theorem prime_reciprocal_sum_gt (B : ℝ) :
    ∃ P : Finset Nat.Primes, B < ∑ p ∈ P, (1 / p : ℝ) := by
  by_contra! h
  exact Nat.Primes.not_summable_one_div
    (summable_of_sum_le (fun _ => by positivity) h)

private theorem prime_residual_sq_lower {s : ℝ} (hs : 0 < s) {p : ℕ}
    (hp : p.Prime) :
    (1 - Real.exp (-s * Real.log 2 ^ 2)) ^ 2 ≤ heatedResidualCoeff s p ^ 2 := by
  have hμ : moebiusReal p = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hp]
  have hlog : Real.log 2 ≤ Real.log (p : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hp.two_le)
  have hsq : Real.log 2 ^ 2 ≤ Real.log (p : ℝ) ^ 2 :=
    pow_le_pow_left₀ (Real.log_nonneg (by norm_num)) hlog 2
  have hexp := Real.exp_le_exp.mpr (mul_le_mul_of_nonpos_left hsq (neg_nonpos.mpr hs.le))
  have hnonneg : 0 ≤ 1 - Real.exp (-s * Real.log 2 ^ 2) := by
    rw [sub_nonneg, Real.exp_le_one_iff]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hs.le) (sq_nonneg _)
  rw [heatedResidualCoeff, heatedCoeff, hμ]
  calc
    _ ≤ (1 - Real.exp (-s * Real.log (p : ℝ) ^ 2)) ^ 2 :=
      pow_le_pow_left₀ hnonneg (sub_le_sub_left hexp 1) 2
    _ = _ := by ring

private theorem prime_gram_lower {p : ℕ} (hp : p.Prime) {T : ℝ}
    (hT : 2 * (Real.log (p : ℝ) + 2 * Real.log 2) ≤ T) :
    (T / 2) / (p : ℝ) ≤ pickupResponseGram T p p := by
  let A := Real.log (p : ℝ)
  let a := A + 2 * Real.log 2
  have hp' : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hlog2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hA : 0 ≤ A := Real.log_nonneg (by exact_mod_cast hp.one_le)
  have hAa : A ≤ a := by dsimp [a]; linarith
  have ha : 0 ≤ a := hA.trans hAa
  have haT : a ≤ T := by change 2 * a ≤ T at hT; linarith
  have hshift : Real.exp (-a / 2) = Real.exp (-A / 2) / 2 := by
    rw [show -a / 2 = -A / 2 + -Real.log 2 by dsimp [a]; ring, Real.exp_add,
      Real.exp_neg (Real.log 2), Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    ring
  have hsq : Real.exp (-A / 2) ^ 2 = (p : ℝ)⁻¹ := by
    rw [pow_two, ← Real.exp_add, show -A / 2 + -A / 2 = -A by ring, Real.exp_neg]
    rw [show A = Real.log (p : ℝ) by rfl, Real.exp_log hp']
  calc
    (T / 2) / (p : ℝ) ≤ (T - a) / (p : ℝ) := by
      apply div_le_div_of_nonneg_right _ hp'.le
      change 2 * a ≤ T at hT
      linarith
    _ = pickupBirthWindowFloor A a T := by
      rw [pickupBirthWindowFloor, hshift,
        show 2 * (Real.exp (-A / 2) - Real.exp (-A / 2) / 2) =
          Real.exp (-A / 2) by ring, hsq, div_eq_mul_inv]
    _ ≤ _ := pickupBirthWindowFloor_le_gram hp.pos hp.pos le_rfl le_rfl hAa ha haT

/-- The diagonal of the literal residual grows faster than any linear budget
at each fixed positive heat. Finite prime heads suffice. -/
theorem heatedResidualDiagonal_div_tendsto_atTop {s : ℝ} (hs : 0 < s) :
    Tendsto (fun T : ℝ => heatedResidualDiagonal s T / T) atTop atTop := by
  let c : ℝ := (1 - Real.exp (-s * Real.log 2 ^ 2)) ^ 2 / 2
  have hc : 0 < c := by
    have hd : 0 < 1 - Real.exp (-s * Real.log 2 ^ 2) := by
      rw [sub_pos, Real.exp_lt_one_iff]
      exact mul_neg_of_neg_of_pos (neg_neg_of_pos hs)
        (pow_pos (Real.log_pos (by norm_num)) _)
    exact div_pos (pow_pos hd _) (by norm_num)
  apply tendsto_atTop.mpr
  intro B
  obtain ⟨P, hP⟩ := prime_reciprocal_sum_gt (B / c)
  let val : Nat.Primes ↪ ℕ := ⟨Subtype.val, Subtype.val_injective⟩
  have hP' : B < c * ∑ p ∈ P.map val, (1 / (p : ℝ)) := by
    rw [Finset.sum_map, mul_comm c]
    exact (div_lt_iff₀ hc).mp hP
  have hbound : ∀ᶠ T : ℝ in atTop, ∀ p ∈ P.map val,
      2 * (Real.log (p : ℝ) + 2 * Real.log 2) ≤ T :=
    (P.map val).eventually_all.mpr fun p _ => eventually_ge_atTop _
  filter_upwards [hbound, eventually_ge_atTop (1 : ℝ)] with T hbound hT
  have hT' : 0 < T := by linarith
  have hpPrime (p : ℕ) (hp : p ∈ P.map val) : p.Prime := by
    obtain ⟨q, _, rfl⟩ := Finset.mem_map.mp hp
    exact q.property
  have hsub : P.map val ⊆ pickupIndex T := by
    intro p hp
    have hprime := hpPrime p hp
    have hlog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hprime.one_le)
    have hlog2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
    have hupper := hbound p hp
    exact Finset.mem_Icc.mpr ⟨hprime.one_le, Nat.le_floor
      ((Real.log_le_iff_le_exp (by exact_mod_cast hprime.pos)).mp (by linarith))⟩
  refine hP'.le.trans ((le_div_iff₀ hT').mpr ?_)
  calc
    _ = ∑ p ∈ P.map val, c * (1 / (p : ℝ)) * T := by
      rw [Finset.mul_sum, Finset.sum_mul]
    _ ≤ ∑ p ∈ P.map val, heatedResidualCoeff s p ^ 2 * pickupResponseGram T p p := by
      apply Finset.sum_le_sum
      intro p hp
      have hprime := hpPrime p hp
      have hp' : (0 : ℝ) < p := by exact_mod_cast hprime.pos
      have hgram := prime_gram_lower hprime (hbound p hp)
      calc
        _ = (1 - Real.exp (-s * Real.log 2 ^ 2)) ^ 2 * ((T / 2) / (p : ℝ)) := by
          dsimp [c]
          ring
        _ ≤ _ := mul_le_mul (prime_residual_sq_lower hs hprime) hgram
          (by positivity) (sq_nonneg _)
    _ ≤ heatedResidualDiagonal s T := by
      apply Finset.sum_le_sum_of_subset_of_nonneg hsub
      intro p _ _
      have hgram : 0 ≤ pickupResponseGram T p p :=
        intervalIntegral.integral_nonneg hT'.le fun u _ => mul_self_nonneg (pickupResponse p u)
      exact mul_nonneg (sq_nonneg _) hgram

/-- A genuine linear residual budget forces unbounded normalized signed
compensation on the same scales, with the original mask weights and labels. -/
theorem heatMaskCompensation_div_tendsto_atTop_of_linear_residual {s A : ℝ}
    (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop)
    (hlinear : ∀ᶠ T in l, residualEnergy s T ≤ A * T) :
    Tendsto (fun T : ℝ => (heatedResidualMixed s T +
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T)) / T)
      l atTop := by
  apply tendsto_atTop.mpr
  intro B
  have hdiag := tendsto_atTop.mp ((heatedResidualDiagonal_div_tendsto_atTop hs).mono_left hl) (B + A)
  filter_upwards [hdiag, hlinear, (eventually_ge_atTop (1 : ℝ)).filter_mono hl] with T hD hE hT
  have hT' : 0 < T := by linarith
  have hfloor := (le_div_iff₀ hT').mp hD
  have henergy := residualEnergy_eq_diagonal_sub_mixed_sub_heatMaskDeviation s hT'.le
  apply (le_div_iff₀ hT').mpr
  linarith

private theorem heatedWave_eq_pickup_sum (s T u : ℝ) (huT : u ≤ T) :
    heatedWave s u =
      ∑ n ∈ pickupIndex T, heatedCoeff s n * pickupResponse n u := by
  rw [heatedWave_eq_closedSourceWave s huT]
  rfl

private theorem residualWave_eq_pickup_sum (s T u : ℝ) (hu : 0 ≤ u) (huT : u ≤ T) :
    residualWave s u =
      ∑ n ∈ pickupIndex T, heatedResidualCoeff s n * pickupResponse n u := by
  rw [residualWave_eq_signed_sum s hu huT]
  apply Finset.sum_congr rfl
  intro n _
  unfold heatedResidualCoeff heatedCoeff
  ring

private theorem full_mixed_eq_integral (s : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    pickupPairSum T (fun m n =>
      (heatedCoeff s m * heatedResidualCoeff s n +
        heatedResidualCoeff s m * heatedCoeff s n) * pickupResponseGram T m n) =
      ∫ u in (0 : ℝ)..T, 2 * heatedWave s u * residualWave s u := by
  let k m n := heatedCoeff s m * heatedResidualCoeff s n +
    heatedResidualCoeff s m * heatedCoeff s n
  have hprod (m : ℕ) (hm : m ∈ pickupIndex T) (n : ℕ) (hn : n ∈ pickupIndex T) :
      Continuous (fun u => k m n * (pickupResponse m u * pickupResponse n u)) :=
    continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
      (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
  symm
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ pickupIndex T, ∑ n ∈ pickupIndex T,
          k m n * (pickupResponse m u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change 2 * heatedWave s u * residualWave s u = ∑ m ∈ pickupIndex T, ∑ n ∈ pickupIndex T,
        k m n * (pickupResponse m u * pickupResponse n u)
      rw [show 2 * heatedWave s u * residualWave s u =
        heatedWave s u * residualWave s u + residualWave s u * heatedWave s u by ring,
        heatedWave_eq_pickup_sum s T u hu.2, residualWave_eq_pickup_sum s T u hu.1 hu.2,
        Finset.sum_mul_sum, Finset.sum_mul_sum]
      simp only [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      dsimp only [k]
      ring
    _ = _ := by
      unfold pickupPairSum pickupResponseGram
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n _
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hprod m hm n hn).intervalIntegrable 0 T
      · intro m hm
        exact (continuous_finsetSum _ (fun n hn => hprod m hm n hn)).intervalIntegrable 0 T

private theorem heatedCoeff_mul_residualCoeff_nonneg {s : ℝ} (hs : 0 ≤ s) (n : ℕ) :
    0 ≤ heatedCoeff s n * heatedResidualCoeff s n := by
  let q := Real.exp (-s * Real.log (n : ℝ) ^ 2)
  have hq : 0 ≤ q := Real.exp_nonneg _
  have hq' : q ≤ 1 := Real.exp_le_one_iff.mpr
    (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hs) (sq_nonneg _))
  change 0 ≤ (moebiusReal n * q) * (moebiusReal n - moebiusReal n * q)
  rw [show (moebiusReal n * q) * (moebiusReal n - moebiusReal n * q) =
    moebiusReal n ^ 2 * q * (1 - q) by ring]
  exact mul_nonneg (mul_nonneg (sq_nonneg _) hq) (sub_nonneg.mpr hq')

/-- The omitted mixed diagonal is nonnegative. -/
private theorem heatedResidualMixed_le_full_mixed_integral {s T : ℝ}
    (hs : 0 ≤ s) (hT : 0 ≤ T) :
    heatedResidualMixed s T ≤ ∫ u in (0 : ℝ)..T, 2 * heatedWave s u * residualWave s u := by
  rw [← full_mixed_eq_integral s hT]
  unfold heatedResidualMixed pickupPairSum
  apply Finset.sum_le_sum
  intro m _
  apply Finset.sum_le_sum
  intro n _
  change
    (if m ≠ n then
      (heatedCoeff s m * heatedResidualCoeff s n +
        heatedResidualCoeff s m * heatedCoeff s n) * pickupResponseGram T m n else 0) ≤
    (heatedCoeff s m * heatedResidualCoeff s n +
      heatedResidualCoeff s m * heatedCoeff s n) * pickupResponseGram T m n
  by_cases h : m = n
  · subst n
    rw [ite_eq_right (not_not_intro rfl : ¬m ≠ m)]
    have hcoeff := heatedCoeff_mul_residualCoeff_nonneg hs m
    have hgram : 0 ≤ pickupResponseGram T m m :=
      intervalIntegral.integral_nonneg hT (fun _ _ => mul_self_nonneg _)
    exact mul_nonneg (add_nonneg hcoeff (by simpa only [mul_comm] using hcoeff)) hgram
  · rw [ite_eq_left h]

private theorem heatedResidualMixed_le_residualEnergy_add_uniform_sq_mul {s T B : ℝ}
    (hs : 0 ≤ s) (hT : 0 ≤ T) (hB : 0 ≤ B)
    (hbound : ∀ u ∈ Icc (0 : ℝ) T, |heatedWave s u| ≤ B) :
    heatedResidualMixed s T ≤ residualEnergy s T + B ^ 2 * T := by
  have hR : Continuous (residualWave s) := residualWave_continuous s
  have hH : Continuous (heatedWave s) := heatedWave_continuous s
  have hR_sq : Continuous (fun u => residualWave s u ^ 2) := hR.pow 2
  have hM : Continuous (fun u => 2 * heatedWave s u * residualWave s u) :=
    (continuous_const.mul hH).mul hR
  have hB_sq : Continuous (fun _ : ℝ => B ^ 2) := continuous_const
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, 2 * heatedWave s u * residualWave s u :=
      heatedResidualMixed_le_full_mixed_integral hs hT
    _ ≤ ∫ u in (0 : ℝ)..T, residualWave s u ^ 2 + B ^ 2 := by
      apply intervalIntegral.integral_mono_on hT
        (hM.intervalIntegrable 0 T)
        ((hR_sq.add hB_sq).intervalIntegrable 0 T)
      intro u hu
      change 2 * heatedWave s u * residualWave s u ≤ residualWave s u ^ 2 + B ^ 2
      have hHsq : heatedWave s u ^ 2 ≤ B ^ 2 :=
        sq_le_sq.mpr (by simpa only [abs_of_nonneg hB] using hbound u hu)
      nlinarith [sq_nonneg (heatedWave s u - residualWave s u)]
    _ = _ := by
      rw [intervalIntegral.integral_add (hR_sq.intervalIntegrable 0 T)
        (hB_sq.intervalIntegrable 0 T), intervalIntegral.integral_const]
      unfold residualEnergy
      simp only [sub_zero, smul_eq_mul]
      ring

/-- The true residual energy and a uniform heated-wave bound control the
signed mixed term from above. -/
theorem heatedResidualMixed_le_residualEnergy_add_heat_bound {s T : ℝ}
    (hs : 0 < s) (hT : 0 ≤ T) :
    heatedResidualMixed s T ≤ residualEnergy s T +
      (|heatedLimit s| + 2 * heatedAbsMass s) ^ 2 * T := by
  have hmass : 0 ≤ heatedAbsMass s := heatedAbsMass_nonneg s
  apply heatedResidualMixed_le_residualEnergy_add_uniform_sq_mul hs.le hT (by positivity)
  intro u hu
  calc
    |heatedWave s u| ≤ |heatedWave s u - heatedLimit s| + |heatedLimit s| := by
      simpa only [sub_add_cancel] using
        abs_add_le (heatedWave s u - heatedLimit s) (heatedLimit s)
    _ ≤ 2 * heatedAbsMass s * Real.exp (-u / 2) + |heatedLimit s| :=
      add_le_add (heatedWave_sub_limit_abs_le hs u) le_rfl
    _ ≤ _ := by
      have hdecay : Real.exp (-u / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith [hu.1])
      linarith [mul_le_mul_of_nonneg_left hdecay (show 0 ≤ 2 * heatedAbsMass s by positivity)]

/-- The diagonal minus the actual weighted pickup deviation is paid
by twice the genuine residual energy and the linear heated-wave cost. -/
theorem heatedResidualDiagonal_sub_heatMaskDeviation_le {s T : ℝ}
    (hs : 0 < s) (hT : 0 ≤ T) :
    heatedResidualDiagonal s T -
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) ≤
      2 * residualEnergy s T + (|heatedLimit s| + 2 * heatedAbsMass s) ^ 2 * T := by
  linarith [residualEnergy_eq_diagonal_sub_mixed_sub_heatMaskDeviation s hT,
    heatedResidualMixed_le_residualEnergy_add_heat_bound hs hT]

/-- A genuine linear budget forces the normalized weighted pickup deviation
itself to tend to positive infinity on the very same scales. -/
theorem heatMaskDeviation_div_tendsto_atTop_of_linear_residual {s A : ℝ}
    (hs : 0 < s) {l : Filter ℝ} (hl : l ≤ atTop)
    (hlinear : ∀ᶠ T in l, residualEnergy s T ≤ A * T) :
    Tendsto (fun T : ℝ =>
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) / T)
      l atTop := by
  apply tendsto_atTop.mpr
  intro B
  have hdiag := tendsto_atTop.mp ((heatedResidualDiagonal_div_tendsto_atTop hs).mono_left hl)
    (B + 2 * A + (|heatedLimit s| + 2 * heatedAbsMass s) ^ 2)
  filter_upwards [hdiag, hlinear, (eventually_ge_atTop (1 : ℝ)).filter_mono hl] with T hD hE hT
  have hT' : 0 < T := by linarith
  have hfloor := (le_div_iff₀ hT').mp hD
  apply (le_div_iff₀ hT').mpr
  linarith [heatedResidualDiagonal_sub_heatMaskDeviation_le hs hT'.le]

end GRWTSK.NumberTheory.Moebius.MoebiusSoficResidualDiagonalObstruction
