# Complete source: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyScaleBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a281dc5c927ca05646a735f813809fbaab389da` · SHA-256 `a1c9b2ef85ae67bca5031b64eb40c99ebfc3cdb6f57d419a82729b2110c8b81d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyStrictGap

/-! # Explicit scale losses of the literal full-coordinate adjoint
The estimates bound the matrix and damping, not the unresolved arithmetic
observation gap. No strict RH-scale frame follows from these upper bounds alone. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

theorem anchored_family_center_injective {a b : ℕ} (ha0 : 0 < a) (hb0 : 0 < b)
    (hf : canonicalFourFamilyOfAnchor a = canonicalFourFamilyOfAnchor b)
    (hc : (anchoredMobiusPair a).center = (anchoredMobiusPair b).center) : a = b := by
  have hr := congrArg canonicalFourFamilyEndpointParity hf
  simp only [canonicalFourFamilyEndpointParity_of_anchor] at hr
  by_cases ha : a % 2 = 0 <;> by_cases hb : b % 2 = 0 <;>
    simp [anchoredMobiusPair, CenteredAdditiveMobiusPair.center, ha, hb] at hr hc <;> omega

private theorem selected_pair_unique {n : ℕ} {p q : ℕ × ℕ}
    (hp : p ∈ n.divisorsAntidiagonal) (hq : q ∈ n.divisorsAntidiagonal)
    (hf : canonicalFourFamilyOfAnchor p.1 = canonicalFourFamilyOfAnchor q.1)
    (hc : (anchoredMobiusPair p.1).center = (anchoredMobiusPair q.1).center) : p = q := by
  have hprod := Nat.mem_divisorsAntidiagonal.mp hp
  have hprodq := Nat.mem_divisorsAntidiagonal.mp hq
  have hap : 0 < p.1 := by
    by_contra h
    have hz : p.1 = 0 := by omega
    rw [hz, zero_mul] at hprod
    exact hprod.2 hprod.1.symm
  have haq : 0 < q.1 := by
    by_contra h
    have hz : q.1 = 0 := by omega
    rw [hz, zero_mul] at hprodq
    exact hprodq.2 hprodq.1.symm
  have ha := anchored_family_center_injective hap haq hf hc
  have hb : p.2 = q.2 := Nat.eq_of_mul_eq_mul_left hap (by
    calc
      p.1*p.2 = n := hprod.1
      _ = p.1*q.2 := by rw [ha]; exact hprodq.1.symm)
  exact Prod.ext ha hb

