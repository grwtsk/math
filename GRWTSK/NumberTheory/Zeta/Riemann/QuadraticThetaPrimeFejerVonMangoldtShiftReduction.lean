/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Von Mangoldt reduction of the Fejer shifted prime-pair frontier

The preceding source rewrites the exact seven-eighths arithmetic obstruction as
an aggregate of Fejer-weighted shifted correlations of the centered prime atom

  1_P(n) * log n - 1.

This file replaces that prime-only atom by the centered von Mangoldt atom

  Lambda(n) - 1

plus the exact higher-prime-power correction

  Lambda(n) - 1_P(n) * log n.

Mathlib's Chebyshev theory proves

  psi(x) - theta(x) = O(sqrt x),

so the total higher-prime-power correction mass on an octave is
`O(X^(1/2))`.  Since all Fejer prefix weights lie in `[0,1]`, the three mixed
or correction-correction pair channels are bounded by

  O(X) * O(log X) * O(X^(1/2))
    = O(X^(3/2) log X),

which lies inside the required `X^(3/2) log(X)^4` scale on dyadic `X`.

Consequently the higher-prime-power channels are source-closed.  The exact
remaining arithmetic supplier is a shifted two-point correlation estimate for
the centered von Mangoldt atom.

No centered von Mangoldt shift estimate, threshold descent, or Riemann
Hypothesis result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_TO_VON_MANGOLDT_SHIFT_DECOMPOSITION_SOURCE_PROVED /
PRIME_POWER_CORRECTION_MASS_SQRT_SOURCE_PROVED /
PRIME_POWER_SHIFT_REMAINDER_WITHIN_TARGET_SOURCE_PROVED /
SEVEN_EIGHTHS_VON_MANGOLDT_SHIFT_CORRELATION_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The centered von Mangoldt atom. -/
def centeredVonMangoldtAtom (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n - 1

/-- The exact contribution of non-prime prime powers. -/
def higherPrimePowerCorrectionAtom (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n -
    (if n.Prime then Real.log n else 0)

/-- The correction is exactly von Mangoldt on non-primes and zero on primes. -/
theorem higherPrimePowerCorrectionAtom_eq_if_not_prime
    (n : ℕ) :
    higherPrimePowerCorrectionAtom n =
      if ¬n.Prime then ArithmeticFunction.vonMangoldt n else 0 := by
  by_cases hp : n.Prime
  · simp [higherPrimePowerCorrectionAtom, hp,
      ArithmeticFunction.vonMangoldt_apply_prime hp]
  · simp [higherPrimePowerCorrectionAtom, hp]

/-- The higher-prime-power correction is nonnegative. -/
theorem higherPrimePowerCorrectionAtom_nonnegative
    (n : ℕ) :
    0 ≤ higherPrimePowerCorrectionAtom n := by
  rw [higherPrimePowerCorrectionAtom_eq_if_not_prime]
  split_ifs
  · exact ArithmeticFunction.vonMangoldt_nonneg
  · exact le_rfl

/-- The correction is bounded by the full von Mangoldt atom. -/
theorem higherPrimePowerCorrectionAtom_le_vonMangoldt
    (n : ℕ) :
    higherPrimePowerCorrectionAtom n ≤
      ArithmeticFunction.vonMangoldt n := by
  rw [higherPrimePowerCorrectionAtom_eq_if_not_prime]
  split_ifs
  · exact le_rfl
  · exact ArithmeticFunction.vonMangoldt_nonneg

/-- Consequently the correction is bounded by `log n`. -/
theorem higherPrimePowerCorrectionAtom_le_log
    (n : ℕ) :
    higherPrimePowerCorrectionAtom n ≤ Real.log (n : ℝ) :=
  (higherPrimePowerCorrectionAtom_le_vonMangoldt n).trans
    ArithmeticFunction.vonMangoldt_le_log

/-- There is no correction on an actual prime. -/
@[simp]
theorem higherPrimePowerCorrectionAtom_eq_zero_of_prime
    {p : ℕ}
    (hp : p.Prime) :
    higherPrimePowerCorrectionAtom p = 0 := by
  simp [higherPrimePowerCorrectionAtom_eq_if_not_prime, hp]

/-- Exact prime-only/von-Mangoldt decomposition of the centered atom. -/
theorem primeDiscrepancyAtom_eq_centeredVonMangoldt_sub_correction
    (n : ℕ) :
    primeDiscrepancyAtom n =
      centeredVonMangoldtAtom n -
        higherPrimePowerCorrectionAtom n := by
  unfold primeDiscrepancyAtom centeredVonMangoldtAtom
    higherPrimePowerCorrectionAtom
  ring

/-- Fejer-weighted centered von Mangoldt atom. -/
def nonAliasingFejerWeightedVonMangoldtAtom
    (X N m n : ℕ) : ℝ :=
  nonAliasingFejerPrefixWeight X N m n *
    centeredVonMangoldtAtom n

/-- Fejer-weighted higher-prime-power correction. -/
def nonAliasingFejerWeightedPrimePowerCorrection
    (X N m n : ℕ) : ℝ :=
  nonAliasingFejerPrefixWeight X N m n *
    higherPrimePowerCorrectionAtom n

/-- Exact weighted-atom decomposition. -/
theorem nonAliasingFejerWeightedPrimeAtom_eq_vonMangoldt_sub_correction
    (X N m n : ℕ) :
    nonAliasingFejerWeightedPrimeAtom X N m n =
      nonAliasingFejerWeightedVonMangoldtAtom X N m n -
        nonAliasingFejerWeightedPrimePowerCorrection X N m n := by
  unfold nonAliasingFejerWeightedPrimeAtom
    nonAliasingFejerWeightedVonMangoldtAtom
    nonAliasingFejerWeightedPrimePowerCorrection
  rw [primeDiscrepancyAtom_eq_centeredVonMangoldt_sub_correction]
  ring

/-- Weighted correction remains nonnegative on the arithmetic octave. -/
theorem nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ fejerOctaveIndexSet X) :
    0 ≤ nonAliasingFejerWeightedPrimePowerCorrection X N m n := by
  unfold nonAliasingFejerWeightedPrimePowerCorrection
  exact mul_nonneg
    (nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hn)
    (higherPrimePowerCorrectionAtom_nonnegative n)

/-- Weighting by a number in `[0,1]` cannot increase the correction. -/
theorem nonAliasingFejerWeightedPrimePowerCorrection_le_raw
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ fejerOctaveIndexSet X) :
    nonAliasingFejerWeightedPrimePowerCorrection X N m n ≤
      higherPrimePowerCorrectionAtom n := by
  unfold nonAliasingFejerWeightedPrimePowerCorrection
  have hw :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hn
  exact mul_le_mul_of_nonneg_right hw
    (higherPrimePowerCorrectionAtom_nonnegative n)

