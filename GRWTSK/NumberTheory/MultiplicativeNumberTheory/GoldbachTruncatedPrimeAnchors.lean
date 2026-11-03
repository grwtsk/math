/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTruncatedOddAggregate

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Concrete diagonal anchors in the actual truncated source.
Anchors establish aggregate-baseline positivity only when their literal
targets belong to the window. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachTruncatedPrimeAnchors
open GoldbachWeighted GoldbachTruncatedOddAggregate

theorem truncated_prime_anchor_lower (X p : ℕ) (hp : Nat.Prime p)
    (hp2 : p ≠ 2) (hpX : p ≤ X) :
    (Real.log (p : ℝ))^2 ≤ truncatedOddMass X (2*p) := by
  have hm : (p,p) ∈ goldbachBox X := mem_goldbachBox.mpr ⟨hpX,hpX⟩
  have hl := Finset.single_le_sum (s := goldbachBox X)
    (f := fun uv => if uv.1+uv.2=2*p then oddPrimeWeight uv.1*oddPrimeWeight uv.2 else 0)
    (fun uv _ => by
      split_ifs
      · exact mul_nonneg (oddPrimeWeight_nonneg _) (oddPrimeWeight_nonneg _)
      · exact le_rfl) hm
  have he : p+p=2*p := by omega
  simpa [truncatedOddMass, he, oddPrimeWeight, primeLogWeight, hp, hp2, pow_two] using hl

theorem truncated_prime_anchor_pos (X p : ℕ) (hp : Nat.Prime p)
    (hp2 : p ≠ 2) (hpX : p ≤ X) : 0 < truncatedOddMass X (2*p) := by
  exact (sq_pos_of_pos hp.log_pos).trans_le (truncated_prime_anchor_lower X p hp hp2 hpX)

end GRWTSK.NumberTheory.Primes.GoldbachTruncatedPrimeAnchors
