# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47f16e128dccf02f1fca4bd21a19ebdabe22d2c0` · SHA-256 `f133298c8c84ec5f90c23edb64e7fc99fa86d1db1c74fc31962f5d6bbdf5f6a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Arithmetic atom whose prefix sum is exactly prime mass minus interval
length. -/
def primeDiscrepancyAtom (n : ℕ) : ℝ :=
  (if n.Prime then Real.log n else 0) - 1

/-- Sharp prefix indicator on the ambient octave. -/
def sharpPrefixWeight
    (X m n : ℕ) : ℝ :=
  if n ∈ Finset.Ioc (2 * X) m then 1 else 0

/-- The exact sharp discrepancy is the atom sum over the sharp prefix. -/
theorem sharpPrimePrefixDiscrepancy_eq_atom_sum
    {X m : ℕ}
    (hm : 2 * X ≤ m) :
    sharpPrimePrefixDiscrepancy X m =
      ∑ n ∈ Finset.Ioc (2 * X) m,
        primeDiscrepancyAtom n := by
  unfold sharpPrimePrefixDiscrepancy primeDiscrepancyAtom
    primeIntervalLogMass
  rw [Finset.sum_sub_distrib]
  simp only [Finset.sum_const, nsmul_eq_mul, mul_one, Nat.card_Ioc, hm,
    Nat.cast_sub hm]
  have hprime :
      (∑ n ∈ Finset.Ioc (2 * X) m,
          if n.Prime then Real.log n else 0) =
        ∑ p ∈ Finset.Ioc (2 * X) m with p.Prime,
          Real.log p := by
    rw [Finset.sum_ite]
    simp
  rw [hprime]
  ring

/-- The same sharp discrepancy can be written over the whole octave using the
sharp prefix weight. -/
theorem sharpPrimePrefixDiscrepancy_eq_ambient_weighted_sum
    {X m : ℕ}
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    sharpPrimePrefixDiscrepancy X m =
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        sharpPrefixWeight X m n *
          primeDiscrepancyAtom n := by
  rw [sharpPrimePrefixDiscrepancy_eq_atom_sum hm0]
  unfold sharpPrefixWeight
  rw [← Finset.sum_subset
    (show Finset.Ioc (2 * X) m ⊆
      Finset.Ioc (2 * X) (4 * X) by
        intro n hn
        have hni := Finset.mem_Ioc.mp hn
        exact Finset.mem_Ioc.mpr ⟨hni.1, hni.2.trans hm1⟩)]
  · apply Finset.sum_congr rfl
    intro n hn
    simp [hn]
  · intro n hnAmbient hnNotSharp
    simp [hnNotSharp]

/-- The corrected non-aliasing Fejer operator is exactly the same arithmetic
atom summed against the smoothed prefix weight. -/
theorem nonAliasingPrimePrefixFejerOperator_eq_atom_sum
    (X N m : ℕ) :
    nonAliasingPrimePrefixFejerOperator.value X N m =
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        nonAliasingFejerPrefixWeight X N m n *
          primeDiscrepancyAtom n := by
  unfold nonAliasingPrimePrefixFejerOperator
    nonAliasingFejerPrimeMass nonAliasingFejerCountingMass
    primeDiscrepancyAtom
  rw [Finset.sum_sub_distrib]
  have hprime :
      (∑ n ∈ Finset.Ioc (2 * X) (4 * X),
          nonAliasingFejerPrefixWeight X N m n *
            (if n.Prime then Real.log n else 0)) =
        ∑ p ∈ Finset.Ioc (2 * X) (4 * X) with p.Prime,
          nonAliasingFejerPrefixWeight X N m p * Real.log p := by
    rw [Finset.sum_ite]
    simp
  rw [hprime]
  ring

/-- Exact sharp-minus-smoothed error decomposition over the ambient octave. -/
theorem nonAliasingPrimePrefixFejerOperator_error_eq_atom_weight_error
    {X N m : ℕ}
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingPrimePrefixFejerOperator.error X N m =
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        primeDiscrepancyAtom n *
          (sharpPrefixWeight X m n -
            nonAliasingFejerPrefixWeight X N m n) := by
  unfold PrimePrefixSmoothingOperator.error
  rw [sharpPrimePrefixDiscrepancy_eq_ambient_weighted_sum hm0 hm1,
    nonAliasingPrimePrefixFejerOperator_eq_atom_sum]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- Safe arithmetic envelope on the whole octave. -/
