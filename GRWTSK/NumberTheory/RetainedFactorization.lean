/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicHamiltonian
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Retained prime support and exponents for genuine additive triples

Use the canonical factorization of the actual product a*b*c, retaining the
positive additive triple and coprimality as source data. The radical channel
alone supplies the unweighted prime support; exponents remain separate data.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
A uniform exponent bound is NOT supplied and is NOT asserted to be a route
that covers all ABC triples. No uniform ABC height estimate is proved.
-/
namespace GRWTSK.NumberTheory.ABC.RetainedFactorization
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

structure CoprimeAdditiveTriple where
  a : ℕ
  b : ℕ
  c : ℕ
  a_pos : 0 < a
  b_pos : 0 < b
  c_pos : 0 < c
  additive : a + b = c
  coprime : Nat.Coprime a b

def CoprimeAdditiveTriple.product (T : CoprimeAdditiveTriple) : ℕ := T.a * T.b * T.c

theorem log_factorization (n : ℕ) (hn : n ≠ 0) :
    Real.log (n : ℝ) =
      ∑ p ∈ n.primeFactors, (n.factorization p : ℝ) * Real.log (p : ℝ) := by
  have heq : (n : ℝ) = ∏ p ∈ n.primeFactors, (p : ℝ) ^ n.factorization p := by
    exact_mod_cast Nat.prod_primeFactors_pow_factorization hn
  have hp : ∀ p ∈ n.primeFactors, (p : ℝ) ≠ 0 := by
    intro p hp
    exact_mod_cast (Nat.prime_of_mem_primeFactors hp).ne_zero
  rw [heq, Real.log_prod (fun p h => pow_ne_zero _ (hp p h))]
  apply Finset.sum_congr rfl
  intro p _
  exact Real.log_pow _ _

theorem log_radical_support (n : ℕ) :
    Real.log (UniqueFactorizationMonoid.radical n : ℝ) =
      ∑ p ∈ n.primeFactors, Real.log (p : ℝ) := by
  have heq : (UniqueFactorizationMonoid.radical n : ℝ) =
      ∏ p ∈ n.primeFactors, (p : ℝ) := by
    exact_mod_cast Nat.radical_eq_prod_primeFactors (n := n)
  rw [heq]
  apply Real.log_prod
  intro p hp
  exact_mod_cast (Nat.prime_of_mem_primeFactors hp).ne_zero

/-- The missing height information is an exact weighted exponent excess. -/
theorem log_height_excess (n : ℕ) (hn : n ≠ 0) :
    Real.log (n : ℝ) - Real.log (UniqueFactorizationMonoid.radical n : ℝ) =
      ∑ p ∈ n.primeFactors, ((n.factorization p : ℝ) - 1) * Real.log (p : ℝ) := by
  rw [log_factorization n hn, log_radical_support, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  ring

theorem log_height_le_of_exponent_bound (n : ℕ) (hn : n ≠ 0) (K : ℝ)
    (hK : ∀ p ∈ n.primeFactors, (n.factorization p : ℝ) ≤ K) :
    Real.log (n : ℝ) ≤ K * Real.log (UniqueFactorizationMonoid.radical n : ℝ) := by
  rw [log_factorization n hn, log_radical_support, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro p hp
  apply mul_le_mul_of_nonneg_right (hK p hp)
  exact Real.log_nonneg (by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).one_lt.le)

/-- The ABC logarithmic defect, retaining every exponent and both smaller heights.
The identity uses positivity and factorization. Exploiting the additive equation
to bound its right side uniformly remains an unsupplied mathematical step. -/
theorem abc_defect_eq_retained_excess (T : CoprimeAdditiveTriple) (ε : ℝ) :
    Real.log (T.c : ℝ) -
        (1 + ε) * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) =
      (∑ p ∈ T.product.primeFactors,
        ((T.product.factorization p : ℝ) - 1) * Real.log (p : ℝ)) -
        Real.log (T.a : ℝ) - Real.log (T.b : ℝ) -
        ε * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) := by
  have ha : (T.a : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt T.a_pos)
  have hb : (T.b : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt T.b_pos)
  have hc : (T.c : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt T.c_pos)
  have hn : T.product ≠ 0 :=
    ne_of_gt (Nat.mul_pos (Nat.mul_pos T.a_pos T.b_pos) T.c_pos)
  have hprod : Real.log (T.product : ℝ) =
      Real.log (T.a : ℝ) + Real.log (T.b : ℝ) + Real.log (T.c : ℝ) := by
    simp only [CoprimeAdditiveTriple.product, Nat.cast_mul]
    rw [Real.log_mul (mul_ne_zero ha hb) hc, Real.log_mul ha hb]
  have h := log_height_excess T.product hn
  nlinarith

theorem triple_height_le_of_retained_exponent_bound (T : CoprimeAdditiveTriple) (K : ℝ)
    (hK : ∀ p ∈ T.product.primeFactors, (T.product.factorization p : ℝ) ≤ K) :
    Real.log (T.c : ℝ) ≤
      K * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) := by
  have hab : 1 ≤ T.a * T.b := Nat.mul_pos T.a_pos T.b_pos
  have hc : T.c ≤ T.product := by
    change T.c ≤ (T.a * T.b) * T.c
    simpa using Nat.mul_le_mul_right T.c hab
  have hn : T.product ≠ 0 := by
    exact ne_of_gt (Nat.mul_pos (Nat.mul_pos T.a_pos T.b_pos) T.c_pos)
  exact (Real.log_le_log (by exact_mod_cast T.c_pos) (by exact_mod_cast hc)).trans
    (log_height_le_of_exponent_bound T.product hn K hK)

/-- A literal radical-only potential observation; retained exponents remain external. -/
theorem triple_height_le_radical_channel (N : ℕ) [NeZero N]
    (level : ℕ) (χ : DirichletCharacter ℂ level) (T : CoprimeAdditiveTriple)
    (K : ℝ) (hK : ∀ p ∈ T.product.primeFactors, (T.product.factorization p : ℝ) ≤ K)
    (i : ZMod N) :
    Real.log (T.c : ℝ) ≤
      K * arithmeticPotential N level χ (fun _ => T.product) 0 1 0 i := by
  simpa [arithmeticPotential] using triple_height_le_of_retained_exponent_bound T K hK

end GRWTSK.NumberTheory.ABC.RetainedFactorization
