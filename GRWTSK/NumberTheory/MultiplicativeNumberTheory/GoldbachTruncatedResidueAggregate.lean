/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTruncatedPrimeAnchors

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact target-residue aggregation of the actual truncated odd-prime source.
No equidistribution or prescribed-target positivity is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachTruncatedResidueAggregate
open GoldbachWeighted GoldbachTruncatedOddAggregate

def residueAggregate (X r : ℕ) : ℝ :=
  ∑ N ∈ Finset.range (2*X+1), if N%3=r then truncatedOddMass X N else 0

theorem actual_residue_target_partition (X r : ℕ) :
    residueAggregate X r = ∑ uv ∈ goldbachBox X,
      if (uv.1+uv.2)%3=r then oddPrimeWeight uv.1*oddPrimeWeight uv.2 else 0 := by
  unfold residueAggregate truncatedOddMass
  have hswap (N : ℕ) :
      (if N%3=r then ∑ uv ∈ goldbachBox X,
        if uv.1+uv.2=N then oddPrimeWeight uv.1*oddPrimeWeight uv.2 else 0 else 0) =
      ∑ uv ∈ goldbachBox X, if uv.1+uv.2=N then
        (if (uv.1+uv.2)%3=r then oddPrimeWeight uv.1*oddPrimeWeight uv.2 else 0) else 0 := by
    by_cases hr : N%3=r
    · rw [if_pos hr]
      apply Finset.sum_congr rfl
      intro uv _
      by_cases hs : uv.1+uv.2=N <;> simp [hs,hr]
    · rw [if_neg hr]
      symm
      apply Finset.sum_eq_zero
      intro uv _
      by_cases hs : uv.1+uv.2=N <;> simp [hs,hr]
  simp_rw [hswap]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro uv huv
  have hb := mem_goldbachBox.mp huv
  have hm : uv.1+uv.2 ∈ Finset.range (2*X+1) := Finset.mem_range.mpr (by omega)
  simp [hm]

theorem residueAggregate_nonneg (X r : ℕ) : 0 ≤ residueAggregate X r := by
  unfold residueAggregate
  apply Finset.sum_nonneg
  intro N _
  split_ifs
  · exact truncatedOddMass_nonneg X N
  · exact le_rfl

theorem residueAggregate_prime_anchor (X p : ℕ) (hp : Nat.Prime p)
    (hp2 : p ≠ 2) (hpX : p ≤ X) : 0 < residueAggregate X ((2*p)%3) := by
  have hm : 2*p ∈ Finset.range (2*X+1) := Finset.mem_range.mpr (by omega)
  have hl := Finset.single_le_sum
    (s := Finset.range (2*X+1))
    (f := fun N => if N%3=(2*p)%3 then truncatedOddMass X N else 0)
    (fun N _ => by
      split_ifs
      · exact truncatedOddMass_nonneg X N
      · exact le_rfl) hm
  have hh : truncatedOddMass X (2*p) ≤ residueAggregate X ((2*p)%3) := by
    simpa [residueAggregate] using hl
  exact (GoldbachTruncatedPrimeAnchors.truncated_prime_anchor_pos X p hp hp2 hpX).trans_le hh

end GRWTSK.NumberTheory.Primes.GoldbachTruncatedResidueAggregate