/-- The weighted centered von Mangoldt atom has the same safe octave
logarithmic envelope as the prime-only atom. -/
theorem nonAliasingFejerWeightedVonMangoldtAtom_abs_le
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ fejerOctaveIndexSet X) :
    |nonAliasingFejerWeightedVonMangoldtAtom X N m n| ≤
      1 + Real.log (((4 * X : ℕ) : ℝ)) := by
  have hw0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hn
  have hw1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hn
  have hnI := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hlogUpper :
      Real.log (n : ℝ) ≤
        Real.log (((4 * X : ℕ) : ℝ)) := by
    exact Real.log_le_log
      (by exact_mod_cast hnpos)
      (by exact_mod_cast hnI.2)
  have hΛ0 :
      0 ≤ ArithmeticFunction.vonMangoldt n :=
    ArithmeticFunction.vonMangoldt_nonneg
  have hΛlog :
      ArithmeticFunction.vonMangoldt n ≤
        Real.log (n : ℝ) :=
    ArithmeticFunction.vonMangoldt_le_log
  unfold nonAliasingFejerWeightedVonMangoldtAtom
    centeredVonMangoldtAtom
  rw [abs_mul, abs_of_nonneg hw0]
  calc
    nonAliasingFejerPrefixWeight X N m n *
        |ArithmeticFunction.vonMangoldt n - 1|
      ≤
    1 * |ArithmeticFunction.vonMangoldt n - 1| := by
      exact mul_le_mul_of_nonneg_right hw1 (abs_nonneg _)
    _ = |ArithmeticFunction.vonMangoldt n - 1| := by ring
    _ ≤ ArithmeticFunction.vonMangoldt n + 1 := by
      calc
        |ArithmeticFunction.vonMangoldt n - 1|
          ≤ |ArithmeticFunction.vonMangoldt n| + |(1 : ℝ)| :=
            abs_sub _ _
        _ = ArithmeticFunction.vonMangoldt n + 1 := by
          rw [abs_of_nonneg hΛ0]
          norm_num
    _ ≤ 1 + Real.log (((4 * X : ℕ) : ℝ)) := by
      linarith

/-- The weighted correction also lies under the safe logarithmic envelope. -/
theorem nonAliasingFejerWeightedPrimePowerCorrection_le_envelope
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ fejerOctaveIndexSet X) :
    nonAliasingFejerWeightedPrimePowerCorrection X N m n ≤
      1 + Real.log (((4 * X : ℕ) : ℝ)) := by
  have hnI := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hlogUpper :
      Real.log (n : ℝ) ≤
        Real.log (((4 * X : ℕ) : ℝ)) := by
    exact Real.log_le_log
      (by exact_mod_cast hnpos)
      (by exact_mod_cast hnI.2)
  calc
    nonAliasingFejerWeightedPrimePowerCorrection X N m n
      ≤ higherPrimePowerCorrectionAtom n :=
        nonAliasingFejerWeightedPrimePowerCorrection_le_raw
          hreg hm0 hm1 hn
    _ ≤ Real.log (n : ℝ) :=
      higherPrimePowerCorrectionAtom_le_log n
    _ ≤ Real.log (((4 * X : ℕ) : ℝ)) := hlogUpper
    _ ≤ 1 + Real.log (((4 * X : ℕ) : ℝ)) := by linarith

/-- Total unweighted higher-prime-power correction mass on `(2X,4X]`. -/
def fejerHigherPrimePowerCorrectionMass
    (X : ℕ) : ℝ :=
  ∑ n ∈ fejerOctaveIndexSet X,
    higherPrimePowerCorrectionAtom n

