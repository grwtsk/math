/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DensityMoebius
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

theorem moebiusReal_abs_le_one (n : ℕ) : |moebiusReal n| ≤ 1 := by
  unfold moebiusReal
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))


theorem density_closed_inventory_one_of_nonneg {t : ℝ} (ht : 0 ≤ t) :
    1 ∈ densityClosedInventory t := by
  apply Finset.mem_Icc.mpr
  refine ⟨le_rfl, ?_⟩
  apply (Nat.le_floor_iff (Real.exp_pos t).le).mpr
  simpa using Real.exp_le_exp.mpr ht


theorem density_moebius_divisor_sum (n : ℕ) :
    (∑ d ∈ n.divisors, moebiusReal d) = if n = 1 then 1 else 0 := by
  have H := congrArg (fun f : ArithmeticFunction ℝ => f n)
    (ArithmeticFunction.coe_zeta_mul_coe_moebius (R := ℝ))
  rw [ArithmeticFunction.coe_zeta_mul_apply] at H
  simpa [moebiusReal, ArithmeticFunction.intCoe_apply, ArithmeticFunction.one_apply] using H


theorem density_coprime_indicator_moebius_sum {m n : ℕ} {T : ℝ}
    (hm : m ∈ densityClosedInventory T) (_hn : n ∈ densityClosedInventory T) :
    (∑ d ∈ densityClosedInventory T, if d ∣ m ∧ d ∣ n then moebiusReal d else 0) =
      if m.Coprime n then 1 else 0 := by
  classical
  have hm1 : 0 < m := (Finset.mem_Icc.mp hm).1
  have hg : m.gcd n ≠ 0 := (Nat.gcd_pos_of_pos_left n hm1).ne'
  have hs : (m.gcd n).divisors =
      (densityClosedInventory T).filter (fun d => d ∣ m ∧ d ∣ n) := by
    ext d
    rw [Finset.mem_filter]
    constructor
    · intro hd
      have hdm := (Nat.dvd_of_mem_divisors hd).trans (Nat.gcd_dvd_left m n)
      refine ⟨Finset.mem_Icc.mpr ⟨Nat.pos_of_mem_divisors hd, ?_⟩, ?_⟩
      · exact (Nat.le_of_dvd hm1 hdm).trans (Finset.mem_Icc.mp hm).2
      · exact Nat.dvd_gcd_iff.mp (Nat.dvd_of_mem_divisors hd)
    · intro hd
      exact Nat.mem_divisors.mpr ⟨Nat.dvd_gcd hd.2.1 hd.2.2, hg⟩
  rw [← Finset.sum_filter, ← hs, density_moebius_divisor_sum]


theorem density_closed_inventory_mul_iff {d n : ℕ} {t : ℝ} (hd : 0 < d) :
    d * n ∈ densityClosedInventory t ↔
      n ∈ densityClosedInventory (t - Real.log d) := by
  have hdR : (0 : ℝ) < d := by exact_mod_cast hd
  simp only [densityClosedInventory, Finset.mem_Icc]
  rw [Nat.le_floor_iff (Real.exp_pos t).le,
    Nat.le_floor_iff (Real.exp_pos (t - Real.log d)).le,
    Real.exp_sub, Real.exp_log hdR]
  constructor
  · intro h
    have hn : 1 ≤ n := by
      by_contra H
      have hz : n = 0 := by omega
      simp [hz] at h
    refine ⟨hn, (le_div_iff₀ hdR).mpr ?_⟩
    simpa only [Nat.cast_mul, mul_comm] using h.2
  · intro h
    refine ⟨Nat.mul_pos hd h.1, ?_⟩
    simpa only [Nat.cast_mul, mul_comm] using (le_div_iff₀ hdR).mp h.2


theorem density_closed_convolution_regroup (F : ℕ → ℕ → ℝ) (u : ℝ) :
    (∑ q ∈ densityClosedInventory u, ∑ k ∈ q.divisors, F k (q / k)) =
      ∑ k ∈ densityClosedInventory u, ∑ n ∈ densityClosedInventory (u - Real.log k),
        F k n := by
  classical
  have hbij :
      (∑ q ∈ densityClosedInventory u, ∑ v ∈ q.divisorsAntidiagonal, F v.2 v.1) =
      ∑ k ∈ densityClosedInventory u, ∑ n ∈ densityClosedInventory (u - Real.log k),
        F k n := by
    rw [Finset.sum_sigma', Finset.sum_sigma']
    symm
    apply Finset.sum_bij (fun v _ => ⟨v.1 * v.2, (v.2, v.1)⟩)
    · intro v hv
      obtain ⟨hk, hn⟩ := Finset.mem_sigma.mp hv
      have hkpos : 0 < v.1 := (Finset.mem_Icc.mp hk).1
      have hprod := (density_closed_inventory_mul_iff hkpos).mpr hn
      exact Finset.mem_sigma.mpr ⟨hprod, Nat.mem_divisorsAntidiagonal.mpr
        ⟨Nat.mul_comm _ _, (Nat.mul_pos hkpos (Finset.mem_Icc.mp hn).1).ne'⟩⟩
    · intro a _ b _ hab
      have hk := congrArg (fun v : Σ _ : ℕ, ℕ × ℕ => v.2.2) hab
      have hn := congrArg (fun v : Σ _ : ℕ, ℕ × ℕ => v.2.1) hab
      exact Sigma.ext hk (heq_of_eq hn)
    · intro v hv
      obtain ⟨hq, hpair⟩ := Finset.mem_sigma.mp hv
      obtain ⟨heq, hq0⟩ := Nat.mem_divisorsAntidiagonal.mp hpair
      have hp := Nat.ne_zero_of_mem_divisorsAntidiagonal hpair
      have hkpos : 0 < v.2.2 := Nat.pos_of_ne_zero hp.2
      have hk : v.2.2 ∈ densityClosedInventory u := Finset.mem_Icc.mpr
        ⟨hkpos, (Nat.le_of_dvd (Nat.pos_of_ne_zero hq0)
          ⟨v.2.1, by simpa [Nat.mul_comm] using heq.symm⟩).trans (Finset.mem_Icc.mp hq).2⟩
      have hn : v.2.1 ∈ densityClosedInventory (u - Real.log v.2.2) := by
        apply (density_closed_inventory_mul_iff hkpos).mp
        simpa [Nat.mul_comm, heq] using hq
      refine ⟨⟨v.2.2, v.2.1⟩, Finset.mem_sigma.mpr ⟨hk, hn⟩, ?_⟩
      exact Sigma.ext ((Nat.mul_comm _ _).trans heq) HEq.rfl
    · intro v _
      rfl
  rw [← hbij]
  apply Finset.sum_congr rfl
  intro q _
  exact (Nat.sum_divisorsAntidiagonal' (fun n k => F k n)).symm


end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
