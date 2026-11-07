/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoOscillatorAnalytic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeGridSums

/-!
# Literal scalar prices for the radius-two oscillator

The source weights are nonnegative. The literal cosine weights are
bounded by twice the prime weights because the active logarithms
lie in the interval from zero to four. This makes the total weight,
rather than a uniform per-index bound, price the coordinate error.
All fixed-point coefficients and the reciprocal of pi retain their
existing source enclosures.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOscillatorScalar

open LowSchur OddRootProjection OddOutputTrace
open RadiusTwoEntryIdentities RadiusTwoPrimeGridSums RadiusTwoPrimeNorm
open private inventory phase cosineWeight invPi50_error literalDiagonal_eq abs_of_close
  from GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeGridSums

/-- An exact weighted sum with the archived rational weights. -/
def observedSum (w : ℕ → ℚ) (x : ℕ → ℝ) : ℝ :=
  ∑ q ∈ inventory, (w q:ℝ)*x q

private theorem weighted_error (a b x y : ℕ → ℝ) (M : ℝ)
    (hMass : (∑ q ∈ inventory, |a q|) ≤ M)
    (hCoeff : ∀ q ∈ inventory, |a q-b q| ≤ 1/10^12)
    (hCoord : ∀ q ∈ inventory, |x q-y q| ≤ 5/10^9)
    (hState : ∀ q ∈ inventory, |y q| ≤ 2) :
    |(∑ q ∈ inventory, a q*x q)-∑ q ∈ inventory, b q*y q| ≤ M*(5/10^9)+106/10^12 := by
  rw [← Finset.sum_sub_distrib]
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  calc
    _ ≤ ∑ q ∈ inventory, (|a q| *(5/10^9)+2/10^12) := by
      apply Finset.sum_le_sum
      intro q hq
      rw [show a q*x q-b q*y q = a q*(x q-y q)+(a q-b q)*y q by ring]
      refine (abs_add_le _ _).trans ?_
      rw [abs_mul, abs_mul]
      exact (add_le_add (mul_le_mul_of_nonneg_left (hCoord q hq) (abs_nonneg _))
        (mul_le_mul (hCoeff q hq) (hState q hq) (abs_nonneg _) (by norm_num))).trans_eq (by ring)
    _ = (∑ q ∈ inventory, |a q|)*(5/10^9)+106/10^12 := by
      rw [Finset.sum_add_distrib, Finset.sum_mul, Finset.sum_const, nsmul_eq_mul]
      have hcard : inventory.card = 53 := by norm_num [inventory, Nat.card_Icc]
      rw [hcard]
      norm_num
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_right hMass (by norm_num)) le_rfl

private theorem inventoryMass : (∑ q ∈ inventory, |primeWeight q|) = primeMass 2/2 := by
  simp only [abs_of_nonneg (primeWeight_nonneg _)]
  unfold primeMass inventory
  rw [activePrimePowers_two]
  ring

private theorem cosineMass : (∑ q ∈ inventory, |cosineWeight q|) ≤ primeMass 2 := by
  calc
    _ ≤ ∑ q ∈ inventory, 2*primeWeight q := by
      apply Finset.sum_le_sum
      intro q hq
      have hA : q ∈ activePrimePowers 2 := by simpa only [activePrimePowers_two, inventory] using hq
      have hI : q ∈ Finset.Icc 2 54 := hq
      have hQ : (0:ℝ) < q := by
        exact_mod_cast (by have := (Finset.mem_Icc.mp hI).1; omega : 0 < q)
      have h₁ : 1 ≤ (q:ℝ) := by
        exact_mod_cast (by have := (Finset.mem_Icc.mp hI).1; omega : 1 ≤ q)
      unfold activePrimePowers at hA
      have hUpper := (Finset.mem_filter.mp hA).2.2
      norm_num at hUpper
      have hLo : 0 ≤ Real.log q := Real.log_nonneg h₁
      have hHi : Real.log q ≤ 4 := (Real.log_le_iff_le_exp hQ).2 hUpper.le
      unfold cosineWeight
      rw [abs_of_nonneg (mul_nonneg (primeWeight_nonneg _) (by linarith only [hHi])),
        mul_comm 2]
      exact mul_le_mul_of_nonneg_left (by linarith only [hLo]) (primeWeight_nonneg _)
    _ = _ := by
      unfold primeMass inventory
      rw [activePrimePowers_two, Finset.mul_sum]

private theorem observedSine_error (w v : ℕ → ℚ) (s : ℕ → ℝ)
    (hw : WeightTableSound w v) (mass : primeMass 2 ≤ 25) (n : ℕ)
    (hSin : ∀ q ∈ inventory, |Real.sin (phase q n)-s q| ≤ 5/10^9) :
    |primeSignal 2 (n:ℝ)-observedSum w s| ≤ 7/10^8 := by
  have hS := weighted_error primeWeight (fun q => (w q:ℝ)) (fun q => Real.sin (phase q n)) s
    (25/2) (by rw [inventoryMass]; linarith only [mass])
    (fun q hq => (hw q hq).1) hSin
    (fun q hq => abs_of_close (hSin q hq) (Real.abs_sin_le_one _) (by norm_num))
  have hV : primeSignal 2 (n:ℝ) = ∑ q ∈ inventory, primeWeight q*Real.sin (phase q n) := by
    unfold primeSignal inventory phase frequency
    rw [activePrimePowers_two]
  rw [hV,observedSum]
  exact hS.trans (by norm_num)

private theorem observedCosine_error (w v : ℕ → ℚ) (c : ℕ → ℝ)
    (hw : WeightTableSound w v) (mass : primeMass 2 ≤ 25) (n : ℕ)
    (hCos : ∀ q ∈ inventory, |Real.cos (phase q n)-c q| ≤ 5/10^9) :
    |(∑ q ∈ inventory, cosineWeight q*Real.cos (phase q n))-observedSum v c| ≤ 13/10^8 := by
  have h := weighted_error cosineWeight (fun q => (v q:ℝ)) (fun q => Real.cos (phase q n)) c
    25 (cosineMass.trans mass) (fun q hq => (hw q hq).2.1) hCos
    (fun q hq => abs_of_close (hCos q hq) (Real.abs_cos_le_one _) (by norm_num))
  unfold observedSum
  exact h.trans (by norm_num)

/-- The fixed reciprocal observation used before rounding the weighted sum. -/
def reciprocal (a : ℚ) : ℚ := grid50 (a/3.14159265358979323846)

private theorem scaled_error (a : ℚ) (ha : a = 1 ∨ a = 2) (w v : ℕ → ℚ)
    (s : ℕ → ℝ) (hw : WeightTableSound w v) (mass : primeMass 2 ≤ 25) (n : ℕ)
    (hSin : ∀ q ∈ inventory, |Real.sin (phase q n)-s q| ≤ 5/10^9) :
    |((a:ℝ)/Real.pi)*primeSignal 2 (n:ℝ)-(reciprocal a:ℝ)*observedSum w s| ≤ 5/10^8 := by
  have hErr := observedSine_error w v s hw mass n hSin
  have hLit := abs_primeSignal_le 2 (n:ℝ)
  have hObs : |observedSum w s| ≤ 13 := by
    have h := abs_sub_le (observedSum w s) (primeSignal 2 (n:ℝ)) 0
    rw [sub_zero, sub_zero, abs_sub_comm (observedSum w s)] at h
    linarith only [h,hErr,hLit,mass]
  have ha₀ : 0 ≤ (a:ℝ) := by rcases ha with rfl | rfl <;> norm_num
  have ha₂ : (a:ℝ) ≤ 2 := by rcases ha with rfl | rfl <;> norm_num
  have hPi : (a:ℝ)/Real.pi ≤ 2/3 :=
    (div_le_div_of_nonneg_left ha₀ (by norm_num) Real.pi_gt_three.le).trans
      (div_le_div_of_nonneg_right ha₂ (by norm_num))
  rw [show ((a:ℝ)/Real.pi)*primeSignal 2 (n:ℝ)-(reciprocal a:ℝ)*observedSum w s =
    ((a:ℝ)/Real.pi)*(primeSignal 2 (n:ℝ)-observedSum w s)+
      (((a:ℝ)/Real.pi)-(reciprocal a:ℝ))*observedSum w s by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul, abs_of_nonneg (div_nonneg ha₀ Real.pi_pos.le)]
  exact (add_le_add (mul_le_mul hPi hErr (abs_nonneg _) (by norm_num))
    (mul_le_mul (invPi50_error a ha) hObs (abs_nonneg _) (by norm_num))).trans (by norm_num)

