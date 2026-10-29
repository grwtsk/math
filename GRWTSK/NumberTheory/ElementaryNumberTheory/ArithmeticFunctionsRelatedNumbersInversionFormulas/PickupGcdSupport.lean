/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Möbius results retain Aaron Anderson's upstream authorship and
Apache-2.0 license; other imports retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.CenteredLowGCDRestrictedMobiusLog

/-!
# Exact Möbius support for gcd-coordinate pickup pairs

Reuse the maintained restricted-product identity, rather than apply
multiplicativity without its coprimality hypotheses. Both non-coprime cases
remain explicit zeros. The square of the actual Möbius coefficient of the gcd
is retained, so nonsquarefree gcds also remain zero. Coprimality of the two
quotients belongs to the gcd reindexing; it is not needed for this product
identity, and does not by itself imply coprimality with the gcd.

These are exact source identities and support facts. They supply no signed
correlation estimate or improvement of an exponential growth rate.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupGcdSupport

open GRWTSK.RiemannHypothesis.CCC

/-- Exact zero-preserving product factorization for every natural triple.
The masks enforce the coprimality needed by multiplicativity. In particular,
coprime quotient labels alone would not justify deleting either mask. -/
theorem moebius_pair_product_eq_masked (d a b : ℕ) :
    moebiusReal (d * a) * moebiusReal (d * b) =
      if Nat.Coprime d a ∧ Nat.Coprime d b then
        moebiusReal d ^ 2 * moebiusReal a * moebiusReal b else 0 := by
  change CenteredLowGCD.mobiusReal (d * a) * CenteredLowGCD.mobiusReal (d * b) =
    if Nat.Coprime d a ∧ Nat.Coprime d b then
      CenteredLowGCD.mobiusReal d ^ 2 *
        CenteredLowGCD.mobiusReal a * CenteredLowGCD.mobiusReal b else 0
  rw [CenteredLowGCD.mobiusReal_mul_eq_restricted d a,
    CenteredLowGCD.mobiusReal_mul_eq_restricted d b]
  have hmask (r n : ℕ) : CenteredLowGCD.coprimeRestrictedMobius r n =
      if Nat.Coprime r n then CenteredLowGCD.mobiusReal n else 0 := by
    simp only [CenteredLowGCD.coprimeRestrictedMobius_apply]
    rw [Nat.coprime_comm]
  rw [hmask d a, hmask d b]
  by_cases hda : Nat.Coprime d a <;> by_cases hdb : Nat.Coprime d b <;>
    simp [hda, hdb] <;> ring

/-- Nonzero source support justifies every coprimality used in the unmasked
factorization. Squarefreeness of the two products supplies squarefreeness of
all three factors and their two gcd/quotient coprimality conditions. -/
theorem squarefree_and_coprime_of_pair_product_ne_zero {d a b : ℕ}
    (h : moebiusReal (d * a) * moebiusReal (d * b) ≠ 0) :
    Squarefree d ∧ Squarefree a ∧ Squarefree b ∧
      Nat.Coprime d a ∧ Nat.Coprime d b := by
  have hleft : Squarefree (d * a) := by
    by_contra hn
    apply h
    simp only [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn,
      Int.cast_zero, zero_mul]
  have hright : Squarefree (d * b) := by
    by_contra hn
    apply h
    simp only [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn,
      Int.cast_zero, mul_zero]
  have hda := Nat.squarefree_mul_iff.mp hleft
  have hdb := Nat.squarefree_mul_iff.mp hright
  exact ⟨hda.2.1, hda.2.2, hdb.2.2, hda.1, hdb.1⟩

/-- On actual nonzero squarefree support the coprimality masks can be removed.
This does not remove zero coefficients from an unrestricted sum. -/
theorem moebius_pair_product_of_nonzero {d a b : ℕ}
    (h : moebiusReal (d * a) * moebiusReal (d * b) ≠ 0) :
    moebiusReal (d * a) * moebiusReal (d * b) =
      moebiusReal d ^ 2 * moebiusReal a * moebiusReal b := by
  have hs := squarefree_and_coprime_of_pair_product_ne_zero h
  rw [moebius_pair_product_eq_masked, if_pos ⟨hs.2.2.2.1, hs.2.2.2.2⟩]

end GRWTSK.NumberTheory.Moebius.PickupGcdSupport
