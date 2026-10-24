# Complete source: GRWTSK.NumberTheory.Moebius.CoreBoundaryClassicalWeakMertens

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b3f580e93cb140327858e4cf6bebc64880d69f0` · SHA-256 `c84c2bc88241a5902f2f9172a16f0f5825d6299fe956ea1d45072f6c449735bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #666. Parent: draft PR #659 at
`d967c3078f90e29e551a0c6f2a0a8a1889805f79`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryGlobalUnitWeakMertens
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

set_option autoImplicit false
noncomputable section
open scoped BigOperators Interval
open Set MeasureTheory

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The conventional real Mertens step function, represented by the natural
floor on the nonnegative half-line. -/
def classicalMertensStepFunction (x : ℝ) : ℝ :=
  if 0 ≤ x then mertensPrefixReal ⌊x⌋₊ else 0

/-- The inverse-square integrand in the classical Weak Mertens mean square. -/
def classicalWeakMertensStepIntegrand (x : ℝ) : ℝ :=
  classicalMertensStepFunction x ^ 2 * x ^ (-2 : ℤ)

/-- On one half-open integer interval the Mertens step function is literally
constant. -/
theorem classicalMertensStepFunction_eq_on_Ico
    (N : ℕ) {x : ℝ}
    (hx : x ∈ Set.Ico (N : ℝ) ((N + 1 : ℕ) : ℝ)) :
    classicalMertensStepFunction x = mertensPrefixReal N := by
  unfold classicalMertensStepFunction
  have hxnonneg : 0 ≤ x :=
    le_trans (by positivity : (0 : ℝ) ≤ N) hx.1
  rw [if_pos hxnonneg]
  rw [Nat.floor_eq_on_Ico N x]
  simpa only [Nat.cast_add, Nat.cast_one] using hx

/-- Endpoint changes are null, so the step function has its expected constant
value almost everywhere on the corresponding closed unit interval. -/
theorem classicalMertensStepFunction_ae_eq_unit
    (N : ℕ) :
    ∀ᵐ x : ℝ,
      x ∈ Set.Icc (N : ℝ) ((N + 1 : ℕ) : ℝ) →
        classicalMertensStepFunction x = mertensPrefixReal N := by
  filter_upwards [Ico_ae_eq_Icc] with x h hx
  exact classicalMertensStepFunction_eq_on_Ico N (h.mpr hx)

/-- The complete Weak-Mertens integrand agrees almost everywhere with the
constant-prefix inverse-square integrand on one unit interval. -/
theorem classicalWeakMertensStepIntegrand_ae_eq_unit
    (N : ℕ) :
    ∀ᵐ x : ℝ,
      x ∈ Set.Icc (N : ℝ) ((N + 1 : ℕ) : ℝ) →
        classicalWeakMertensStepIntegrand x =
          mertensPrefixReal N ^ 2 * x ^ (-2 : ℤ) := by
  filter_upwards [classicalMertensStepFunction_ae_eq_unit N] with x h hx
  unfold classicalWeakMertensStepIntegrand
  rw [h hx]

/-- The step integrand is interval-integrable on every positive unit interval. -/
theorem classicalWeakMertensStepIntegrand_intervalIntegrable_unit
    {N : ℕ}
    (hN : 1 ≤ N) :
    IntervalIntegrable classicalWeakMertensStepIntegrand volume
      (N : ℝ) ((N + 1 : ℕ) : ℝ) := by
  have hbase :
      IntervalIntegrable
        (fun x : ℝ => mertensPrefixReal N ^ 2 * x ^ (-2 : ℤ))
        volume (N : ℝ) ((N + 1 : ℕ) : ℝ) := by
    apply IntervalIntegrable.const_mul
    apply intervalIntegral.intervalIntegrable_zpow
    right
    exact notMem_uIcc_of_lt
      (by exact_mod_cast hN)
      (by positivity)
  apply hbase.congr_uIoo
  intro x hx
  have horder : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by norm_num
  rw [Set.uIoo_of_le horder] at hx
  have hxIco : x ∈ Set.Ico (N : ℝ) ((N + 1 : ℕ) : ℝ) :=
    ⟨hx.1.le, hx.2⟩
  rw [classicalWeakMertensStepIntegrand,
    classicalMertensStepFunction_eq_on_Ico N hxIco]

/-- The classical Mertens step integral on one positive unit interval is
exactly the unit kernel already used by the boundary route. -/
theorem classicalWeakMertensStepIntegral_unit_eq_kernel
    {N : ℕ}
    (hN : 1 ≤ N) :
    (∫ x : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ),
      classicalWeakMertensStepIntegrand x) =
      weakMertensUnitKernel N := by
  rw [← weakMertensUnitIntervalIntegral_eq_kernel hN]
  unfold weakMertensUnitIntervalIntegral
  apply intervalIntegral.integral_congr_ae
  have hinc :
      Ι (N : ℝ) ((N + 1 : ℕ) : ℝ) ⊆
        Set.Icc (N : ℝ) ((N + 1 : ℕ) : ℝ) := by
    rw [Set.uIoc_of_le (by norm_num : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ))]
    exact Set.Ioc_subset_Icc_self
  filter_upwards [classicalWeakMertensStepIntegrand_ae_eq_unit N]
    with x h hx
  exact h (hinc hx)

/-- The conventional finite Weak-Mertens integral at an integer endpoint. -/
def classicalWeakMertensStepIntegral (Y : ℕ) : ℝ :=
  ∫ x : ℝ in (1 : ℝ)..(Y : ℝ),
    classicalWeakMertensStepIntegrand x

/-- Adjacent unit intervals recover the exact finite step-function integral. -/
theorem classicalWeakMertensStepIntegral_eq_unitSum
    {Y : ℕ}
    (hY : 1 ≤ Y) :
    classicalWeakMertensStepIntegral Y =
      ∑ N ∈ Finset.Ico 1 Y, weakMertensUnitKernel N := by
  unfold classicalWeakMertensStepIntegral
  have hint :
      ∀ N ∈ Finset.Ico 1 Y,
        IntervalIntegrable classicalWeakMertensStepIntegrand volume
          (N : ℝ) ((N + 1 : ℕ) : ℝ) := by
    intro N hN
    exact classicalWeakMertensStepIntegrand_intervalIntegrable_unit
      (Finset.mem_Ico.mp hN).1
  have hadj := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (f := classicalWeakMertensStepIntegrand)
    (a := fun N : ℕ => (N : ℝ)) hY hint
  calc
    (∫ x : ℝ in (1 : ℝ)..(Y : ℝ),
      classicalWeakMertensStepIntegrand x) =
      ∑ N ∈ Finset.Ico 1 Y,
        ∫ x : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ),
          classicalWeakMertensStepIntegrand x := by
      simpa using hadj.symm
    _ = ∑ N ∈ Finset.Ico 1 Y,
        weakMertensUnitKernel N := by
      apply Finset.sum_congr rfl
      intro N hN
      exact classicalWeakMertensStepIntegral_unit_eq_kernel
        (Finset.mem_Ico.mp hN).1

/-- The repository's global unit energy is exactly the conventional Mertens
step integral at the matching dyadic endpoint. -/
theorem dyadicGlobalUnitWeakMertensEnergy_eq_stepIntegral
    (j : ℕ) :
    dyadicGlobalUnitWeakMertensEnergy j =
      classicalWeakMertensStepIntegral (2 ^ (j + 1)) := by
  have hY : 1 ≤ 2 ^ (j + 1) := by positivity
  rw [classicalWeakMertensStepIntegral_eq_unitSum hY]
  unfold dyadicGlobalUnitWeakMertensEnergy
  calc
    (∑ N ∈ Finset.range (2 ^ (j + 1)),
      weakMertensUnitKernel N) =
      (∑ N ∈ Finset.range 1, weakMertensUnitKernel N) +
        ∑ N ∈ Finset.Ico 1 (2 ^ (j + 1)),
          weakMertensUnitKernel N :=
      (Finset.sum_range_add_sum_Ico weakMertensUnitKernel hY).symm
    _ = ∑ N ∈ Finset.Ico 1 (2 ^ (j + 1)),
        weakMertensUnitKernel N := by
      simp [weakMertensUnitKernel]

/-- Exact dyadic formulation of the classical Weak Mertens conjecture.  The
external truth of this source remains open; only its transport is proved here. -/
def ClassicalWeakMertensStepSource : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      classicalWeakMertensStepIntegral (2 ^ (j + 1)) ≤
        C * (j + 2 : ℝ)

/-- The classical step-integral source supplies the exact dyadic global unit
source with no analytic loss. -/
theorem dyadicGlobalUnitWeakMertensSource_of_classicalStep
    (hClassical : ClassicalWeakMertensStepSource) :
    DyadicGlobalUnitWeakMertensSource := by
  obtain ⟨C, hC, hbound⟩ := hClassical
  refine ⟨C, hC, ?_⟩
  intro j
  rw [dyadicGlobalUnitWeakMertensEnergy_eq_stepIntegral]
  exact hbound j

/-- The exact step-function adapter is now constructed for the local classical
formulation above. -/
def classicalWeakMertensStepToDyadicGlobalUnitAdapter :
    ClassicalWeakMertensToDyadicGlobalUnitAdapter
      ClassicalWeakMertensStepSource where
  stepFunctionIntegralIdentity := True
  dyadicIntegralGrowth := True
  toGlobal := by
    intro hClassical _ _
    exact dyadicGlobalUnitWeakMertensSource_of_classicalStep hClassical

/-- The classical Weak-Mertens step source supplies the exceptional signed
boundary packet through the complete finite localization chain. -/
theorem subpolynomialCoreBoundarySignedPacket_of_classicalWeakMertensStep
    (hClassical : ClassicalWeakMertensStepSource) :
    SubpolynomialCoreBoundarySignedPacket :=
  subpolynomialCoreBoundarySignedPacket_of_globalUnitWeakMertens
    (dyadicGlobalUnitWeakMertensSource_of_classicalStep hClassical)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.classicalWeakMertensStepIntegral_unit_eq_kernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.classicalWeakMertensStepIntegral_eq_unitSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicGlobalUnitWeakMertensEnergy_eq_stepIntegral
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_classicalWeakMertensStep
```