theorem primeDiscrepancyAtom_abs_le
    {X n : ℕ}
    (hX : 0 < X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    |primeDiscrepancyAtom n| ≤
      1 + Real.log ((4 * X : ℕ) : ℝ) := by
  unfold primeDiscrepancyAtom
  have hnI := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hlog0 : 0 ≤ Real.log (n : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ n)
  have hlogUpper :
      Real.log (n : ℝ) ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    exact Real.log_le_log
      (by exact_mod_cast hnpos)
      (by exact_mod_cast hnI.2)
  split_ifs with hp
  · calc
      |Real.log (n : ℝ) - 1|
        ≤ |Real.log (n : ℝ)| + |(1 : ℝ)| := abs_sub _ _
      _ = Real.log (n : ℝ) + 1 := by
            rw [abs_of_nonneg hlog0]
            norm_num
      _ ≤ 1 + Real.log ((4 * X : ℕ) : ℝ) := by
            linarith
  · have hlog4X :
        0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
      apply Real.log_nonneg
      exact_mod_cast (by omega : 1 ≤ 4 * X)
    simp
    linarith

/-- Universal L1 step-smoothing error on the ambient octave. -/
def nonAliasingFejerSharpStepL1Error
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
    |sharpPrefixWeight X m n -
      nonAliasingFejerPrefixWeight X N m n|

/-- Arithmetic error is bounded by the universal L1 smoothing error times the
safe arithmetic envelope. -/
theorem nonAliasingPrimePrefixFejerOperator_error_le_L1
    {X N m : ℕ}
    (hX : 0 < X)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
      (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        nonAliasingFejerSharpStepL1Error X N m := by
  rw [nonAliasingPrimePrefixFejerOperator_error_eq_atom_weight_error hm0 hm1]
  exact (abs_sum_le_sum_abs _ _).trans <| by
    unfold nonAliasingFejerSharpStepL1Error
    calc
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
          |primeDiscrepancyAtom n *
            (sharpPrefixWeight X m n -
              nonAliasingFejerPrefixWeight X N m n)|
        = ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
            |primeDiscrepancyAtom n| *
              |sharpPrefixWeight X m n -
                nonAliasingFejerPrefixWeight X N m n| := by
              apply Finset.sum_congr rfl
              intro n hn
              rw [abs_mul]
      _ ≤ ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
          (1 + Real.log ((4 * X : ℕ) : ℝ)) *
            |sharpPrefixWeight X m n -
              nonAliasingFejerPrefixWeight X N m n| := by
            apply Finset.sum_le_sum
            intro n hn
            exact mul_le_mul_of_nonneg_right
              (primeDiscrepancyAtom_abs_le hX hn)
              (abs_nonneg _)
      _ = (1 + Real.log ((4 * X : ℕ) : ℝ)) *
          ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
            |sharpPrefixWeight X m n -
              nonAliasingFejerPrefixWeight X N m n| := by
            rw [Finset.mul_sum]

/-- Purely combinatorial frontier: the L1 distance between a sharp prefix and
its nonnegative mass-one period-4X Fejer smoothing is controlled by the kernel
first moment. -/
def NonAliasingFejerSharpStepL1FirstMomentClaim : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      nonAliasingFejerSharpStepL1Error X N m ≤
        ∑ d ∈ Finset.Icc 1 (2 * X),
          (d : ℝ) *
            sampledTriangularKernelAtPeriod
              (fejerOctavePeriod X) N d

/-- Corrected arithmetic comparison target with the safe atom envelope. -/
def NonAliasingPrimePrefixFejerFirstMomentComparisonCorrected : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X ≤ m → m ≤ 4 * X →
      |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
        (1 + Real.log ((4 * X : ℕ) : ℝ)) *
          ∑ d ∈ Finset.Icc 1 (2 * X),
            (d : ℝ) *
              sampledTriangularKernelAtPeriod
                (fejerOctavePeriod X) N d

/-- The universal L1 claim implies the corrected arithmetic comparison. -/
theorem sharpStepL1FirstMoment_to_arithmeticComparison
    (hL1 : NonAliasingFejerSharpStepL1FirstMomentClaim) :
    NonAliasingPrimePrefixFejerFirstMomentComparisonCorrected := by
  intro X N m hreg hm0 hm1
  rcases hreg with ⟨hX, hN, hNL⟩
  exact (nonAliasingPrimePrefixFejerOperator_error_le_L1 hX hm0 hm1).trans
    (mul_le_mul_of_nonneg_left
      (hL1 X N m ⟨hX, hN, hNL⟩ hm0 hm1)
      (by
        have hlog :
            0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
          apply Real.log_nonneg
          exact_mod_cast (by omega : 1 ≤ 4 * X)
        linarith))

end GRWTSK.RiemannHypothesis
```
