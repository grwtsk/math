# Complete source: GRWTSK.NumberTheory.Moebius.CoreBoundaryUnitIntervalWeakMertens

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `588588a31a7264d3b24944f33c82c035414ca8f6` · SHA-256 `49752b92e7c278887f78ad5526516bd49a27c1dec53bf245b9dfe39d0706419e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #651. Parent: draft PR #646 at
`e128d7864320ebe8471c8ccdd19f5e5019af32b0`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryWeightedWeakMertens
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

set_option autoImplicit false
noncomputable section
open scoped BigOperators Interval
open Set

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact unit-interval kernel occurring in the classical Weak-Mertens
integral when the Mertens function is constant on `[N,N+1)`. -/
def weakMertensUnitKernel (N : ℕ) : ℝ :=
  if N = 0 then 0 else
    mertensPrefixReal N ^ 2 *
      (((N : ℝ))⁻¹ - (((N + 1 : ℕ) : ℝ))⁻¹)

/-- Unit-interval integral with the Mertens prefix frozen at its exact
integer value. -/
def weakMertensUnitIntervalIntegral (N : ℕ) : ℝ :=
  ∫ x : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ),
    mertensPrefixReal N ^ 2 * x ^ (-2 : ℤ)

/-- The exact inverse-square integral on one positive unit interval. -/
theorem integral_zpow_neg_two_unit
    {N : ℕ}
    (hN : 1 ≤ N) :
    (∫ x : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ),
      x ^ (-2 : ℤ)) =
      ((N : ℝ))⁻¹ - (((N + 1 : ℕ) : ℝ))⁻¹ := by
  rw [intervalIntegral.integral_zpow]
  · norm_num [zpow_neg]
    field_simp
    ring
  · right
    constructor
    · norm_num
    · simp only [Set.mem_uIcc]
      intro hzero
      rcases hzero with hzero | hzero <;> nlinarith

/-- For every positive integer interval, the algebraic unit kernel is exactly
the classical inverse-square integral contribution. -/
theorem weakMertensUnitIntervalIntegral_eq_kernel
    {N : ℕ}
    (hN : 1 ≤ N) :
    weakMertensUnitIntervalIntegral N =
      weakMertensUnitKernel N := by
  unfold weakMertensUnitIntervalIntegral weakMertensUnitKernel
  rw [if_neg (by omega : N ≠ 0)]
  rw [intervalIntegral.integral_const_mul,
    integral_zpow_neg_two_unit hN]

/-- The regularized discrete weight from #641 is pointwise dominated by the
exact positive unit-interval kernel. -/
theorem weightedMertensPrefixSquare_le_unitKernel
    (N : ℕ) :
    weightedMertensPrefixSquare N ≤
      weakMertensUnitKernel N := by
  by_cases hN0 : N = 0
  · subst N
    simp [weightedMertensPrefixSquare, weakMertensUnitKernel,
      mertensPrefixReal]
  · have hN : 1 ≤ N := by omega
    unfold weightedMertensPrefixSquare weakMertensUnitKernel
    rw [if_neg hN0]
    have hMR : 0 ≤ mertensPrefixReal N ^ 2 := sq_nonneg _
    have hk :
        (((N + 1 : ℕ) : ℝ))⁻¹ ^ 2 ≤
          ((N : ℝ))⁻¹ - (((N + 1 : ℕ) : ℝ))⁻¹ := by
      have hNR : (0 : ℝ) < N := by exact_mod_cast hN
      have hN1R : (0 : ℝ) < (N + 1 : ℕ) := by positivity
      field_simp [ne_of_gt hNR, ne_of_gt hN1R]
      nlinarith
    have hden :
        weightedMertensPrefixSquare N =
          mertensPrefixReal N ^ 2 *
            (((N + 1 : ℕ) : ℝ))⁻¹ ^ 2 := by
      unfold weightedMertensPrefixSquare
      field_simp
      ring
    rw [hden]
    exact mul_le_mul_of_nonneg_left hk hMR

/-- The exact unit-interval Weak-Mertens energy on the same three localized
prefix families that occur in the exceptional boundary packet. -/
def boundaryLocalizedUnitWeakMertensEnergy (j : ℕ) : ℝ :=
  ∑ u ∈ Finset.range (2 ^ j),
    (weakMertensUnitKernel (2 ^ (j + 1) - u - 1) +
      weakMertensUnitKernel (2 ^ j - u - 1) +
      weakMertensUnitKernel
        (logarithmicShallowDepthCount j - u))

/-- The localized regularized discrete statistic is pointwise dominated by the
corresponding exact unit-interval Weak-Mertens energy. -/
theorem boundaryLocalizedWeightedMertensSquareEnergy_le_unit
    (j : ℕ) :
    boundaryLocalizedWeightedMertensSquareEnergy j ≤
      boundaryLocalizedUnitWeakMertensEnergy j := by
  unfold boundaryLocalizedWeightedMertensSquareEnergy
    boundaryLocalizedUnitWeakMertensEnergy
  apply Finset.sum_le_sum
  intro u _hu
  exact add_le_add
    (add_le_add
      (weightedMertensPrefixSquare_le_unitKernel _)
      (weightedMertensPrefixSquare_le_unitKernel _))
    (weightedMertensPrefixSquare_le_unitKernel _)

/-- Unit-interval formulation at the exact boundary-localized prefixes.  This
is the closest source-facing discrete form of the classical Weak-Mertens
integral before proving the global step-function summation identity. -/
def BoundaryUnitIntervalWeakMertensSource : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      boundaryLocalizedUnitWeakMertensEnergy j ≤
        C * (j + 2 : ℝ)

/-- The unit-interval source supplies the regularized discrete source from
#641 without any further analytic estimate. -/
theorem dyadicWeightedWeakMertensBoundarySource_of_unitInterval
    (hUnit : BoundaryUnitIntervalWeakMertensSource) :
    DyadicWeightedWeakMertensBoundarySource := by
  obtain ⟨C, hC, hUnit⟩ := hUnit
  refine ⟨C, hC, ?_⟩
  intro j
  exact le_trans
    (boundaryLocalizedWeightedMertensSquareEnergy_le_unit j)
    (hUnit j)

/-- The exact localized unit-interval Weak-Mertens source therefore supplies
the exceptional signed boundary packet. -/
theorem subpolynomialCoreBoundarySignedPacket_of_unitWeakMertens
    (hUnit : BoundaryUnitIntervalWeakMertensSource) :
    SubpolynomialCoreBoundarySignedPacket :=
  subpolynomialCoreBoundarySignedPacket_of_weightedWeakMertens
    (dyadicWeightedWeakMertensBoundarySource_of_unitInterval hUnit)

/-- Conventional/global Weak Mertens still needs one source-faithful theorem
identifying its step-function integral with a sum of the exact unit-interval
contributions used above, together with bounded multiplicity of the three
localized prefix families. -/
structure ClassicalWeakMertensToBoundaryUnitIntervalAdapter
    (classicalWeakMertens : Prop) : Type where
  stepFunctionIdentity : Prop
  localizedMultiplicity : Prop
  globalIntegralGrowth : Prop
  toUnit :
    classicalWeakMertens →
      stepFunctionIdentity →
      localizedMultiplicity →
      globalIntegralGrowth →
      BoundaryUnitIntervalWeakMertensSource

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weakMertensUnitIntervalIntegral_eq_kernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensPrefixSquare_le_unitKernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryLocalizedWeightedMertensSquareEnergy_le_unit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_unitWeakMertens
```
