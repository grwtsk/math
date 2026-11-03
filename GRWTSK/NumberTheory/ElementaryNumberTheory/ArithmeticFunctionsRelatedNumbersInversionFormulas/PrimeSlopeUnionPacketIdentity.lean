/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.FinitePrimeDilationSourcePartition

set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
/-! Exact finite disjoint-slope identification. Positive first coordinate
is retained. No complement estimate follows. NOT_RUN / NOT_KERNEL_AUDITED. -/

theorem prime_slope_selector_eq_sum (P : Finset ℕ) (r s : ℕ) (hr : 0 < r) (z : ℝ) :
    (if selectedPrimeSlope P r s then z else 0) =
      ∑ p ∈ P, if Nat.Coprime p r ∧ s=p*r then z else 0 := by
  classical
  by_cases h : selectedPrimeSlope P r s
  · obtain ⟨p,hp,hcop,hs⟩ := h
    have hh : selectedPrimeSlope P r s := ⟨p,hp,hcop,hs⟩
    rw [if_pos hh]
    symm
    calc
      _ = (if Nat.Coprime p r ∧ s=p*r then z else 0) := by
        apply Finset.sum_eq_single p
        · intro q _ hqp
          have hn : ¬ (Nat.Coprime q r ∧ s=q*r) := by
            rintro ⟨_,hq⟩
            have he : q=p := (mul_right_inj' (ne_of_gt hr)).mp (hq.symm.trans hs)
            exact hqp he
          simp [hn]
        · intro hn
          exact (hn hp).elim
      _ = z := by simp [hcop,hs]
  · rw [if_neg h]
    symm
    apply Finset.sum_eq_zero
    intro p hp
    have hn : ¬ (Nat.Coprime p r ∧ s=p*r) := by
      rintro ⟨hc,hs⟩
      exact h ⟨p,hp,hc,hs⟩
    simp [hn]

theorem selected_prime_inner_sum (p r n : ℕ) (hp : Nat.Prime p) (hr : 0 < r) :
    (∑ s ∈ Finset.Icc 1 n,
      if Nat.Coprime p r ∧ s=p*r then moebiusReal r*moebiusReal s else 0) =
      if Nat.Coprime p r ∧ p*r ≤ n then moebiusReal r*moebiusReal (p*r) else 0 := by
  classical
  by_cases hc : Nat.Coprime p r
  · have hpos : 1 ≤ p*r := Nat.one_le_iff_ne_zero.mpr (mul_ne_zero hp.ne_zero (ne_of_gt hr))
    by_cases hn : p*r ≤ n
    · have hm : p*r ∈ Finset.Icc 1 n := Finset.mem_Icc.mpr ⟨hpos,hn⟩
      simp [hc,hn,hm]
    · have hm : p*r ∉ Finset.Icc 1 n := by simp [Finset.mem_Icc,hn]
      simp [hc,hn,hm]
  · simp [hc]

theorem finitePrimeSelectedSource_eq_packets (P : Finset ℕ) (m n : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    finitePrimeSelectedSource P m n = ∑ p ∈ P, primeDilationPacket p m n := by
  classical
  calc
    _ = ∑ r ∈ Finset.Icc 1 m, ∑ p ∈ P,
        if Nat.Coprime p r ∧ p*r ≤ n then moebiusReal r*moebiusReal (p*r) else 0 := by
      unfold finitePrimeSelectedSource
      apply Finset.sum_congr rfl
      intro r hr
      have hrp : 0 < r := (Finset.mem_Icc.mp hr).1
      calc
        _ = ∑ s ∈ Finset.Icc 1 n, ∑ p ∈ P,
            if Nat.Coprime p r ∧ s=p*r then moebiusReal r*moebiusReal s else 0 := by
          apply Finset.sum_congr rfl
          intro s _
          exact prime_slope_selector_eq_sum P r s hrp _
        _ = ∑ p ∈ P, ∑ s ∈ Finset.Icc 1 n,
            if Nat.Coprime p r ∧ s=p*r then moebiusReal r*moebiusReal s else 0 := Finset.sum_comm
        _ = _ := by
          apply Finset.sum_congr rfl
          intro p hp
          exact selected_prime_inner_sum p r n (hP p hp) hrp
    _ = ∑ p ∈ P, ∑ r ∈ Finset.Icc 1 m,
        if Nat.Coprime p r ∧ p*r ≤ n then moebiusReal r*moebiusReal (p*r) else 0 := Finset.sum_comm
    _ = _ := rfl

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
