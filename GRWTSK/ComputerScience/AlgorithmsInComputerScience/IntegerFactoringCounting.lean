import GRWTSK.NumberTheory.CompleteIntegerFactorization
import Mathlib.Data.Nat.Factors
import Mathlib.NumberTheory.Divisors
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Returning from divisor counts to repeated prime factors

Authors: grwtsk contributors

The count uses a fixed-width, most-significant-first prefix. The input width is
external, so a leading zero does not shorten a query. The cofactor loop consumes
one supplier answer per repeated prime. The cost lemma accepts the cost of a
specific implementation as a premise. See `IntegerFactoringCounting.md`.
-/

namespace GRWTSK.IntegerFactorization.Counting

/-- For `n < 2^b`, `highBits` names the first `b - remaining` bits,
with leading zeroes understood. The prime-input case requires admitting `n`. -/
def prefixCount (n remaining highBits : ℕ) : ℕ :=
  (n.divisors.filter fun d => 2 ≤ d ∧ d / 2 ^ remaining = highBits).card

/-- Only positivity is needed by the search. -/
theorem prefixCount_pos_iff {n remaining highBits : ℕ} (hn : n ≠ 0) :
    0 < prefixCount n remaining highBits ↔
      ∃ d, d ∣ n ∧ 2 ≤ d ∧ d / 2 ^ remaining = highBits := by
  simp [prefixCount, Finset.card_pos, Finset.Nonempty, Nat.mem_divisors, hn]

/-- Each nonterminal transition performs one call on the current cofactor.
The caller supplies the fuel, e.g. the original positive input's bit length. -/
def peel (leastFactor : ℕ → ℕ) : ℕ → ℕ → List ℕ
  | 0, _ => []
  | fuel + 1, n =>
    if n < 2 then [] else
      let p := leastFactor n
      p :: peel leastFactor fuel (n / p)

/-- Under the exact least-factor supplier contract the loop returns the entire
sorted list, including repeated factors and the final prime cofactor. -/
theorem peel_eq_primeFactorsList (leastFactor : ℕ → ℕ)
    (correct : ∀ n, 2 ≤ n → leastFactor n = n.minFac)
    (fuel n : ℕ) (enough : n.primeFactorsList.length ≤ fuel) :
    peel leastFactor fuel n = n.primeFactorsList := by
  induction fuel generalizing n with
  | zero =>
    have he : n.primeFactorsList.length = 0 := by omega
    simpa [peel] using (List.length_eq_zero_iff.mp he).symm
  | succ fuel ih =>
    obtain _ | n := n
    · simp [peel]
    obtain _ | n := n
    · simp [peel]
    · have step : (n + 2).primeFactorsList =
          (n + 2).minFac :: ((n + 2) / (n + 2).minFac).primeFactorsList := by
        rw [Nat.primeFactorsList]
      rw [step, List.length_cons] at enough
      rw [peel, ite_eq_right (by omega), correct _ (by omega), step]
      exact congrArg (List.cons _) (ih _ (Nat.le_of_succ_le_succ enough))

/-- Starting with a public input, logarithmic fuel and the prime-power encoder
return the repository's canonical complete factorization. -/
theorem peel_canonical (leastFactor : ℕ → ℕ)
    (correct : ∀ n, 2 ≤ n → leastFactor n = n.minFac) {n : ℕ} (hn : 2 ≤ n) :
    compress (peel leastFactor n.log2 n) = canonical n := by
  have enough : n.primeFactorsList.length ≤ n.log2 := by
    rw [← expand_canonical hn, length_expand]
    exact (canonical_complete hn).sum_exponents_le
  rw [peel_eq_primeFactorsList leastFactor correct _ _ enough, compress_primeFactorsList]

/-- The all-lengths estimate includes the initially small inputs.
For fixed `k`, blocks of `k * (d+1)` input bits absorb a degree-`d` polynomial. -/
theorem polynomial_le_rate (k d : ℕ) (hk : 0 < k) :
    ∃ C : ℕ, ∀ b : ℕ, (b+1)^d ≤ C * 2^(b/k) := by
  let L := k * (d+1)
  have hL : 0 < L := Nat.mul_pos hk (by omega)
  refine ⟨L^d, fun b => ?_⟩
  have rem := Nat.mod_lt b hL
  have decomp := Nat.mod_add_div b L
  have input : b+1 ≤ L*(b/L+1) := by
    rw [Nat.mul_add, Nat.mul_one]
    omega
  have block : b/L+1 ≤ 2^(b/L) := Nat.succ_le_of_lt Nat.lt_two_pow_self
  have exponent : b/L*d ≤ b/k := by
    apply (Nat.le_div_iff_mul_le hk).mpr
    calc b/L*d*k ≤ b/L*(d+1)*k := Nat.mul_le_mul_right _ (Nat.mul_le_mul_left _ (by omega))
         _ = L*(b/L) := by dsimp [L]; ring
         _ ≤ b := Nat.mul_div_le b L
  calc
    (b+1)^d ≤ (L*(b/L+1))^d := Nat.pow_le_pow_left input _
    _ = L^d * (b/L+1)^d := mul_pow _ _ _
    _ ≤ L^d * (2^(b/L))^d := Nat.mul_le_mul_left _ (Nat.pow_le_pow_left block _)
    _ ≤ L^d * 2^(b/k) := by
      rw [← pow_mul]
      exact Nat.mul_le_mul_left _ (Nat.pow_le_pow_right (by decide) exponent)

/-- `time` may be nonmonotone. `assembly` charges the entire fixed caller
when all supplier invocations on inputs of length at most `b` cost at most `R`.
This numerical closure neither constructs a machine nor assigns free oracle calls. -/
theorem complete_rate_of_assembly (time cost : ℕ → ℕ) (a d : ℕ)
    (rate : ∀ k : ℕ, 0 < k → ∃ C : ℕ, ∀ b, time b ≤ C * 2^(b/k))
    (assembly : ∀ b R : ℕ, (∀ i ≤ b, time i ≤ R) →
      cost b ≤ a*(b+1)^d*(1+R)) :
    ∀ k : ℕ, 0 < k → ∃ C : ℕ, ∀ b, cost b ≤ C * 2^(b/k) := by
  intro k hk
  have hk2 : 0 < 2*k := by omega
  obtain ⟨S, hs⟩ := rate (2*k) hk2
  obtain ⟨P, hp⟩ := polynomial_le_rate (2*k) d hk2
  refine ⟨a*P*(1+S), fun b => ?_⟩
  let t := b/(2*k)
  have supplied : ∀ i ≤ b, time i ≤ S*2^t := fun i hi =>
    (hs i).trans (Nat.mul_le_mul_left S (Nat.pow_le_pow_right (by decide) (Nat.div_le_div_right hi)))
  have one : 1 ≤ 2^t := Nat.one_le_two_pow
  have calls : 1 + S*2^t ≤ (1+S)*2^t := by nlinarith
  have expBound : t+t ≤ b/k := by
    apply (Nat.le_div_iff_mul_le hk).mpr
    calc (t+t)*k = (2*k)*t := by ring
         _ ≤ b := Nat.mul_div_le b (2*k)
  calc
    cost b ≤ a*(b+1)^d*(1+S*2^t) := assembly _ _ supplied
    _ ≤ (a*(P*2^t))*((1+S)*2^t) := Nat.mul_le_mul (Nat.mul_le_mul_left _ (hp b)) calls
    _ = a*P*(1+S)*2^(t+t) := by rw [pow_add]; ring
    _ ≤ a*P*(1+S)*2^(b/k) := Nat.mul_le_mul_left _ (Nat.pow_le_pow_right (by decide) expBound)

end GRWTSK.IntegerFactorization.Counting
