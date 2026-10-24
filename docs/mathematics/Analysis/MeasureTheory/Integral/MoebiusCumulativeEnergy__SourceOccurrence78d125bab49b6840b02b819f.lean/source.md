# Complete source: GRWTSK.MeasureTheory.Integral.MoebiusCumulativeEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d63aa10a7624ab5bcadab6f0c905ba644865e18` · SHA-256 `d7b20b0362bb2f24a97fef2ad76ccbd75839063cc57db87aff9d84f9081f6d8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound

/-! The native fixed-window OR-route: exact cutoff consistency and a proved
all-real telescope. The signed arithmetic window estimate remains an input.
-/
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace EulerP04RH.NativeWindow
open PPNCP04

def globalPickup (u : ℝ) : ℝ := pickup u u

theorem inventory_mono {S T : ℝ} (h : S ≤ T) :
    integerInventory S ⊆ integerInventory T := by
  intro n hn
  exact mem_integerInventory.mpr ⟨(mem_integerInventory.mp hn).1,
    (mem_integerInventory.mp hn).2.trans (Real.exp_le_exp.mpr h)⟩

theorem pickup_cutoff_consistent {T u : ℝ} (hu : u ≤ T) :
    pickup T u = globalPickup u := by
  unfold pickup globalPickup
  apply (Finset.sum_subset (inventory_mono hu) ?_).symm
  intro n hn hnot
  have hn1 := (mem_integerInventory.mp hn).1
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  by_cases he : Real.log (n : ℝ) ≤ u
  · have hne : (n : ℝ) ≤ Real.exp u := by
      simpa [Real.exp_log hnpos] using Real.exp_le_exp.mpr he
    exact False.elim (hnot (mem_integerInventory.mpr ⟨hn1,hne⟩))
  · simp [atom,he]

theorem pickup_continuous (T : ℝ) : Continuous (pickup T) := by
  unfold pickup
  apply continuous_finsetSum
  intro n hn
  apply continuous_const.mul
  exact atom_continuous (by have hn1 := (mem_integerInventory.mp hn).1; omega)

theorem globalPickup_continuous : Continuous globalPickup := by
  rw [continuous_iff_continuousAt]
  intro u
  apply (pickup_continuous (u+1)).continuousAt.congr
  exact (eventually_lt_nhds (show u < u+1 by linarith)).mono
    (fun x hx => pickup_cutoff_consistent hx.le)

theorem energy_eq_global_integral (T : ℝ) :
    energy T = ∫ u in Icc 0 T, globalPickup u^2 := by
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  dsimp only
  rw [pickup_cutoff_consistent hu.2]

theorem energy_common_cutoff {S T : ℝ} (hST : S ≤ T) :
    energy S = ∫ u in Icc 0 S, pickup T u^2 := by
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  dsimp only
  rw [pickup_cutoff_consistent hu.2,pickup_cutoff_consistent (hu.2.trans hST)]

theorem energy_monotone {S T : ℝ} (hST : S ≤ T) : energy S ≤ energy T := by
  rw [energy_common_cutoff hST]
  exact setIntegral_mono_set ((pickup_continuous T).pow 2).integrableOn_Icc
    (Filter.Eventually.of_forall (fun _ => sq_nonneg _))
    (Filter.Eventually.of_forall (fun _ hu => ⟨hu.1,hu.2.trans hST⟩))

theorem energy_zero : energy 0 = 0 := by simp [energy]

def windowEnergy (T : ℝ) : ℝ := ∫ u in Icc (T-1) T, globalPickup u^2

theorem windowEnergy_common_cutoff (T : ℝ) :
    windowEnergy T = ∫ u in Icc (T-1) T, pickup T u^2 := by
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  dsimp only
  rw [pickup_cutoff_consistent hu.2]

theorem energy_successor (n : ℕ) :
    energy (n+1) = energy n+windowEnergy (n+1) := by
  let f : ℝ → ℝ := fun u => pickup (n+1) u^2
  have hf : Continuous f := (pickup_continuous (n+1)).pow 2
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hf.intervalIntegrable (μ := volume) (a := 0) (b := n))
    (hf.intervalIntegrable (μ := volume) (a := n) (b := n+1))
  rw [intervalIntegral.integral_of_le (by positivity : (0:ℝ) ≤ n),
    intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1),
    intervalIntegral.integral_of_le (by positivity : (0:ℝ) ≤ n+1),
    ←integral_Icc_eq_integral_Ioc,←integral_Icc_eq_integral_Ioc,
    ←integral_Icc_eq_integral_Ioc] at hadd
  rw [energy_common_cutoff (show (n:ℝ) ≤ n+1 by linarith),
    windowEnergy_common_cutoff]
  simp only [add_sub_cancel_right]
  exact hadd.symm

/-- An actual uniform unit-window estimate implies polynomial total energy.
No integer-scale hypothesis is silently substituted for all-real coverage. -/
theorem fixed_window_implies_energy_polynomial {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (window_bound : ∀ T : ℝ, 1 ≤ T → windowEnergy T ≤ C*(1+T)^q) :
    PolynomialBound energy := by
  have hn : ∀ n : ℕ, energy n ≤ C*(n:ℝ)*(1+(n:ℝ))^q := by
    intro n
    induction n with
    | zero => simp [energy_zero]
    | succ n ih =>
      rw [Nat.cast_add,Nat.cast_one,energy_successor]
      have hw := window_bound (n+1) (by have h := Nat.cast_nonneg (α := ℝ) n; linarith)
      have hp : (1+(n:ℝ))^q ≤ (1+((n:ℝ)+1))^q :=
        Real.rpow_le_rpow (by positivity) (by linarith) hq
      have hi := ih.trans (mul_le_mul_of_nonneg_left hp (by positivity : 0 ≤ C*(n:ℝ)))
      nlinarith
  refine ⟨C*2^(q+1),q+1,by positivity,by linarith,?_⟩
  intro T hT
  let n : ℕ := ⌈T⌉₊
  have hTn : T ≤ (n:ℝ) := Nat.le_ceil T
  have hnT : (n:ℝ) ≤ T+1 := (Nat.ceil_lt_add_one hT).le
  have hp : (1+(n:ℝ))^q ≤ (2*(1+T))^q :=
    Real.rpow_le_rpow (by positivity) (by linarith) hq
  have hnp : (n:ℝ) ≤ 2*(1+T) := by linarith
  calc
    energy T ≤ energy n := energy_monotone hTn
    _ ≤ C*(n:ℝ)*(1+(n:ℝ))^q := hn n
    _ ≤ C*(2*(1+T))*(2*(1+T))^q := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hnp hC) hp
        (by positivity) (by positivity)
    _ = C*2^(q+1)*(1+T)^(q+1) := by
      rw [Real.mul_rpow (by norm_num : (0:ℝ) ≤ 2) (by linarith : 0 ≤ 1+T)]
      simp only [Real.rpow_add (by norm_num : (0:ℝ) < 2),
        Real.rpow_add (by linarith : 0 < 1+T),Real.rpow_one]
      ring

theorem fixed_window_implies_literal_P04 {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (window_bound : ∀ T : ℝ, 1 ≤ T → windowEnergy T ≤ C*(1+T)^q) : P04 :=
  energy_polynomial_implies_P04 (fixed_window_implies_energy_polynomial hC hq window_bound)

end EulerP04RH.NativeWindow

#print axioms EulerP04RH.NativeWindow.pickup_cutoff_consistent
#print axioms EulerP04RH.NativeWindow.fixed_window_implies_literal_P04
```
