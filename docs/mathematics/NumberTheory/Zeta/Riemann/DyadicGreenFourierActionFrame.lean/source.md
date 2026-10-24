# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b7c5c0a75c60e91db31aa508204d1c89079da25` · SHA-256 `9d01fe915e6acdbe747a5e9a51775c3f4e259cfc51bf9ede9cc64aef27b6248b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete admissible Fourier action frame

The centered Green residual has zero mean, so its zero Fourier coefficient
vanishes. For every nonzero frequency the preceding module identifies the
Fourier coefficient with an actual zero-endpoint ComplexTest action.

Define the mode energy to be zero at k=0 and the squared action norm otherwise.
It is exactly the squared Fourier coefficient norm for every integer k.

Parseval therefore transfers from external Fourier coordinates to a genuine
growing family of admissible arithmetic source actions. Regrouping integer
frequencies into natural shells gives finite positive action heads converging
exactly to greenEnergy. Adding mass0² and mass1² gives finite growing source
stages converging exactly to augmentedEnergy.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
COMPLETE_ADMISSIBLE_FOURIER_ACTION_FRAME_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology _root_.MeasureTheory Set
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.ComplexReadout

/-- Exact centering of the real Green source residual. -/
theorem greenSourceFrameValue_integral_zero
    {X : ℕ} (hX : 0 < X) :
    (∫ t, greenSourceFrameValue X t ∂unitVolume) = 0 := by
  simp_rw [greenSourceFrameValue_eq_centeredResidual]
  have hsub := integral_sub (cumulative_integrable X) (integrable_const (center X) (μ := unitVolume))
  rw [hsub, integral_cumulative hX]
  simp

/-- Complexification preserves the exact zero mean. -/
theorem greenResidualComplex_integral_zero
    {X : ℕ} (hX : 0 < X) :
    (∫ t, greenResidualComplex X t ∂unitVolume) = 0 := by
  have hi : Integrable (greenSourceFrameValue X) unitVolume := by
    convert! (cumulative_integrable X).sub (integrable_const (center X) (μ := unitVolume)) using 1
    funext t
    exact greenSourceFrameValue_eq_centeredResidual X t
  have h := Complex.ofRealCLM.integral_comp_comm hi
  calc
    _ = ((∫ t, greenSourceFrameValue X t ∂unitVolume : ℝ) : ℂ) := by
      convert! h using 1
    _ = 0 := by rw [greenSourceFrameValue_integral_zero hX]; rfl

/-- The zero Fourier coefficient is exactly absent because the source residual
was centered before Fourier analysis. -/
theorem greenResidualFourierCoeff_zero
    {X : ℕ} (hX : 0 < X) :
    greenResidualFourierCoeff X 0 = 0 := by
  rw [greenResidualFourierCoeff_eq_unit_pairing]
  simp only [fourierModeSlope, neg_zero, fourier_zero, mul_one]
  exact greenResidualComplex_integral_zero hX

/-- Energy of one admissible integer-frequency source readout. The zero mode is
definitionally assigned zero because its exact coefficient vanishes. -/
def greenAdmissibleFourierModeEnergy
    (X : ℕ) (k : ℤ) : ℝ :=
  if hk : k = 0 then
    0
  else
    ‖action X (fourierModeComplexTest k hk).value‖^2

theorem greenAdmissibleFourierModeEnergy_nonnegative
    (X : ℕ) (k : ℤ) :
    0 ≤ greenAdmissibleFourierModeEnergy X k := by
  unfold greenAdmissibleFourierModeEnergy
  split_ifs
  · exact le_rfl
  · positivity

/-- Every mode energy is exactly the corresponding Parseval coefficient energy. -/
theorem greenAdmissibleFourierModeEnergy_eq_coeff
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) :
    greenAdmissibleFourierModeEnergy X k =
      ‖greenResidualFourierCoeff X k‖^2 := by
  by_cases hk : k = 0
  · subst k
    simp [greenAdmissibleFourierModeEnergy,
      greenResidualFourierCoeff_zero hX]
  · rw [greenAdmissibleFourierModeEnergy, dif_neg hk]
    exact action_fourierModeComplexTest_norm_sq hX hk

/-- Parseval now becomes a HasSum theorem for actual admissible action energies. -/
theorem greenAdmissibleFourierModeEnergy_hasSum
    {X : ℕ} (hX : 0 < X) :
    HasSum (greenAdmissibleFourierModeEnergy X)
      (greenEnergy X) := by
  exact (greenResidualFourier_parseval_hasSum X).congr_fun
    (fun k => greenAdmissibleFourierModeEnergy_eq_coeff hX k)

/-- Natural shell grouping of the complete admissible integer frame. -/
def greenAdmissibleFourierShellEnergy
    (X : ℕ) (n : ℕ) : ℝ :=
  greenAdmissibleFourierModeEnergy X (n : ℤ) +
    greenAdmissibleFourierModeEnergy X (-((n : ℤ) + 1))

theorem greenAdmissibleFourierShellEnergy_nonnegative
    (X n : ℕ) :
    0 ≤ greenAdmissibleFourierShellEnergy X n := by
  unfold greenAdmissibleFourierShellEnergy
  exact add_nonneg
    (greenAdmissibleFourierModeEnergy_nonnegative X _)
    (greenAdmissibleFourierModeEnergy_nonnegative X _)

theorem greenAdmissibleFourierShellEnergy_hasSum
    {X : ℕ} (hX : 0 < X) :
    HasSum (greenAdmissibleFourierShellEnergy X)
      (greenEnergy X) := by
  convert! (greenAdmissibleFourierModeEnergy_hasSum hX).nat_add_neg_add_one using 1

/-- Finite growing source-action head. -/
def greenAdmissibleFourierActionHead
    (X N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    greenAdmissibleFourierShellEnergy X n

theorem greenAdmissibleFourierActionHead_nonnegative
    (X N : ℕ) :
    0 ≤ greenAdmissibleFourierActionHead X N := by
  unfold greenAdmissibleFourierActionHead
  exact Finset.sum_nonneg
    (fun n hn => greenAdmissibleFourierShellEnergy_nonnegative X n)

theorem greenAdmissibleFourierActionHead_mono
    (X : ℕ) :
    Monotone (greenAdmissibleFourierActionHead X) := by
  intro M N hMN
  unfold greenAdmissibleFourierActionHead
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.range_mono hMN)
    (fun n hn hnot =>
      greenAdmissibleFourierShellEnergy_nonnegative X n)

/-- Finite source-action heads converge exactly to the full Green energy. -/
theorem greenAdmissibleFourierActionHead_tendsto
    {X : ℕ} (hX : 0 < X) :
    Tendsto (greenAdmissibleFourierActionHead X)
      atTop (𝓝 (greenEnergy X)) :=
  (greenAdmissibleFourierShellEnergy_hasSum hX).tendsto_sum_nat

theorem greenAdmissibleFourierActionHead_le_greenEnergy
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    greenAdmissibleFourierActionHead X N ≤ greenEnergy X := by
  have hsummable :=
    (greenAdmissibleFourierShellEnergy_hasSum hX).summable
  have hle := hsummable.sum_le_tsum
    (Finset.range N)
    (fun n hn => greenAdmissibleFourierShellEnergy_nonnegative X n)
  rw [(greenAdmissibleFourierShellEnergy_hasSum hX).tsum_eq] at hle
  exact hle

/-- Complete finite action stage with the two retained endpoint coordinates. -/
def fullGreenAdmissibleActionStage
    (X N : ℕ) : ℝ :=
  (mass0 X)^2 + (mass1 X)^2 +
    greenAdmissibleFourierActionHead X N

theorem fullGreenAdmissibleActionStage_nonnegative
    (X N : ℕ) :
    0 ≤ fullGreenAdmissibleActionStage X N := by
  unfold fullGreenAdmissibleActionStage
  positivity [greenAdmissibleFourierActionHead_nonnegative X N]

theorem fullGreenAdmissibleActionStage_mono
    (X : ℕ) :
    Monotone (fullGreenAdmissibleActionStage X) := by
  intro M N hMN
  unfold fullGreenAdmissibleActionStage
  exact add_le_add le_rfl (greenAdmissibleFourierActionHead_mono X hMN)

/-- The growing admissible action frame captures the complete augmented source
energy exactly in the limit. -/
theorem fullGreenAdmissibleActionStage_tendsto
    {X : ℕ} (hX : 0 < X) :
    Tendsto (fullGreenAdmissibleActionStage X)
      atTop (𝓝 (augmentedEnergy X)) := by
  have h := greenAdmissibleFourierActionHead_tendsto hX
  have hconst :
      Tendsto
        (fun _ : ℕ => (mass0 X)^2 + (mass1 X)^2)
        atTop
        (𝓝 ((mass0 X)^2 + (mass1 X)^2)) :=
    tendsto_const_nhds
  have hadd := hconst.add h
  convert! hadd using 1
  unfold augmentedEnergy
  ring

theorem fullGreenAdmissibleActionStage_le_augmentedEnergy
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    fullGreenAdmissibleActionStage X N ≤ augmentedEnergy X := by
  calc
    _ ≤ (mass0 X)^2 + (mass1 X)^2 + greenEnergy X :=
      add_le_add le_rfl (greenAdmissibleFourierActionHead_le_greenEnergy hX N)
    _ = _ := by unfold augmentedEnergy; ring

end GRWTSK.RiemannHypothesis
```
