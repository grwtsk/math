# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDSharpDivisibilityTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2642927ce9edc1680b15c445153abd720c29efed` · SHA-256 `8c412f6efea62e929ed50b8e5d82ff37b3b4920982f966c491847106886f172a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDRestrictedMobiusLog
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence
import Mathlib.Tactic

/-!
# Sharp finite divisibility-tail estimate

The exact divisibility tail is regrouped by its octave base point `n`.
When `r | n`, the moduli `d` with `r | d | n` are exactly `d = r*a`
with `a | n/r`.  The restricted Möbius-log theorem bounds the complete
signed inner block by `log(n/r)`; it is not bounded termwise.

The number of octave points divisible by `r` is at most `floor(4X/r)`.
For every `[0,1]`-valued octave weight this proves

`|T_r| <= floor(4X/r) * log(4X)`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

/-- Modulus block at one octave base point. -/
def centeredTailDivisorBlock
    (X r n : ℕ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    if r ∣ d ∧ d ∣ n then mobiusLogTerm n d else 0

/-- Octave points divisible by the tail index. -/
def divisibleOctaveIndexSet
    (X r : ℕ) : Finset ℕ :=
  (octaveIndexSet X).filter fun n => r ∣ n

@[simp]
theorem mem_divisibleOctaveIndexSet_iff
    {X r n : ℕ} :
    n ∈ divisibleOctaveIndexSet X r ↔
      n ∈ octaveIndexSet X ∧ r ∣ n := by
  simp [divisibleOctaveIndexSet]

/-- Expand the exact tail as a weighted sum of its base-point divisor blocks. -/
theorem centeredDivisibilityTail_eq_weighted_divisorBlocks
    {X r : ℕ}
    (hr : 1 < r)
    (w : ℕ → ℝ) :
    centeredDivisibilityTail X w r =
      ∑ n ∈ octaveIndexSet X,
        w n * centeredTailDivisorBlock X r n := by
  rw [centeredDivisibilityTail_eq_incidenceSum hr w]
  unfold centeredTailIncidenceSet centeredTailDivisorBlock
  rw [← Finset.sum_filter, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  by_cases hrd : r ∣ d <;>
    by_cases hdn : d ∣ n <;>
      simp [hrd, hdn]

/-- Multiplication by a positive natural as a finite-set embedding. -/
def positiveMulEmbedding
    (r : ℕ)
    (hr : 0 < r) : ℕ ↪ ℕ where
  toFun a := r * a
  inj' := by
    intro a b hab
    exact Nat.eq_of_mul_eq_mul_left hr hab

/-- Exact reindexing of one nonempty divisor block by quotient divisors. -/
theorem centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock
    {X r n : ℕ}
    (hn : n ∈ octaveIndexSet X)
    (hr : 0 < r)
    (hrn : r ∣ n) :
    centeredTailDivisorBlock X r n =
      restrictedProductMobiusLogBlock r (n / r) := by
  have hnpos : 0 < n := (octave_mem_bounds hn).1
  have hqpos : 0 < n / r := by
    exact Nat.div_pos (Nat.le_of_dvd hnpos hrn) hr
  have hmap :
      (n / r).divisors.map (positiveMulEmbedding r hr) =
        (modulusIndexSet X).filter
          (fun d => r ∣ d ∧ d ∣ n) := by
    ext d
    constructor
    · intro hd
      rcases Finset.mem_map.mp hd with ⟨a, ha, rfl⟩
      have hadiv : a ∣ n / r :=
        Nat.dvd_of_mem_divisors ha
      have hna : r * a ∣ n := by
        obtain ⟨c, hc⟩ := hadiv
        refine ⟨c, ?_⟩
        calc
          n = r * (n / r) := (Nat.mul_div_cancel' hrn).symm
          _ = r * (a * c) := by rw [hc]
          _ = r * a * c := by ring
      have hapos : 0 < a :=
        Nat.pos_of_mem_divisors ha
      have hdpos : 0 < r * a := Nat.mul_pos hr hapos
      have hdle : r * a ≤ n := Nat.le_of_dvd hnpos hna
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr
          ⟨hdpos, hdle.trans (octave_mem_bounds hn).2⟩,
          dvd_mul_right r a, hna⟩
    · intro hd
      rcases Finset.mem_filter.mp hd with
        ⟨hdmod, hrd, hdn⟩
      have hdI := Finset.mem_Icc.mp hdmod
      have hqdiv : d / r ∣ n / r :=
        (Nat.div_dvd_div_iff_right hrd hrn).2 hdn
      have hq0 : n / r ≠ 0 := Nat.ne_of_gt hqpos
      have hmem : d / r ∈ (n / r).divisors :=
        Nat.mem_divisors.mpr ⟨hqdiv, hq0⟩
      refine Finset.mem_map.mpr ⟨d / r, hmem, ?_⟩
      exact Nat.mul_div_cancel' hrd
  unfold centeredTailDivisorBlock
    restrictedProductMobiusLogBlock
  rw [← Finset.sum_filter, ← hmap, Finset.sum_map]
  apply Finset.sum_congr rfl
  intro a ha
  simp only [positiveMulEmbedding]
  unfold mobiusLogTerm
  rw [Nat.div_div_eq_div_mul]

/-- If `r` does not divide the base point, its divisor block vanishes. -/
theorem centeredTailDivisorBlock_eq_zero_of_not_dvd
    {X r n : ℕ}
    (hrn : ¬r ∣ n) :
    centeredTailDivisorBlock X r n = 0 := by
  unfold centeredTailDivisorBlock
  apply Finset.sum_eq_zero
  intro d hd
  by_cases hrd : r ∣ d
  · have hnot : ¬d ∣ n := by
      intro hdn
      exact hrn (dvd_trans hrd hdn)
    simp [hrd, hnot]
  · simp [hrd]

/-- Regroup the tail only over octave points divisible by `r`. -/
theorem centeredDivisibilityTail_eq_weighted_restrictedBlocks
    {X r : ℕ}
    (hr : 1 < r)
    (w : ℕ → ℝ) :
    centeredDivisibilityTail X w r =
      ∑ n ∈ divisibleOctaveIndexSet X r,
        w n * restrictedProductMobiusLogBlock r (n / r) := by
  rw [centeredDivisibilityTail_eq_weighted_divisorBlocks hr w]
  unfold divisibleOctaveIndexSet
  rw [← Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hrn : r ∣ n
  · simp [hrn,
      centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock
        hn (lt_trans Nat.zero_lt_one hr) hrn]
  · simp [hrn, centeredTailDivisorBlock_eq_zero_of_not_dvd hrn]

/-- Quotient by `r` maps divisible octave points into `(0, floor(4X/r)]`. -/
theorem divisibleOctave_quotient_mapsTo
    {X r : ℕ}
    (hr : 0 < r) :
    Set.MapsTo
      (fun n => n / r)
      (↑(divisibleOctaveIndexSet X r) : Set ℕ)
      (↑(Finset.Ioc 0 (4 * X / r)) : Set ℕ) := by
  intro n hn
  rcases mem_divisibleOctaveIndexSet_iff.mp hn with
    ⟨hnOct, hrn⟩
  have hnpos := (octave_mem_bounds hnOct).1
  exact Finset.mem_Ioc.mpr
    ⟨Nat.div_pos (Nat.le_of_dvd hnpos hrn) hr,
      Nat.div_le_div_right (octave_mem_bounds hnOct).2⟩

/-- Quotient by a positive `r` is injective on multiples of `r`. -/
theorem divisibleOctave_quotient_injOn
    {X r : ℕ}
    (hr : 0 < r) :
    Set.InjOn
      (fun n => n / r)
      (↑(divisibleOctaveIndexSet X r) : Set ℕ) := by
  intro a ha b hb hab
  have hra :=
    (mem_divisibleOctaveIndexSet_iff.mp ha).2
  have hrb :=
    (mem_divisibleOctaveIndexSet_iff.mp hb).2
  calc
    a = r * (a / r) := (Nat.mul_div_cancel' hra).symm
    _ = r * (b / r) := by rw [hab]
    _ = b := Nat.mul_div_cancel' hrb

/-- There are at most `floor(4X/r)` divisible octave points. -/
theorem divisibleOctaveIndexSet_card_le
    {X r : ℕ}
    (hr : 0 < r) :
    (divisibleOctaveIndexSet X r).card ≤ 4 * X / r := by
  calc
    (divisibleOctaveIndexSet X r).card ≤
        (Finset.Ioc 0 (4 * X / r)).card :=
      Finset.card_le_card_of_injOn
        (fun n => n / r)
        (divisibleOctave_quotient_mapsTo hr)
        (divisibleOctave_quotient_injOn hr)
    _ = 4 * X / r := by simp

/-- Each weighted quotient block is bounded by the common octave logarithm. -/
theorem abs_weighted_restrictedBlock_le_log_four_mul_scale
    {X r n : ℕ}
    (hX : 1 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ q ∈ octaveIndexSet X,
      w q ∈ Set.Icc (0 : ℝ) 1)
    (hn : n ∈ divisibleOctaveIndexSet X r)
    (hr : 0 < r) :
    |w n * restrictedProductMobiusLogBlock r (n / r)| ≤
      Real.log ((4 * X : ℕ) : ℝ) := by
  rcases mem_divisibleOctaveIndexSet_iff.mp hn with
    ⟨hnOct, hrn⟩
  have hnpos := (octave_mem_bounds hnOct).1
  have hqpos : 0 < n / r :=
    Nat.div_pos (Nat.le_of_dvd hnpos hrn) hr
  have hblock :=
    abs_restrictedProductMobiusLogBlock_le_log
      (r := r) hqpos
  have hqle : n / r ≤ 4 * X :=
    (Nat.div_le_self n r).trans (octave_mem_bounds hnOct).2
  have hlogle :
      Real.log ((n / r : ℕ) : ℝ) ≤
        Real.log ((4 * X : ℕ) : ℝ) :=
    Real.log_le_log
      (by exact_mod_cast hqpos)
      (by exact_mod_cast hqle)
  have hwn := hw n hnOct
  have hwabs : |w n| ≤ 1 := by
    rw [abs_of_nonneg hwn.1]
    exact hwn.2
  rw [abs_mul]
  calc
    |w n| * |restrictedProductMobiusLogBlock r (n / r)| ≤
      1 * |restrictedProductMobiusLogBlock r (n / r)| := by
        exact mul_le_mul_of_nonneg_right hwabs (abs_nonneg _)
    _ ≤ Real.log ((n / r : ℕ) : ℝ) := by simpa using hblock
    _ ≤ Real.log ((4 * X : ℕ) : ℝ) := hlogle

/-- Sharp finite divisibility-tail estimate for every `[0,1]` octave weight. -/
theorem abs_centeredDivisibilityTail_le_quotient_mul_log
    {X r : ℕ}
    (hX : 1 ≤ X)
    (hr : 1 < r)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X,
      w n ∈ Set.Icc (0 : ℝ) 1) :
    |centeredDivisibilityTail X w r| ≤
      ((4 * X / r : ℕ) : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by
  rw [centeredDivisibilityTail_eq_weighted_restrictedBlocks hr w]
  have hlognonneg :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) :=
    Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hcard :=
    divisibleOctaveIndexSet_card_le
      (X := X) (r := r) (lt_trans Nat.zero_lt_one hr)
  calc
    |∑ n ∈ divisibleOctaveIndexSet X r,
        w n * restrictedProductMobiusLogBlock r (n / r)| ≤
      ∑ n ∈ divisibleOctaveIndexSet X r,
        |w n * restrictedProductMobiusLogBlock r (n / r)| := by
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ _n ∈ divisibleOctaveIndexSet X r,
        Real.log ((4 * X : ℕ) : ℝ) := by
          exact Finset.sum_le_sum fun n hn =>
            abs_weighted_restrictedBlock_le_log_four_mul_scale
              hX hw hn (lt_trans Nat.zero_lt_one hr)
    _ = ((divisibleOctaveIndexSet X r).card : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by simp
    _ ≤ ((4 * X / r : ℕ) : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by
          exact mul_le_mul_of_nonneg_right
            (by exact_mod_cast hcard) hlognonneg

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```
