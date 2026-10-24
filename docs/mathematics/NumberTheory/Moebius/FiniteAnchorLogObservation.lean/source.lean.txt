/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Moebius.AnchoredPairGreenCoefficientBridge

/-! # Triangular observation of the literal finite anchor coefficients
Rows 2a observe every positive anchor a<=N with nonzero diagonal log 2.
This uses targets through 2N, not only the previous dyadic window. The theorem
is about anchor coefficients, not the whole centered source packet. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

def finiteAnchorLogObservation (N : ℕ) (f : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ Finset.Icc 1 N then f p.1 * (ArithmeticFunction.log p.2:ℝ) else 0

theorem finiteAnchorLogObservation_sub (N n : ℕ) (f g : ℕ → ℝ) :
    finiteAnchorLogObservation N (f-g) n =
      finiteAnchorLogObservation N f n-finiteAnchorLogObservation N g n := by
  unfold finiteAnchorLogObservation
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp [sub_mul]

theorem finiteAnchorLogObservation_diagonal {N a : ℕ} (ha : 1 ≤ a) (haN : a ≤ N)
    (f : ℕ → ℝ) (hlower : ∀ d : ℕ, 1 ≤ d → d < a → f d = 0) :
    finiteAnchorLogObservation N f (2*a) = f a*Real.log 2 := by
  have hap : 0 < a := by omega
  have hp : (a,2) ∈ (2*a).divisorsAntidiagonal :=
    Nat.mem_divisorsAntidiagonal.mpr ⟨by omega,by omega⟩
  unfold finiteAnchorLogObservation
  rw [Finset.sum_eq_single (a,2)]
  · simp [ha,haN,ArithmeticFunction.log_apply]
  · intro p hmem hne
    have hm := Nat.mem_divisorsAntidiagonal.mp hmem
    by_cases hsrc : p.1 ∈ Finset.Icc 1 N
    · rw [if_pos hsrc]
      have hp1 : 1 ≤ p.1 := (Finset.mem_Icc.mp hsrc).1
      by_cases he : p.1 = a
      · have he2 : p.2 = 2 := Nat.eq_of_mul_eq_mul_left hap (by rw [← he]; omega)
        exact (hne (Prod.ext he he2)).elim
      · by_cases hlt : p.1 < a
        · rw [hlower p.1 hp1 hlt,zero_mul]
        · have hp2 : p.2 = 1 := by
            have hp2pos := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hmem
            by_contra hn
            have htwo : 2 ≤ p.2 := by omega
            have hmul := Nat.mul_le_mul_left p.1 htwo
            omega
          simp [hp2,ArithmeticFunction.log_apply]
    · simp [hsrc]
  · intro hn
    exact (hn hp).elim

theorem finiteAnchorLogObservation_kernel {N : ℕ} (f : ℕ → ℝ)
    (hobs : ∀ a ∈ Finset.Icc 1 N, finiteAnchorLogObservation N f (2*a) = 0) :
    ∀ a ∈ Finset.Icc 1 N, f a = 0 := by
  intro a
  induction a using Nat.strong_induction_on with
  | h a ih =>
    intro ha
    have ha' := Finset.mem_Icc.mp ha
    have hd := finiteAnchorLogObservation_diagonal ha'.1 ha'.2 f (fun d hd hda =>
      ih d hda (Finset.mem_Icc.mpr ⟨hd,by omega⟩))
    rw [hobs a ha] at hd
    have hl : Real.log 2 ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
    exact (mul_eq_zero.mp hd.symm).resolve_right hl

theorem finiteAnchorLogObservation_injective {N : ℕ} (f g : ℕ → ℝ)
    (hobs : ∀ a ∈ Finset.Icc 1 N,
      finiteAnchorLogObservation N f (2*a) = finiteAnchorLogObservation N g (2*a)) :
    ∀ a ∈ Finset.Icc 1 N, f a = g a := by
  have h := finiteAnchorLogObservation_kernel (f-g) (fun a ha => by
    rw [finiteAnchorLogObservation_sub,hobs a ha,sub_self])
  intro a ha
  have hz := h a ha
  exact sub_eq_zero.mp hz

/-- The extended rows retain the actual von Mangoldt source, not an arbitrary target. -/
theorem finiteAnchorLogObservation_moebius {N n : ℕ} (hn : n ≤ 2*N) :
    finiteAnchorLogObservation N moebiusReal n = ArithmeticFunction.vonMangoldt n := by
  rw [vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log n]
  unfold finiteAnchorLogObservation
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hsrc : p.1 ∈ Finset.Icc 1 N
  · simp only [if_pos hsrc,moebiusReal]
  · rw [if_neg hsrc]
    have hm := Nat.mem_divisorsAntidiagonal.mp hp
    have hp1 := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
    have hp2 := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hp
    have hlarge : N < p.1 := by simp only [Finset.mem_Icc,not_and_or,not_le] at hsrc; omega
    have he : p.2 = 1 := by
      by_contra he
      have htwo : 2 ≤ p.2 := by omega
      have hmul := Nat.mul_le_mul_left p.1 htwo
      omega
    simp [he,ArithmeticFunction.log_apply]
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
