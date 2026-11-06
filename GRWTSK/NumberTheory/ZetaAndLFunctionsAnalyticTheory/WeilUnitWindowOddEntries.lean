/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSourceComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddDiagonalSeriesTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowPrimeData

/-!
# Literal odd sine entries at radius one

Local attribution is to grwtsk contributors.

The equal-mode shift integrates the sine product on the literal support
overlap. The product-to-sum identity gives a constant and a cosine, whose
two sine endpoints yield the sine correction. Both orientations give the
same value on the diagonal. Distinct modes use the existing signed
divided difference. The radius-one prime support is two through seven,
with zero weight at six and the weight at four supplied by prime two.

The diagonal gamma entry retains the periodic multiplier and every signed
exponential boundary image. The off-diagonal entry uses the existing
boundary signal difference. The pole moment uses the signed normalized
sine coefficient. The physical shift is present on the diagonal even
inside the trial support. These identities give the exact inputs to an
outward evaluator. A constant interval uses the 64th harmonic number
with the two standard Euler--Mascheroni sequences and logarithm bounds
at the ratio `π/3`. The other transcendental evaluations and independent
mathematical review remain separate.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowOddEntries

open OddRootProjection OddOutputTrace OddPrimeRow OddResidualSourceComparison
open OddDiagonalObservation OddDiagonalSeriesTail OddMultiplierBounds
open UnitWindowPrimeData LowSchur ArithmeticFunction OddSchurAccounting
open GRWTSK.LinearAlgebra.SchurObserver

/-- Equal modes keep the finite support length in the diagonal shift. -/
theorem sineShiftEntry_one_diagonal (n : ℕ) (hn : 0 < n) (r : ℝ)
    (hr : 0 ≤ r) (hr' : r < 2) :
    sineShiftEntry 1 n n r = (2 - r) * Real.cos (frequency 1 n * r) +
      Real.sin (frequency 1 n * r) / frequency 1 n := by
  let w := frequency 1 n
  have hw : 0 < w := by
    unfold w frequency
    have hnR : (0 : ℝ) < n := by exact_mod_cast hn
    positivity
  let F := fun t : ℝ => (Real.cos (w * r) * t - Real.sin (2 * w * t + w * r) / (2 * w)) / 2
  have hDeriv (t : ℝ) : HasDerivAt F (Real.sin (w * t) * Real.sin (w * (t + r))) t := by
    have hlin := (((hasDerivAt_id t).const_mul (2 * w)).add_const (w * r)).sin
    have hconst := (hasDerivAt_id t).const_mul (Real.cos (w * r))
    apply ((hconst.sub (hlin.div_const (2 * w))).div_const 2).congr_deriv
    change (Real.cos (w * r) * 1 - Real.cos (2 * w * t + w * r) *
      (2 * w * 1) / (2 * w)) / 2 = _
    rw [mul_one, mul_one, mul_div_cancel_right₀ _ (by positivity : 2 * w ≠ 0),
      show 2 * w * t + w * r = w * (t + r) + w * t by ring,
      show w * r = w * (t + r) - w * t by ring,
      Real.cos_sub, Real.cos_add]
    ring
  have hCont : Continuous (fun t : ℝ => Real.sin (w * t) * Real.sin (w * (t + r))) := by
    fun_prop
  unfold sineShiftEntry
  rw [sineCorrelation_eq_interval 1 r n n (by norm_num) hr (by simpa using hr')]
  simp only [div_one]
  change (∫ t in (-1 : ℝ)..(1 - r), Real.sin (w * t) * Real.sin (w * (t + r))) +
    (∫ t in (-1 : ℝ)..(1 - r), Real.sin (w * t) * Real.sin (w * (t + r))) = _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hDeriv t)
    (hCont.intervalIntegrable _ _)]
  have hPeriod : 2 * w = (n : ℝ) * (2 * Real.pi) := by dsimp [w, frequency]; ring
  change (F (1 - r) - F (-1)) + (F (1 - r) - F (-1)) =
    (2 - r) * Real.cos (w * r) + Real.sin (w * r) / w
  dsimp only [F]
  have hSinUpper : Real.sin (2 * w * (1 - r) + w * r) = -Real.sin (w * r) := by
    rw [show 2 * w * (1 - r) + w * r = 2 * w - w * r by ring,
      hPeriod, Real.sin_nat_mul_two_pi_sub]
  have hSinLower : Real.sin (2 * w * (-1) + w * r) = Real.sin (w * r) := by
    rw [show 2 * w * (-1) + w * r = w * r - 2 * w by ring,
      hPeriod, Real.sin_sub_nat_mul_two_pi]
  rw [hSinUpper, hSinLower]
  field_simp
  ring

private theorem primeInventory_subset :
    ({2, 3, 4, 5, 7} : Finset ℕ) ⊆ activePrimePowers 1 := by
  rw [activePrimePowers_one]
  decide

private theorem primeShiftSum_one_eq_inventory (m n : ℕ) :
    (∑ q ∈ activePrimePowers 1, primeWeight q * sineShiftEntry 1 m n (Real.log q)) =
      ∑ q ∈ ({2, 3, 4, 5, 7} : Finset ℕ), primeWeight q * sineShiftEntry 1 m n (Real.log q) := by
  symm
  apply Finset.sum_subset primeInventory_subset
  intro q hq hq'
  rw [activePrimePowers_one, Finset.mem_Icc] at hq
  simp only [Finset.mem_insert, Finset.mem_singleton, not_or] at hq'
  obtain rfl : q = 6 := by omega
  simp [primeWeight_six]

private theorem primeLog_bounds {q : ℕ} (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) :
    0 ≤ Real.log (q : ℝ) ∧ Real.log (q : ℝ) < 2 := by
  obtain ⟨_, hqMin, hqMax⟩ := Finset.mem_filter.mp (primeInventory_subset hq)
  have hqOne : 1 ≤ (q : ℝ) := by exact_mod_cast (show 1 ≤ q by omega)
  exact ⟨Real.log_nonneg hqOne, by
    simpa using Real.log_lt_log (zero_lt_one.trans_le hqOne) hqMax⟩

/-- Exact radius-one prime weights on the five nonvanishing shifts. -/
theorem primeWeight_one_eq {q : ℕ} (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) :
    primeWeight q = if q = 4 then Real.log 2 / 2 else Real.log q / Real.sqrt q := by
  by_cases h4 : q = 4
  · subst q
    have h : vonMangoldt 4 = Real.log 2 := by
      rw [show (4 : ℕ) = 2 ^ (2 : ℕ) by decide, vonMangoldt_apply_pow (by decide),
        vonMangoldt_apply_prime (by decide : Nat.Prime 2)]
      norm_num
    have hs : Real.sqrt (4 : ℝ) = 2 := by
      rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.sqrt_sq (by norm_num)]
    simp [primeWeight, h, hs]
  · have hprime : q.Prime := by
      simp only [Finset.mem_insert, Finset.mem_singleton] at hq
      rcases hq with rfl | rfl | rfl | rfl | rfl <;> first | decide | contradiction
    rw [ite_eq_right h4, primeWeight, vonMangoldt_apply_prime hprime]

/-- The literal prime diagonal is a five-term sum of elementary shifts. -/
theorem primeShiftSum_one_diagonal (n : ℕ) (hn : 0 < n) :
    (∑ q ∈ activePrimePowers 1, primeWeight q * sineShiftEntry 1 n n (Real.log q)) =
      ∑ q ∈ ({2, 3, 4, 5, 7} : Finset ℕ), primeWeight q *
        ((2 - Real.log q) * Real.cos (frequency 1 n * Real.log q) +
          Real.sin (frequency 1 n * Real.log q) / frequency 1 n) := by
  rw [primeShiftSum_one_eq_inventory]
  apply Finset.sum_congr rfl
  intro q hq
  rw [sineShiftEntry_one_diagonal n hn _ (primeLog_bounds hq).1 (primeLog_bounds hq).2]

/-- The literal off-diagonal prime row retains the signed divided difference. -/
theorem primeShiftSum_one_off_diagonal {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    (∑ q ∈ activePrimePowers 1, primeWeight q * sineShiftEntry 1 m n (Real.log q)) =
      ∑ q ∈ ({2, 3, 4, 5, 7} : Finset ℕ), primeWeight q *
        ((2 / Real.pi) * (-1 : ℝ) ^ (m + n) *
          ((m : ℝ) * Real.sin (frequency 1 n * Real.log q) -
            (n : ℝ) * Real.sin (frequency 1 m * Real.log q)) /
          ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)) := by
  rw [primeShiftSum_one_eq_inventory]
  apply Finset.sum_congr rfl
  intro q hq
  rw [sineShiftEntry_off_diagonal 1 _ m n (by norm_num) (primeLog_bounds hq).1
    (by simpa using (primeLog_bounds hq).2) hm hn hmn]

/-- The radius-one archimedean diagonal is a constant, multiplier, and signed exponential series. -/
theorem sineArchimedeanEntry_one_diagonal {n : ℕ} (hn : 0 < n) :
    sineArchimedeanEntry 1 (gammaConstant 1 0) 0 n n =
      gammaConstant 1 0 + periodicMultiplier 0 (frequency 1 n) +
        (∑' j : ℕ,
          -(2 * frequency 1 n ^ 2 * (1 - Real.exp (-(2 * multiplierRate 0 j)))) /
            (multiplierRate 0 j ^ 2 + frequency 1 n ^ 2) ^ 2) := by
  have hSum := (hasSum_sineBoundaryTerm 1 (by norm_num) hn).tsum_eq
  calc
    _ = gammaConstant 1 0 + periodicMultiplier 0 (frequency 1 n) + ∑' j, sineBoundaryTerm 1 n j := by
      linarith only [hSum]
    _ = _ := by
      congr 1
      apply tsum_congr
      intro j
      rw [sineBoundaryTerm_eq_exponential 1 (by norm_num)]
      simp [multiplierRate]

/-- The radius-one archimedean off-diagonal uses the exact signed boundary signal. -/
theorem sineArchimedeanEntry_one_off_diagonal {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    sineArchimedeanEntry 1 (gammaConstant 1 0) 0 m n = archimedeanOffDiagonal 1 m n :=
  sineArchimedeanEntry_eq_boundary 1 (by norm_num) hm hn hmn

/-- The pole column uses the literal signed sine coefficient at radius one. -/
theorem literalPoleEntry_one {n : ℕ} (hn : 0 < n) :
    literalPoleEntry 1 n =
      2 * (-1 : ℝ) ^ (n + 1) * frequency 1 n * Real.sinh (1 / 2) /
        (1 / 4 + frequency 1 n ^ 2) := by
  rw [literalPoleEntry_eq 1 (by norm_num) hn]
  simp [sinePoleCoefficient]

/-- Reduce any physical entry, retaining the shift exactly on the diagonal. -/
theorem shiftedBordered_physicalEntry_one {P : ℕ} (i j : Fin P) (β : ℝ) :
    shiftedBlock (borderedSourceMatrix 1 P) poleShiftMetric β (Sum.inl i) (Sum.inl j) =
      sineArchimedeanEntry 1 (gammaConstant 1 0) 0 (i.val + 1) (j.val + 1) -
        (∑ q ∈ activePrimePowers 1,
          primeWeight q * sineShiftEntry 1 (i.val + 1) (j.val + 1) (Real.log q)) -
        (if i = j then β else 0) := by
  rw [shiftedBordered_physicalEntry 1 (by norm_num) i j β, literalCoreEntry]

/-- The physical-to-pole entry is independent of the physical shift. -/
theorem shiftedBordered_poleColumn_one {P : ℕ} (i : Fin P) (β : ℝ) :
    shiftedBlock (borderedSourceMatrix 1 P) poleShiftMetric β (Sum.inl i) (Sum.inr ()) =
      2 * (-1 : ℝ) ^ (i.val + 1 + 1) * frequency 1 (i.val + 1) * Real.sinh (1 / 2) /
        (1 / 4 + frequency 1 (i.val + 1) ^ 2) := by
  rw [shiftedBordered_poleColumn 1 i β, literalPoleEntry_one (Nat.succ_pos i.val)]

theorem shiftedBordered_poleRow_one {P : ℕ} (i : Fin P) (β : ℝ) :
    shiftedBlock (borderedSourceMatrix 1 P) poleShiftMetric β (Sum.inr ()) (Sum.inl i) =
      shiftedBlock (borderedSourceMatrix 1 P) poleShiftMetric β (Sum.inl i) (Sum.inr ()) := by
  rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
  rfl

theorem shiftedBordered_poleCorner_one (P : ℕ) (β : ℝ) :
    shiftedBlock (borderedSourceMatrix 1 P) poleShiftMetric β (Sum.inr ()) (Sum.inr ()) =
      1 / 2 := by
  rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
  rfl

private theorem logPi_bounds : (1.143 : ℝ) < Real.log Real.pi ∧ Real.log Real.pi < 1.146 := by
  have hr : 0 < Real.pi / 3 := by positivity
  have hUpper := Real.log_le_sub_one_of_pos hr
  have hLower := Real.one_sub_inv_le_log_of_pos (x := (3.1415 : ℝ) / 3) (by positivity)
  have hMono : Real.log ((3.1415 : ℝ) / 3) ≤ Real.log (Real.pi / 3) :=
    Real.log_le_log (by positivity) (div_le_div_of_nonneg_right Real.pi_gt_d4.le (by norm_num))
  rw [Real.log_div Real.pi_pos.ne' (by norm_num)] at hMono hUpper
  constructor
  · linarith [hLower, hMono, Real.log_three_gt_d9]
  · linarith [hUpper, Real.log_three_lt_d9, Real.pi_lt_d4]

set_option maxRecDepth 4096 in
private theorem eulerMascheroni_bounds :
    (0.5693 : ℝ) < Real.eulerMascheroniConstant ∧ Real.eulerMascheroniConstant < 0.5851 := by
  have hH : (4.7438909 : ℝ) < (harmonic 64 : ℝ) ∧ (harmonic 64 : ℝ) < 4.743891 :=
    by norm_num [harmonic, Finset.sum_range_succ]
  have hLog64 : Real.log 64 = 6 * Real.log 2 := by
    rw [show (64 : ℝ) = 2 ^ (6 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have hLog65 : Real.log 65 ≤ Real.log 64 + 1 / 64 := by
    have h := Real.log_le_sub_one_of_pos (x := (65 : ℝ) / 64) (by norm_num)
    rw [Real.log_div (by norm_num) (by norm_num)] at h
    linarith
  have hLower : (harmonic 64 : ℝ) - Real.log 65 < Real.eulerMascheroniConstant := by
    have h := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant 64
    unfold Real.eulerMascheroniSeq at h
    rw [show ((64 : ℕ) : ℝ) + 1 = 65 by norm_num] at h
    exact h
  have hUpper : Real.eulerMascheroniConstant < (harmonic 64 : ℝ) - Real.log 64 := by
    simpa only [Real.eulerMascheroniSeq', ite_eq_right (by decide : (64 : ℕ) ≠ 0),
      Nat.cast_ofNat] using Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 64
  constructor
  · linarith [hH.1, hLower, hLog65, hLog64, Real.log_two_lt_d9]
  · linarith [hH.2, hUpper, hLog64, Real.log_two_gt_d9]

/-- An outward rational interval for the literal unshifted zeta gamma constant. -/
theorem gammaConstant_one_zero_interval :
    (-5.382 : ℝ) ≤ gammaConstant 1 0 ∧ gammaConstant 1 0 ≤ -5.362 := by
  rw [gammaConstant_one_zero_eq]
  constructor
  · linarith [logPi_bounds.2, eulerMascheroni_bounds.2, Real.pi_lt_d4, Real.log_two_lt_d9]
  · linarith [logPi_bounds.1, eulerMascheroni_bounds.1, Real.pi_gt_d4, Real.log_two_gt_d9]

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowOddEntries
