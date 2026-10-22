/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenGramForm
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact Fourier frame of the dyadic Green residual

Mathlib supplies the complete Fourier Hilbert basis on an additive circle and
Parseval directly for a square-integrable function on a real interval.

Apply that theorem to the exact centered Green residual on (0,1]. Its Fourier
coefficients form a source-faithful infinite readout frame with

  sum over k in Z of abs(c_X(k))^2 = greenEnergy X.

Regrouping k=n and k=-(n+1) gives a natural-number shell sequence whose finite
heads converge to the full Green energy. Adjoining the two endpoint moment
squares gives finite growing positive stages converging exactly to
augmentedEnergy X.

This does not yet connect every Fourier coefficient to a ComplexTest action;
that admissible-readout bridge is a separate next theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_GREEN_FOURIER_PARSEVAL_FRAME_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology MeasureTheory Set
open CanonicalZeroDivisor
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def greenResidualComplex (X : ℕ) (t : ℝ) : ℂ :=
  (greenSourceFrameValue X t : ℂ)

theorem greenResidualComplex_memLp_Ioc
    (X : ℕ) :
    MemLp (greenResidualComplex X) 2
      (volume.restrict (Ioc (0 : ℝ) 1)) := by
  have hreal :
      MemLp (fun t => cumulative X t - center X) 2 unitVolume :=
    centered_memLp_two X
  have hcomplex :
      MemLp
        (fun t => ((cumulative X t - center X : ℝ) : ℂ))
        2 unitVolume :=
    hreal.ofReal
  have hmeasure :
      volume.restrict (Ioc (0 : ℝ) 1) ≤ unitVolume := by
    unfold unitVolume
    exact Measure.restrict_mono Ioc_subset_Icc_self le_rfl
  have hrestricted := hcomplex.mono_measure hmeasure
  simpa [greenResidualComplex, greenSourceFrameValue_eq_centeredResidual] using
    hrestricted

def greenResidualFourierCoeff (X : ℕ) (k : ℤ) : ℂ :=
  fourierCoeffOn (show (0 : ℝ) < 1 by norm_num)
    (greenResidualComplex X) k

theorem greenResidualComplex_interval_norm_sq
    (X : ℕ) :
    (∫ t in (0 : ℝ)..1, ‖greenResidualComplex X t‖^2) =
      greenEnergy X := by
  rw [← GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.unit_integral_eq_interval]
  rw [greenEnergy_eq_sourceFrame]
  apply integral_congr_ae
  filter_upwards with t
  simp [greenResidualComplex, Real.norm_eq_abs, sq_abs]

theorem greenResidualFourier_parseval_hasSum
    (X : ℕ) :
    HasSum
      (fun k : ℤ => ‖greenResidualFourierCoeff X k‖^2)
      (greenEnergy X) := by
  have h :=
    hasSum_sq_fourierCoeffOn
      (show (0 : ℝ) < 1 by norm_num)
      (greenResidualComplex_memLp_Ioc X)
  rw [greenResidualComplex_interval_norm_sq] at h
  simpa [greenResidualFourierCoeff] using h

def greenFourierShellEnergy (X : ℕ) (n : ℕ) : ℝ :=
  ‖greenResidualFourierCoeff X (n : ℤ)‖^2 +
    ‖greenResidualFourierCoeff X (-((n : ℤ) + 1))‖^2

theorem greenFourierShellEnergy_nonnegative
    (X n : ℕ) :
    0 ≤ greenFourierShellEnergy X n := by
  unfold greenFourierShellEnergy
  positivity

theorem greenFourierShellEnergy_hasSum
    (X : ℕ) :
    HasSum (greenFourierShellEnergy X) (greenEnergy X) := by
  simpa [greenFourierShellEnergy] using
    (greenResidualFourier_parseval_hasSum X).nat_add_neg_add_one

def greenFourierHeadEnergy (X N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, greenFourierShellEnergy X n

theorem greenFourierHeadEnergy_nonnegative
    (X N : ℕ) :
    0 ≤ greenFourierHeadEnergy X N := by
  unfold greenFourierHeadEnergy
  exact Finset.sum_nonneg
    (fun n hn => greenFourierShellEnergy_nonnegative X n)

theorem greenFourierHeadEnergy_mono
    (X : ℕ) :
    Monotone (greenFourierHeadEnergy X) := by
  intro M N hMN
  unfold greenFourierHeadEnergy
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.range_mono hMN)
    (fun n hn hnot => greenFourierShellEnergy_nonnegative X n)

theorem greenFourierHeadEnergy_tendsto
    (X : ℕ) :
    Tendsto (greenFourierHeadEnergy X) atTop (𝓝 (greenEnergy X)) := by
  exact (greenFourierShellEnergy_hasSum X).tendsto_sum_nat

theorem greenFourierHeadEnergy_le_greenEnergy
    (X N : ℕ) :
    greenFourierHeadEnergy X N ≤ greenEnergy X := by
  have hsummable := (greenFourierShellEnergy_hasSum X).summable
  have hle := hsummable.sum_le_tsum
    (Finset.range N)
    (fun n hn => greenFourierShellEnergy_nonnegative X n)
  rw [(greenFourierShellEnergy_hasSum X).tsum_eq] at hle
  exact hle

def fullGreenFourierStage (X N : ℕ) : ℝ :=
  (mass0 X)^2 + (mass1 X)^2 + greenFourierHeadEnergy X N

theorem fullGreenFourierStage_nonnegative
    (X N : ℕ) :
    0 ≤ fullGreenFourierStage X N := by
  unfold fullGreenFourierStage
  positivity [greenFourierHeadEnergy_nonnegative X N]

theorem fullGreenFourierStage_mono
    (X : ℕ) :
    Monotone (fullGreenFourierStage X) := by
  intro M N hMN
  unfold fullGreenFourierStage
  exact add_le_add_left
    (greenFourierHeadEnergy_mono X hMN)
    ((mass0 X)^2 + (mass1 X)^2)

theorem fullGreenFourierStage_tendsto
    (X : ℕ) :
    Tendsto (fullGreenFourierStage X) atTop (𝓝 (augmentedEnergy X)) := by
  have h := greenFourierHeadEnergy_tendsto X
  have hconst :
      Tendsto
        (fun _ : ℕ => (mass0 X)^2 + (mass1 X)^2)
        atTop
        (𝓝 ((mass0 X)^2 + (mass1 X)^2)) :=
    tendsto_const_nhds
  have hadd := hconst.add h
  simpa [fullGreenFourierStage, augmentedEnergy, add_assoc, add_left_comm,
    add_comm] using hadd

theorem fullGreenFourierStage_le_augmentedEnergy
    (X N : ℕ) :
    fullGreenFourierStage X N ≤ augmentedEnergy X := by
  unfold fullGreenFourierStage augmentedEnergy
  exact add_le_add_left
    (greenFourierHeadEnergy_le_greenEnergy X N)
    ((mass0 X)^2 + (mass1 X)^2)

end GRWTSK.RiemannHypothesis
