# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeVaughanTypeI.Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3588618c4e8d160963f798921b98c546ae7e8142` · SHA-256 `d244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTwistedVaughan
import Mathlib.Tactic

/-!
# Elementary conductor-three Type I estimates

This module records the cancellation that is available before any packet or
Wang--Zahl input.  The primitive character modulo three has partial sums in
`{0, 1}`.  Finite Abel summation consequently bounds its logarithmically
weighted partial sums by an explicit logarithmic quantity.

These are unconditional finite estimates.  No Type II estimate, GRH premise,
or packet calibration is used or stored here.
-/

public section

namespace Surface.Core.ConductorThreeVaughanTypeI

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan

/-- The exclusive prefix `sum_{j < n} chi_3(j)`, viewed in `R`. -/
@[expose]
def conductorThreeCharacterPartialSum (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n, (conductorThreeIntegerValue j : ℝ)

/-- Exact period-three evaluation of the character prefix. -/
@[surface_novel, surface_published]
theorem conductorThreeCharacterPartialSum_eq (n : ℕ) :
    conductorThreeCharacterPartialSum n =
      if n % 3 = 2 then 1 else 0 := by
  induction n with
  | zero => simp [conductorThreeCharacterPartialSum]
  | succ n ih =>
      rw [show conductorThreeCharacterPartialSum (n + 1) =
          conductorThreeCharacterPartialSum n +
            (conductorThreeIntegerValue n : ℝ) by
        unfold conductorThreeCharacterPartialSum
        rw [Finset.sum_range_succ], ih]
      have hlt : n % 3 < 3 := Nat.mod_lt n (by omega)
      interval_cases h : n % 3
      · have hnext : (n + 1) % 3 = 1 := by omega
        simp [h, hnext]
      · have hnext : (n + 1) % 3 = 2 := by omega
        simp [h, hnext]
      · have hnext : (n + 1) % 3 = 0 := by omega
        simp [h, hnext]

/-- Every real conductor-three character prefix is nonnegative. -/
@[surface_novel, surface_published]
theorem conductorThreeCharacterPartialSum_nonneg (n : ℕ) :
    0 ≤ conductorThreeCharacterPartialSum n := by
  rw [conductorThreeCharacterPartialSum_eq]
  split_ifs <;> norm_num

/-- The exact periodic cancellation bound `|sum_{j<n} chi_3(j)| <= 1`. -/
@[surface_novel, surface_published]
theorem abs_conductorThreeCharacterPartialSum_le_one (n : ℕ) :
    |conductorThreeCharacterPartialSum n| ≤ 1 := by
  rw [conductorThreeCharacterPartialSum_eq]
  split_ifs <;> norm_num

private lemma log_increment_nonneg (n : ℕ) :
    0 ≤ Real.log (n + 1 : ℕ) - Real.log n := by
  cases n with
  | zero => simp
  | succ n =>
      rw [sub_nonneg]
      apply Real.log_le_log
      · positivity
      · norm_num

private lemma sum_log_increment (N : ℕ) :
    (∑ n ∈ Finset.range N,
      (Real.log (n + 1 : ℕ) - Real.log n)) = Real.log N := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring_nf

/-- The logarithmically weighted finite character sum. -/
@[expose]
def conductorThreeLogWeightedSum (y : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (y + 1),
    (conductorThreeIntegerValue n : ℝ) * Real.log (n : ℝ)

/-- Exact Abel representation of the logarithmically weighted character sum. -/
@[surface_novel, surface_published]
theorem conductorThreeLogWeightedSum_eq_abel (y : ℕ) :
    conductorThreeLogWeightedSum y =
      Real.log (y : ℝ) * conductorThreeCharacterPartialSum (y + 1) -
        ∑ n ∈ Finset.range y,
          (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
            conductorThreeCharacterPartialSum (n + 1) := by
  simpa only [conductorThreeLogWeightedSum,
    conductorThreeCharacterPartialSum, Nat.add_sub_cancel, one_smul,
    smul_eq_mul, mul_comm] using
    (Finset.sum_range_by_parts
      (fun n : ℕ ↦ Real.log n)
      (fun n : ℕ ↦ (conductorThreeIntegerValue n : ℝ))
      (y + 1))

/-- Elementary logarithmic cancellation.  The factor `2` is the direct
triangle-inequality constant from Abel summation. -/
@[surface_novel, surface_published]
theorem abs_conductorThreeLogWeightedSum_le (y : ℕ) :
    |conductorThreeLogWeightedSum y| ≤
      2 * Real.log ((max 1 y : ℕ) : ℝ) := by
  cases y with
  | zero => simp [conductorThreeLogWeightedSum]
  | succ y =>
      have hypos : 0 < y + 1 := by omega
      have hlog0 : 0 ≤ Real.log (y + 1 : ℕ) :=
        Real.log_nonneg (by exact_mod_cast (show 1 ≤ y + 1 by omega))
      rw [conductorThreeLogWeightedSum_eq_abel]
      calc
        |Real.log ((y + 1 : ℕ) : ℝ) *
              conductorThreeCharacterPartialSum (y + 1 + 1) -
            ∑ n ∈ Finset.range (y + 1),
              (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                conductorThreeCharacterPartialSum (n + 1)| ≤
            |Real.log ((y + 1 : ℕ) : ℝ) *
              conductorThreeCharacterPartialSum (y + 1 + 1)| +
              |∑ n ∈ Finset.range (y + 1),
                (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                  conductorThreeCharacterPartialSum (n + 1)| := abs_sub _ _
        _ ≤ Real.log ((y + 1 : ℕ) : ℝ) +
              Real.log ((y + 1 : ℕ) : ℝ) := by
          gcongr
          · rw [abs_mul, abs_of_nonneg hlog0]
            exact mul_le_of_le_one_right hlog0
              (abs_conductorThreeCharacterPartialSum_le_one (y + 1 + 1))
          · calc
              |∑ n ∈ Finset.range (y + 1),
                  (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                    conductorThreeCharacterPartialSum (n + 1)| ≤
                  ∑ n ∈ Finset.range (y + 1),
                    |(Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) *
                      conductorThreeCharacterPartialSum (n + 1)| :=
                Finset.abs_sum_le_sum_abs _ _
              _ ≤ ∑ n ∈ Finset.range (y + 1),
                    (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) := by
                apply Finset.sum_le_sum
                intro n hn
                have hinc := log_increment_nonneg n
                rw [abs_mul, abs_of_nonneg hinc]
                exact mul_le_of_le_one_right hinc
                  (abs_conductorThreeCharacterPartialSum_le_one (n + 1))
              _ = Real.log ((y + 1 : ℕ) : ℝ) :=
                sum_log_increment (y + 1)
        _ = 2 * Real.log ((max 1 (y + 1) : ℕ) : ℝ) := by
          rw [max_eq_right (show 1 ≤ y + 1 by omega)]
          ring

/-! ## Expanded elementary Vaughan components

The definitions below are the finite sums obtained after factoring `chi_3`
through the Type I variables and carrying out the innermost character sum.
They deliberately remain separate from the convolution-form prefixes in
`ConductorThreeTwistedVaughan`: identifying the two presentations is a
finite convolution-reindexing theorem, not an estimate.
-/

private lemma abs_conductorThreeIntegerValue_cast_le_one (n : ℕ) :
    |(conductorThreeIntegerValue n : ℝ)| ≤ 1 := by
  rcases conductorThreeIntegerValue_cases n with h | h | h
  · rw [h.2]
    norm_num
  · rw [h.2]
    norm_num
  · rw [h.2]
    norm_num

private lemma abs_moebius_cast_le_one (n : ℕ) :
    |(ArithmeticFunction.moebius n : ℝ)| ≤ 1 := by
  exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := n)

private lemma log_max_one_nonneg (n : ℕ) :
    0 ≤ Real.log ((max 1 n : ℕ) : ℝ) :=
  Real.log_nonneg (by exact_mod_cast (le_max_left 1 n))

private lemma log_max_one_mono {m n : ℕ} (hmn : m ≤ n) :
    Real.log ((max 1 m : ℕ) : ℝ) ≤
      Real.log ((max 1 n : ℕ) : ℝ) := by
  apply Real.log_le_log
  · exact_mod_cast (show 0 < max 1 m by omega)
  · exact_mod_cast (max_le_max_left 1 hmn)

private lemma abs_vonMangoldt_le_log_max
    {U m : ℕ} (hm : m ≤ U) :
    |ArithmeticFunction.vonMangoldt m| ≤
      Real.log ((max 1 U : ℕ) : ℝ) := by
  rw [abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
  calc
    ArithmeticFunction.vonMangoldt m ≤ Real.log (m : ℝ) :=
      ArithmeticFunction.vonMangoldt_le_log
    _ ≤ Real.log ((max 1 U : ℕ) : ℝ) := by
      by_cases hm0 : m = 0
      · subst m
        simpa using log_max_one_nonneg U
      · apply Real.log_le_log
        · exact_mod_cast (Nat.pos_of_ne_zero hm0)
        · exact_mod_cast hm.trans (le_max_right 1 U)

private lemma abs_character_mul_vonMangoldt_le_log_max
    {U m : ℕ} (hm : m ≤ U) :
    |(conductorThreeIntegerValue m : ℝ) *
        ArithmeticFunction.vonMangoldt m| ≤
      Real.log ((max 1 U : ℕ) : ℝ) := by
  rw [abs_mul]
  have hchi := abs_conductorThreeIntegerValue_cast_le_one m
  have hLambda := abs_vonMangoldt_le_log_max hm
  have hLambda0 : 0 ≤ |ArithmeticFunction.vonMangoldt m| := abs_nonneg _
  calc
    |(conductorThreeIntegerValue m : ℝ)| *
        |ArithmeticFunction.vonMangoldt m| ≤
        1 * |ArithmeticFunction.vonMangoldt m| :=
      mul_le_mul_of_nonneg_right hchi hLambda0
    _ ≤ Real.log ((max 1 U : ℕ) : ℝ) := by simpa using hLambda

private lemma abs_character_mul_moebius_le_one (d : ℕ) :
    |(conductorThreeIntegerValue d : ℝ) *
        (ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
  rw [abs_mul]
  have hchi := abs_conductorThreeIntegerValue_cast_le_one d
  have hmu := abs_moebius_cast_le_one d
  have hchi0 : 0 ≤ |(conductorThreeIntegerValue d : ℝ)| := abs_nonneg _
  calc
    |(conductorThreeIntegerValue d : ℝ)| *
        |(ArithmeticFunction.moebius d : ℝ)| ≤
        |(conductorThreeIntegerValue d : ℝ)| * 1 :=
      mul_le_mul_of_nonneg_left hmu hchi0
    _ ≤ 1 := by simpa using hchi

/-- Expanded small-Mangoldt component. -/
@[expose]
def conductorThreeTypeZeroExpanded (U x : ℕ) : ℝ :=
  ∑ m ∈ Finset.range (min U x + 1),
    (conductorThreeIntegerValue m : ℝ) *
      ArithmeticFunction.vonMangoldt m

/-- Expanded first Type I component after the innermost `r`-sum has been
collapsed to the exact periodic character prefix. -/
@[expose]
def conductorThreeTypeI1Expanded (U V x : ℕ) : ℝ :=
  -∑ m ∈ Finset.range (U + 1),
    ∑ d ∈ Finset.range (V + 1),
      ((conductorThreeIntegerValue m : ℝ) *
          ArithmeticFunction.vonMangoldt m) *
        ((conductorThreeIntegerValue d : ℝ) *
          (ArithmeticFunction.moebius d : ℝ)) *
        conductorThreeCharacterPartialSum (x / (m * d) + 1)

/-- Expanded second Type I component after the innermost logarithmically
weighted character sum has been collapsed. -/
@[expose]
def conductorThreeTypeI2Expanded (V x : ℕ) : ℝ :=
  ∑ d ∈ Finset.range (V + 1),
    ((conductorThreeIntegerValue d : ℝ) *
      (ArithmeticFunction.moebius d : ℝ)) *
      conductorThreeLogWeightedSum (x / d)

@[surface_novel, surface_published]
theorem abs_conductorThreeTypeZeroExpanded_le (U x : ℕ) :
    |conductorThreeTypeZeroExpanded U x| ≤
      (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) := by
  calc
    |conductorThreeTypeZeroExpanded U x| ≤
        ∑ m ∈ Finset.range (min U x + 1),
          |(conductorThreeIntegerValue m : ℝ) *
            ArithmeticFunction.vonMangoldt m| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _m ∈ Finset.range (min U x + 1),
          Real.log ((max 1 U : ℕ) : ℝ) := by
      apply Finset.sum_le_sum
      intro m hm
      exact abs_character_mul_vonMangoldt_le_log_max
        (by have := Finset.mem_range.1 hm; omega : m ≤ U)
    _ ≤ (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) := by
      rw [Finset.sum_const, Finset.card_range]
      simp only [nsmul_eq_mul]
      apply mul_le_mul_of_nonneg_right _ (log_max_one_nonneg U)
      exact_mod_cast (Nat.add_le_add_right (min_le_left U x) 1)

@[surface_novel, surface_published]
theorem abs_conductorThreeTypeI1Expanded_le (U V x : ℕ) :
    |conductorThreeTypeI1Expanded U V x| ≤
      (U + 1 : ℕ) * (V + 1 : ℕ) *
        Real.log ((max 1 U : ℕ) : ℝ) := by
  rw [conductorThreeTypeI1Expanded, abs_neg]
  calc
    |∑ m ∈ Finset.range (U + 1),
        ∑ d ∈ Finset.range (V + 1),
          ((conductorThreeIntegerValue m : ℝ) *
              ArithmeticFunction.vonMangoldt m) *
            ((conductorThreeIntegerValue d : ℝ) *
              (ArithmeticFunction.moebius d : ℝ)) *
            conductorThreeCharacterPartialSum (x / (m * d) + 1)| ≤
        ∑ m ∈ Finset.range (U + 1),
          |∑ d ∈ Finset.range (V + 1),
            ((conductorThreeIntegerValue m : ℝ) *
                ArithmeticFunction.vonMangoldt m) *
              ((conductorThreeIntegerValue d : ℝ) *
                (ArithmeticFunction.moebius d : ℝ)) *
              conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _m ∈ Finset.range (U + 1),
          ∑ _d ∈ Finset.range (V + 1),
            Real.log ((max 1 U : ℕ) : ℝ) := by
      apply Finset.sum_le_sum
      intro m hm
      calc
        |∑ d ∈ Finset.range (V + 1),
            ((conductorThreeIntegerValue m : ℝ) *
                ArithmeticFunction.vonMangoldt m) *
              ((conductorThreeIntegerValue d : ℝ) *
                (ArithmeticFunction.moebius d : ℝ)) *
              conductorThreeCharacterPartialSum (x / (m * d) + 1)| ≤
            ∑ d ∈ Finset.range (V + 1),
              |((conductorThreeIntegerValue m : ℝ) *
                  ArithmeticFunction.vonMangoldt m) *
                ((conductorThreeIntegerValue d : ℝ) *
                  (ArithmeticFunction.moebius d : ℝ)) *
                conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ _d ∈ Finset.range (V + 1),
              Real.log ((max 1 U : ℕ) : ℝ) := by
          apply Finset.sum_le_sum
          intro d hd
          rw [abs_mul, abs_mul]
          have hmBound := abs_character_mul_vonMangoldt_le_log_max
            (by have := Finset.mem_range.1 hm; omega : m ≤ U)
          have hdBound := abs_character_mul_moebius_le_one d
          have hpBound := abs_conductorThreeCharacterPartialSum_le_one
            (x / (m * d) + 1)
          have hlog0 := log_max_one_nonneg U
          have hd0 : 0 ≤
              |(conductorThreeIntegerValue d : ℝ) *
                (ArithmeticFunction.moebius d : ℝ)| := abs_nonneg _
          have hp0 : 0 ≤
              |conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
            abs_nonneg _
          calc
            |(conductorThreeIntegerValue m : ℝ) *
                ArithmeticFunction.vonMangoldt m| *
                |(conductorThreeIntegerValue d : ℝ) *
                  (ArithmeticFunction.moebius d : ℝ)| *
                |conductorThreeCharacterPartialSum (x / (m * d) + 1)| ≤
              Real.log ((max 1 U : ℕ) : ℝ) *
                |(conductorThreeIntegerValue d : ℝ) *
                  (ArithmeticFunction.moebius d : ℝ)| *
                |conductorThreeCharacterPartialSum (x / (m * d) + 1)| :=
              mul_le_mul_of_nonneg_right
                (mul_le_mul_of_nonneg_right hmBound hd0) hp0
            _ ≤ Real.log ((max 1 U : ℕ) : ℝ) *
                |conductorThreeCharacterPartialSum (x / (m * d) + 1)| := by
              have hmid : Real.log ((max 1 U : ℕ) : ℝ) *
                    |(conductorThreeIntegerValue d : ℝ) *
                      (ArithmeticFunction.moebius d : ℝ)| ≤
                  Real.log ((max 1 U : ℕ) : ℝ) := by
                simpa using mul_le_mul_of_nonneg_left hdBound hlog0
              exact mul_le_mul_of_nonneg_right hmid hp0
            _ ≤ Real.log ((max 1 U : ℕ) : ℝ) := by
              simpa using mul_le_of_le_one_right hlog0 hpBound
    _ = (U + 1 : ℕ) * (V + 1 : ℕ) *
          Real.log ((max 1 U : ℕ) : ℝ) := by
      simp [mul_assoc]

@[surface_novel, surface_published]
theorem abs_conductorThreeTypeI2Expanded_le (V x : ℕ) :
    |conductorThreeTypeI2Expanded V x| ≤
      2 * (V + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
  calc
    |conductorThreeTypeI2Expanded V x| ≤
        ∑ d ∈ Finset.range (V + 1),
          |((conductorThreeIntegerValue d : ℝ) *
              (ArithmeticFunction.moebius d : ℝ)) *
            conductorThreeLogWeightedSum (x / d)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Finset.range (V + 1),
          2 * Real.log ((max 1 x : ℕ) : ℝ) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      have hfactor := abs_character_mul_moebius_le_one d
      have hweighted := abs_conductorThreeLogWeightedSum_le (x / d)
      have hmono : Real.log ((max 1 (x / d) : ℕ) : ℝ) ≤
          Real.log ((max 1 x : ℕ) : ℝ) :=
        log_max_one_mono (Nat.div_le_self x d)
      have hlog0 := log_max_one_nonneg x
      have hleft0 : 0 ≤
          |(conductorThreeIntegerValue d : ℝ) *
            (ArithmeticFunction.moebius d : ℝ)| := abs_nonneg _
      have hright0 : 0 ≤ |conductorThreeLogWeightedSum (x / d)| := abs_nonneg _
      nlinarith [log_max_one_nonneg (x / d)]
    _ = 2 * (V + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
      simp
      ring

/-- Combined explicit elementary bound for the three non-Type-II expanded
components. -/
@[surface_novel, surface_published]
theorem abs_conductorThreeExpandedTypeI_total_le (U V x : ℕ) :
    |conductorThreeTypeZeroExpanded U x +
        conductorThreeTypeI1Expanded U V x +
        conductorThreeTypeI2Expanded V x| ≤
      (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) +
      (U + 1 : ℕ) * (V + 1 : ℕ) *
        Real.log ((max 1 U : ℕ) : ℝ) +
      2 * (V + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
  calc
    |conductorThreeTypeZeroExpanded U x +
        conductorThreeTypeI1Expanded U V x +
        conductorThreeTypeI2Expanded V x| ≤
      |conductorThreeTypeZeroExpanded U x| +
        |conductorThreeTypeI1Expanded U V x| +
        |conductorThreeTypeI2Expanded V x| := by
      exact (abs_add_le _ _).trans
        (add_le_add (abs_add_le _ _) (le_refl _))
    _ ≤
      (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) +
      (U + 1 : ℕ) * (V + 1 : ℕ) *
        Real.log ((max 1 U : ℕ) : ℝ) +
      2 * (V + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
      gcongr
      · exact abs_conductorThreeTypeZeroExpanded_le U x
      · exact abs_conductorThreeTypeI1Expanded_le U V x
      · exact abs_conductorThreeTypeI2Expanded_le V x

/-- The preceding estimate at the fixed fourth-root Vaughan cutoff used by
the conductor-three atomization.  This is the checked elementary Type I
surface; converting its right-hand side to an `N^(1/2+epsilon)` asymptotic
bound is a separate real-power comparison, while identifying the expanded
sums with the convolution prefixes is the separate finite reindexing
adapter described above. -/
@[surface_novel, surface_published]
theorem abs_conductorThreeExpandedTypeI_at_vaughanCutoff_le
    (N x : ℕ) :
    let U := vaughanFourthRootCutoff N
    |conductorThreeTypeZeroExpanded U x +
        conductorThreeTypeI1Expanded U U x +
        conductorThreeTypeI2Expanded U x| ≤
      (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) +
      (U + 1 : ℕ) ^ 2 * Real.log ((max 1 U : ℕ) : ℝ) +
      2 * (U + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
  dsimp only
  simpa [pow_two] using
    abs_conductorThreeExpandedTypeI_total_le
      (vaughanFourthRootCutoff N) (vaughanFourthRootCutoff N) x

/-! ## Fourth-root comparison and the exact adapter boundary -/

private lemma vaughanFourthRootCutoff_sq_le_four_sqrt
    (N : ℕ) (hN : 2 ≤ N) :
    vaughanFourthRootCutoff N ^ 2 ≤ 4 * Nat.sqrt (2 * N) := by
  let a := Nat.sqrt (Nat.sqrt (2 * N))
  have hsqrtPos : 1 ≤ Nat.sqrt (2 * N) := by
    have : 0 < Nat.sqrt (2 * N) := Nat.sqrt_pos.2 (by omega)
    omega
  by_cases ha : 2 ≤ a
  · rw [vaughanFourthRootCutoff, show Nat.sqrt (Nat.sqrt (2 * N)) = a by rfl,
      max_eq_right ha]
    have haa : a ^ 2 ≤ Nat.sqrt (2 * N) := by
      exact Nat.sqrt_le' (Nat.sqrt (2 * N))
    omega
  · have ha' : a ≤ 2 := by omega
    rw [vaughanFourthRootCutoff, show Nat.sqrt (Nat.sqrt (2 * N)) = a by rfl,
      max_eq_left ha']
    norm_num only [Nat.reducePow]
    omega

private lemma vaughanFourthRootCutoff_add_one_sq_le_sixteen_sqrt
    (N : ℕ) (hN : 2 ≤ N) :
    (vaughanFourthRootCutoff N + 1) ^ 2 ≤
      16 * Nat.sqrt (2 * N) := by
  let U := vaughanFourthRootCutoff N
  have hU : 1 ≤ U := by
    dsimp [U]
    exact (show 1 ≤ 2 by omega).trans (two_le_vaughanFourthRootCutoff N)
  have hU1 : U + 1 ≤ 2 * U := by omega
  have hsq := vaughanFourthRootCutoff_sq_le_four_sqrt N hN
  change (U + 1) ^ 2 ≤ 16 * Nat.sqrt (2 * N)
  calc
    (U + 1) ^ 2 ≤ (2 * U) ^ 2 := by
      simpa [pow_two] using Nat.mul_le_mul hU1 hU1
    _ = 4 * U ^ 2 := by ring
    _ ≤ 4 * (4 * Nat.sqrt (2 * N)) :=
      Nat.mul_le_mul_left 4 hsq
    _ = 16 * Nat.sqrt (2 * N) := by ring

private lemma natSqrt_two_mul_le_two_mul_realSqrt
    (N : ℕ) :
    (Nat.sqrt (2 * N) : ℝ) ≤ 2 * Real.sqrt N := by
  have hs0 : 0 ≤ (Nat.sqrt (2 * N) : ℝ) := by positivity
  have hr0 : 0 ≤ 2 * Real.sqrt (N : ℝ) := by positivity
  have hsNat := Nat.sqrt_le' (2 * N)
  have hsSq : (Nat.sqrt (2 * N) : ℝ) ^ 2 ≤ 2 * (N : ℝ) := by
    exact_mod_cast hsNat
  have hrootSq : (Real.sqrt (N : ℝ)) ^ 2 = (N : ℝ) :=
    Real.sq_sqrt (by positivity)
  apply (sq_le_sq₀ hs0 hr0).1
  nlinarith

private lemma cast_vaughanCutoff_add_one_sq_le_sqrt
    (N : ℕ) (hN : 2 ≤ N) :
    ((vaughanFourthRootCutoff N + 1 : ℕ) : ℝ) ^ 2 ≤
      32 * Real.sqrt N := by
  have hNat := vaughanFourthRootCutoff_add_one_sq_le_sixteen_sqrt N hN
  have hCast : ((vaughanFourthRootCutoff N + 1 : ℕ) : ℝ) ^ 2 ≤
      16 * (Nat.sqrt (2 * N) : ℝ) := by
    exact_mod_cast hNat
  have hSqrt := natSqrt_two_mul_le_two_mul_realSqrt N
  calc
    ((vaughanFourthRootCutoff N + 1 : ℕ) : ℝ) ^ 2 ≤
        16 * (Nat.sqrt (2 * N) : ℝ) := hCast
    _ ≤ 16 * (2 * Real.sqrt N) :=
      mul_le_mul_of_nonneg_left hSqrt (by norm_num)
    _ = 32 * Real.sqrt N := by ring

private lemma vaughanFourthRootCutoff_le_two_mul
    (N : ℕ) (hN : 2 ≤ N) :
    vaughanFourthRootCutoff N ≤ 2 * N := by
  unfold vaughanFourthRootCutoff
  rw [max_le_iff]
  constructor
  · omega
  · exact (Nat.sqrt_le_self _).trans (Nat.sqrt_le_self _)

/-- The expanded elementary Type I total at the repository's fixed cutoff. -/
@[expose]
def conductorThreeExpandedTypeIAtScale (N x : ℕ) : ℝ :=
  let U := vaughanFourthRootCutoff N
  conductorThreeTypeZeroExpanded U x +
    conductorThreeTypeI1Expanded U U x +
    conductorThreeTypeI2Expanded U x

/-- The elementary expanded Type I total already satisfies the required
uniform half-plus-epsilon estimate. -/
@[surface_novel, surface_published]
theorem uniform_conductorThreeExpandedTypeIAtScale :
    ∀ epsilon : ℝ, 0 < epsilon →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ N : ℕ, 2 ≤ N →
          ∀ x : ℕ, x ≤ 2 * N →
            |conductorThreeExpandedTypeIAtScale N x| ≤
              C * (N : ℝ) ^ (1 / 2 + epsilon) := by
  intro epsilon hepsilon
  refine ⟨256 / epsilon, div_nonneg (by norm_num) hepsilon.le, ?_⟩
  intro N hN x hx
  let U := vaughanFourthRootCutoff N
  let A : ℝ := (U + 1 : ℕ)
  let L : ℝ := Real.log ((2 * N : ℕ) : ℝ)
  let LU : ℝ := Real.log ((max 1 U : ℕ) : ℝ)
  let LX : ℝ := Real.log ((max 1 x : ℕ) : ℝ)
  have hBase := abs_conductorThreeExpandedTypeI_at_vaughanCutoff_le N x
  change |conductorThreeExpandedTypeIAtScale N x| ≤ _
  have hUle : U ≤ 2 * N := by
    exact vaughanFourthRootCutoff_le_two_mul N hN
  have hLU : LU ≤ L := by
    dsimp only [LU, L]
    calc
      Real.log ((max 1 U : ℕ) : ℝ) ≤
          Real.log ((max 1 (2 * N) : ℕ) : ℝ) :=
        log_max_one_mono hUle
      _ = Real.log ((2 * N : ℕ) : ℝ) := by
        rw [max_eq_right (by omega : 1 ≤ 2 * N)]
  have hLX : LX ≤ L := by
    dsimp only [LX, L]
    calc
      Real.log ((max 1 x : ℕ) : ℝ) ≤
          Real.log ((max 1 (2 * N) : ℕ) : ℝ) :=
        log_max_one_mono hx
      _ = Real.log ((2 * N : ℕ) : ℝ) := by
        rw [max_eq_right (by omega : 1 ≤ 2 * N)]
  have hA1 : 1 ≤ A := by
    dsimp only [A, U]
    exact_mod_cast (show 1 ≤ vaughanFourthRootCutoff N + 1 by omega)
  have hA0 : 0 ≤ A := le_trans (by norm_num) hA1
  have hL0 : 0 ≤ L := by
    dsimp only [L]
    exact Real.log_nonneg (by exact_mod_cast (show 1 ≤ 2 * N by omega))
  have hLU0 : 0 ≤ LU := by
    dsimp only [LU]
    exact log_max_one_nonneg U
  have hLX0 : 0 ≤ LX := by
    dsimp only [LX]
    exact log_max_one_nonneg x
  have hA2 : A ^ 2 ≤ 32 * Real.sqrt N := by
    dsimp only [A, U]
    exact cast_vaughanCutoff_add_one_sq_le_sqrt N hN
  have hExpanded :
      |conductorThreeExpandedTypeIAtScale N x| ≤
        A * LU + A ^ 2 * LU + 2 * A * LX := by
    simpa only [conductorThreeExpandedTypeIAtScale, U, A, LU, LX,
      Nat.cast_add, Nat.cast_one] using hBase
  have hPoly : A * LU + A ^ 2 * LU + 2 * A * LX ≤
      4 * A ^ 2 * L := by
    have h1 : A * LU ≤ A * L :=
      mul_le_mul_of_nonneg_left hLU hA0
    have h2 : A ^ 2 * LU ≤ A ^ 2 * L :=
      mul_le_mul_of_nonneg_left hLU (sq_nonneg A)
    have h3 : 2 * A * LX ≤ 2 * A * L :=
      mul_le_mul_of_nonneg_left hLX (mul_nonneg (by norm_num) hA0)
    calc
      A * LU + A ^ 2 * LU + 2 * A * LX ≤
          A * L + A ^ 2 * L + 2 * A * L :=
        add_le_add (add_le_add h1 h2) h3
      _ ≤ 4 * A ^ 2 * L := by
        nlinarith [sq_nonneg (A - 1)]
  have hLogTwo : L ≤ 2 * Real.log (N : ℝ) := by
    have hNpos : (N : ℝ) ≠ 0 := by positivity
    have hlogTwoLe : Real.log 2 ≤ Real.log (N : ℝ) := by
      apply Real.log_le_log
      · norm_num
      · exact_mod_cast hN
    dsimp only [L]
    rw [Nat.cast_mul, Nat.cast_ofNat, Real.log_mul (by norm_num) hNpos]
    linarith
  have hlogN0 : 0 ≤ Real.log (N : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
  have hSqrt0 : 0 ≤ Real.sqrt (N : ℝ) := Real.sqrt_nonneg _
  have hToLog : 4 * A ^ 2 * L ≤
      256 * Real.sqrt N * Real.log N := by
    calc
      4 * A ^ 2 * L ≤ 4 * (32 * Real.sqrt N) * L :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hA2 (by norm_num)) hL0
      _ = 128 * Real.sqrt N * L := by ring
      _ ≤ 128 * Real.sqrt N * (2 * Real.log N) :=
        mul_le_mul_of_nonneg_left hLogTwo
          (mul_nonneg (by norm_num) hSqrt0)
      _ = 256 * Real.sqrt N * Real.log N := by ring
  have hpow := Real.log_le_rpow_div (Nat.cast_nonneg N) hepsilon
  have hpow0 : 0 ≤ (N : ℝ) ^ epsilon :=
    Real.rpow_nonneg (Nat.cast_nonneg N) _
  have hquot0 : 0 ≤ (N : ℝ) ^ epsilon / epsilon :=
    div_nonneg hpow0 hepsilon.le
  calc
    |conductorThreeExpandedTypeIAtScale N x| ≤
        A * LU + A ^ 2 * LU + 2 * A * LX := hExpanded
    _ ≤ 4 * A ^ 2 * L := hPoly
    _ ≤ 256 * Real.sqrt N * Real.log N := hToLog
    _ ≤ 256 * Real.sqrt N * ((N : ℝ) ^ epsilon / epsilon) :=
      mul_le_mul_of_nonneg_left hpow
        (mul_nonneg (by norm_num) hSqrt0)
    _ = (256 / epsilon) * (N : ℝ) ^ (1 / 2 + epsilon) := by
      rw [Real.sqrt_eq_rpow]
      have hNpos : 0 < (N : ℝ) := by positivity
      calc
        256 * (N : ℝ) ^ ((1 : ℝ) / 2) *
              ((N : ℝ) ^ epsilon / epsilon) =
            (256 / epsilon) *
              ((N : ℝ) ^ ((1 : ℝ) / 2) *
                (N : ℝ) ^ epsilon) := by
          field_simp
        _ = (256 / epsilon) *
              (N : ℝ) ^ ((1 : ℝ) / 2 + epsilon) := by
          rw [Real.rpow_add hNpos]

/-- The literal convolution-prefix presentation of the three elementary
Vaughan components. -/
@[expose]
def conductorThreeConvolutionTypeIPrefix (N x : ℕ) : ℝ :=
  let U := vaughanFourthRootCutoff N
  vaughanPrefix
      (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
        vaughanTypeZeroScalar U n) x +
    vaughanPrefix
      (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
        vaughanTypeI1Scalar U U n) x +
    vaughanPrefix
      (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
        vaughanTypeI2Scalar U n) x

/-- The exact finite adapter still required between the arithmetic-function
convolution prefixes and the expanded nested sums.  This proposition is not
an axiom and is not inhabited in this file. -/
@[expose]
def ExactConductorThreeTypeIPrefixExpansion : Prop :=
  ∀ N x : ℕ,
    conductorThreeConvolutionTypeIPrefix N x =
      conductorThreeExpandedTypeIAtScale N x

/-- Conditional packaging theorem: once the exact finite reindexing adapter
is supplied, the actual convolution prefix inherits the fully checked
uniform half-plus-epsilon estimate. -/
@[surface_novel, surface_published]
theorem exactTypeIPrefixExpansion_implies_uniform
    (hExpansion : ExactConductorThreeTypeIPrefixExpansion) :
    ∀ epsilon : ℝ, 0 < epsilon →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ N : ℕ, 2 ≤ N →
          ∀ x : ℕ, x ≤ 2 * N →
            |conductorThreeConvolutionTypeIPrefix N x| ≤
              C * (N : ℝ) ^ (1 / 2 + epsilon) := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hBound⟩ :=
    uniform_conductorThreeExpandedTypeIAtScale epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  rw [hExpansion N x]
  exact hBound N hN x hx

end

end Surface.Core.ConductorThreeVaughanTypeI
```
