/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeDyadicRotation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoBoundaryHighBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDisplacement

/-!
# Fixed-point sums for the radius-two prime rows

Use the same 50-bit floor grid for the signed sine accumulator, the
cosine accumulator, and the final reciprocal-pi terms. The two
coefficients per prime power are stored on that grid. Their source
intervals bound the literal von Mangoldt weight and its exact
diagonal cosine coefficient. The proof pays the short rotation error,
the coefficient errors and every accumulator rounding.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeGridSums

open LowSchur OddRootProjection OddOutputTrace RadiusTwoPrimeNorm
open RadiusTwoEntryIdentities RadiusTwoPrimeObservations
open RadiusTwoPrimeSeedTrig RadiusTwoPrimeDyadicRotation
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- Round an exact rational toward minus infinity on the row grid. -/
def grid50 (x : ℚ) : ℚ := (⌊(2 : ℚ)^50*x⌋ : ℤ) / (2 : ℚ)^50

private theorem grid50_error (x : ℚ) : |(grid50 x : ℝ) - (x : ℝ)| ≤ 1/(2 : ℝ)^50 := by
  have hL := (Rat.cast_le (K := ℝ)).2 (Int.floor_le ((2 : ℚ)^50*x))
  have hU := (Rat.cast_lt (K := ℝ)).2 (Int.lt_floor_add_one ((2 : ℚ)^50*x))
  push_cast at hL hU
  have hp : (0 : ℝ) < 2^50 := by positivity
  unfold grid50
  push_cast
  rw [abs_le]
  constructor
  · have h := (lt_div_iff₀ hp).2
      (show (x : ℝ) * 2^50 < (⌊(2 : ℚ)^50*x⌋ : ℤ) + (1 : ℝ) by
        simpa only [Int.cast_add, Int.cast_one, mul_comm] using hU)
    rw [add_div] at h
    linarith
  · have h := (div_le_iff₀ hp).2
      (show ((⌊(2 : ℚ)^50*x⌋ : ℤ) : ℝ) ≤ (x : ℝ)*2^50 by
        simpa only [mul_comm] using hL)
    linarith [show (0 : ℝ) ≤ 1/2^50 by positivity]

private def inventory : Finset ℕ := Finset.Icc 2 54

private def phase (q n : ℕ) : ℝ := frequency 2 n * Real.log q

private def cosineWeight (q : ℕ) : ℝ := primeWeight q * (2 - Real.log q/2)

/-- The stored weight and cosine-weight columns have narrow literal enclosures. -/
def WeightTableSound (w v : ℕ → ℚ) : Prop :=
  ∀ q ∈ inventory,
    |primeWeight q - (w q : ℝ)| ≤ 1/10^12 ∧
      |cosineWeight q - (v q : ℝ)| ≤ 1/10^12 ∧
      |primeWeight q| ≤ 4 ∧ |cosineWeight q| ≤ 8

private def rotation (s c : ℤ → ℚ) (q n : ℕ) : ℚ × ℚ :=
  dyadicRotationCenter s c (primePhaseCenter q n)

/-- Signed sine accumulator used by both prime rows. -/
def sineSum (s c : ℤ → ℚ) (w : ℕ → ℚ) (n : ℕ) : ℚ :=
  grid50 (∑ q ∈ inventory, w q * (rotation s c q n).1)

/-- Rounded weighted cosine accumulator for the literal diagonal. -/
def cosineSum (s c : ℤ → ℚ) (v : ℕ → ℚ) (n : ℕ) : ℚ :=
  grid50 (∑ q ∈ inventory, v q * (rotation s c q n).2)

private def invPi50 : ℚ := grid50 (1/3.14159265358979323846)

private def twoInvPi50 : ℚ := grid50 (2/3.14159265358979323846)

/-- The scaled signed prime part of the displacement signal. -/
def scaledSignal (s c : ℤ → ℚ) (w : ℕ → ℚ) (n : ℕ) : ℚ :=
  grid50 (twoInvPi50 * sineSum s c w n)

/-- The literal prime diagonal evaluated by the same fixed-point recipe. -/
def diagonal (s c : ℤ → ℚ) (w v : ℕ → ℚ) (n : ℕ) : ℚ :=
  cosineSum s c v n + grid50 (invPi50 * sineSum s c w n / n)

private theorem invPi50_error (a : ℚ) (ha : a = 1 ∨ a = 2) :
    |((a : ℝ) / Real.pi) - (grid50 (a/3.14159265358979323846) : ℝ)| ≤ 1/10^12 := by
  have hPiLo := Real.pi_gt_d20.le
  have hPiHi := Real.pi_lt_d20.le
  have h₀ : 0 ≤ (a : ℝ) := by rcases ha with rfl | rfl <;> norm_num
  have hL := div_le_div_of_nonneg_left h₀ (by positivity : (0 : ℝ) < Real.pi) hPiHi
  have hU := div_le_div_of_nonneg_left h₀ (by norm_num : (0 : ℝ) < 3.14159265358979323846) hPiLo
  have hD : |(a : ℝ)/Real.pi - ((a/3.14159265358979323846 : ℚ) : ℝ)| ≤ 1/10^19 := by
    push_cast
    rw [abs_of_nonpos (sub_nonpos.mpr hU)]
    rcases ha with rfl | rfl <;> norm_num at hL ⊢ <;> linarith
  refine (abs_sub_le _ ((a/3.14159265358979323846 : ℚ) : ℝ) _).trans ?_
  have hg := grid50_error (a/3.14159265358979323846)
  rw [abs_sub_comm] at hg
  exact (add_le_add hD hg).trans (by norm_num)

private theorem abs_of_close {x y e : ℝ} (h : |x-y| ≤ e) (hx : |x| ≤ 1) (he : e ≤ 1) :
    |y| ≤ 2 := by
  have h' := abs_sub_le y x 0
  rw [sub_zero, sub_zero, abs_sub_comm y x] at h'
  linarith

private theorem product_error {a b x y R : ℝ} (ha : |a| ≤ R) (hy : |y| ≤ 2)
    (hab : |a-b| ≤ 1/10^12) (hxy : |x-y| ≤ 2/10^9) (hR : 0 ≤ R) :
    |a*x-b*y| ≤ R*(2/10^9) + 2/10^12 := by
  rw [show a*x-b*y = a*(x-y)+(a-b)*y by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul]
  exact (add_le_add (mul_le_mul ha hxy (abs_nonneg _) hR)
    (mul_le_mul hab hy (abs_nonneg _) (by norm_num))).trans_eq (by ring)

private theorem sum_error (a b x y : ℕ → ℝ) (R : ℝ) (hR : 0 ≤ R)
    (ha : ∀ q ∈ inventory, |a q| ≤ R) (hy : ∀ q ∈ inventory, |y q| ≤ 2)
    (hab : ∀ q ∈ inventory, |a q-b q| ≤ 1/10^12)
    (hxy : ∀ q ∈ inventory, |x q-y q| ≤ 2/10^9) :
    |(∑ q ∈ inventory, a q*x q) - ∑ q ∈ inventory, b q*y q| ≤
      53 * (R*(2/10^9) + 2/10^12) := by
  rw [← Finset.sum_sub_distrib]
  refine (Finset.abs_sum_le_sum_abs _ _).trans ((Finset.sum_le_sum fun q hq =>
    product_error (ha q hq) (hy q hq) (hab q hq) (hxy q hq) hR).trans_eq ?_)
  simp [inventory, Nat.card_Icc]
  ring

private theorem rotation_error (s c : ℤ → ℚ) (ht : TableSound s c)
    {q n : ℕ} (hq : q ∈ inventory) (hn : n ≤ 1200000) :
    |Real.sin (phase q n) - ((rotation s c q n).1 : ℝ)| ≤ 2/10^9 ∧
      |Real.cos (phase q n) - ((rotation s c q n).2 : ℝ)| ≤ 2/10^9 := by
  have h := Finset.mem_Icc.mp hq
  exact primeDyadicRotation_sound s c ht (by omega) h.2 hn

private theorem sineSum_error (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ} (hn : n ≤ 1200000) :
    |primeSignal 2 (n : ℝ) - (sineSum s c w n : ℝ)| ≤ 5/10^7 := by
  let raw := ∑ q ∈ inventory, w q * (rotation s c q n).1
  have hS := sum_error primeWeight (fun q => (w q : ℝ)) (fun q => Real.sin (phase q n))
    (fun q => ((rotation s c q n).1 : ℝ)) 4 (by norm_num)
    (fun q hq => (hw q hq).2.2.1)
    (fun q hq => abs_of_close (rotation_error s c ht hq hn).1 (Real.abs_sin_le_one _) (by norm_num))
    (fun q hq => (hw q hq).1)
    (fun q hq => (rotation_error s c ht hq hn).1)
  have hV : primeSignal 2 (n : ℝ) = ∑ q ∈ inventory, primeWeight q * Real.sin (phase q n) := by
    unfold primeSignal inventory phase frequency
    rw [activePrimePowers_two]
  have hr : |primeSignal 2 (n : ℝ) - (raw : ℝ)| ≤ 53 * (4*(2/10^9) + 2/10^12) := by
    push_cast [raw]
    rwa [hV]
  change |primeSignal 2 (n : ℝ) - (grid50 raw : ℝ)| ≤ _
  have hg := grid50_error raw
  rw [abs_sub_comm] at hg
  exact (abs_sub_le _ (raw : ℝ) _).trans ((add_le_add hr hg).trans (by norm_num))

private theorem cosineSum_error (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ} (hn : n ≤ 1200000) :
    |(∑ q ∈ inventory, cosineWeight q * Real.cos (phase q n)) - (cosineSum s c v n : ℝ)| ≤ 9/10^7 := by
  let raw := ∑ q ∈ inventory, v q * (rotation s c q n).2
  have hS := sum_error cosineWeight (fun q => (v q : ℝ)) (fun q => Real.cos (phase q n))
    (fun q => ((rotation s c q n).2 : ℝ)) 8 (by norm_num)
    (fun q hq => (hw q hq).2.2.2)
    (fun q hq => abs_of_close (rotation_error s c ht hq hn).2 (Real.abs_cos_le_one _) (by norm_num))
    (fun q hq => (hw q hq).2.1)
    (fun q hq => (rotation_error s c ht hq hn).2)
  have hr : |(∑ q ∈ inventory, cosineWeight q * Real.cos (phase q n)) - (raw : ℝ)| ≤ 53 * (8*(2/10^9) + 2/10^12) := by
    push_cast [raw]
    exact hS
  change |(∑ q ∈ inventory, cosineWeight q * Real.cos (phase q n)) - (grid50 raw : ℝ)| ≤ _
  have hg := grid50_error raw
  rw [abs_sub_comm] at hg
  exact (abs_sub_le _ (raw : ℝ) _).trans ((add_le_add hr hg).trans (by norm_num))

private theorem abs_sineSum_le (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ} (hn : n ≤ 1200000) :
    |(sineSum s c w n : ℝ)| ≤ 213 := by
  have hp : |primeSignal 2 (n : ℝ)| ≤ 212 := by
    unfold primeSignal
    rw [activePrimePowers_two]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    calc
      _ ≤ ∑ _q ∈ Finset.Icc 2 54, (4 : ℝ) := Finset.sum_le_sum (fun q hq => by
        rw [abs_mul]
        exact (mul_le_of_le_one_right (abs_nonneg _) (Real.abs_sin_le_one _)).trans
          (hw q hq).2.2.1)
      _ = _ := by norm_num [Nat.card_Icc]
  have he := sineSum_error s c w v ht hw hn
  have h := abs_sub_le (sineSum s c w n : ℝ) (primeSignal 2 n) 0
  rw [sub_zero, sub_zero, abs_sub_comm (sineSum s c w n : ℝ)] at h
  linarith

private theorem reciprocalProduct_error (a : ℚ) (ha : a = 1 ∨ a = 2)
    {x y : ℝ} (hxy : |x-y| ≤ 5/10^7) (hy : |y| ≤ 213) :
    |((a : ℝ)/Real.pi)*x - (grid50 (a/3.14159265358979323846) : ℝ)*y| ≤
      ((a : ℝ)/3) * (5/10^7) + 213/10^12 := by
  have ha₀ : 0 ≤ (a : ℝ) := by rcases ha with rfl | rfl <;> norm_num
  let b : ℝ := grid50 (a/3.14159265358979323846)
  change |((a : ℝ)/Real.pi)*x - b*y| ≤ _
  rw [show ((a : ℝ)/Real.pi)*x - b*y =
    ((a : ℝ)/Real.pi)*(x-y) + (((a : ℝ)/Real.pi)-b)*y by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul, abs_of_nonneg (div_nonneg ha₀ Real.pi_pos.le)]
  have hPi := div_le_div_of_nonneg_left ha₀ (by norm_num : (0 : ℝ) < 3) Real.pi_gt_three.le
  exact (add_le_add (mul_le_mul hPi hxy (abs_nonneg _) (by positivity))
    (mul_le_mul (invPi50_error a ha) hy (abs_nonneg _) (by norm_num))).trans_eq (by ring)

/-- The signed, scaled prime displacement term through the last receiving mode. -/
theorem scaledSignal_error (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ} (hn : n ≤ 1200000) :
    |(2/Real.pi)*primeSignal 2 (n : ℝ) - (scaledSignal s c w n : ℝ)| ≤ 35/10^8 := by
  let raw := twoInvPi50 * sineSum s c w n
  have h := reciprocalProduct_error 2 (Or.inr rfl)
    (sineSum_error s c w v ht hw hn) (abs_sineSum_le s c w v ht hw hn)
  have hr : |(2/Real.pi)*primeSignal 2 (n : ℝ) - (raw : ℝ)| ≤
      (2/3 : ℝ)*(5/10^7) + 213/10^12 := by
    simpa only [raw, twoInvPi50, Rat.cast_mul, Rat.cast_ofNat] using h
  change |(2/Real.pi)*primeSignal 2 (n : ℝ) - (grid50 raw : ℝ)| ≤ _
  have hg := grid50_error raw
  rw [abs_sub_comm] at hg
  exact (abs_sub_le _ (raw : ℝ) _).trans ((add_le_add hr hg).trans (by norm_num))

private theorem literalDiagonal_eq {n : ℕ} (hn : 0 < n) :
    (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) =
      (∑ q ∈ inventory, cosineWeight q * Real.cos (phase q n)) +
        ((1/Real.pi)*primeSignal 2 (n : ℝ))/(n : ℝ) := by
  rw [primeShiftSum_two_diagonal n hn]
  unfold primeSignal
  rw [activePrimePowers_two]
  unfold inventory cosineWeight phase frequency
  simp only [Finset.mul_sum, Finset.sum_div, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The complete prime diagonal with both fixed-point accumulators. -/
theorem diagonal_error (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ}
    (hn₀ : 65 ≤ n) (hn : n ≤ 1200000) :
    |(∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) -
      (diagonal s c w v n : ℝ)| ≤ 1/10^6 := by
  have hnR : (65 : ℝ) ≤ n := by exact_mod_cast hn₀
  let raw := invPi50 * sineSum s c w n / n
  have h := reciprocalProduct_error 1 (Or.inl rfl)
    (sineSum_error s c w v ht hw hn) (abs_sineSum_le s c w v ht hw hn)
  have hr : |((1/Real.pi)*primeSignal 2 (n : ℝ))/(n : ℝ) - (raw : ℝ)| ≤ 1/10^8 := by
    push_cast [raw]
    rw [← sub_div, abs_div, abs_of_nonneg (by linarith : 0 ≤ (n : ℝ))]
    have hb : |(1/Real.pi)*primeSignal 2 (n : ℝ) -
        (invPi50 : ℝ)*(sineSum s c w n : ℝ)| ≤ (1/3 : ℝ)*(5/10^7)+213/10^12 := by
      simpa only [invPi50, Rat.cast_one] using h
    refine (div_le_div_of_nonneg_right hb (by linarith : 0 ≤ (n : ℝ))).trans ?_
    refine (div_le_div_of_nonneg_left (by norm_num) (by norm_num : (0 : ℝ) < 65) hnR).trans ?_
    norm_num
  have hg := grid50_error raw
  rw [abs_sub_comm] at hg
  rw [literalDiagonal_eq (by omega)]
  change |(∑ q ∈ inventory, cosineWeight q * Real.cos (phase q n)) +
      ((1/Real.pi)*primeSignal 2 (n : ℝ))/(n : ℝ) -
      ((cosineSum s c v n + grid50 raw : ℚ) : ℝ)| ≤ _
  push_cast only [Rat.cast_add]
  rw [add_sub_add_comm]
  refine (abs_add_le _ _).trans ?_
  exact (add_le_add (cosineSum_error s c w v ht hw hn)
    ((abs_sub_le _ (raw : ℝ) _).trans (add_le_add hr hg))).trans (by norm_num)

private def rawWeight (q : ℕ) : ℚ :=
  if IsPrimePow q then logHat q.minFac / (sqrtBounds q).1 else 0

/-- Canonical 50-bit sine coefficient, with zero at non-prime powers. -/
def canonicalWeight (q : ℕ) : ℚ := grid50 (rawWeight q)

/-- Canonical 50-bit cosine coefficient from the unrounded weight. -/
def canonicalCosWeight (q : ℕ) : ℚ := grid50 (rawWeight q * (2-logHat q/2))

private def cosineWeightBounds (q : ℕ) : Bounds :=
  mul (primeWeightBounds q) (sub (point 2) (scale (1/2) (logBounds q)))

private theorem cosineWeightBounds_sound {q : ℕ} (hq : q ∈ inventory) :
    Encloses (cosineWeightBounds q) (cosineWeight q) := by
  have h := Finset.mem_Icc.mp hq
  have h' := mul_sound (primeWeightBounds_sound hq)
    (sub_sound (point_sound 2) (scale_sound (1/2) (logBounds_sound (by omega : 0 < q) h.2)))
  unfold cosineWeightBounds
  convert h' using 1
  unfold cosineWeight
  push_cast
  ring

private def fits (I : Bounds) (c cap : ℚ) : Prop :=
  c-1/10^12 ≤ I.1 ∧ I.2 ≤ c+1/10^12 ∧ -cap ≤ I.1 ∧ I.2 ≤ cap

private instance (I : Bounds) (c cap : ℚ) : Decidable (fits I c cap) := by
  unfold fits
  infer_instance

private theorem fits_sound {I : Bounds} {c cap : ℚ} {x : ℝ} (h : fits I c cap)
    (hx : Encloses I x) : |x-(c : ℝ)| ≤ 1/10^12 ∧ |x| ≤ (cap : ℝ) := by
  obtain ⟨hl,hu,hcl,hcu⟩ := h
  have hl' := (Rat.cast_le (K := ℝ)).2 hl
  have hu' := (Rat.cast_le (K := ℝ)).2 hu
  have hcl' := (Rat.cast_le (K := ℝ)).2 hcl
  have hcu' := (Rat.cast_le (K := ℝ)).2 hcu
  push_cast at hl' hu' hcl'
  rw [abs_le, abs_le]
  exact ⟨⟨by linarith [hx.1], by linarith [hx.2]⟩, hcl'.trans hx.1, hx.2.trans hcu'⟩

set_option maxRecDepth 8192 in
set_option maxHeartbeats 10000000 in
private theorem checkedWeights (i : Fin 53) :
    fits (primeWeightBounds (i.val+2)) (canonicalWeight (i.val+2)) 4 ∧
      fits (cosineWeightBounds (i.val+2)) (canonicalCosWeight (i.val+2)) 8 :=
  (show ∀ k : Fin 53, fits (primeWeightBounds (k.val+2)) (canonicalWeight (k.val+2)) 4 ∧
    fits (cosineWeightBounds (k.val+2)) (canonicalCosWeight (k.val+2)) 8 by decide +kernel) i

/-- The exact canonical coefficient tables are sound on the complete support inventory. -/
theorem canonicalWeightTable_sound : WeightTableSound canonicalWeight canonicalCosWeight := by
  intro q hq
  obtain ⟨hl,hu⟩ := Finset.mem_Icc.mp hq
  let i : Fin 53 := ⟨q-2, by omega⟩
  have hi : i.val+2 = q := by
    change q-2+2 = q
    omega
  have h := checkedWeights i
  rw [hi] at h
  have hW := fits_sound h.1 (primeWeightBounds_sound hq)
  have hC := fits_sound h.2 (cosineWeightBounds_sound hq)
  exact ⟨hW.1, hC.1, by simpa using hW.2, by simpa using hC.2⟩

open OddBoundarySignalBounds RadiusTwoBoundaryHighBounds RadiusTwoDisplacement

/-- The high-branch boundary center with the archived output rounding. -/
def highBoundary50 (n : ℕ) : ℚ := 1/2 + grid50 (46453453/(1000000000*(n : ℚ)))

/-- The rounded high-branch boundary remains inside the signed seed budget. -/
theorem highBoundary50_error {n : ℕ} (hn : 1024 ≤ n) :
    |(n : ℝ)*boundarySignal 2 n - (highBoundary50 n : ℝ)| ≤ 6/10^7 := by
  have h := abs_scaled_boundarySignal_sub_center_le hn
  have hRound : |(scaledBoundaryCenter n : ℝ) - (highBoundary50 n : ℝ)| ≤ 1/(2 : ℝ)^50 := by
    have hGrid := grid50_error (46453453/(1000000000*(n : ℚ)))
    rw [abs_sub_comm] at hGrid
    push_cast at hGrid
    unfold scaledBoundaryCenter highBoundary50
    push_cast
    rwa [show (46453453 : ℝ)/1000000000/(n : ℝ) =
        46453453/(1000000000*(n : ℝ)) by ring, add_sub_add_left_eq_sub]
  exact (abs_sub_le _ (scaledBoundaryCenter n : ℝ) _).trans
    ((add_le_add h hRound).trans (by norm_num))

/-- Combine the literal boundary and prime comparisons with one archived row check. -/
theorem displacementSignal_error (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ} (hn : n ≤ 1200000)
    (boundary frozen : ℚ)
    (hb : |(n : ℝ)*boundarySignal 2 n - (boundary : ℝ)| ≤ 6/10^7)
    (hf : |(((-boundary - scaledSignal s c w n : ℚ) - frozen : ℚ) : ℝ)| ≤ 1/10^8) :
    |displacementSignal n - (frozen : ℝ)| ≤ 1/10^6 := by
  have hp := scaledSignal_error s c w v ht hw hn
  let center := -boundary - scaledSignal s c w n
  have h : |displacementSignal n - (center : ℝ)| ≤ 6/10^7+35/10^8 := by
    unfold displacementSignal center
    push_cast
    rw [show -(n : ℝ)*boundarySignal 2 n - (2/Real.pi)*primeSignal 2 (n : ℝ) -
        (-(boundary : ℝ) - (scaledSignal s c w n : ℝ)) =
      -(((n : ℝ)*boundarySignal 2 n - (boundary : ℝ)) +
        ((2/Real.pi)*primeSignal 2 (n : ℝ) - (scaledSignal s c w n : ℝ))) by ring, abs_neg]
    exact (abs_add_le _ _).trans (add_le_add hb hp)
  have hf' : |(center : ℝ) - (frozen : ℝ)| ≤ 1/10^8 := by
    simpa only [center, Rat.cast_sub] using hf
  exact (abs_sub_le _ (center : ℝ) _).trans ((add_le_add h hf').trans (by norm_num))

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeGridSums
