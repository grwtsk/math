import GRWTSK.NumberTheory.CompleteIntegerFactorization
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
# Abundance from a complete prime-power output

Local source attribution: grwtsk contributors.
Joseph M. Shunia, *Deterministic integer factorization from abundance decisions*,
arXiv:2611.34242v1, (1.1) and the direct direction of Theorem 1.1.
The counters below count natural-number arithmetic operations on a supplied
factor list. Tape parsing, arithmetic implementation and the reverse oracle
reduction are addressed in the accompanying provenance.
-/

namespace GRWTSK.IntegerFactorization

/-- During the geometric sum, one multiplication produces the next power,
and one addition accumulates it. -/
structure GeometricTrace where
  power : ℕ
  total : ℕ
  steps : ℕ
  deriving DecidableEq, Repr

def geometricTrace (p : ℕ) : ℕ → GeometricTrace
  | 0 => ⟨1, 1, 0⟩
  | e + 1 =>
    let prev := geometricTrace p e
    let next := prev.power * p
    ⟨next, prev.total + next, prev.steps + 1⟩

theorem geometricTrace_spec (p e : ℕ) :
    (geometricTrace p e).power = p ^ e ∧
    (geometricTrace p e).total = ∑ j ∈ Finset.range (e + 1), p ^ j ∧
    (geometricTrace p e).steps = e := by
  induction e with
  | zero => simp [geometricTrace]
  | succ e ih =>
    simp only [geometricTrace, ih.1, ih.2.1, ih.2.2, Finset.sum_range_succ
      (fun j => p ^ j) (e + 1), pow_succ, and_self]

/-- Charge each product of geometric sums as one further multiplication. -/
structure DivisorSumTrace where
  total : ℕ
  multiplications : ℕ
  additions : ℕ
  deriving DecidableEq, Repr

def divisorSumTrace : List (ℕ × ℕ) → DivisorSumTrace
  | [] => ⟨1, 0, 0⟩
  | (p, e) :: xs =>
    let g := geometricTrace p e
    let rest := divisorSumTrace xs
    ⟨g.total * rest.total, g.steps + 1 + rest.multiplications,
      g.steps + rest.additions⟩

theorem divisorSumTrace_counts (xs : List (ℕ × ℕ)) :
    (divisorSumTrace xs).multiplications = (xs.map Prod.snd).sum + xs.length ∧
    (divisorSumTrace xs).additions = (xs.map Prod.snd).sum := by
  induction xs with
  | nil => simp [divisorSumTrace]
  | cons x xs ih =>
    rcases x with ⟨p, e⟩
    simp only [divisorSumTrace, (geometricTrace_spec p e).2.2, ih.1, ih.2,
      List.map_cons, List.sum_cons, List.length_cons]
    constructor
    · omega
    · trivial

theorem divisorSumTrace_eq_sigma (xs : List (ℕ × ℕ))
    (ho : xs.Pairwise (fun a b => a.1 < b.1))
    (hp : ∀ a ∈ xs, Nat.Prime a.1) :
    (divisorSumTrace xs).total =
      ArithmeticFunction.sigma 1 ((xs.map (fun a => a.1 ^ a.2)).prod) := by
  induction xs with
  | nil => simp [divisorSumTrace, ArithmeticFunction.sigma_one]
  | cons x xs ih =>
    rcases x with ⟨p, e⟩
    have hhead := (List.pairwise_cons.mp ho).1
    have hprime : Nat.Prime p := hp _ List.mem_cons_self
    have htail (a) (ha : a ∈ xs) := hp a (List.mem_cons_of_mem _ ha)
    have hc : Nat.Coprime (p ^ e) ((xs.map (fun a => a.1 ^ a.2)).prod) := by
      apply Nat.coprime_list_prod_right_iff.mpr
      intro t ht
      obtain ⟨a, ha, rfl⟩ := List.mem_map.mp ht
      exact Nat.coprime_pow_primes e a.2 hprime (htail a ha) (ne_of_lt (hhead a ha))
    simp only [divisorSumTrace, List.map_cons, List.prod_cons]
    rw [ArithmeticFunction.isMultiplicative_sigma.map_mul_of_coprime hc,
      ArithmeticFunction.sigma_one_apply_prime_pow hprime, (geometricTrace_spec p e).2.1,
      ih (List.pairwise_cons.mp ho).2 htail]

/-- Includes deficient and perfect integers in the false branch. -/
def abundantFromFactors (n : ℕ) (xs : List (ℕ × ℕ)) : Bool :=
  decide (2 * n < (divisorSumTrace xs).total)

theorem abundantFromFactors_iff {n : ℕ} {xs : List (ℕ × ℕ)}
    (ho : xs.Pairwise (fun a b => a.1 < b.1)) (hp : ∀ a ∈ xs, Nat.Prime a.1)
    (hprod : (xs.map (fun a => a.1 ^ a.2)).prod = n) :
    abundantFromFactors n xs = true ↔ 2 * n < ∑ d ∈ n.divisors, d := by
  simp [abundantFromFactors, divisorSumTrace_eq_sigma xs ho hp, hprod,
    ArithmeticFunction.sigma_one_apply]

theorem divisorSumTrace_total_le_sq {n : ℕ} {xs : List (ℕ × ℕ)}
    (ho : xs.Pairwise (fun a b => a.1 < b.1)) (hp : ∀ a ∈ xs, Nat.Prime a.1)
    (hprod : (xs.map (fun a => a.1 ^ a.2)).prod = n) :
    (divisorSumTrace xs).total ≤ n ^ 2 := by
  rw [divisorSumTrace_eq_sigma xs ho hp, hprod]
  exact ArithmeticFunction.sigma_le_pow_succ 1 n

/-- Direct abundance decision and arithmetic costs of processing the canonical output. -/
theorem CompleteFactorization.abundance_contract {n xs} (h : CompleteFactorization n xs) :
    (abundantFromFactors n xs = true ↔ 2 * n < ∑ d ∈ n.divisors, d) ∧
    (divisorSumTrace xs).total ≤ n ^ 2 ∧
    (divisorSumTrace xs).multiplications ≤ 2 * n.log2 ∧
    (divisorSumTrace xs).additions ≤ n.log2 := by
  have hp (a) (ha : a ∈ xs) := (h.valid a ha).1
  have hprod := (prod_expand xs).symm.trans h.product
  refine ⟨abundantFromFactors_iff h.ordered hp hprod,
    divisorSumTrace_total_le_sq h.ordered hp hprod, ?_, ?_⟩
  · rw [(divisorSumTrace_counts xs).1]
    have := h.sum_exponents_le
    have := h.length_le
    omega
  · rw [(divisorSumTrace_counts xs).2]
    exact h.sum_exponents_le

end GRWTSK.IntegerFactorization
