/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusBoundedGcdEquivalence

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full finite ordered kernel transport. SOURCE_PROOF_CANDIDATES / NOT_RUN.
The kernel is retained literally; no positivity or cancellation is assumed. -/
namespace GRWTSK.NumberTheory.Moebius.MobiusFullGcdKernelSum
open MobiusBoundedGcdEquivalence MobiusOrderedGcdCoordinates
open MobiusGcdQuotientKernelSign GRWTSK.RiemannHypothesis.CCC

instance positivePairsFinite (N : ℕ) : Finite (PositivePairs N) := by
  apply Finite.of_injective
    (fun p : PositivePairs N =>
      ((⟨p.val.1,Nat.lt_succ_of_le p.property.2.1⟩ : Fin (N+1)),
       (⟨p.val.2,Nat.lt_succ_of_le p.property.2.2.2⟩ : Fin (N+1))))
  intro a b h
  apply Subtype.ext
  exact Prod.ext (congrArg (fun z => z.1.val) h) (congrArg (fun z => z.2.val) h)

instance positivePairsFintype (N : ℕ) : Fintype (PositivePairs N) := Fintype.ofFinite _
instance gcdTriplesFintype (N : ℕ) : Fintype (GcdTriples N) :=
  Fintype.ofEquiv (PositivePairs N) (boundedGcdEquiv N)

theorem full_ordered_kernel_transport (N : ℕ) (K : ℕ → ℕ → ℝ) :
    (∑ p : PositivePairs N, moebiusReal p.val.1*moebiusReal p.val.2*K p.val.1 p.val.2) =
    ∑ q : GcdTriples N,
      (if Nat.Coprime q.val.1 (q.val.2.1*q.val.2.2)
       then moebiusReal q.val.1^2*moebiusReal (q.val.2.1*q.val.2.2) else 0)*
        K (q.val.1*q.val.2.1) (q.val.1*q.val.2.2) := by
  calc
    _ = ∑ q : GcdTriples N,
        moebiusReal (q.val.1*q.val.2.1)*moebiusReal (q.val.1*q.val.2.2)*
          K (q.val.1*q.val.2.1) (q.val.1*q.val.2.2) := by
      apply Fintype.sum_equiv (boundedGcdEquiv N)
      intro p
      have he := ordered_pair_reconstruct p.val.1 p.val.2
      change _ = moebiusReal (Nat.gcd p.val.1 p.val.2*(p.val.1/Nat.gcd p.val.1 p.val.2))*
        moebiusReal (Nat.gcd p.val.1 p.val.2*(p.val.2/Nat.gcd p.val.1 p.val.2))*
        K (Nat.gcd p.val.1 p.val.2*(p.val.1/Nat.gcd p.val.1 p.val.2))
          (Nat.gcd p.val.1 p.val.2*(p.val.2/Nat.gcd p.val.1 p.val.2))
      rw [he.1,he.2]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro q _
      rw [actual_gcd_quotient_product q.val.1 q.val.2.1 q.val.2.2 q.property.2.2.2.1]

/- Specializing K to the actual pulled Mertens kernel still needs its
index bridge from ZMod/Fin to positive natural labels. The full signed
comparison is not supplied by this exact reindexing identity. -/
end GRWTSK.NumberTheory.Moebius.MobiusFullGcdKernelSum
