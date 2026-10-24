# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a304d369abbf8930526cc25633965886fadc9b0b` · SHA-256 `f5ef18b0b625d1f1fdcfe6d6504c91b74fe4f4ddab31501c4519e5ee93bf6314`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite count-balancing source draft assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshParseval
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite integer pattern-count balancing

A bounded arithmetic-free supplier for the sharp finite-sample
Walsh energy obstruction. This file proves a lower bound for
arbitrary nonnegative integer counts indexed by any finite type.
The final quotient/remainder energy transport is a separate
obligation. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

/-- A product of two consecutive integers is nonnegative.
The integrality of n is indispensable. -/
theorem consecutive_integer_product_nonneg (n : ℤ) :
    0 ≤ n * (n - 1) := by
  by_cases hn : 0 ≤ n
  · by_cases hz : n = 0
    · simp [hz]
    · have hp : 1 ≤ n := by omega
      exact mul_nonneg hn (by omega)
  · have hneg : n ≤ -1 := by omega
    exact mul_nonneg_of_nonpos_of_nonpos (by omega) (by omega)

/-- Every integer count lies outside the open interval between two
consecutive integers a and a+1. -/
theorem count_relative_consecutive_nonneg (n a : ℕ) :
    0 ≤ ((n : ℤ) - a) * ((n : ℤ) - a - 1) :=
  consecutive_integer_product_nonneg ((n : ℤ) - a)

/-- The quadratic integer balancing inequality, valid for ANY
finite list of natural-number pattern counts and ANY base a.
It becomes sharp when all counts are a or a+1. -/
theorem finite_count_square_balancing
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (a : ℕ) :
    (2 * (a : ℤ) + 1) * (∑ i ∈ s, (counts i : ℤ)) -
        (s.card : ℤ) * ((a : ℤ) * (a + 1)) ≤
      ∑ i ∈ s, ((counts i : ℤ) ^ 2) := by
  have hsum :
      0 ≤ ∑ i ∈ s,
        (((counts i : ℤ) - a) *
          ((counts i : ℤ) - a - 1)) := by
    apply Finset.sum_nonneg
    intro i _
    exact count_relative_consecutive_nonneg (counts i) a
  have hexpand :
      (∑ i ∈ s,
        (((counts i : ℤ) - a) *
          ((counts i : ℤ) - a - 1))) =
        (∑ i ∈ s, ((counts i : ℤ) ^ 2)) -
          (2 * (a : ℤ) + 1) * (∑ i ∈ s, (counts i : ℤ)) +
            (s.card : ℤ) * ((a : ℤ) * (a + 1)) := by
    calc
      _ = ∑ i ∈ s, ((counts i : ℤ) ^ 2 -
          (2 * (a : ℤ) + 1) * (counts i : ℤ) + (a : ℤ) * (a + 1)) := by
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum]
        simp only [Finset.sum_const, nsmul_eq_mul]
  rw [hexpand] at hsum
  linarith


/-- Quotient/remainder specialization of the integer balancing
inequality: if q counts and their total is N, their square sum
is at least (q-r)*a²+r*(a+1)², where N=a*q+r. -/
theorem finite_count_square_div_mod_floor
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (N : ℕ)
    (hq : 0 < s.card)
    (htotal : (∑ i ∈ s, counts i) = N) :
    ((s.card - N % s.card : ℕ) : ℤ) *
        ((N / s.card : ℤ) ^ 2) +
      (N % s.card : ℤ) *
        (((N / s.card : ℕ) : ℤ) + 1) ^ 2 ≤
      ∑ i ∈ s, ((counts i : ℤ) ^ 2) := by
  have hbase := finite_count_square_balancing s counts (N / s.card)
  have hdiv : N % s.card + s.card * (N / s.card) = N := by
    simpa [Nat.mul_comm] using Nat.mod_add_div N s.card
  have hrem : N % s.card ≤ s.card := Nat.le_of_lt (Nat.mod_lt N hq)
  have htotalZ :
      (∑ i ∈ s, (counts i : ℤ)) = (N : ℤ) := by
    exact_mod_cast htotal
  rw [htotalZ] at hbase
  have hdivZ :
      ((N % s.card : ℕ) : ℤ) +
        (s.card : ℤ) * ((N / s.card : ℕ) : ℤ) = (N : ℤ) := by
    exact_mod_cast hdiv
  have hsubZ :
      (((s.card - N % s.card : ℕ) : ℤ)) =
        (s.card : ℤ) - (N % s.card : ℤ) := by
    exact_mod_cast (Nat.cast_sub hrem : ((s.card - N % s.card : ℕ) : ℤ) =
      (s.card : ℤ) - (N % s.card : ℤ))
  rw [← Int.natCast_div]
  simp only [Int.natCast_mod] at hdivZ
  calc
    _ = (2 * ((N / s.card : ℕ) : ℤ) + 1) * (N : ℤ) -
        (s.card : ℤ) * (((N / s.card : ℕ) : ℤ) * (((N / s.card : ℕ) : ℤ) + 1)) := by
      rw [hsubZ]
      linear_combination (2 * ((N / s.card : ℕ) : ℤ) + 1) * hdivZ
    _ ≤ _ := hbase



/-- The sharp quadratic integer-count discrepancy bound in its
Parseval-ready form, without any probabilistic or arithmetic premise.
The positive number q is the cardinality of the finite index set. -/
theorem finite_count_square_parseval_floor
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (N : ℕ)
    (hq : 0 < s.card)
    (htotal : (∑ i ∈ s, counts i) = N) :
    ((N % s.card : ℕ) : ℤ) *
      ((s.card - N % s.card : ℕ) : ℤ) ≤
      (s.card : ℤ) * (∑ i ∈ s, ((counts i : ℤ) ^ 2)) -
        (N : ℤ) ^ 2 := by
  have hfloor := finite_count_square_div_mod_floor s counts N hq htotal
  have hdiv : N % s.card + s.card * (N / s.card) = N := by
    simpa [Nat.mul_comm] using Nat.mod_add_div N s.card
  have hrem : N % s.card ≤ s.card := Nat.le_of_lt (Nat.mod_lt N hq)
  have hdivZ :
      (N % s.card : ℤ) +
        (s.card : ℤ) * (N / s.card : ℤ) = (N : ℤ) := by
    exact_mod_cast hdiv
  have hsubZ :
      ((s.card - N % s.card : ℕ) : ℤ) =
        (s.card : ℤ) - (N % s.card : ℤ) := by
    exact_mod_cast (Nat.cast_sub hrem : ((s.card - N % s.card : ℕ) : ℤ) =
      (s.card : ℤ) - (N % s.card : ℤ))
  have hqZ : (0 : ℤ) ≤ (s.card : ℤ) := by positivity
  rw [← Int.natCast_div] at hfloor hdivZ
  have hmul := mul_le_mul_of_nonneg_left hfloor hqZ
  rw [hsubZ] at hmul ⊢
  have hsquare := congrArg (fun z : ℤ => z ^ 2) hdivZ
  simp only [Int.natCast_mod]
  nlinarith only [hmul, hsquare]



/-- The Parseval-ready integer discrepancy floor, transported to
rational numbers. This isolates the ring cast from empirical
pattern counting and the analytic-free Walsh energy identity. -/
theorem finite_count_square_rational_floor
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (N : ℕ)
    (hq : 0 < s.card)
    (htotal : (∑ i ∈ s, counts i) = N) :
    ((N % s.card : ℕ) : ℚ) *
      ((s.card - N % s.card : ℕ) : ℚ) ≤
      (s.card : ℚ) * (∑ i ∈ s, ((counts i : ℚ) ^ 2)) -
        (N : ℚ) ^ 2 := by
  have hz := finite_count_square_parseval_floor s counts N hq htotal
  have hcast := (Int.cast_le (R := ℚ)).2 hz
  push_cast at hcast
  exact hcast



/-- Exact natural-number count of an entire Boolean word among a finite
root sample. This is an integer, unlike the existing rational
patternCountOn representation. -/
def fullPatternNatCount {ι : Type*} [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (a : ι → Bool) : ℕ :=
  (roots.filter (fun n => ∀ i : ι, x n i = a i)).card

/-- Every root contributes to exactly one complete Boolean word.
The finite sample is counted with multiplicity one per root. -/
theorem fullPatternNatCount_total {ι : Type*}
    [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool, fullPatternNatCount roots x a) =
      roots.card := by
  classical
  unfold fullPatternNatCount
  simp_rw [Finset.card_filter]
  rw [Finset.sum_comm]
  have hind (n : ℕ) :
      (∑ a : ι → Bool, if ∀ i : ι, x n i = a i then (1 : ℕ) else 0) = 1 := by
    calc
      _ = ∑ a : ι → Bool, if x n = a then (1 : ℕ) else 0 := by
        apply Finset.sum_congr rfl
        intro a ha
        have hpred : (∀ i : ι, x n i = a i) ↔ x n = a :=
          ⟨fun h => funext h, fun h i => congrFun h i⟩
        simp only [hpred]
      _ = 1 := by simp
  simp_rw [hind]
  simp

/-- The existing rational full-pattern counter equals the exact
natural-number cardinality cast to rationals. -/
theorem patternCountOn_eq_natCount {ι : Type*}
    [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool) (a : ι → Bool) :
    patternCountOn roots (Finset.univ : Finset ι) x a =
      (fullPatternNatCount roots x a : ℚ) := by
  classical
  unfold patternCountOn fullPatternNatCount
  rw [Finset.natCast_card_filter]
  simp only [Finset.prod_boole, Finset.mem_univ, forall_const]


/-- A full-pattern empirical frequency is exactly the corresponding
natural-number pattern count divided by the positive root count. -/
theorem empiricalPattern_eq_natCount_div {ι : Type*}
    [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (a : ι → Bool) :
    empiricalPattern roots (Finset.univ : Finset ι) x a =
      (fullPatternNatCount roots x a : ℚ) / (roots.card : ℚ) := by
  unfold empiricalPattern
  rw [patternCountOn_eq_natCount]

/-- Exact squared-frequency identity, with no statistical
approximation or arithmetic cancellation assumption. -/
theorem empiricalPattern_square_sum_eq_natCount
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool,
      (empiricalPattern roots (Finset.univ : Finset ι) x a) ^ 2) =
      (∑ a : ι → Bool,
        ((fullPatternNatCount roots x a : ℚ) ^ 2)) /
        (roots.card : ℚ) ^ 2 := by
  simp_rw [empiricalPattern_eq_natCount_div, div_pow]
  rw [Finset.sum_div]



/-- The full nonempty Walsh energy equals the empirical squared-count
defect from the uniform cube law, with exact N² normalization.
This is a deterministic identity for any nonempty finite sample. -/
theorem nonemptyCorrelationEnergy_eq_natCount_defect
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    nonemptyCorrelationEnergy roots x =
      ((Fintype.card (ι → Bool) : ℚ) *
          (∑ a : ι → Bool,
            (fullPatternNatCount roots x a : ℚ) ^ 2) -
        (roots.card : ℚ) ^ 2) / (roots.card : ℚ) ^ 2 := by
  classical
  have hq : (Fintype.card (ι → Bool) : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (Fintype.card_pos (α := ι → Bool)))
  have hN : (roots.card : ℚ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt hroots
  have htotal : (∑ a : ι → Bool,
      (fullPatternNatCount roots x a : ℚ)) = (roots.card : ℚ) := by
    exact_mod_cast fullPatternNatCount_total roots x
  have hchi := chiSquareAgainstUniform_eq_energy roots x hroots
  rw [← hchi]
  unfold chiSquareAgainstUniform scaledPatternDeviation
  simp_rw [empiricalPattern_eq_natCount_div]
  have hexpand (a : ι → Bool) :
      ((Fintype.card (ι → Bool) : ℚ) *
          ((fullPatternNatCount roots x a : ℚ) / (roots.card : ℚ)) - 1) ^ 2 =
      ((Fintype.card (ι → Bool) : ℚ) ^ 2 / (roots.card : ℚ) ^ 2) *
          (fullPatternNatCount roots x a : ℚ) ^ 2 -
        (2 * (Fintype.card (ι → Bool) : ℚ) / (roots.card : ℚ)) *
          (fullPatternNatCount roots x a : ℚ) + 1 := by ring
  simp_rw [hexpand]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  rw [← Finset.mul_sum, ← Finset.mul_sum, htotal]
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  field_simp [hN, hq]
  ring


/-- The SHARP finite-sample energy floor. The remainder r is the
exact Euclidean remainder of the number of sampled roots modulo
the complete Boolean cube cardinality q=2^|ι|. -/
theorem nonemptyCorrelationEnergy_sharp_sample_floor
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    (((roots.card % Fintype.card (ι → Bool) : ℕ) : ℚ) *
      ((Fintype.card (ι → Bool) -
        roots.card % Fintype.card (ι → Bool) : ℕ) : ℚ)) /
        (roots.card : ℚ) ^ 2 ≤
      nonemptyCorrelationEnergy roots x := by
  classical
  let s : Finset (ι → Bool) := Finset.univ
  have hq : 0 < s.card := by
    simp [s]
  have htotal :
      (∑ a ∈ s, fullPatternNatCount roots x a) = roots.card := by
    simpa [s] using fullPatternNatCount_total roots x
  have hfloor :=
    finite_count_square_rational_floor s
      (fullPatternNatCount roots x) roots.card hq htotal
  have henergy :=
    nonemptyCorrelationEnergy_eq_natCount_defect roots x hroots
  have hN : (0 : ℚ) < (roots.card : ℚ) := by
    exact_mod_cast hroots
  have hN2 : (0 : ℚ) < (roots.card : ℚ) ^ 2 := sq_pos_of_pos hN
  dsimp [s] at hfloor
  rw [henergy]
  apply (div_le_div_iff_of_pos_right hN2).2
  simpa only [Finset.card_univ] using hfloor


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
