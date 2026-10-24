# Complete source: GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e49195f804e0f12ecfbf2059230230d3df0b91b8` · SHA-256 `263d7cb13e397ca98287d9faae175b884afb07eeefd8ff3504980c18b93163ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct
import Mathlib.Algebra.MvPolynomial.Basic
import Mathlib.Tactic

/-! Literal exponent-vector coefficient theorem for the finite Euler polynomial.
The theorem works for every finite variable set; primality is required only by
the exact integer-coefficient bridge back to squarefree prime products. All
Möbius parity signs and the zero coefficient for repeated exponents are explicit.
-/

noncomputable section
open scoped BigOperators Classical
namespace EulerP04RH.FEMI
open MvPolynomial

def exponentMask (U : Finset ℕ) : ℕ →₀ ℕ := Finsupp.indicator U (fun _ _ => 1)
def finiteEulerPolynomial (P : Finset ℕ) : MvPolynomial ℕ ℤ :=
  ∏ p ∈ P, (1 - X p)

theorem exponentMask_apply (U : Finset ℕ) (p : ℕ) :
    exponentMask U p = if p ∈ U then 1 else 0 := by
  simp [exponentMask, Finsupp.indicator_apply]

theorem exponentMask_support (U : Finset ℕ) : (exponentMask U).support = U := by
  ext p
  simp [Finsupp.mem_support_iff, exponentMask_apply]

theorem exponentMask_eq_iff (ν : ℕ →₀ ℕ) (U : Finset ℕ) :
    ν = exponentMask U ↔ ν.support = U ∧ ∀ p, ν p ≤ 1 := by
  constructor
  · intro h
    rw [h]
    constructor
    · exact exponentMask_support U
    · intro p
      rw [exponentMask_apply]
      split_ifs <;> omega
  · rintro ⟨hs, hv⟩
    ext p
    rw [exponentMask_apply]
    by_cases hp : p ∈ U
    · rw [if_pos hp]
      have hn : ν p ≠ 0 := Finsupp.mem_support_iff.mp (by simpa [hs] using hp)
      have hle := hv p
      omega
    · rw [if_neg hp]
      exact Finsupp.notMem_support_iff.mp (by simpa [hs] using hp)

theorem finiteEulerPolynomial_expansion (P : Finset ℕ) :
    finiteEulerPolynomial P =
      ∑ U ∈ P.powerset, C ((-1 : ℤ) ^ U.card) * ∏ p ∈ U, X p := by
  classical
  rw [finiteEulerPolynomial, Finset.prod_sub]
  simp

theorem finiteEulerPolynomial_coeff_sum (P : Finset ℕ) (ν : ℕ →₀ ℕ) :
    coeff ν (finiteEulerPolynomial P) =
      ∑ U ∈ P.powerset, if ν = exponentMask U then (-1 : ℤ) ^ U.card else 0 := by
  classical
  rw [finiteEulerPolynomial_expansion, coeff_sum]
  apply Finset.sum_congr rfl
  intro U _hU
  rw [coeff_C_mul]
  have hprod : (∏ p ∈ U, (X p : MvPolynomial ℕ ℤ)) =
      ∏ p ∈ U, (X p : MvPolynomial ℕ ℤ) ^ (1 : ℕ) := by simp
  rw [hprod, coeff_prod_X_pow]
  simp only [exponentMask]
  split_ifs <;> simp_all

theorem finiteEulerPolynomial_coeff (P : Finset ℕ) (ν : ℕ →₀ ℕ) :
    coeff ν (finiteEulerPolynomial P) =
      if ν.support ⊆ P ∧ (∀ p, ν p ≤ 1) then (-1 : ℤ) ^ ν.support.card else 0 := by
  classical
  rw [finiteEulerPolynomial_coeff_sum]
  by_cases hν : ν.support ⊆ P ∧ (∀ p, ν p ≤ 1)
  · rw [if_pos hν]
    have hm : ν.support ∈ P.powerset := Finset.mem_powerset.mpr hν.1
    rw [Finset.sum_eq_single ν.support]
    · rw [if_pos ((exponentMask_eq_iff ν ν.support).mpr ⟨rfl, hν.2⟩)]
    · intro U _hU hne
      have hn : ν ≠ exponentMask U := by
        intro h
        exact hne ((exponentMask_eq_iff ν U).mp h).1.symm
      simp [hn]
    · exact fun h => False.elim (h hm)
  · rw [if_neg hν]
    apply Finset.sum_eq_zero
    intro U hU
    have hn : ν ≠ exponentMask U := by
      intro h
      obtain ⟨hs, hv⟩ := (exponentMask_eq_iff ν U).mp h
      apply hν
      rw [hs]
      exact ⟨Finset.mem_powerset.mp hU, hv⟩
    simp [hn]

theorem polynomial_integer_coefficient (P U : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hUP : U ⊆ P) :
    coeff (exponentMask U) (finiteEulerPolynomial P) =
      integerCoefficient P (ASBNP04.FiniteProduct.primeProduct U) := by
  have hU : ∀ p ∈ U, p.Prime := fun p hp => hP p (hUP hp)
  have hv : ∀ p, exponentMask U p ≤ 1 :=
    ((exponentMask_eq_iff (exponentMask U) U).mp rfl).2
  rw [finiteEulerPolynomial_coeff, exponentMask_support, if_pos ⟨hUP, hv⟩,
    integerCoefficient_exact P hP]
  have hsf := ASBNP04.FiniteProduct.primeProduct_squarefree U hU
  have hsub : (ASBNP04.FiniteProduct.primeProduct U).primeFactors ⊆ P := by
    rw [ASBNP04.FiniteProduct.primeProduct_primeFactors U hU]
    exact hUP
  rw [if_pos ⟨hsf, hsub⟩, ASBNP04.FiniteProduct.moebius_primeProduct U hU]

end EulerP04RH.FEMI

#print axioms EulerP04RH.FEMI.finiteEulerPolynomial_expansion
#print axioms EulerP04RH.FEMI.finiteEulerPolynomial_coeff
#print axioms EulerP04RH.FEMI.polynomial_integer_coefficient
```