theorem abs_fullMatrixEntry_le_log {X n : ℕ} (hX : 1 ≤ X) (hn : n ≤ 2*X)
    (F : CanonicalFourFamily) (c : ℕ) :
    |canonicalFourFamilyGreenMatrixEntry X n F c| ≤ Real.log (2*(X:ℝ)) := by
  classical
  let P (p : ℕ × ℕ) := p.1 ∈ anchoredDyadicSourceIndices X ∧
    0 < (anchoredMobiusPair p.1).h ∧ F = canonicalFourFamilyOfAnchor p.1 ∧
    c = (anchoredMobiusPair p.1).center
  have hlog : 0 ≤ Real.log (2*(X:ℝ)) := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ 2*X))
  by_cases he : ∃ p ∈ n.divisorsAntidiagonal, P p
  · obtain ⟨p,hp,hP⟩ := he
    have hs : canonicalFourFamilyGreenMatrixEntry X n F c =
        anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ) := by
      unfold canonicalFourFamilyGreenMatrixEntry
      rw [Finset.sum_eq_single p]
      · exact if_pos hP
      · intro q hq hqp
        by_cases hQ : P q
        · have hqp' := selected_pair_unique hq hp (hQ.2.2.1.symm.trans hP.2.2.1)
            (hQ.2.2.2.symm.trans hP.2.2.2)
          exact (hqp hqp').elim
        · exact if_neg hQ
      · intro hnp
        exact (hnp hp).elim
    have hprod := Nat.mem_divisorsAntidiagonal.mp hp
    have hp1 : 0 < p.1 := by
      by_contra h
      have hz : p.1 = 0 := by omega
      rw [hz, zero_mul] at hprod
      exact hprod.2 hprod.1.symm
    have hp2 : 0 < p.2 := by
      by_contra h
      have hz : p.2 = 0 := by omega
      rw [hz, mul_zero] at hprod
      exact hprod.2 hprod.1.symm
    have hp2n : p.2 ≤ n := by
      rw [← hprod.1]
      exact Nat.le_mul_of_pos_left _ hp1
    rw [hs, abs_mul]
    have hsabs : |anchoredPairSign p.1| = 1 := by unfold anchoredPairSign; split_ifs <;> norm_num
    rw [hsabs, one_mul]
    change |Real.log (p.2:ℝ)| ≤ _
    rw [abs_of_nonneg (Real.log_nonneg (by exact_mod_cast hp2))]
    exact Real.log_le_log (by exact_mod_cast hp2) (by exact_mod_cast hp2n.trans hn)
  · have hz : canonicalFourFamilyGreenMatrixEntry X n F c = 0 := by
      apply Finset.sum_eq_zero
      intro p hp
      exact if_neg (fun h => he ⟨p,hp,h⟩)
    simpa only [hz, abs_zero] using hlog

def fullMatrixScaleBudget (X : ℕ) : ℝ :=
  4 * (2*(X:ℝ)+1) * X * (Real.log (2*(X:ℝ)))^2

theorem fullMatrix_frobenius_le (X : ℕ) (hX : 1 ≤ X) :
    GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.frobenius
      (canonicalFourFamilyCells X) (centeredGreenWindow X)
      (fun n p => canonicalFourFamilyGreenMatrixEntry X n p.1 p.2) ≤ fullMatrixScaleBudget X := by
  have hlog : 0 ≤ Real.log (2*(X:ℝ)) := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ 2*X))
  have hb (p : CanonicalFourFamily × ℕ) (n : ℕ) (hn : n ∈ centeredGreenWindow X) :
      (canonicalFourFamilyGreenMatrixEntry X n p.1 p.2)^2 ≤ (Real.log (2*(X:ℝ)))^2 := by
    have hn' : n ≤ 2*X := (Finset.mem_Ioc.mp hn).2
    have h := (sq_le_sq₀ (abs_nonneg _) hlog).mpr (abs_fullMatrixEntry_le_log hX hn' p.1 p.2)
    simpa only [sq_abs] using h
  unfold GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.frobenius
  calc
    _ ≤ ∑ _p ∈ canonicalFourFamilyCells X, ∑ _n ∈ centeredGreenWindow X,
        (Real.log (2*(X:ℝ)))^2 := Finset.sum_le_sum (fun p _ => Finset.sum_le_sum (fun n hn => hb p n hn))
    _ = fullMatrixScaleBudget X := by
      have hw : (centeredGreenWindow X).card = X := by simp [centeredGreenWindow]; omega
      simp [hw, canonicalFourFamilyCells, Finset.card_product, fullMatrixScaleBudget]
      ring

theorem fullAdjointDamping_scale_lower (X : ℕ) (hX : 1 ≤ X) :
    1 / (1+fullMatrixScaleBudget X) ≤ fullAdjointDamping X := by
  apply one_div_le_one_div_of_le
  · have hB : 0 ≤ GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.frobenius
        (canonicalFourFamilyCells X) (centeredGreenWindow X)
        (fun n p => canonicalFourFamilyGreenMatrixEntry X n p.1 p.2) :=
      Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
    change 0 < 1 + _
    linarith
  · simpa only [add_comm] using add_le_add_left (fullMatrix_frobenius_le X hX) 1
/-- Unconditional residual decrease with the explicit scale loss retained. -/
theorem fullAdjointResidual_scale_descent (X : ℕ) (hX : 1 ≤ X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyAmbientSourceEnergy X
      (fun F c => v F c-fullAdjointReconstruction X
        (fun n => canonicalFourFamilyGreenMatrixApply X n v) F c) ≤
      canonicalFourFamilyAmbientSourceEnergy X v-
        canonicalFourFamilyWindowOutputEnergy X v/(1+fullMatrixScaleBudget X) := by
  have ho : 0 ≤ canonicalFourFamilyWindowOutputEnergy X v :=
    Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have h1 := fullAdjointResidual_descent X v
  have h2 := mul_le_mul_of_nonneg_right (fullAdjointDamping_scale_lower X hX) ho
  rw [one_div_mul_eq_div] at h2
  linarith
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
