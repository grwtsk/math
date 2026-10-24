module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeWalkDyadic
public import Surface.Core.PrimeWalkMeasureBridge
public import Mathlib.Analysis.Convolution
public import Mathlib.Analysis.Fourier.FourierTransform
public import Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm
public import Mathlib.MeasureTheory.Function.SpecialFunctions.Basic
public import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
import Mathlib.Tactic

/-!
# Honest dyadic convolution and Littlewood--Paley interfaces

This module separates three layers which must not be conflated.

* `DyadicConvolutionKernel` is an integrable, mean-zero spatial kernel.  Its
  dyadic rescalings and Bochner convolutions are concrete definitions.
* `LittlewoodPaleyFrequencyCertificate` is additional frequency-side data: an
  annular Fourier support condition and a partition of unity away from zero.
  A spatial kernel is called Littlewood--Paley only when such a certificate is
  supplied.
* `HasLittlewoodPaleyLpEquivalence` is a proposition describing the infinite
  square-function estimate.  This file does not assert or prove it.

Mathlib 4.31 supplies the Bochner convolution in
`Mathlib.Analysis.Convolution`, the Fourier integral in
`Mathlib.Analysis.Fourier.FourierTransform`, `MemLp`/`lpNorm`, and Haar
change-of-variables results.  It does not presently turn an arbitrary
integrable mean-zero kernel into a Littlewood--Paley partition.  Accordingly,
the frequency support and partition properties below are explicit hypotheses,
not generated facts.

The exact results in this file concern scaling, cancellation, convolution
identities, and finite square functions.  No maximal-function or Kakeya bound,
arithmetic prime-walk bridge, GRH implication, spectral determinant identity,
or infinite Littlewood--Paley inequality is proved here.
-/

public section

namespace Surface.Core.PrimeWalkLittlewoodPaley

noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal FourierTransform

/-! ## Spatial dyadic kernel family -/

/-- The positive dilation factor `2^j`, for an integer dyadic scale `j`. -/
@[expose]
def dyadicScale (j : ℤ) : ℝ :=
  (2 : ℝ) ^ j

@[surface_novel, surface_published]
theorem dyadicScale_pos (j : ℤ) : 0 < dyadicScale j := by
  exact zpow_pos (by norm_num) j

@[surface_novel, surface_published]
theorem dyadicScale_ne_zero (j : ℤ) : dyadicScale j ≠ 0 :=
  (dyadicScale_pos j).ne'

/-- An integrable, cancelling spatial kernel.  These hypotheses make a
dyadic convolution family; they do not by themselves make it a
Littlewood--Paley family. -/
structure DyadicConvolutionKernel where
  /-- The spatial base kernel. -/
  baseKernel : ℝ → ℝ
  /-- Absolute Bochner integrability of the base kernel. -/
  baseIntegrable : Integrable baseKernel
  /-- The cancellation condition needed for a band-pass kernel. -/
  baseIntegral_eq_zero : ∫ x, baseKernel x = 0

/-- The usual one-dimensional, `L¹`-mass-preserving rescaling
`K_j(x) = 2^j K(2^j x)`. -/
@[expose]
def scaledKernel (kernel : DyadicConvolutionKernel) (j : ℤ) : ℝ → ℝ :=
  fun x ↦ dyadicScale j * kernel.baseKernel (dyadicScale j * x)

@[surface_novel, surface_published]
theorem scaledKernel_integrable (kernel : DyadicConvolutionKernel) (j : ℤ) :
    Integrable (scaledKernel kernel j) := by
  exact (kernel.baseIntegrable.comp_mul_left' (dyadicScale_ne_zero j)).const_mul _

@[surface_novel, surface_published]
theorem scaledKernel_integral_eq_zero
    (kernel : DyadicConvolutionKernel) (j : ℤ) :
    ∫ x, scaledKernel kernel j x = 0 := by
  simp only [scaledKernel, MeasureTheory.integral_const_mul]
  rw [MeasureTheory.Measure.integral_comp_mul_left]
  simp [kernel.baseIntegral_eq_zero]

/-! ## Frequency certificate

The transform is taken after embedding the real kernel into `ℂ`.  This keeps
the support and partition conditions in their standard complex Fourier form.
-/

/-- Complex-valued version of a scaled real kernel. -/
@[expose]
def complexScaledKernel (kernel : DyadicConvolutionKernel) (j : ℤ) : ℝ → ℂ :=
  fun x ↦ Complex.ofRealCLM (scaledKernel kernel j x)

@[surface_novel, surface_published]
theorem complexScaledKernel_integrable
    (kernel : DyadicConvolutionKernel) (j : ℤ) :
    Integrable (complexScaledKernel kernel j) := by
  change Integrable (fun x ↦ Complex.ofRealCLM (scaledKernel kernel j x))
  exact Complex.ofRealCLM.integrable_comp (scaledKernel_integrable kernel j)

/-- Actual Fourier multiplier of the scaled spatial kernel. -/
@[expose]
def frequencyMultiplier (kernel : DyadicConvolutionKernel) (j : ℤ) : ℝ → ℂ :=
  VectorFourier.fourierIntegral Real.fourierChar volume
    (innerSL ℝ).toLinearMap₁₂ (complexScaledKernel kernel j)

@[surface_novel, surface_published]
theorem frequencyMultiplier_continuous
    (kernel : DyadicConvolutionKernel) (j : ℤ) :
    Continuous (frequencyMultiplier kernel j) := by
  exact VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    (innerSL ℝ).continuous₂ (complexScaledKernel_integrable kernel j)

@[surface_novel, surface_published]
theorem frequencyMultiplier_zero
    (kernel : DyadicConvolutionKernel) (j : ℤ) :
    frequencyMultiplier kernel j 0 = 0 := by
  have hmap := Complex.ofRealCLM.integral_comp_comm
    (scaledKernel_integrable kernel j)
  have hintegral : ∫ x, complexScaledKernel kernel j x = 0 := by
    simpa [complexScaledKernel, scaledKernel_integral_eq_zero] using hmap
  simpa [frequencyMultiplier, VectorFourier.fourierIntegral] using hintegral

/-- Extra frequency-side hypotheses which promote a dyadic convolution family
to a genuine Littlewood--Paley family.  The support annulus at scale `j` is
`innerRadius * 2^j ≤ |ξ| ≤ outerRadius * 2^j`, and the multipliers sum
to one at every nonzero frequency. -/
structure LittlewoodPaleyFrequencyCertificate
    (kernel : DyadicConvolutionKernel) where
  innerRadius : ℝ
  outerRadius : ℝ
  innerRadius_pos : 0 < innerRadius
  inner_lt_outer : innerRadius < outerRadius
  annularSupport : ∀ (j : ℤ) (ξ : ℝ),
    (|ξ| < innerRadius * dyadicScale j ∨
      outerRadius * dyadicScale j < |ξ|) →
      frequencyMultiplier kernel j ξ = 0
  partitionOfUnity : ∀ ξ : ℝ, ξ ≠ 0 →
    HasSum (fun j : ℤ ↦ frequencyMultiplier kernel j ξ) 1

/-- Terminologically strict predicate: this is true only when the actual
Fourier multipliers have annular support and form a partition of unity. -/
@[expose]
def IsLittlewoodPaleyFamily (kernel : DyadicConvolutionKernel) : Prop :=
  Nonempty (LittlewoodPaleyFrequencyCertificate kernel)

/-- Explicit frequency-partition hypothesis.  This synonym is the boundary
between a mere spatial dyadic family and a genuine Littlewood--Paley family. -/
@[expose]
def HasFrequencyPartition (kernel : DyadicConvolutionKernel) : Prop :=
  IsLittlewoodPaleyFamily kernel

/-! ## Bochner convolution projections -/

/-- The `j`-th dyadic Bochner convolution of an `E`-valued signal with the
scaled scalar kernel. -/
@[expose]
def bochnerProjection
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) (f : ℝ → E) : ℝ → E :=
  MeasureTheory.convolution (scaledKernel kernel j) f
    (ContinuousLinearMap.lsmul ℝ ℝ) volume

/-- Exact integrability condition under which the pointwise Bochner
convolution exists everywhere. -/
@[expose]
def ProjectionExists
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) (f : ℝ → E) : Prop :=
  MeasureTheory.ConvolutionExists (scaledKernel kernel j) f
    (ContinuousLinearMap.lsmul ℝ ℝ) volume

@[surface_novel, surface_published]
theorem bochnerProjection_apply
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) (f : ℝ → E) (x : ℝ) :
    bochnerProjection kernel j f x =
      ∫ y, scaledKernel kernel j y • f (x - y) :=
  MeasureTheory.convolution_lsmul

@[surface_novel, surface_published, simp]
theorem bochnerProjection_zero
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) :
    bochnerProjection kernel j (0 : ℝ → E) = 0 := by
  exact MeasureTheory.convolution_zero

@[surface_novel, surface_published]
theorem bochnerProjection_smul
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) (c : ℝ) (f : ℝ → E) :
    bochnerProjection kernel j (c • f) = c • bochnerProjection kernel j f := by
  exact MeasureTheory.convolution_smul

@[surface_novel, surface_published]
theorem bochnerProjection_add
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ) (f g : ℝ → E)
    (hf : ProjectionExists kernel j f) (hg : ProjectionExists kernel j g) :
    bochnerProjection kernel j (f + g) =
      bochnerProjection kernel j f + bochnerProjection kernel j g := by
  exact hf.distrib_add hg

