/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusBoundedGcdDomain

set_option autoImplicit false
noncomputable section

/-! Full ordered domain equivalence, with no packet overlap or lost diagonal.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdEquivalence
open MobiusBoundedGcdDomain MobiusOrderedGcdCoordinates

def PositivePairs (N : ℕ) :=
  {rs : ℕ × ℕ // 0<rs.1 ∧ rs.1≤N ∧ 0<rs.2 ∧ rs.2≤N}
def GcdTriples (N : ℕ) :=
  {gab : ℕ × (ℕ × ℕ) // BoundedCoordinates N gab.1 gab.2.1 gab.2.2}

def boundedGcdEquiv (N : ℕ) : PositivePairs N ≃ GcdTriples N where
  toFun p := ⟨(Nat.gcd p.val.1 p.val.2,
    (p.val.1/Nat.gcd p.val.1 p.val.2,p.val.2/Nat.gcd p.val.1 p.val.2)),
    actual_pair_bounded_coordinates N p.val.1 p.val.2
      p.property.1 p.property.2.2.1 p.property.2.1 p.property.2.2.2⟩
  invFun q := ⟨(q.val.1*q.val.2.1,q.val.1*q.val.2.2), by
    have h := bounded_coordinates_encode N q.val.1 q.val.2.1 q.val.2.2 q.property
    exact ⟨h.1,h.2.1,h.2.2.1,h.2.2.2.1⟩⟩
  left_inv p := by
    apply Subtype.ext
    exact Prod.ext (ordered_pair_reconstruct p.val.1 p.val.2).1
      (ordered_pair_reconstruct p.val.1 p.val.2).2
  right_inv q := by
    apply Subtype.ext
    have hg := coprime_coordinates_recover_gcd q.val.1 q.val.2.1 q.val.2.2
      q.property.2.2.2.1
    apply Prod.ext
    · exact hg
    · apply Prod.ext
      · change (q.val.1*q.val.2.1)/Nat.gcd _ _=q.val.2.1
        rw [hg]
        exact Nat.mul_div_cancel_left _ q.property.1
      · change (q.val.1*q.val.2.2)/Nat.gcd _ _=q.val.2.2
        rw [hg]
        exact Nat.mul_div_cancel_left _ q.property.1

/- PositivePairs is bounded by [1,N]^2; transport of its finite sums along
this literal equivalence preserves all ordered terms. The actual signed
kernel comparison and analytic zero-to-operator bridge remain unsupplied. -/
end GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdEquivalence
