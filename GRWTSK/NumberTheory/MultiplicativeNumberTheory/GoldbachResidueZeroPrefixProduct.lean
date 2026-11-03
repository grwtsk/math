/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTruncatedResidueAggregate

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact actual residue-zero aggregate product, including prime-three pairs.
No prescribed-target positivity or distribution estimate is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachResidueZeroPrefixProduct
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachTruncatedResidueAggregate

def residueAtom (r n : ℕ) : ℝ := if n%3=r then oddPrimeWeight n else 0
def residuePrefix (X r : ℕ) : ℝ := ∑ n ∈ Finset.range (X+1), residueAtom r n

theorem residue_zero_pair_identity (p q : ℕ) :
    (if (p+q)%3=0 then oddPrimeWeight p*oddPrimeWeight q else 0) =
      residueAtom 0 p*residueAtom 0 q + residueAtom 1 p*residueAtom 2 q +
        residueAtom 2 p*residueAtom 1 q := by
  have hp : p%3=0 ∨ p%3=1 ∨ p%3=2 := by omega
  have hq : q%3=0 ∨ q%3=1 ∨ q%3=2 := by omega
  rcases hp with hp | hp | hp <;> rcases hq with hq | hq | hq <;>
    simp [residueAtom, Nat.add_mod, hp, hq]

theorem actual_residue_zero_prefix_product (X : ℕ) :
    residueAggregate X 0 = residuePrefix X 0^2+2*residuePrefix X 1*residuePrefix X 2 := by
  have he : residueAggregate X 0 =
      residuePrefix X 0*residuePrefix X 0 + residuePrefix X 1*residuePrefix X 2 +
        residuePrefix X 2*residuePrefix X 1 := by
    rw [actual_residue_target_partition]
    simp only [goldbachBox, Finset.sum_product, residuePrefix, Finset.sum_mul_sum]
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p _
    apply Finset.sum_congr rfl
    intro q _
    exact residue_zero_pair_identity p q
  rw [he]
  ring

end GRWTSK.NumberTheory.Primes.GoldbachResidueZeroPrefixProduct