/-! ## Exact finite square functions -/

/-- Finite sum of squared dyadic projection norms. -/
@[expose]
def finiteSquareEnergy
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (f : ℝ → E) (x : ℝ) : ℝ :=
  ∑ j ∈ scales, ‖bochnerProjection kernel j f x‖ ^ 2

/-- Finite Littlewood--Paley square function.  This definition is exact and
does not take an unchecked infinite sum. -/
@[expose]
def finiteSquareFunction
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (f : ℝ → E) (x : ℝ) : ℝ :=
  Real.sqrt (finiteSquareEnergy kernel scales f x)

@[surface_novel, surface_published]
theorem finiteSquareEnergy_nonneg
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (f : ℝ → E) (x : ℝ) :
    0 ≤ finiteSquareEnergy kernel scales f x := by
  exact Finset.sum_nonneg fun _ _ ↦ sq_nonneg _

@[surface_novel, surface_published]
theorem finiteSquareFunction_sq
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (f : ℝ → E) (x : ℝ) :
    finiteSquareFunction kernel scales f x ^ 2 =
      finiteSquareEnergy kernel scales f x := by
  exact Real.sq_sqrt (finiteSquareEnergy_nonneg kernel scales f x)

@[surface_novel, surface_published]
theorem finiteSquareFunction_nonneg
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (f : ℝ → E) (x : ℝ) :
    0 ≤ finiteSquareFunction kernel scales f x :=
  Real.sqrt_nonneg _

@[surface_novel, surface_published, simp]
theorem finiteSquareEnergy_empty
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (f : ℝ → E) (x : ℝ) :
    finiteSquareEnergy kernel ∅ f x = 0 := by
  simp [finiteSquareEnergy]

@[surface_novel, surface_published, simp]
theorem finiteSquareFunction_empty
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (f : ℝ → E) (x : ℝ) :
    finiteSquareFunction kernel ∅ f x = 0 := by
  simp [finiteSquareFunction]

@[surface_novel, surface_published]
theorem finiteSquareEnergy_insert
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (j : ℤ)
    (hj : j ∉ scales) (f : ℝ → E) (x : ℝ) :
    finiteSquareEnergy kernel (insert j scales) f x =
      ‖bochnerProjection kernel j f x‖ ^ 2 +
        finiteSquareEnergy kernel scales f x := by
  simp [finiteSquareEnergy, hj]

@[surface_novel, surface_published, simp]
theorem finiteSquareEnergy_zero
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (x : ℝ) :
    finiteSquareEnergy kernel scales (0 : ℝ → E) x = 0 := by
  simp [finiteSquareEnergy]

@[surface_novel, surface_published, simp]
theorem finiteSquareFunction_zero
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (x : ℝ) :
    finiteSquareFunction kernel scales (0 : ℝ → E) x = 0 := by
  simp [finiteSquareFunction]

/-- Measurability of the finite energy under the exact measurable-projection
hypothesis.  Mathlib's current general convolution API does not infer this
from mere `L¹` integrability of the kernel. -/
@[surface_novel, surface_published]
theorem finiteSquareEnergy_aestronglyMeasurable
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (f : ℝ → E)
    (hproj : ∀ j ∈ scales,
      AEStronglyMeasurable (bochnerProjection kernel j f) volume) :
    AEStronglyMeasurable (finiteSquareEnergy kernel scales f) volume := by
  unfold finiteSquareEnergy
  fun_prop

/-- Measurability of the finite square function under the same explicit
projection hypothesis. -/
@[surface_novel, surface_published]
theorem finiteSquareFunction_aestronglyMeasurable
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (f : ℝ → E)
    (hproj : ∀ j ∈ scales,
      AEStronglyMeasurable (bochnerProjection kernel j f) volume) :
    AEStronglyMeasurable (finiteSquareFunction kernel scales f) volume := by
  have henergy := finiteSquareEnergy_aestronglyMeasurable kernel scales f hproj
  exact henergy.aemeasurable.sqrt.aestronglyMeasurable

/-- Integrability of the finite energy follows from integrability of its
finitely many squared projection norms. -/
@[surface_novel, surface_published]
theorem finiteSquareEnergy_integrable
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ) (f : ℝ → E)
    (hproj : ∀ j ∈ scales,
      Integrable (fun x ↦ ‖bochnerProjection kernel j f x‖ ^ 2) volume) :
    Integrable (finiteSquareEnergy kernel scales f) volume := by
  unfold finiteSquareEnergy
  exact integrable_finsetSum scales fun j hj ↦ hproj j hj

/-! ## Literal application to a measure bridge

These wrappers apply the same checked convolution and finite square function
to the trajectory stored in `MeasureBridgeData`.  They make no claim that the
result controls, interpolates, or recovers the discrete observable.
-/

/-- The dyadic convolution of a measure bridge's continuous trajectory. -/
@[expose]
def bridgeProjection
    {E : Type*} [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ)
    (bridge : Surface.Core.PrimeWalkMeasureBridge.MeasureBridgeData E) : ℝ → E :=
  bochnerProjection kernel j bridge.trajectory

@[surface_novel, surface_published]
theorem bridgeProjection_apply
    {E : Type*} [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ)
    (bridge : Surface.Core.PrimeWalkMeasureBridge.MeasureBridgeData E) (x : ℝ) :
    bridgeProjection kernel j bridge x =
      ∫ y, scaledKernel kernel j y • bridge.trajectory (x - y) :=
  bochnerProjection_apply kernel j bridge.trajectory x

/-- Finite square function of a measure bridge's trajectory. -/
@[expose]
def bridgeFiniteSquareFunction
    {E : Type*} [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (bridge : Surface.Core.PrimeWalkMeasureBridge.MeasureBridgeData E) : ℝ → ℝ :=
  finiteSquareFunction kernel scales bridge.trajectory

@[surface_novel, surface_published]
theorem bridgeFiniteSquareFunction_apply
    {E : Type*} [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (scales : Finset ℤ)
    (bridge : Surface.Core.PrimeWalkMeasureBridge.MeasureBridgeData E) (x : ℝ) :
    bridgeFiniteSquareFunction kernel scales bridge x =
      Real.sqrt
        (∑ j ∈ scales, ‖bridgeProjection kernel j bridge x‖ ^ 2) := by
  rfl

/-! ## Infinite estimate as an explicit hypothesis only -/

/-- A nonnegative function `square` realizes the infinite square function of
`f` when the series of squared projection norms sums to `square x ^ 2` almost
everywhere.  Using `HasSum` avoids the misleading convention that a
nonsummable `tsum` is zero. -/
@[expose]
def IsInfiniteSquareFunction
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (f : ℝ → E) (square : ℝ → ℝ) : Prop :=
  (∀ x, 0 ≤ square x) ∧
    ∀ᵐ x ∂volume,
      HasSum (fun j : ℤ ↦ ‖bochnerProjection kernel j f x‖ ^ 2) (square x ^ 2)

/-- The classical infinite Littlewood--Paley `Lᵖ` equivalence, represented
only as a named proposition.  A proof would require analytic estimates absent
from this module. -/
@[expose]
def HasLittlewoodPaleyLpEquivalence
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (p : ℝ≥0∞) : Prop :=
  IsLittlewoodPaleyFamily kernel ∧ 1 < p ∧ p < ∞ ∧
    ∃ c C : ℝ, 0 < c ∧ c ≤ C ∧
      ∀ f : ℝ → E, MemLp f p volume →
        ∃ square : ℝ → ℝ,
          IsInfiniteSquareFunction kernel f square ∧
          MemLp square p volume ∧
          c * lpNorm f p volume ≤ lpNorm square p volume ∧
          lpNorm square p volume ≤ C * lpNorm f p volume

/-- Requested short name for the infinite `Lᵖ` square-function estimate.
This remains a proposition to be supplied by later analysis. -/
@[expose]
def HasLittlewoodPaleyEquivalence
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (p : ℝ≥0∞) : Prop :=
  HasLittlewoodPaleyLpEquivalence (E := E) kernel p

/-- A typed strong-`Lᵖ` maximal estimate for a caller-supplied maximal
operator.  No maximal operator or estimate is constructed in this file. -/
@[expose]
def HasMaximalEstimate
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (maximalOperator : (ℝ → E) → ℝ → ℝ) (p : ℝ≥0∞) : Prop :=
  1 < p ∧ p < ∞ ∧
    ∃ C : ℝ, 0 < C ∧
      ∀ f : ℝ → E, MemLp f p volume →
        MemLp (maximalOperator f) p volume ∧
          lpNorm (maximalOperator f) p volume ≤ C * lpNorm f p volume

/-- A deliberately strong, explicit arithmetic bridge hypothesis: sampling
the `j`-th continuous projection at natural times agrees with the discrete
`j`-th dyadic slice.  Neither this equality nor any weaker estimate is proved
here; callers must supply the bridge appropriate to their interpolation. -/
@[expose]
def HasArithmeticDyadicBridge
    {E : Type*} [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    (kernel : DyadicConvolutionKernel)
    (bridge : Surface.Core.PrimeWalkMeasureBridge.MeasureBridgeData E) : Prop :=
  ∀ (j k : ℕ),
    bridgeProjection kernel (j : ℤ) bridge (k : ℝ) =
      Surface.Core.AnalyticPrimeWalk.discreteDyadicSlice
        j bridge.discreteObservable k

end

end Surface.Core.PrimeWalkLittlewoodPaley

end
