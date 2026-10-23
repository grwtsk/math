/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier
import GRWTSK.NumberTheory.FiniteDivisorSummatoryBound
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact Fejer and termwise bounds for high-g Type II

This packet proves that the repository's actual period-4X Fejer shift weight
lies in [0,1] on the exact support and that each genuine high-g Mobius-log
summand is at most log(4X)^2.  It also exposes the exact finite term index.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_FEJER_WEIGHT_UNIT_BOUND_SOURCE_PROVED /
HIGH_GCD_TERM_LOG_BOUND_SOURCE_PROVED.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.FiniteDivisorCounting

/-- The actual shifted Fejer weight has no hidden scale loss: on its exact
support it lies in `[0,1]`. -/
theorem nonAliasingFejerShiftWeight_le_one
    {X N m h n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X - h)) :
    nonAliasingFejerShiftWeight X N m h n ≤ 1 := by
  have hnI := Finset.mem_Ioc.mp hn
  have hnOctave : n ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr
      ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩
  have hnhOctave :
      n + h ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr ⟨by omega, by omega⟩
  have hn0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hnOctave
  have hn1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hnOctave
  have hnh0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hnhOctave
  have hnh1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hnhOctave
  unfold nonAliasingFejerShiftWeight
  calc
    nonAliasingFejerPrefixWeight X N m n *
        nonAliasingFejerPrefixWeight X N m (n + h)
      ≤ 1 * nonAliasingFejerPrefixWeight X N m (n + h) :=
        mul_le_mul_of_nonneg_right hn1 hnh0
    _ ≤ 1 * 1 := mul_le_mul_of_nonneg_left hnh1 (by norm_num)
    _ = 1 := by ring