/-- The actual signed prime signal has a five-times-ten-to-minus-eight
price from the finite oscillator coordinate errors. -/
theorem prime_signal_error (w v : ℕ → ℚ) (s : ℕ → ℝ)
    (hw : WeightTableSound w v) (mass : primeMass 2 ≤ 25) (n : ℕ)
    (hSin : ∀ q ∈ Finset.Icc (2:ℕ) 54,
      |Real.sin (frequency 2 n*Real.log q)-s q| ≤ 5/10^9) :
    |(2/Real.pi)*primeSignal 2 (n:ℝ)-(reciprocal 2:ℝ)*observedSum w s| ≤ 5/10^8 := by
  simpa only [Rat.cast_ofNat] using scaled_error 2 (Or.inr rfl) w v s hw mass n hSin

/-- The literal prime diagonal fits the existing outward seed price. -/
theorem prime_diagonal_error (w v : ℕ → ℚ) (s c : ℕ → ℝ)
    (hw : WeightTableSound w v) (mass : primeMass 2 ≤ 25) {n : ℕ} (hn : 65 ≤ n)
    (hSin : ∀ q ∈ Finset.Icc (2:ℕ) 54,
      |Real.sin (frequency 2 n*Real.log q)-s q| ≤ 5/10^9)
    (hCos : ∀ q ∈ Finset.Icc (2:ℕ) 54,
      |Real.cos (frequency 2 n*Real.log q)-c q| ≤ 5/10^9) :
    |(∑ q ∈ activePrimePowers 2, primeWeight q*sineShiftEntry 2 n n (Real.log q))-
      (observedSum v c+(reciprocal 1:ℝ)*observedSum w s/(n:ℝ))| ≤ 2/10^7 := by
  have hnR : (65:ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : (0:ℝ) < n := by linarith only [hnR]
  rw [literalDiagonal_eq (by omega)]
  have hc := observedCosine_error w v c hw mass n hCos
  have hs := scaled_error 1 (Or.inl rfl) w v s hw mass n hSin
  rw [Rat.cast_one] at hs
  rw [add_sub_add_comm, ← sub_div]
  refine (abs_add_le _ _).trans ?_
  rw [abs_div, abs_of_pos hn0]
  refine (add_le_add hc (div_le_div_of_nonneg_right hs hn0.le)).trans ?_
  refine (add_le_add le_rfl (div_le_div_of_nonneg_left (by norm_num) (by norm_num) hnR)).trans ?_
  norm_num

open RadiusTwoDisplacement OddBoundarySignalBounds

/-- An exact packed comparison at the stated radius is sufficient for
the literal signed displacement signal. -/
theorem displacement_error (w v : ℕ → ℚ) (s : ℕ → ℝ)
    (hw : WeightTableSound w v) (mass : primeMass 2 ≤ 25) (n : ℕ)
    (hSin : ∀ q ∈ Finset.Icc (2:ℕ) 54,
      |Real.sin (frequency 2 n*Real.log q)-s q| ≤ 5/10^9)
    (boundary frozen : ℝ)
    (hb : |(n:ℝ)*boundarySignal 2 n-boundary| ≤ 6/10^7)
    (hPacked : |(-boundary-(reciprocal 2:ℝ)*observedSum w s)-frozen| ≤ 3/10^7) :
    |displacementSignal n-frozen| ≤ 1/10^6 := by
  let p := (reciprocal 2:ℝ)*observedSum w s
  have hp := prime_signal_error w v s hw mass n hSin
  have hPrice : |displacementSignal n-(-boundary-p)| ≤ 6/10^7+5/10^8 := by
    rw [show displacementSignal n-(-boundary-p) =
      -(((n:ℝ)*boundarySignal 2 n-boundary)+((2/Real.pi)*primeSignal 2 (n:ℝ)-p)) by
        unfold displacementSignal; ring, abs_neg]
    exact (abs_add_le _ _).trans (add_le_add hb hp)
  exact (abs_sub_le _ (-boundary-p) _).trans ((add_le_add hPrice hPacked).trans (by norm_num))

/-- The source signal has enough magnitude slack to pass the seed bound
for every outward observation within its prescribed radius. -/
theorem observation_magnitude {n : ℕ} (hn : 65 ≤ n) (mass : primeMass 2 ≤ 25)
    {frozen : ℝ} (hf : |displacementSignal n-frozen| ≤ 1/10^6) : |frozen| ≤ 9 := by
  have hnR : (65:ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : (0:ℝ) < n := by linarith only [hnR]
  have hg0 := boundarySignal_nonneg 2 (by norm_num) n
  have hg := boundarySignal_le 2 (by norm_num) (show 0 < n by omega)
  have hπ : (4:ℝ) ≤ Real.pi^2 := by nlinarith [Real.pi_gt_three, Real.pi_pos]
  have hfrac : 4/(Real.pi^2*(n:ℝ)^2) ≤ 1/(n:ℝ)^2 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith only [mul_nonneg (sub_nonneg.mpr hπ) (sq_nonneg (n:ℝ))]
  have hg' : boundarySignal 2 n ≤ 2/(4*(n:ℝ))+1/(n:ℝ)^2 :=
    hg.trans (add_le_add le_rfl (by simpa only [show (2:ℝ)^2=4 by norm_num] using hfrac))
  have hScaled : (n:ℝ)*boundarySignal 2 n ≤ 3/5 := by
    refine (mul_le_mul_of_nonneg_left hg' hn0.le).trans ?_
    rw [show (n:ℝ)*(2/(4*(n:ℝ))+1/(n:ℝ)^2) = 1/2+1/(n:ℝ) by field_simp; ring]
    have h := one_div_le_one_div_of_le (by norm_num : (0:ℝ) < 65) hnR
    linarith only [h]
  have hS : |primeSignal 2 (n:ℝ)| ≤ 25/2 :=
    (abs_primeSignal_le 2 _).trans (by linarith only [mass])
  have hPi := div_le_div_of_nonneg_left (by norm_num : (0:ℝ) ≤ 2)
    (by norm_num : (0:ℝ) < 3) Real.pi_gt_three.le
  have hPrime := mul_le_mul hPi hS (abs_nonneg _) (by norm_num : (0:ℝ) ≤ 2/3)
  have hLiteral : |displacementSignal n| ≤ 3/5+25/3 := by
    unfold displacementSignal
    refine (abs_sub_le _ 0 _).trans ?_
    simp only [sub_zero,zero_sub,abs_neg,abs_mul,abs_of_nonneg hn0.le,abs_of_nonneg hg0,
      abs_of_nonneg (by positivity : (0:ℝ) ≤ 2/Real.pi)]
    linarith only [hScaled,hPrime]
  have h := abs_sub_le frozen (displacementSignal n) 0
  rw [sub_zero, sub_zero, abs_sub_comm frozen] at h
  linarith only [h,hf,hLiteral]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOscillatorScalar
