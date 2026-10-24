# Complete source: GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8bd8170dea9989588a3d99911fc7af58652d4c2` · SHA-256 `a7e03c034607b59d92eba21d685b2c7be9f135621b2779dcac3c5ba8ad60ba2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral

/-!
# CCC native weighted Möbius pickup energy

This is the Gram geometry of the actual causal pickup responses in the reading
window, rather than the separately prescribed source-correlation Gram matrix.
The waveform and the finite Möbius response are identified by a proved source
integral adapter. Product integrability is proved before the finite Gram
expansion. No cancellation, amplitude return, or Riemann-hypothesis premise is
introduced; the requested polynomial budgets remain explicit open propositions.

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupEnergy

open MeasureTheory Set
open ArithmeticPickupSource

noncomputable section

/-- The closed original inventory starts at one, retaining every integer. -/
def inventory (T : ℝ) : Finset ℕ := Finset.Icc 1 ⌊Real.exp T⌋₊

/-- The continuous kernel before its causal arithmetic arrival gate. -/
def responseKernel (n : ℕ) (u : ℝ) : ℝ :=
  2 * ((n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-u / 2))

/-- Actual pickup response, including the touching upper atom with zero weight. -/
def response (n : ℕ) : ℝ → ℝ :=
  (Ici (Real.log (n : ℝ))).indicator (responseKernel n)

/-- Native pickup-response Gram matrix in the actual Lebesgue reading measure. -/
def gram (T : ℝ) (m n : ℕ) : ℝ :=
  ∫ u in Ioc 0 T, response m u * response n u

/-- Energy is taken after completing the original signed Möbius waveform. -/
def energy (T : ℝ) : ℝ := ∫ u in Ioc 0 T, |pickup u| ^ 2

/-- Independently defined diagonal with the literal squared Möbius coefficients. -/
def diagonal (T : ℝ) : ℝ :=
  ∑ n ∈ inventory T, moebiusCoefficient n ^ 2 * gram T n n

/-- Complete ordered off-diagonal sum: both orders of every distinct pair occur. -/
def cross (T : ℝ) : ℝ :=
  ∑ m ∈ inventory T, ∑ n ∈ (inventory T).erase m,
    moebiusCoefficient m * moebiusCoefficient n * gram T m n

/-- The full native Gram quadratic form, before its diagonal split. -/
def fullGram (T : ℝ) : ℝ :=
  ∑ m ∈ inventory T, ∑ n ∈ inventory T,
    moebiusCoefficient m * moebiusCoefficient n * gram T m n

theorem inventory_mono {u T : ℝ} (hut : u ≤ T) : inventory u ⊆ inventory T := by
  intro n hn
  have hmem := Finset.mem_Icc.mp hn
  exact Finset.mem_Icc.mpr ⟨hmem.1,
    le_trans hmem.2 (Nat.floor_mono (Real.exp_le_exp.mpr hut))⟩

/-- Causal arrival agrees exactly with the closed real arithmetic cutoff. -/
theorem admitted_iff_arrived {u : ℝ} {n : ℕ} (hn : 1 ≤ n) :
    n ∈ inventory u ↔ Real.log (n : ℝ) ≤ u := by
  have hnpos : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  rw [inventory, mem_closed_prefix_iff (Real.exp_pos u).le]
  constructor
  · intro h
    exact (Real.log_le_iff_le_exp hnpos).mpr h.2
  · intro h
    exact ⟨hn, (Real.log_le_iff_le_exp hnpos).mp h⟩

theorem response_of_arrived {n : ℕ} {u : ℝ} (h : Real.log (n : ℝ) ≤ u) :
    response n u = responseKernel n u := by
  simp [response, h]

theorem response_of_not_arrived {n : ℕ} {u : ℝ} (h : ¬ Real.log (n : ℝ) ≤ u) :
    response n u = 0 := by
  simp [response, h]

/-- A touching upper atom is retained and its actual response is zero. -/
theorem response_touching_atom_zero {n : ℕ} (hn : 1 ≤ n) :
    response n (Real.log (n : ℝ)) = 0 := by
  have hnpos : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  rw [response_of_arrived le_rfl]
  unfold responseKernel
  have hexp := exp_inverse_half (Real.log (n : ℝ))
  rw [Real.exp_log hnpos] at hexp
  rw [← hexp]
  ring

/-- The actual integral waveform is represented on the fixed larger inventory.
Atoms not yet arrived have zero response, rather than being erased from its metric. -/
theorem actual_waveform_on_inventory {u T : ℝ} (hu : 0 ≤ u) (hut : u ≤ T) :
    pickup u = ∑ n ∈ inventory T, moebiusCoefficient n * response n u := by
  calc
    pickup u = 2 * ∑ n ∈ inventory u,
        moebiusCoefficient n *
          ((n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-u / 2)) :=
      pickup_eq_closed_finite_sum hu
    _ = ∑ n ∈ inventory u, moebiusCoefficient n * response n u := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      have hnOne := (Finset.mem_Icc.mp hn).1
      rw [response_of_arrived ((admitted_iff_arrived hnOne).mp hn)]
      unfold responseKernel
      ring
    _ = ∑ n ∈ inventory T, moebiusCoefficient n * response n u := by
      apply Finset.sum_subset (inventory_mono hut)
      intro n hn hnot
      have hnOne := (Finset.mem_Icc.mp hn).1
      have hnotArrived : ¬ Real.log (n : ℝ) ≤ u := by
        intro harrived
        exact hnot ((admitted_iff_arrived hnOne).mpr harrived)
      rw [response_of_not_arrived hnotArrived, mul_zero]

/-- A finite bound for each literal causal response on nonnegative times. This
does not assert cancellation or polynomial dependence on a growing inventory. -/
theorem response_window_bound (n : ℕ) {u : ℝ} (hu : 0 ≤ u) :
    |response n u| ≤ 2 * (|(n : ℝ) ^ (-(1 / 2 : ℝ))| + 1) := by
  have hexpBound : Real.exp (-u / 2) ≤ 1 := by
    have hnegative : -u / 2 ≤ 0 := by linarith
    simpa using Real.exp_le_exp.mpr hnegative
  have habsExp : |Real.exp (-u / 2)| ≤ 1 := by
    simpa only [abs_of_pos (Real.exp_pos (-u / 2))] using hexpBound
  have htriangle : |(n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-u / 2)| ≤
      |(n : ℝ) ^ (-(1 / 2 : ℝ))| + |Real.exp (-u / 2)| := by
    simpa only [sub_zero, zero_sub, abs_neg] using
      abs_sub_le ((n : ℝ) ^ (-(1 / 2 : ℝ))) 0 (Real.exp (-u / 2))
  by_cases harrived : Real.log (n : ℝ) ≤ u
  · rw [response_of_arrived harrived]
    unfold responseKernel
    rw [abs_mul, abs_of_nonneg (zero_le_two : (0 : ℝ) ≤ 2)]
    exact le_trans (mul_le_mul_of_nonneg_left htriangle zero_le_two)
      (mul_le_mul_of_nonneg_left (add_le_add le_rfl habsExp) zero_le_two)
  · rw [response_of_not_arrived harrived, abs_zero]
    exact mul_nonneg zero_le_two (add_nonneg (abs_nonneg _) zero_le_one)

/-- Finite compact-window allowance, with its original coefficients and full
fixed inventory. No scale-uniform polynomial estimate is claimed. -/
def finiteWindowBound (T : ℝ) : ℝ :=
  ∑ n ∈ inventory T,
    |moebiusCoefficient n| * (2 * (|(n : ℝ) ^ (-(1 / 2 : ℝ))| + 1))

/-- The actual pickup is bounded on every compact reading window. -/
theorem pickup_window_bound {u T : ℝ} (hu : 0 ≤ u) (hut : u ≤ T) :
    |pickup u| ≤ finiteWindowBound T := by
  rw [actual_waveform_on_inventory hu hut]
  calc
    _ ≤ ∑ n ∈ inventory T, |moebiusCoefficient n * response n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ finiteWindowBound T := by
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (response_window_bound n hu) (abs_nonneg _)

/-- The literal real-supremum positive envelope has a bounded underlying set.
This is compact-window finiteness, not the open polynomial arithmetic bound. -/
theorem pickup_image_bdd_above (T : ℝ) : BddAbove (pickup '' Icc 0 T) := by
  refine ⟨finiteWindowBound T, ?_⟩
  rintro _ ⟨u, hu, rfl⟩
  exact le_trans (le_abs_self _) (pickup_window_bound hu.1 hu.2)

theorem pickup_image_bdd_below (T : ℝ) : BddBelow (pickup '' Icc 0 T) := by
  refine ⟨-finiteWindowBound T, ?_⟩
  rintro _ ⟨u, hu, rfl⟩
  exact (abs_le.mp (pickup_window_bound hu.1 hu.2)).1

theorem response_kernel_continuous (n : ℕ) : Continuous (responseKernel n) := by
  unfold responseKernel
  exact continuous_const.mul (continuous_const.sub
    (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)))

/-- Products of the actual gated responses are integrable. Both causal gates
remain in the function; the proof uses measurable indicators of continuous kernels. -/
theorem response_product_integrable (T : ℝ) (m n : ℕ) :
    IntegrableOn (fun u ↦ response m u * response n u) (Ioc 0 T) := by
  have hbase : IntegrableOn (fun u ↦ responseKernel m u * responseKernel n u) (Icc 0 T) :=
    ((response_kernel_continuous m).mul (response_kernel_continuous n)).integrableOn_Icc
  have hn : IntegrableOn ((Ici (Real.log (n : ℝ))).indicator
      (fun u ↦ responseKernel m u * responseKernel n u)) (Icc 0 T) :=
    hbase.indicator measurableSet_Ici
  have hm : IntegrableOn ((Ici (Real.log (m : ℝ))).indicator
      ((Ici (Real.log (n : ℝ))).indicator
        (fun u ↦ responseKernel m u * responseKernel n u))) (Icc 0 T) :=
    hn.indicator measurableSet_Ici
  have heq : (fun u ↦ response m u * response n u) =
      (Ici (Real.log (m : ℝ))).indicator
        ((Ici (Real.log (n : ℝ))).indicator
          (fun u ↦ responseKernel m u * responseKernel n u)) := by
    funext u
    by_cases hmu : Real.log (m : ℝ) ≤ u <;>
      by_cases hnu : Real.log (n : ℝ) ≤ u <;> simp [response, hmu, hnu]
  rw [heq]
  exact hm.mono_set Ioc_subset_Icc_self

private theorem weighted_product_integrable (T : ℝ) (m n : ℕ) :
    IntegrableOn (fun u ↦ (moebiusCoefficient m * moebiusCoefficient n) *
      (response m u * response n u)) (Ioc 0 T) :=
  (response_product_integrable T m n).const_mul _

private theorem row_integrable (T : ℝ) (m : ℕ) :
    IntegrableOn (fun u ↦ ∑ n ∈ inventory T,
      (moebiusCoefficient m * moebiusCoefficient n) *
        (response m u * response n u)) (Ioc 0 T) :=
  integrable_finsetSum (inventory T) (fun n _ ↦ weighted_product_integrable T m n)

private theorem signed_sum_square (S : Finset ℕ) (u : ℝ) :
    (∑ n ∈ S, moebiusCoefficient n * response n u) ^ 2 =
      ∑ m ∈ S, ∑ n ∈ S, (moebiusCoefficient m * moebiusCoefficient n) *
        (response m u * response n u) := by
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Actual completed pickup energy is integrable, before its integral is used. -/
theorem pickup_square_integrable (T : ℝ) :
    IntegrableOn (fun u ↦ |pickup u| ^ 2) (Ioc 0 T) := by
  have hfinite : IntegrableOn (fun u ↦ ∑ m ∈ inventory T, ∑ n ∈ inventory T,
      (moebiusCoefficient m * moebiusCoefficient n) *
        (response m u * response n u)) (Ioc 0 T) :=
    integrable_finsetSum (inventory T) (fun m _ ↦ row_integrable T m)
  apply hfinite.congr_fun ?_ measurableSet_Ioc
  intro u hu
  change (∑ m ∈ inventory T, ∑ n ∈ inventory T,
    (moebiusCoefficient m * moebiusCoefficient n) *
      (response m u * response n u)) = |pickup u| ^ 2
  rw [sq_abs, actual_waveform_on_inventory hu.1.le hu.2, signed_sum_square]

/-- Integration uses proved response-product integrability for every finite term. -/
theorem energy_eq_full_gram (T : ℝ) : energy T = fullGram T := by
  unfold energy
  calc
    _ = ∫ u in Ioc 0 T, ∑ m ∈ inventory T, ∑ n ∈ inventory T,
        (moebiusCoefficient m * moebiusCoefficient n) *
          (response m u * response n u) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro u hu
      change |pickup u| ^ 2 = ∑ m ∈ inventory T, ∑ n ∈ inventory T,
        (moebiusCoefficient m * moebiusCoefficient n) *
          (response m u * response n u)
      rw [sq_abs, actual_waveform_on_inventory hu.1.le hu.2, signed_sum_square]
    _ = ∑ m ∈ inventory T, ∫ u in Ioc 0 T, ∑ n ∈ inventory T,
        (moebiusCoefficient m * moebiusCoefficient n) *
          (response m u * response n u) :=
      integral_finsetSum (inventory T) (fun m _ ↦ row_integrable T m)
    _ = fullGram T := by
      unfold fullGram
      apply Finset.sum_congr rfl
      intro m _
      rw [integral_finsetSum (inventory T) (fun n _ ↦ weighted_product_integrable T m n)]
      apply Finset.sum_congr rfl
      intro n _
      exact integral_const_mul _ _

/-- The independently defined diagonal and the complete ordered cross sum
partition the actual native Gram form exactly. -/
theorem full_gram_eq_diagonal_add_cross (T : ℝ) :
    fullGram T = diagonal T + cross T := by
  calc
    fullGram T = ∑ m ∈ inventory T,
        (moebiusCoefficient m ^ 2 * gram T m m +
          ∑ n ∈ (inventory T).erase m,
            moebiusCoefficient m * moebiusCoefficient n * gram T m n) := by
      unfold fullGram
      apply Finset.sum_congr rfl
      intro m hm
      rw [← Finset.sum_erase_add (inventory T)
        (fun n ↦ moebiusCoefficient m * moebiusCoefficient n * gram T m n) hm]
      ring
    _ = diagonal T + cross T := by
      rw [Finset.sum_add_distrib]
      rfl

/-- Exact native energy identity for the original arithmetic pickup. -/
theorem energy_eq_diagonal_add_cross (T : ℝ) : energy T = diagonal T + cross T :=
  (energy_eq_full_gram T).trans (full_gram_eq_diagonal_add_cross T)

/-- OPEN arithmetic energy budget; no witness or cancellation theorem is supplied. -/
def CrossPoly : Prop :=
  ∃ C_X r : ℝ, 0 ≤ C_X ∧ 0 ≤ r ∧
    ∀ T : ℝ, 0 ≤ T → cross T ≤ C_X * (1 + T) ^ r

/-- OPEN source-faithful amplitude return for the original completed waveform. -/
def AmplitudeReturnPoly : Prop :=
  ∃ C_R s : ℝ, 0 ≤ C_R ∧ 0 ≤ s ∧ ∀ T : ℝ, 0 ≤ T →
    |pickup T| ^ 2 ≤ C_R * (1 + T) ^ s *
      (1 + ∫ u in Ioc (max 0 (T - 1)) T, |pickup u| ^ 2)

/-- The joint requested budget remains open. -/
def PickupEnergyBudgets : Prop := CrossPoly ∧ AmplitudeReturnPoly

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupEnergy
```