/-- A genuine active Möbius-log divisor term is bounded by the octave
logarithm. -/
theorem centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul
    {X n d : ℕ}
    (hX : 0 < X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X))
    (hd : some d ∈ centeredMobiusLogSquarefreeDivisorIndexSet n) :
    |centeredMobiusLogDivisorTerm n (some d)| ≤
      Real.log (((4 * X : ℕ) : ℝ)) := by
  have hd' :=
    some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp hd
  have hdn : d ∣ n := (Nat.mem_divisors.mp hd'.1).1
  have hn0 : 0 < n := by
    have hnI := Finset.mem_Ioc.mp hn
    omega
  have hd0 : 0 < d := Nat.pos_of_mem_divisors hd'.1
  have hq0 : 0 < n / d :=
    Nat.div_pos (Nat.le_of_dvd hn0 hdn) hd0
  have hq_le : n / d ≤ 4 * X :=
    (Nat.div_le_self n d).trans (Finset.mem_Ioc.mp hn).2
  have hlog0 : 0 ≤ Real.log ((n / d : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hq0.ne')
  have hlog_le :
      Real.log ((n / d : ℕ) : ℝ) ≤
        Real.log (((4 * X : ℕ) : ℝ)) := by
    exact Real.log_le_log
      (by exact_mod_cast hq0)
      (by exact_mod_cast hq_le)
  have hmu : |mobiusReal d| ≤ 1 := by
    unfold mobiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
  rw [centeredMobiusLogDivisorTerm_some, abs_mul,
    abs_of_nonneg hlog0]
  calc
    |mobiusReal d| * Real.log ((n / d : ℕ) : ℝ)
      ≤ 1 * Real.log ((n / d : ℕ) : ℝ) :=
        mul_le_mul_of_nonneg_right hmu hlog0
    _ ≤ 1 * Real.log (((4 * X : ℕ) : ℝ)) :=
        mul_le_mul_of_nonneg_left hlog_le (by norm_num)
    _ = Real.log (((4 * X : ℕ) : ℝ)) := by ring

/-- Ambient type of exact high-g Type II summands. -/
abbrev MobiusLogHighGCDTypeIITermIndex :=
  Σ h : ℕ, Σ n : ℕ, Σ g : ℕ, Option ℕ × Option ℕ

/-- Exact finite index set underlying the absolute high-g aggregate. -/
def mobiusLogAbsoluteHighGCDTypeIITermIndexSet
    (X Y : ℕ) : Finset MobiusLogHighGCDTypeIITermIndex :=
  (fejerPositiveLagSet X).sigma fun h =>
    (Finset.Ioc (2 * X) (4 * X - h)).sigma fun n =>
      (centeredMobiusLogHighGCDSet h Y).sigma fun g =>
        centeredMobiusLogSquarefreePairGCDClassIndexSet n h g

/-- Value of one exact absolute high-g Type II summand. -/
def mobiusLogAbsoluteHighGCDTypeIITermValue
    (X N m : ℕ)
    (x : MobiusLogHighGCDTypeIITermIndex) : ℝ :=
  nonAliasingFejerShiftWeight X N m x.1 x.2.1 *
    |centeredMobiusLogDivisorTerm x.2.1 x.2.2.2.1 *
      centeredMobiusLogDivisorTerm (x.2.1 + x.1) x.2.2.2.2|

/-- The nested aggregate is exactly the sum over its explicit term index set. -/
theorem nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_eq_termIndexSum
    (X N m Y : ℕ) :
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate X N m Y =
      ∑ x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y,
        mobiusLogAbsoluteHighGCDTypeIITermValue X N m x := by
  simp [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    mobiusLogAbsoluteHighGCDTypeIITermValue,
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate,
    nonAliasingFejerMobiusLogAbsoluteHighGCDShiftCorrelation,
    centeredMobiusLogAbsoluteHighGCDPairBlock,
    centeredMobiusLogAbsolutePairGCDClassBlock,
    Finset.sum_sigma]

/-- Every exact high-g summand is bounded by `log(4X)^2`; no Fejer scale factor
is lost. -/
theorem mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq
    {X N m Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {x : MobiusLogHighGCDTypeIITermIndex}
    (hx : x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y) :
    mobiusLogAbsoluteHighGCDTypeIITermValue X N m x ≤
      (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
  rcases x with ⟨h, ⟨n, ⟨g, uv⟩⟩⟩
  simp only [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    Finset.mem_sigma] at hx
  rcases hx with ⟨hh, hn, hg, huv⟩
  rcases centeredMobiusLogHighGCDClass_pair_is_genuine
      hY hg huv with ⟨d, e, rfl⟩
  have hpair :=
    (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv).1
  rcases
      mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp hpair with
    ⟨hd, he⟩
  have hnI := Finset.mem_Ioc.mp hn
  have hnOctave : n ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr
      ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩
  have hnhOctave :
      n + h ∈ Finset.Ioc (2 * X) (4 * X) :=
    Finset.mem_Ioc.mpr ⟨by omega, by omega⟩
  have hleft :=
    centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul
      hX hnOctave hd
  have hright :=
    centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul
      hX hnhOctave he
  have hlog0 :
      0 ≤ Real.log (((4 * X : ℕ) : ℝ)) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  have hatom :
      |centeredMobiusLogDivisorTerm n (some d) *
        centeredMobiusLogDivisorTerm (n + h) (some e)| ≤
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
    rw [abs_mul]
    calc
      |centeredMobiusLogDivisorTerm n (some d)| *
          |centeredMobiusLogDivisorTerm (n + h) (some e)|
        ≤ Real.log (((4 * X : ℕ) : ℝ)) *
            |centeredMobiusLogDivisorTerm (n + h) (some e)| :=
          mul_le_mul_of_nonneg_right hleft (abs_nonneg _)
      _ ≤ Real.log (((4 * X : ℕ) : ℝ)) *
            Real.log (((4 * X : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_left hright hlog0
      _ = (Real.log (((4 * X : ℕ) : ℝ)))^2 := by ring
  have hw0 :=
    nonAliasingFejerShiftWeight_nonnegative
      hreg hm0 hm1 hn
  have hw1 :=
    nonAliasingFejerShiftWeight_le_one
      hreg hm0 hm1 hn
  unfold mobiusLogAbsoluteHighGCDTypeIITermValue
  calc
    nonAliasingFejerShiftWeight X N m h n *
        |centeredMobiusLogDivisorTerm n (some d) *
          centeredMobiusLogDivisorTerm (n + h) (some e)|
      ≤ 1 *
          |centeredMobiusLogDivisorTerm n (some d) *
            centeredMobiusLogDivisorTerm (n + h) (some e)| :=
        mul_le_mul_of_nonneg_right hw1 (abs_nonneg _)
    _ ≤ 1 * (Real.log (((4 * X : ℕ) : ℝ)))^2 :=
        mul_le_mul_of_nonneg_left hatom (by norm_num)
    _ = (Real.log (((4 * X : ℕ) : ℝ)))^2 := by ring


end GRWTSK.RiemannHypothesis
