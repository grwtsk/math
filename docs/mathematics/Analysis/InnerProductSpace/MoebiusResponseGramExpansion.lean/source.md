# Complete source: GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4c4cbd4dfa996330c29818de0a7b595ddd42788` · SHA-256 `b665918a5932600719e42169b9248627dcad5b67e0bd43344e2ec416255f1f49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.LogarithmicResponse

/-! Exact signed energy accounting for the literal source.
Every ordered off-diagonal pair occurs once in `crossEnergy`.
All exchanges of finite sums and integrals are justified by continuity.
-/

noncomputable section
open scoped BigOperators
open MeasureTheory Set
namespace PPNCP04

theorem signed_square_eq_double {ι : Type*} (s : Finset ι)
    (c x : ι → ℝ) :
    (∑ i ∈ s, c i*x i)^2 =
      ∑ i ∈ s, ∑ j ∈ s, c i*c j*(x i*x j) := by
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  ring

theorem correlation_integrable (T : ℝ) {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) :
    IntegrableOn (fun u => realMoebius m*realMoebius n*(atom m u*atom n u))
      (Icc 0 T) := by
  apply Continuous.integrableOn_Icc
  exact continuous_const.mul ((atom_continuous hm).mul (atom_continuous hn))

theorem energy_eq_complete_double (T : ℝ) :
    energy T = ∑ m ∈ integerInventory T, ∑ n ∈ integerInventory T,
      realMoebius m*realMoebius n*gram T m n := by
  have hpair : ∀ m ∈ integerInventory T, ∀ n ∈ integerInventory T,
      IntegrableOn (fun u => realMoebius m*realMoebius n*(atom m u*atom n u))
        (Icc 0 T) := by
    intro m hm n hn
    exact correlation_integrable T
      (Nat.zero_lt_of_lt (mem_integerInventory.mp hm).1)
      (Nat.zero_lt_of_lt (mem_integerInventory.mp hn).1)
  unfold energy
  simp_rw [pickup, signed_square_eq_double]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [integral_finsetSum (integerInventory T) (hpair m hm)]
    apply Finset.sum_congr rfl
    intro n hn
    exact integral_const_mul _ _
  · intro m hm
    exact integrable_finsetSum (integerInventory T) (hpair m hm)

theorem energy_eq_diagonal_add_cross (T : ℝ) :
    energy T = diagonal T+crossEnergy T := by
  rw [energy_eq_complete_double]
  unfold diagonal crossEnergy
  rw [←Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have h := Finset.sum_erase_add (integerInventory T)
    (fun n => realMoebius m*realMoebius n*gram T m n) hm
  simpa [pow_two, add_comm] using h.symm

theorem cross_eq_energy_sub_diagonal (T : ℝ) :
    crossEnergy T = energy T-diagonal T := by
  linarith [energy_eq_diagonal_add_cross T]

theorem energy_polynomial_implies_P04 (h : PolynomialBound energy) : P04 := by
  obtain ⟨C, r, hC, hr, hbound⟩ := h
  refine ⟨C, r, hC, hr, ?_⟩
  intro T hT
  rw [cross_eq_energy_sub_diagonal]
  linarith [hbound T hT, diagonal_nonneg T]

end PPNCP04

#print axioms PPNCP04.energy_eq_diagonal_add_cross
#print axioms PPNCP04.energy_polynomial_implies_P04
```
