import GRWTSK.NumberTheory.IntegerFactorizationAbundance
import Mathlib.Data.Nat.Sqrt
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Complete semiprime factorization from one supplied divisor sum

Authors: grwtsk contributors

For distinct primes, the excess over `n + 1` gives their sum. For a prime
square it gives the prime. The decoder takes only the input and its divisor sum.
-/
namespace GRWTSK.IntegerFactorization.SemiprimeDivisorSum

open ArithmeticFunction

/-- Decode two sorted prime factors, retaining repetitions. -/
def decode (n total : ℕ) : ℕ × ℕ :=
  let s := total - (n + 1)
  if s^2 = n then (s,s) else
    let d := (s^2 - 4*n).sqrt
    ((s-d)/2,(s+d)/2)

/-- Present the two factors in the canonical prime-power representation. -/
def rows (n total : ℕ) : List (ℕ × ℕ) :=
  let (p,q) := decode n total
  if p = q then [(p,2)] else [(p,1),(q,1)]

private theorem sigma_prime {p : ℕ} (hp : p.Prime) : sigma 1 p = 1+p := by
  simpa [Finset.sum_range_succ] using sigma_one_apply_prime_pow (i := 1) hp

theorem decode_correct {p q : ℕ} (hp : p.Prime) (hq : q.Prime) (ho : p ≤ q) :
    decode (p*q) (sigma 1 (p*q)) = (p,q) := by
  rcases ho.eq_or_lt with rfl | hlt
  · have hσ : sigma 1 (p*p) = p*p+1+p := by
      rw [← sq, sigma_one_apply_prime_pow hp]
      simp [Finset.sum_range_succ]
      ring
    simp [decode, hσ, sq]
  · have hc := (Nat.coprime_primes hp hq).2 hlt.ne
    have hσ : sigma 1 (p*q) = (p*q+1)+(p+q) := by
      rw [isMultiplicative_sigma.map_mul_of_coprime hc, sigma_prime hp, sigma_prime hq]
      ring
    let d := q-p
    have hd : q = p+d := by dsimp [d]; omega
    have hbig : p*q < (p+q)^2 := by nlinarith [hp.two_le, hq.two_le, sq_nonneg (p:ℤ)]
    have hdisc : (p+q)^2 - 4*(p*q) = d^2 := by
      have : (p+q)^2 = d^2+4*(p*q) := by rw [hd]; ring
      omega
    simp only [decode, hσ, Nat.add_sub_cancel_left, ite_eq_right hbig.ne', hdisc, Nat.sqrt_eq']
    congr 1 <;> omega

theorem rows_correct {p q : ℕ} (hp : p.Prime) (hq : q.Prime) (ho : p ≤ q) :
    rows (p*q) (sigma 1 (p*q)) = canonical (p*q) := by
  have hn : 2 ≤ p*q := by nlinarith [hp.two_le, hq.two_le]
  apply (complete_iff_eq_canonical hn).mp
  simp only [rows, decode_correct hp hq ho]
  split
  next he =>
    subst q
    exact ⟨hn, by simp, by simp [hp], by simp [expand]⟩
  next he =>
    exact ⟨hn, by simpa using ho.lt_of_ne he, by simp [hp,hq], by simp [expand]⟩

example : rows 4 7 = [(2,2)] := by decide
#guard rows 15 24 == [(3,1),(5,1)]
example : rows 49 57 = [(7,2)] := by decide

end GRWTSK.IntegerFactorization.SemiprimeDivisorSum