theorem fejerHigherPrimePowerCorrectionMass_nonnegative
    (X : ℕ) :
    0 ≤ fejerHigherPrimePowerCorrectionMass X := by
  unfold fejerHigherPrimePowerCorrectionMass
  exact Finset.sum_nonneg fun n hn =>
    higherPrimePowerCorrectionAtom_nonnegative n

/-- The correction mass is the von Mangoldt mass on non-primes in the octave. -/
theorem fejerHigherPrimePowerCorrectionMass_eq_nonprime_vonMangoldt
    (X : ℕ) :
    fejerHigherPrimePowerCorrectionMass X =
      ∑ n ∈ (fejerOctaveIndexSet X).filter (fun n => ¬n.Prime),
        ArithmeticFunction.vonMangoldt n := by
  unfold fejerHigherPrimePowerCorrectionMass
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  rw [higherPrimePowerCorrectionAtom_eq_if_not_prime]

/-- The octave correction mass is bounded by the full Chebyshev
`psi - theta` correction up to `4X`. -/
theorem fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta
    (X : ℕ) :
    fejerHigherPrimePowerCorrectionMass X ≤
      Chebyshev.psi (((4 * X : ℕ) : ℝ)) -
        Chebyshev.theta (((4 * X : ℕ) : ℝ)) := by
  rw [fejerHigherPrimePowerCorrectionMass_eq_nonprime_vonMangoldt]
  have hsubset :
      (fejerOctaveIndexSet X).filter (fun n => ¬n.Prime) ⊆
        (Finset.Ioc 0 (4 * X)).filter (fun n => ¬n.Prime) := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnI, hnPrime⟩
    have hnOct := Finset.mem_Ioc.mp hnI
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨by omega, hnOct.2⟩, hnPrime⟩
  calc
    (∑ n ∈ (fejerOctaveIndexSet X).filter (fun n => ¬n.Prime),
        ArithmeticFunction.vonMangoldt n)
      ≤
    ∑ n ∈ (Finset.Ioc 0 (4 * X)).filter (fun n => ¬n.Prime),
      ArithmeticFunction.vonMangoldt n := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
        intro n hn hnot
        exact ArithmeticFunction.vonMangoldt_nonneg
    _ =
      Chebyshev.psi (((4 * X : ℕ) : ℝ)) -
        Chebyshev.theta (((4 * X : ℕ) : ℝ)) := by
          symm
          simpa using
            Chebyshev.psi_sub_theta_eq_sum_not_prime
              (((4 * X : ℕ) : ℝ))

/-- Mathlib's Chebyshev theorem gives a uniform square-root bound for the
higher-prime-power correction mass. -/
theorem exists_fejerHigherPrimePowerCorrectionMass_rpow_bound :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ X : ℕ,
        fejerHigherPrimePowerCorrectionMass X ≤
          C * Real.rpow (X : ℝ) ((1 : ℝ) / 2) := by
  rcases Chebyshev.psi_sub_theta_le_mul_sqrt with ⟨C, hC⟩
  refine ⟨2 * |C|, mul_nonneg (by norm_num) (abs_nonneg C), ?_⟩
  intro X
  have hpsi :=
    hC (((4 * X : ℕ) : ℝ))
  have hsqrt :
      Real.sqrt (((4 * X : ℕ) : ℝ)) =
        2 * Real.rpow (X : ℝ) ((1 : ℝ) / 2) := by
    rw [show (((4 * X : ℕ) : ℝ)) =
      (4 : ℝ) * (X : ℝ) by norm_num]
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 4)]
    norm_num [Real.sqrt_eq_rpow]
  calc
    fejerHigherPrimePowerCorrectionMass X
      ≤
    Chebyshev.psi (((4 * X : ℕ) : ℝ)) -
      Chebyshev.theta (((4 * X : ℕ) : ℝ)) :=
        fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta X
    _ ≤ C * Real.sqrt (((4 * X : ℕ) : ℝ)) := hpsi
    _ ≤ |C| * Real.sqrt (((4 * X : ℕ) : ℝ)) := by
      exact mul_le_mul_of_nonneg_right
        (le_abs_self C) (Real.sqrt_nonneg _)
    _ = (2 * |C|) *
        Real.rpow (X : ℝ) ((1 : ℝ) / 2) := by
      rw [hsqrt]
      ring

/-- Total weighted correction mass. -/
def fejerWeightedPrimePowerCorrectionMass
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ fejerOctaveIndexSet X,
    nonAliasingFejerWeightedPrimePowerCorrection X N m n

/-- Weighting cannot increase total correction mass. -/
theorem fejerWeightedPrimePowerCorrectionMass_le_raw
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    fejerWeightedPrimePowerCorrectionMass X N m ≤
      fejerHigherPrimePowerCorrectionMass X := by
  unfold fejerWeightedPrimePowerCorrectionMass
    fejerHigherPrimePowerCorrectionMass
  apply Finset.sum_le_sum
  intro n hn
  exact nonAliasingFejerWeightedPrimePowerCorrection_le_raw
    hreg hm0 hm1 hn

