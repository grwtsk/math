/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimeDilationSignedPackets

set_option autoImplicit false
noncomputable section

/-! Exact actual Mobius product in coprime quotient coordinates. The shared
prime zero branch is retained. No weighted signed comparison. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Moebius.MobiusGcdQuotientKernelSign
open GRWTSK.RiemannHypothesis.CCC

theorem actual_mobiusReal_mul (a b : ℕ) (hab : Nat.Coprime a b) :
    moebiusReal (a*b)=moebiusReal a*moebiusReal b := by
  unfold moebiusReal
  rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hab]
  simp

theorem actual_mobius_shared_prime_zero (g a : ℕ) (hga : ¬Nat.Coprime g a) :
    moebiusReal (g*a)=0 := by
  have hs : ¬Squarefree (g*a) := fun h => hga (Nat.coprime_of_squarefree_mul h)
  unfold moebiusReal
  rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hs]
  simp

theorem actual_gcd_quotient_product (g a b : ℕ) (hab : Nat.Coprime a b) :
    moebiusReal (g*a)*moebiusReal (g*b) =
      if Nat.Coprime g (a*b) then moebiusReal g^2*moebiusReal (a*b) else 0 := by
  by_cases hg : Nat.Coprime g (a*b)
  · rw [if_pos hg]
    obtain ⟨hga,hgb⟩ := Nat.coprime_mul_iff_right.mp hg
    rw [actual_mobiusReal_mul g a hga,actual_mobiusReal_mul g b hgb,
      actual_mobiusReal_mul a b hab]
    ring
  · rw [if_neg hg]
    by_cases hga : Nat.Coprime g a
    · have hgb : ¬Nat.Coprime g b := by
        intro h
        exact hg (Nat.coprime_mul_iff_right.mpr ⟨hga,h⟩)
      rw [actual_mobius_shared_prime_zero g b hgb,mul_zero]
    · rw [actual_mobius_shared_prime_zero g a hga,zero_mul]

/- Reindexing the full ordered source pair set by gcd remains separate.
The exact +/- quotient weights do not supply a uniform signed bound. -/
end GRWTSK.NumberTheory.Moebius.MobiusGcdQuotientKernelSign
