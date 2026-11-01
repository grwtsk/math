/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

/-!
# Finite prime-valuation sign density and the Mertens Euler factor

This is exact finite algebra for the local factor (p-1)/(p+1). It does
NOT assert Mertens asymptotics, a growing-prime cancellation theorem,
a source-level prime number theorem, or Riemann Hypothesis. In
particular, the Archimedean logarithm and the prime-counting limit
remain separate analytic inputs.

The coordinate `n.factorization p` is the *actual* exponent of p in n
on positive integers. The completed `PadicInt p` is not replaced by
this rational valuation or used to postulate an analytic limit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.PadicPrimeLogarithmicDensity

/-- One local completely multiplicative sign associated with p-adic
prime-factor parity. The intended numerical inventory is n >= 1. -/
def finitePrimeSign (P : Finset ℕ) (n : ℕ) : ℝ :=
  (-1 : ℝ) ^ (∑ p ∈ P, n.factorization p)

theorem finitePrimeSign_empty (n : ℕ) :
    finitePrimeSign ∅ n = 1 := by
  simp [finitePrimeSign]

/-- The true rational residue of the local sign Euler factor at s=1. -/
def signLocalFactor (p : ℕ) : ℝ :=
  ((p : ℝ) - 1) / ((p : ℝ) + 1)

/-- Euler factor used by the ordinary finite Mertens product. -/
def mertensLocalFactor (p : ℕ) : ℝ :=
  1 - ((p : ℝ))⁻¹

/-- Euler factor used by the square-free zeta(2) correction. -/
def squarefreeLocalFactor (p : ℕ) : ℝ :=
  1 - (((p : ℝ) ^ 2))⁻¹

/-- Exact local identity, with every denominator explicitly nonzero. -/
theorem signLocalFactor_mul_squarefree (p : ℕ) (hp : p.Prime) :
    signLocalFactor p * squarefreeLocalFactor p =
      mertensLocalFactor p ^ 2 := by
  have hpr : (1 : ℝ) < (p : ℝ) := by
    exact_mod_cast hp.one_lt
  have hp0 : (p : ℝ) ≠ 0 := ne_of_gt (by linarith)
  have hp1 : (p : ℝ) + 1 ≠ 0 := ne_of_gt (by linarith)
  unfold signLocalFactor squarefreeLocalFactor mertensLocalFactor
  field_simp [hp0, hp1]
  <;> ring

/-- Exact positive finite-prime sign-density product. -/
def signDensity (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, signLocalFactor p

def mertensProduct (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, mertensLocalFactor p

def squarefreeProduct (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, squarefreeLocalFactor p

theorem signLocalFactor_pos (p : ℕ) (hp : p.Prime) :
    0 < signLocalFactor p := by
  have hpr : (1 : ℝ) < (p : ℝ) := by
    exact_mod_cast hp.one_lt
  unfold signLocalFactor
  exact div_pos (by linarith) (by linarith)

/-- The prime-valuation density is strictly positive at EVERY fixed
finite stage. The limit as P grows is not proved by this lemma. -/
theorem signDensity_pos (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) : 0 < signDensity P := by
  unfold signDensity
  apply Finset.prod_pos
  intro p hp
  exact signLocalFactor_pos p (hP p hp)

/-- A finite algebraic bridge to Mertens' logarithmic prime product.
To obtain a logarithmic prime-number asymptotic one STILL needs
the actual Mertens product theorem and its convergence hypotheses. -/
theorem signDensity_mul_squarefreeProduct (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) :
    signDensity P * squarefreeProduct P = mertensProduct P ^ 2 := by
  classical
  calc
    signDensity P * squarefreeProduct P =
        ∏ p ∈ P, signLocalFactor p * squarefreeLocalFactor p := by
      simp [signDensity, squarefreeProduct, Finset.prod_mul_distrib]
    _ = ∏ p ∈ P, mertensLocalFactor p ^ 2 := by
      apply Finset.prod_congr rfl
      intro p hp
      exact signLocalFactor_mul_squarefree p (hP p hp)
    _ = mertensProduct P ^ 2 := by
      simp [mertensProduct, Finset.prod_pow]

/-- The actual finite set of primes through the declared cutoff. -/
def primesUpTo (y : ℕ) : Finset ℕ :=
  (Finset.Icc 2 y).filter Nat.Prime

theorem prime_of_mem_primesUpTo {y p : ℕ} (hp : p ∈ primesUpTo y) :
    p.Prime := (Finset.mem_filter.mp hp).2

theorem signDensity_upTo_mul_squarefree (y : ℕ) :
    signDensity (primesUpTo y) * squarefreeProduct (primesUpTo y) =
      mertensProduct (primesUpTo y) ^ 2 := by
  exact signDensity_mul_squarefreeProduct (primesUpTo y)
    (fun p hp => prime_of_mem_primesUpTo hp)

/-- Algebraic centered signed-tail observable. This is intentionally
a *lossless* finite equality, not an arithmetic smallness statement. -/
def signedTail (approx source : ℝ) : ℝ := (approx - source) / 2

theorem centered_source_identity (approx source mean : ℝ) :
    source = (approx - mean) -
      2 * (signedTail approx source - mean / 2) := by
  unfold signedTail
  ring

theorem centered_source_abs_bound (approx source mean : ℝ) :
    |source| ≤ |approx - mean| +
      2 * |signedTail approx source - mean / 2| := by
  rw [centered_source_identity approx source mean]
  calc
    |(approx - mean) - 2 * (signedTail approx source - mean / 2)|
      ≤ |approx - mean| +
          |2 * (signedTail approx source - mean / 2)| := abs_sub_le _ _
    _ = |approx - mean| +
          2 * |signedTail approx source - mean / 2| := by norm_num [abs_mul]

end GRWTSK.NumberTheory.PadicPrimeLogarithmicDensity