/-- Positive pairs are contained in the full octave square. -/
theorem fejerPositiveOffDiagonalPairs_subset_product
    (X : ℕ) :
    fejerPositiveOffDiagonalPairs X ⊆
      fejerOctaveIndexSet X ×ˢ fejerOctaveIndexSet X := by
  intro p hp
  rcases mem_fejerPositiveOffDiagonalPairs_iff.mp hp with
    ⟨h1, h2, hlt⟩
  exact Finset.mem_product.mpr ⟨h1, h2⟩

/-- Sum over a square of a function depending only on the second coordinate. -/
theorem sum_product_snd_eq_card_mul_sum
    (s : Finset ℕ)
    (f : ℕ → ℝ) :
    (∑ p ∈ s ×ˢ s, f p.2) =
      (s.card : ℝ) * ∑ n ∈ s, f n := by
  rw [Finset.sum_product']
  simp [Finset.sum_const, nsmul_eq_mul]

/-- Sum over a square of a function depending only on the first coordinate. -/
theorem sum_product_fst_eq_card_mul_sum
    (s : Finset ℕ)
    (f : ℕ → ℝ) :
    (∑ p ∈ s ×ˢ s, f p.1) =
      (s.card : ℝ) * ∑ n ∈ s, f n := by
  rw [Finset.sum_product_right]
  simp [Finset.sum_const, nsmul_eq_mul]

/-- The second-coordinate correction mass over positive pairs has multiplicity
at most the octave cardinality `2X`. -/
theorem positivePairs_snd_weightedCorrection_sum_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.2)
      ≤
    (2 * X : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hsubset :=
    fejerPositiveOffDiagonalPairs_subset_product X
  have hcard :
      (fejerOctaveIndexSet X).card = 2 * X := by
    unfold fejerOctaveIndexSet
    rw [Nat.card_Ioc]
    omega
  calc
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.2)
      ≤
    ∑ p ∈ fejerOctaveIndexSet X ×ˢ fejerOctaveIndexSet X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.2 := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
        intro p hp hnot
        have hpI := Finset.mem_product.mp hp
        exact
          nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
            hreg hm0 hm1 hpI.2
    _ =
    ((fejerOctaveIndexSet X).card : ℝ) *
      fejerWeightedPrimePowerCorrectionMass X N m := by
        exact sum_product_snd_eq_card_mul_sum
          (fejerOctaveIndexSet X)
          (nonAliasingFejerWeightedPrimePowerCorrection X N m)
    _ ≤
    ((fejerOctaveIndexSet X).card : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
        exact mul_le_mul_of_nonneg_left
          (fejerWeightedPrimePowerCorrectionMass_le_raw
            hreg hm0 hm1)
          (by positivity)
    _ =
    (2 * X : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
        rw [hcard]
        push_cast

/-- The same multiplicity bound for the first coordinate. -/
theorem positivePairs_fst_weightedCorrection_sum_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.1)
      ≤
    (2 * X : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hsubset :=
    fejerPositiveOffDiagonalPairs_subset_product X
  have hcard :
      (fejerOctaveIndexSet X).card = 2 * X := by
    unfold fejerOctaveIndexSet
    rw [Nat.card_Ioc]
    omega
  calc
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.1)
      ≤
    ∑ p ∈ fejerOctaveIndexSet X ×ˢ fejerOctaveIndexSet X,
      nonAliasingFejerWeightedPrimePowerCorrection
        X N m p.1 := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
        intro p hp hnot
        have hpI := Finset.mem_product.mp hp
        exact
          nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
            hreg hm0 hm1 hpI.1
    _ =
    ((fejerOctaveIndexSet X).card : ℝ) *
      fejerWeightedPrimePowerCorrectionMass X N m := by
        exact sum_product_fst_eq_card_mul_sum
          (fejerOctaveIndexSet X)
          (nonAliasingFejerWeightedPrimePowerCorrection X N m)
    _ ≤
    ((fejerOctaveIndexSet X).card : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
        exact mul_le_mul_of_nonneg_left
          (fejerWeightedPrimePowerCorrectionMass_le_raw
            hreg hm0 hm1)
          (by positivity)
    _ =
    (2 * X : ℝ) *
      fejerHigherPrimePowerCorrectionMass X := by
        rw [hcard]
        push_cast

/-- Positive-pair correlation for centered von Mangoldt atoms. -/
def nonAliasingFejerPositiveVonMangoldtPairCorrelation
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveOffDiagonalPairs X,
    nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
      nonAliasingFejerWeightedVonMangoldtAtom X N m p.2

/-- Mixed channel with the correction on the second coordinate. -/
def nonAliasingFejerPositiveVonMangoldtRightCorrection
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveOffDiagonalPairs X,
    nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
      nonAliasingFejerWeightedPrimePowerCorrection X N m p.2

/-- Mixed channel with the correction on the first coordinate. -/
def nonAliasingFejerPositiveCorrectionLeftVonMangoldt
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveOffDiagonalPairs X,
    nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
      nonAliasingFejerWeightedVonMangoldtAtom X N m p.2

/-- Correction-correction positive-pair channel. -/
def nonAliasingFejerPositiveCorrectionPairCorrelation
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveOffDiagonalPairs X,
    nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
      nonAliasingFejerWeightedPrimePowerCorrection X N m p.2

/-- Complete higher-prime-power remainder in the positive-pair correlation. -/
def nonAliasingFejerPositivePrimePowerRemainder
    (X N m : ℕ) : ℝ :=
  - nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
      nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m +
    nonAliasingFejerPositiveCorrectionPairCorrelation X N m

/-- Exact positive-pair decomposition into centered von Mangoldt and
higher-prime-power channels. -/
theorem nonAliasingFejerPositivePairCorrelation_eq_vonMangoldt_add_remainder
    (X N m : ℕ) :
    nonAliasingFejerPositivePairCorrelation X N m =
      nonAliasingFejerPositiveVonMangoldtPairCorrelation X N m +
        nonAliasingFejerPositivePrimePowerRemainder X N m := by
  unfold nonAliasingFejerPositivePairCorrelation
  simp_rw [
    nonAliasingFejerWeightedPrimeAtom_eq_vonMangoldt_sub_correction]
  calc
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      (nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 -
          nonAliasingFejerWeightedPrimePowerCorrection X N m p.1) *
        (nonAliasingFejerWeightedVonMangoldtAtom X N m p.2 -
          nonAliasingFejerWeightedPrimePowerCorrection X N m p.2))
      =
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      (nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
          nonAliasingFejerWeightedVonMangoldtAtom X N m p.2 -
        nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
          nonAliasingFejerWeightedPrimePowerCorrection X N m p.2 -
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
          nonAliasingFejerWeightedVonMangoldtAtom X N m p.2 +
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
          nonAliasingFejerWeightedPrimePowerCorrection X N m p.2) := by
            apply Finset.sum_congr rfl
            intro p hp
            ring
    _ =
      nonAliasingFejerPositiveVonMangoldtPairCorrelation X N m +
        nonAliasingFejerPositivePrimePowerRemainder X N m := by
          unfold nonAliasingFejerPositiveVonMangoldtPairCorrelation
            nonAliasingFejerPositivePrimePowerRemainder
            nonAliasingFejerPositiveVonMangoldtRightCorrection
            nonAliasingFejerPositiveCorrectionLeftVonMangoldt
            nonAliasingFejerPositiveCorrectionPairCorrelation
          simp only [Finset.sum_add_distrib,
            Finset.sum_sub_distrib, Finset.sum_neg_distrib]
          ring

/-- One prescribed-lag centered von Mangoldt correlation. -/
def nonAliasingFejerVonMangoldtLagCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveLagFiber X h,
    nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
      nonAliasingFejerWeightedVonMangoldtAtom X N m p.2

/-- Direct shifted centered von Mangoldt correlation. -/
def nonAliasingFejerVonMangoldtShiftCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    nonAliasingFejerWeightedVonMangoldtAtom X N m n *
      nonAliasingFejerWeightedVonMangoldtAtom X N m (n + h)

/-- Lag-fiber and direct shifted forms agree. -/
theorem nonAliasingFejerVonMangoldtLagCorrelation_eq_shiftCorrelation
    {X N m h : ℕ}
    (hh : h ∈ fejerPositiveLagSet X) :
    nonAliasingFejerVonMangoldtLagCorrelation X N m h =
      nonAliasingFejerVonMangoldtShiftCorrelation X N m h := by
  unfold nonAliasingFejerVonMangoldtLagCorrelation
    nonAliasingFejerVonMangoldtShiftCorrelation
  rw [← Finset.sum_attach, ← Finset.sum_attach]
  exact Fintype.sum_equiv
    (fejerPositiveLagFiberEquivIoc hh)
    (fun p =>
      nonAliasingFejerWeightedVonMangoldtAtom X N m p.1.1 *
        nonAliasingFejerWeightedVonMangoldtAtom X N m p.1.2)
    (fun n =>
      nonAliasingFejerWeightedVonMangoldtAtom X N m n.1 *
        nonAliasingFejerWeightedVonMangoldtAtom X N m (n.1 + h))
    (by
      intro p
      rcases mem_fejerPositiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      change
        nonAliasingFejerWeightedVonMangoldtAtom X N m p.1.1 *
            nonAliasingFejerWeightedVonMangoldtAtom X N m p.1.2 =
          nonAliasingFejerWeightedVonMangoldtAtom X N m p.1.1 *
            nonAliasingFejerWeightedVonMangoldtAtom X N m (p.1.1 + h)
      rw [heq])

/-- Positive-pair von Mangoldt correlation grouped by lag. -/
theorem nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_lagCorrelation
    (X N m : ℕ) :
    nonAliasingFejerPositiveVonMangoldtPairCorrelation X N m =
      ∑ h ∈ fejerPositiveLagSet X,
        nonAliasingFejerVonMangoldtLagCorrelation X N m h := by
  unfold nonAliasingFejerPositiveVonMangoldtPairCorrelation
    nonAliasingFejerVonMangoldtLagCorrelation
    fejerPositiveLagFiber
  rw [← Finset.sum_fiberwise_of_maps_to
    (fejerPositivePairLag_mapsTo_Icc X)]

/-- Positive-pair von Mangoldt correlation in direct shifted form. -/
theorem nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_shiftCorrelation
    (X N m : ℕ) :
    nonAliasingFejerPositiveVonMangoldtPairCorrelation X N m =
      ∑ h ∈ fejerPositiveLagSet X,
        nonAliasingFejerVonMangoldtShiftCorrelation X N m h := by
  rw [nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_lagCorrelation]
  apply Finset.sum_congr rfl
  intro h hh
  exact
    nonAliasingFejerVonMangoldtLagCorrelation_eq_shiftCorrelation hh

/-- Exact shifted aggregate decomposition. -/
theorem sum_primeShiftCorrelation_eq_sum_vonMangoldtShift_add_remainder
    (X N m : ℕ) :
    (∑ h ∈ fejerPositiveLagSet X,
      nonAliasingFejerShiftCorrelation X N m h)
      =
    (∑ h ∈ fejerPositiveLagSet X,
      nonAliasingFejerVonMangoldtShiftCorrelation X N m h) +
      nonAliasingFejerPositivePrimePowerRemainder X N m := by
  rw [← nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation,
    ← nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_shiftCorrelation]
  exact
    nonAliasingFejerPositivePairCorrelation_eq_vonMangoldt_add_remainder
      X N m

/-- The first mixed correction channel is controlled by octave cardinality,
the logarithmic envelope, and total correction mass. -/
theorem positiveVonMangoldtRightCorrection_abs_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerPositiveVonMangoldtRightCorrection X N m|
      ≤
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hB0 :=
    one_add_log_four_mul_nonnegative hreg.1
  unfold nonAliasingFejerPositiveVonMangoldtRightCorrection
  calc
    |∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2|
      ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      |nonAliasingFejerWeightedVonMangoldtAtom X N m p.1 *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2| :=
          abs_sum_le_sum_abs _ _
    _ =
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      |nonAliasingFejerWeightedVonMangoldtAtom X N m p.1| *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2 := by
          apply Finset.sum_congr rfl
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          rw [abs_mul,
            abs_of_nonneg
              (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
                hreg hm0 hm1 hpI.2.1)]
    _ ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2 := by
          apply Finset.sum_le_sum
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          exact mul_le_mul_of_nonneg_right
            (nonAliasingFejerWeightedVonMangoldtAtom_abs_le
              hreg hm0 hm1 hpI.1)
            (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
              hreg hm0 hm1 hpI.2.1)
    _ =
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      (∑ p ∈ fejerPositiveOffDiagonalPairs X,
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2) := by
          rw [Finset.mul_sum]
    _ ≤
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      ((2 * X : ℝ) *
        fejerHigherPrimePowerCorrectionMass X) := by
          exact mul_le_mul_of_nonneg_left
            (positivePairs_snd_weightedCorrection_sum_le
              hreg hm0 hm1)
            hB0
    _ =
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by ring

/-- The second mixed correction channel has the same bound. -/
theorem positiveCorrectionLeftVonMangoldt_abs_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m|
      ≤
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hB0 :=
    one_add_log_four_mul_nonnegative hreg.1
  unfold nonAliasingFejerPositiveCorrectionLeftVonMangoldt
  calc
    |∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
        nonAliasingFejerWeightedVonMangoldtAtom X N m p.2|
      ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      |nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
        nonAliasingFejerWeightedVonMangoldtAtom X N m p.2| :=
          abs_sum_le_sum_abs _ _
    _ =
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
        |nonAliasingFejerWeightedVonMangoldtAtom X N m p.2| := by
          apply Finset.sum_congr rfl
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          rw [abs_mul,
            abs_of_nonneg
              (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
                hreg hm0 hm1 hpI.1)]
    _ ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
        (1 + Real.log (((4 * X : ℕ) : ℝ))) := by
          apply Finset.sum_le_sum
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          exact mul_le_mul_of_nonneg_left
            (nonAliasingFejerWeightedVonMangoldtAtom_abs_le
              hreg hm0 hm1 hpI.2.1)
            (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
              hreg hm0 hm1 hpI.1)
    _ =
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      (∑ p ∈ fejerPositiveOffDiagonalPairs X,
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.1) := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro p hp
          ring
    _ ≤
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      ((2 * X : ℝ) *
        fejerHigherPrimePowerCorrectionMass X) := by
          exact mul_le_mul_of_nonneg_left
            (positivePairs_fst_weightedCorrection_sum_le
              hreg hm0 hm1)
            hB0
    _ =
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by ring

/-- The correction-correction channel obeys the same envelope. -/
theorem positiveCorrectionPairCorrelation_abs_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerPositiveCorrectionPairCorrelation X N m|
      ≤
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hB0 :=
    one_add_log_four_mul_nonnegative hreg.1
  have hsum0 :
      0 ≤ nonAliasingFejerPositiveCorrectionPairCorrelation X N m := by
    unfold nonAliasingFejerPositiveCorrectionPairCorrelation
    exact Finset.sum_nonneg fun p hp => by
      have hpI :=
        mem_fejerPositiveOffDiagonalPairs_iff.mp hp
      exact mul_nonneg
        (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
          hreg hm0 hm1 hpI.1)
        (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
          hreg hm0 hm1 hpI.2.1)
  rw [abs_of_nonneg hsum0]
  unfold nonAliasingFejerPositiveCorrectionPairCorrelation
  calc
    (∑ p ∈ fejerPositiveOffDiagonalPairs X,
      nonAliasingFejerWeightedPrimePowerCorrection X N m p.1 *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2)
      ≤
    ∑ p ∈ fejerPositiveOffDiagonalPairs X,
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2 := by
          apply Finset.sum_le_sum
          intro p hp
          have hpI :=
            mem_fejerPositiveOffDiagonalPairs_iff.mp hp
          exact mul_le_mul_of_nonneg_right
            (nonAliasingFejerWeightedPrimePowerCorrection_le_envelope
              hreg hm0 hm1 hpI.1)
            (nonAliasingFejerWeightedPrimePowerCorrection_nonnegative
              hreg hm0 hm1 hpI.2.1)
    _ =
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      (∑ p ∈ fejerPositiveOffDiagonalPairs X,
        nonAliasingFejerWeightedPrimePowerCorrection X N m p.2) := by
          rw [Finset.mul_sum]
    _ ≤
    (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      ((2 * X : ℝ) *
        fejerHigherPrimePowerCorrectionMass X) := by
          exact mul_le_mul_of_nonneg_left
            (positivePairs_snd_weightedCorrection_sum_le
              hreg hm0 hm1)
            hB0
    _ =
    (2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by ring

/-- Combined correction remainder before dyadic normalization. -/
theorem nonAliasingFejerPositivePrimePowerRemainder_abs_le
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerPositivePrimePowerRemainder X N m|
      ≤
    6 * (X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
  have hR :=
    positiveVonMangoldtRightCorrection_abs_le
      hreg hm0 hm1
  have hL :=
    positiveCorrectionLeftVonMangoldt_abs_le
      hreg hm0 hm1
  have hQ :=
    positiveCorrectionPairCorrelation_abs_le
      hreg hm0 hm1
  unfold nonAliasingFejerPositivePrimePowerRemainder
  calc
    |- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
        nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m +
        nonAliasingFejerPositiveCorrectionPairCorrelation X N m|
      ≤
    |nonAliasingFejerPositiveVonMangoldtRightCorrection X N m| +
      |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m| +
      |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| := by
        calc
          |- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
              nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m +
              nonAliasingFejerPositiveCorrectionPairCorrelation X N m|
            ≤
          |- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m -
              nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m| +
            |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| :=
              abs_add _ _
          _ ≤
          (|- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m| +
              |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m|) +
            |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| := by
              exact add_le_add_right
                (abs_sub
                  (- nonAliasingFejerPositiveVonMangoldtRightCorrection X N m)
                  (nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m))
                _
          _ =
          |nonAliasingFejerPositiveVonMangoldtRightCorrection X N m| +
            |nonAliasingFejerPositiveCorrectionLeftVonMangoldt X N m| +
            |nonAliasingFejerPositiveCorrectionPairCorrelation X N m| := by
              rw [abs_neg]
    _ ≤
    3 * ((2 * X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X) := by
        linarith
    _ =
    6 * (X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := by
        push_cast
        ring

/-- Exact target-scale statement for the higher-prime-power remainder. -/
def SevenEighthsBoundaryMinimalPrimePowerRemainderBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ j m : ℕ,
      2 * dyadicScale j ≤ m →
      m ≤ 4 * dyadicScale j →
      |nonAliasingFejerPositivePrimePowerRemainder
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m|
        ≤
      C *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4

/-- The higher-prime-power remainder is unconditionally within the exact
seven-eighths target scale. -/
theorem sevenEighthsBoundaryMinimalPrimePowerRemainderBound :
    SevenEighthsBoundaryMinimalPrimePowerRemainderBound := by
  rcases exists_fejerHigherPrimePowerCorrectionMass_rpow_bound with
    ⟨C, hC, hmass⟩
  refine ⟨240 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j m hm0 hm1
  let X := dyadicScale j
  have hreg :=
    sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j
  have hraw :=
    nonAliasingFejerPositivePrimePowerRemainder_abs_le
      hreg hm0 hm1
  have hB :
      1 + Real.log (((4 * X : ℕ) : ℝ)) ≤
        5 * Real.log (X : ℝ) := by
    dsimp [X]
    exact one_add_log_four_mul_dyadicScale_le_five_log j
  have hM :
      fejerHigherPrimePowerCorrectionMass X ≤
        C * Real.rpow (X : ℝ) ((1 : ℝ) / 2) :=
    hmass X
  have hXpos : 0 < (X : ℝ) := by
    dsimp [X]
    exact_mod_cast
      dyadicScale_pos_for_boundaryMinimalFejerSchedule j
  have hX0 : 0 ≤ (X : ℝ) := hXpos.le
  have hLpos : 0 < Real.log (X : ℝ) := by
    dsimp [X]
    linarith [
      half_lt_log_dyadicScale_for_exactCorrelationReadout j]
  have hL0 : 0 ≤ Real.log (X : ℝ) := hLpos.le
  have hLhalf :
      (1 : ℝ) / 2 ≤ Real.log (X : ℝ) := by
    dsimp [X]
    exact le_of_lt
      (half_lt_log_dyadicScale_for_exactCorrelationReadout j)
  have hLsq :
      (1 : ℝ) / 4 ≤ (Real.log (X : ℝ))^2 := by
    nlinarith [sq_nonneg
      (Real.log (X : ℝ) - (1 : ℝ) / 2)]
  have hLcube :
      (1 : ℝ) / 8 ≤ (Real.log (X : ℝ))^3 := by
    calc
      (1 : ℝ) / 8 =
          ((1 : ℝ) / 2) * ((1 : ℝ) / 4) := by norm_num
      _ ≤
          Real.log (X : ℝ) *
            (Real.log (X : ℝ))^2 := by
              exact mul_le_mul hLhalf hLsq
                (by norm_num) hL0
      _ = (Real.log (X : ℝ))^3 := by ring
  have hLpower :
      Real.log (X : ℝ) ≤
        8 * (Real.log (X : ℝ))^4 := by
    have hone :
        1 ≤ 8 * (Real.log (X : ℝ))^3 := by
      nlinarith
    calc
      Real.log (X : ℝ) =
          1 * Real.log (X : ℝ) := by ring
      _ ≤
          (8 * (Real.log (X : ℝ))^3) *
            Real.log (X : ℝ) := by
              exact mul_le_mul_of_nonneg_right hone hL0
      _ =
          8 * (Real.log (X : ℝ))^4 := by ring
  have hpower :
      (X : ℝ) *
          Real.rpow (X : ℝ) ((1 : ℝ) / 2) =
        Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
    rw [← Real.rpow_one (X : ℝ),
      ← Real.rpow_add hXpos]
    congr 1
    ring
  have hM0 :
      0 ≤ fejerHigherPrimePowerCorrectionMass X :=
    fejerHigherPrimePowerCorrectionMass_nonnegative X
  calc
    |nonAliasingFejerPositivePrimePowerRemainder
        X
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m|
      ≤
    6 * (X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := hraw
    _ ≤
    6 * (X : ℝ) *
      (5 * Real.log (X : ℝ)) *
      fejerHigherPrimePowerCorrectionMass X := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hB
            (mul_nonneg (by norm_num) hX0))
          hM0
    _ ≤
    6 * (X : ℝ) *
      (5 * Real.log (X : ℝ)) *
      (C * Real.rpow (X : ℝ) ((1 : ℝ) / 2)) := by
        exact mul_le_mul_of_nonneg_left hM (by positivity)
    _ =
    30 * C *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      Real.log (X : ℝ) := by
        rw [← hpower]
        ring
    _ ≤
    30 * C *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      (8 * (Real.log (X : ℝ))^4) := by
        exact mul_le_mul_of_nonneg_left hLpower
          (mul_nonneg
            (mul_nonneg (by norm_num) hC)
            (Real.rpow_nonneg hX0 _))
    _ =
    (240 * C) *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      (Real.log (X : ℝ))^4 := by ring

/-- Exact remaining arithmetic supplier after eliminating higher prime powers:
the shifted centered von Mangoldt aggregate. -/
def SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
            nonAliasingFejerVonMangoldtShiftCorrelation
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m h)
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- A centered von Mangoldt shift theorem implies the original prime-only
shift theorem because all higher-prime-power channels are already controlled. -/
theorem vonMangoldtShiftCorrelationBound_to_exactShiftCorrelationBound
    (hΛ :
      SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound) :
    SevenEighthsBoundaryMinimalExactShiftCorrelationBound := by
  rcases sevenEighthsBoundaryMinimalPrimePowerRemainderBound with
    ⟨R, hR, hrem⟩
  intro hgraded
  rcases hΛ hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C + R, add_nonneg hC hR, j₀, ?_⟩
  intro j hj m hm0 hm1
  let X := dyadicScale j
  have hΛbound :=
    hbound j hj m hm0 hm1
  have hRbound :=
    hrem j m hm0 hm1
  rw [sum_primeShiftCorrelation_eq_sum_vonMangoldtShift_add_remainder]
  calc
    (∑ h ∈ fejerPositiveLagSet X,
      nonAliasingFejerVonMangoldtShiftCorrelation
        X
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m h) +
      nonAliasingFejerPositivePrimePowerRemainder
        X
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    C * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
        (Real.log (X : ℝ))^4 +
      |nonAliasingFejerPositivePrimePowerRemainder
        X
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m| := by
          exact add_le_add hΛbound (le_abs_self _)
    _ ≤
    C * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
        (Real.log (X : ℝ))^4 +
      R * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
        (Real.log (X : ℝ))^4 := by
          exact add_le_add_left hRbound _
    _ =
    (C + R) *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      (Real.log (X : ℝ))^4 := by ring

/-- The centered von Mangoldt shift supplier reaches the existing
seven-eighths partial-prime discrepancy target. -/
theorem vonMangoldtShiftCorrelationBound_to_partialDiscrepancy
    (hΛ :
      SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  exactShiftCorrelationBound_to_partialDiscrepancy
    (vonMangoldtShiftCorrelationBound_to_exactShiftCorrelationBound hΛ)
    hgraded

end GRWTSK.RiemannHypothesis
