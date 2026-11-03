/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachResidueZeroPrefixProduct
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachModThreeSourceSectors

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete exact truncated residue-prefix aggregate products.
No prime equidistribution or per-target positivity is inferred. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachCompleteResiduePrefixProducts
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachTruncatedResidueAggregate
open GoldbachResidueZeroPrefixProduct GoldbachModThreeSourceSectors

theorem residue_1_pair_identity (p q : ℕ) :
    (if (p+q)%3=1 then oddPrimeWeight p*oddPrimeWeight q else 0) =
      residueAtom 2 p*residueAtom 2 q + residueAtom 0 p*residueAtom 1 q + residueAtom 1 p*residueAtom 0 q := by
  have hp : p%3=0 ∨ p%3=1 ∨ p%3=2 := by omega
  have hq : q%3=0 ∨ q%3=1 ∨ q%3=2 := by omega
  rcases hp with hp | hp | hp <;> rcases hq with hq | hq | hq <;>
    simp [residueAtom, Nat.add_mod, hp, hq]

theorem actual_residue_1_prefix_product (X : ℕ) :
    residueAggregate X 1 = residuePrefix X 2^2+2*residuePrefix X 0*residuePrefix X 1 := by
  have he : residueAggregate X 1 = residuePrefix X 2*residuePrefix X 2 + residuePrefix X 0*residuePrefix X 1 + residuePrefix X 1*residuePrefix X 0 := by
    rw [actual_residue_target_partition]
    simp only [goldbachBox, Finset.sum_product, residuePrefix, Finset.sum_mul_sum]
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p _
    apply Finset.sum_congr rfl
    intro q _
    exact residue_1_pair_identity p q
  rw [he]
  ring

theorem residue_2_pair_identity (p q : ℕ) :
    (if (p+q)%3=2 then oddPrimeWeight p*oddPrimeWeight q else 0) =
      residueAtom 1 p*residueAtom 1 q + residueAtom 0 p*residueAtom 2 q + residueAtom 2 p*residueAtom 0 q := by
  have hp : p%3=0 ∨ p%3=1 ∨ p%3=2 := by omega
  have hq : q%3=0 ∨ q%3=1 ∨ q%3=2 := by omega
  rcases hp with hp | hp | hp <;> rcases hq with hq | hq | hq <;>
    simp [residueAtom, Nat.add_mod, hp, hq]

theorem actual_residue_2_prefix_product (X : ℕ) :
    residueAggregate X 2 = residuePrefix X 1^2+2*residuePrefix X 0*residuePrefix X 2 := by
  have he : residueAggregate X 2 = residuePrefix X 1*residuePrefix X 1 + residuePrefix X 0*residuePrefix X 2 + residuePrefix X 2*residuePrefix X 0 := by
    rw [actual_residue_target_partition]
    simp only [goldbachBox, Finset.sum_product, residuePrefix, Finset.sum_mul_sum]
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p _
    apply Finset.sum_congr rfl
    intro q _
    exact residue_2_pair_identity p q
  rw [he]
  ring

theorem residue_zero_atom_exact (n : ℕ) : residueAtom 0 n = if n=3 then Real.log 3 else 0 := by
  by_cases hn : n=3
  · subst n
    norm_num [residueAtom, oddPrimeWeight, primeLogWeight]
  · by_cases hm : n%3=0
    · have hp : ¬ Nat.Prime n := fun h => hn (prime_mod_three_zero n h hm)
      simp [residueAtom, hm, hn, oddPrimeWeight, primeLogWeight, hp]
    · simp [residueAtom, hm, hn]

theorem residue_zero_prefix_exact (X : ℕ) (hX : 3 ≤ X) : residuePrefix X 0=Real.log 3 := by
  unfold residuePrefix
  simp_rw [residue_zero_atom_exact]
  have hm : 3 ∈ Finset.range (X+1) := Finset.mem_range.mpr (by omega)
  simp [hm]

end GRWTSK.NumberTheory.Primes.GoldbachCompleteResiduePrefixProducts
