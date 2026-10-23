/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Tactic

/-!
# Complete four-channel centered low-gcd diagonal kernel bound

The AA/AG/GA/GG channels remain inside one pointwise kernel.  The genuine pair
is majorized by all divisor pairs, while the exact Mobius-log atoms are
identified with von Mangoldt.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction
/-- The exact divisor-pair form of the genuine diagonal kernel. -/
theorem genuineLowGCDPairKernel_diagonal_eq_divisorPairSum
    {X Y n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    genuineLowGCDPairKernel X Y n n =
      ∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0 := by
  unfold genuineLowGCDPairKernel
  have hfilter :
      (modulusIndexSet X).filter (fun d => d ∣ n) =
        n.divisors := by
    ext d
    simp only [modulusIndexSet, Finset.mem_filter,
      Finset.mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd0, hdB⟩, hdn⟩
      exact ⟨hdn, Nat.ne_of_gt (octave_mem_bounds hn).1⟩
    · rintro ⟨hdn, hn0⟩
      have hdpos : 0 < d :=
        Nat.pos_of_dvd_of_pos hdn (octave_mem_bounds hn).1
      have hdle : d ≤ n :=
        Nat.le_of_dvd (octave_mem_bounds hn).1 hdn
      exact ⟨⟨hdpos, hdle.trans (octave_mem_bounds hn).2⟩, hdn⟩
  calc
    (∑ d ∈ modulusIndexSet X,
      ∑ e ∈ modulusIndexSet X,
        if d ∣ n ∧ e ∣ n ∧ Nat.gcd d e ≤ Y then
          mobiusLogTerm n d * mobiusLogTerm n e
        else 0) =
      ∑ d ∈ (modulusIndexSet X).filter (fun d => d ∣ n),
        ∑ e ∈ (modulusIndexSet X).filter (fun e => e ∣ n),
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0 := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hdn : d ∣ n
      · simp only [hdn, if_true]
        rw [Finset.sum_filter]
        apply Finset.sum_congr rfl
        intro e he
        by_cases hen : e ∣ n <;> simp [hen]
      · simp [hdn]
    _ = _ := by rw [hfilter]

/-- One genuine Möbius-log divisor term is bounded by the octave logarithm. -/
theorem abs_mobiusLogTerm_le_log_four_mul_scale
    {X n d : ℕ}
    (hn : n ∈ octaveIndexSet X)
    (hd : d ∈ n.divisors) :
    |mobiusLogTerm n d| ≤
      Real.log ((4 * X : ℕ) : ℝ) := by
  have hdn : d ∣ n := (Nat.mem_divisors.mp hd).1
  have hnpos : 0 < n := (octave_mem_bounds hn).1
  have hdpos : 0 < d := Nat.pos_of_dvd_of_pos hdn hnpos
  have hdle : d ≤ n := Nat.le_of_dvd hnpos hdn
  have hquotpos : 0 < n / d := Nat.div_pos hdle hdpos
  have hquotle : n / d ≤ 4 * X :=
    (Nat.div_le_self n d).trans (octave_mem_bounds hn).2
  have hlognonneg : 0 ≤ Real.log ((n / d : ℕ) : ℝ) := by
    exact Real.log_nonneg (by exact_mod_cast hquotpos)
  have hlogle :
      Real.log ((n / d : ℕ) : ℝ) ≤
        Real.log ((4 * X : ℕ) : ℝ) := by
    exact Real.log_le_log
      (by exact_mod_cast hquotpos)
      (by exact_mod_cast hquotle)
  have hmu : |mobiusReal d| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
  unfold mobiusLogTerm
  rw [abs_mul, abs_of_nonneg hlognonneg]
  calc
    |mobiusReal d| * Real.log ((n / d : ℕ) : ℝ) ≤
        1 * Real.log ((n / d : ℕ) : ℝ) := by
      exact mul_le_mul_of_nonneg_right hmu hlognonneg
    _ ≤ Real.log ((4 * X : ℕ) : ℝ) := by simpa using hlogle

/-- The genuine/genuine diagonal contribution has a divisor-square majorant. -/
theorem abs_genuineLowGCDPairKernel_diagonal_le
    {X Y n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    |genuineLowGCDPairKernel X Y n n| ≤
      ((n.divisors.card : ℝ) ^ 2) *
        (Real.log ((4 * X : ℕ) : ℝ) ^ 2) := by
  rw [genuineLowGCDPairKernel_diagonal_eq_divisorPairSum hn]
  calc
    |∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0| ≤
      ∑ d ∈ n.divisors,
        |∑ e ∈ n.divisors,
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          |if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0| := by
      exact Finset.sum_le_sum fun d hd =>
        Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          Real.log ((4 * X : ℕ) : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro e he
      by_cases hde : Nat.gcd d e ≤ Y
      · simp only [hde, if_true, abs_mul]
        have hdB := abs_mobiusLogTerm_le_log_four_mul_scale hn hd
        have heB := abs_mobiusLogTerm_le_log_four_mul_scale hn he
        have hlognonneg :
            0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
          exact Real.log_nonneg (by
            exact_mod_cast (show 1 ≤ 4 * X by
              have := (octave_mem_bounds hn).1
              omega))
        nlinarith
      · simp [hde, sq_nonneg]
    _ = ((n.divisors.card : ℝ) ^ 2) *
        (Real.log ((4 * X : ℕ) : ℝ) ^ 2) := by
      simp [pow_two]
      ring

/-- The complete centered diagonal kernel, with all four channels kept jointly,
has an explicit pointwise divisor majorant. -/
theorem abs_centeredLowGCDPairKernel_diagonal_le
    {X Y n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    |centeredLowGCDPairKernel X Y n n| ≤
      ((n.divisors.card : ℝ) ^ 2) *
          (Real.log ((4 * X : ℕ) : ℝ) ^ 2) +
        2 * Real.log ((4 * X : ℕ) : ℝ) + 1 := by
  have hgg := abs_genuineLowGCDPairKernel_diagonal_le
    (Y := Y) hn
  have hatom :
      |genuineMobiusLogAtom X n| ≤
        Real.log ((4 * X : ℕ) : ℝ) := by
    rw [genuineMobiusLogAtom_eq_vonMangoldt hn,
      abs_of_nonneg (ArithmeticFunction.vonMangoldt_nonneg (n := n))]
    exact (ArithmeticFunction.vonMangoldt_le_log (n := n)).trans <|
      Real.log_le_log
        (by exact_mod_cast (octave_mem_bounds hn).1)
        (by exact_mod_cast (octave_mem_bounds hn).2)
  unfold centeredLowGCDPairKernel
  calc
    |genuineLowGCDPairKernel X Y n n -
        genuineMobiusLogAtom X n -
        genuineMobiusLogAtom X n + 1| ≤
      |genuineLowGCDPairKernel X Y n n| +
        |genuineMobiusLogAtom X n| +
        |genuineMobiusLogAtom X n| + 1 := by
      calc
        |_ + 1| ≤
            |genuineLowGCDPairKernel X Y n n -
              genuineMobiusLogAtom X n -
              genuineMobiusLogAtom X n| + 1 := by
          simpa using abs_add
            (genuineLowGCDPairKernel X Y n n -
              genuineMobiusLogAtom X n -
              genuineMobiusLogAtom X n) 1
        _ ≤
            (|genuineLowGCDPairKernel X Y n n -
              genuineMobiusLogAtom X n| +
              |genuineMobiusLogAtom X n|) + 1 := by
          gcongr
          exact abs_sub _ _
        _ ≤
            (|genuineLowGCDPairKernel X Y n n| +
              |genuineMobiusLogAtom X n| +
              |genuineMobiusLogAtom X n|) + 1 := by
          gcongr
          exact abs_sub _ _
    _ ≤ ((n.divisors.card : ℝ) ^ 2) *
          (Real.log ((4 * X : ℕ) : ℝ) ^ 2) +
        2 * Real.log ((4 * X : ℕ) : ℝ) + 1 := by
      linarith


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
