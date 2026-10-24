# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenPolarizedReadout

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3` · SHA-256 `26195a9370c30f334ee6e6cf183b9794a5512bdc4b02ccba101e516e2430e1d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Polarized Fourier reconstruction of every centered source action

The complete Fourier action frame is not only a norm decomposition.  By
polarized Parseval, the exact centered pairing of the Green residual with the
slope of an arbitrary admissible ComplexTest is the sum of products

  conj(sourceCoeff_X(k)) * slopeCoeff_phi(k).

Therefore the arithmetic action of every ComplexTest is recovered from:

* the two exact endpoint moments mass0 and mass1;
* a growing finite vector of source Fourier coefficients;
* the matching growing finite vector of test-slope Fourier coefficients.

Finite symmetric frequency heads converge to the exact source action.  This is
a concrete test-to-feature map, rather than a fixed finite projection.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
POLARIZED_FOURIER_ACTION_RECONSTRUCTION_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology MeasureTheory Set
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.ComplexReadout

/-- One-dimensional polarized Parseval on the additive circle. -/
theorem hasSum_prod_fourierCoeff_unitCircle
    (f g : Lp ℂ 2 (@AddCircle.haarAddCircle (1 : ℝ) (Fact.mk zero_lt_one))) :
    HasSum
      (fun k : ℤ => conj (fourierCoeff f k) * fourierCoeff g k)
      (∫ t : AddCircle (1 : ℝ),
        conj (f t) * g t
        ∂(@AddCircle.haarAddCircle (1 : ℝ) (Fact.mk zero_lt_one))) := by
  simp_rw [mul_comm (conj _)]
  refine HasSum.congr_fun
    ((@fourierBasis (1 : ℝ) (Fact.mk zero_lt_one)).hasSum_inner_mul_inner f g)
    (fun k => ?_)
  simp only [← fourierBasis_repr, HilbertBasis.repr_apply_apply,
    inner_conj_symm, mul_comm (inner ℂ f _)]

/-- Polarized Parseval transported directly to the real interval (0,1]. -/
theorem hasSum_prod_fourierCoeffOn_unit
    {f g : ℝ → ℂ}
    (hf : MemLp f 2 (volume.restrict (Ioc (0 : ℝ) 1)))
    (hg : MemLp g 2 (volume.restrict (Ioc (0 : ℝ) 1))) :
    HasSum
      (fun k : ℤ =>
        conj (fourierCoeffOn (show (0 : ℝ) < 1 by norm_num) f k) *
          fourierCoeffOn (show (0 : ℝ) < 1 by norm_num) g k)
      (∫ x in (0 : ℝ)..1, conj (f x) * g x) := by
  letI : Fact (0 < (1 : ℝ)) := Fact.mk zero_lt_one
  have hfLift := hf.memLp_liftIoc.haarAddCircle
  have hgLift := hg.memLp_liftIoc.haarAddCircle
  have h :=
    hasSum_prod_fourierCoeff_unitCircle hfLift.toLp hgLift.toLp
  convert h using 1
  · funext k
    simp [fourierCoeff_congr_ae hfLift.coeFn_toLp,
      fourierCoeff_congr_ae hgLift.coeFn_toLp,
      fourierCoeff_liftIoc_eq]
  · rw [← AddCircle.integral_haarAddCircle]
    rw [← AddCircle.integral_liftIoc_eq_intervalIntegral
      (T := (1 : ℝ)) (t := (0 : ℝ))
      (f := fun x => conj (f x) * g x)]
    apply integral_congr_ae
    filter_upwards [hfLift.coeFn_toLp, hgLift.coeFn_toLp] with x hx hy
    simp [hx, hy]

/-- The slope of every ComplexTest is L2 on the unit interval. -/
theorem complexTestSlope_memLp_Ioc
    (φ : ComplexTest) :
    MemLp φ.slope 2
      (volume.restrict (Ioc (0 : ℝ) 1)) := by
  have hre :
      MemLp (fun t => (φ.slope t).re) 2 unitVolume :=
    slope_memLp_two (reTest φ)
  have him :
      MemLp (fun t => (φ.slope t).im) 2 unitVolume :=
    slope_memLp_two (imTest φ)
  have hcomplex :
      MemLp
        (fun t =>
          ((φ.slope t).re : ℂ) +
            ((φ.slope t).im : ℂ) * Complex.I)
        2 unitVolume :=
    hre.ofReal.add (him.ofReal.const_mul Complex.I)
  have heq :
      (fun t =>
        ((φ.slope t).re : ℂ) +
          ((φ.slope t).im : ℂ) * Complex.I) =
        φ.slope := by
    funext t
    apply Complex.ext <;> simp
  rw [heq] at hcomplex
  have hmeasure :
      volume.restrict (Ioc (0 : ℝ) 1) ≤ unitVolume := by
    unfold unitVolume
    exact Measure.restrict_mono Ioc_subset_Icc_self le_rfl
  exact hcomplex.mono_measure hmeasure

/-- Fourier coordinate of an arbitrary admissible test slope. -/
def complexTestSlopeFourierCoeff
    (φ : ComplexTest) (k : ℤ) : ℂ :=
  fourierCoeffOn (show (0 : ℝ) < 1 by norm_num) φ.slope k

/-- One polarized source/test feature coordinate. -/
def greenPolarizedFourierTerm
    (X : ℕ) (φ : ComplexTest) (k : ℤ) : ℂ :=
  conj (greenResidualFourierCoeff X k) *
    complexTestSlopeFourierCoeff φ k

/-- Polarized Parseval gives the complete centered residual readout. -/
theorem greenPolarizedFourierTerm_hasSum
    (X : ℕ) (φ : ComplexTest) :
    HasSum (greenPolarizedFourierTerm X φ)
      (∫ t,
        greenResidualComplex X t * φ.slope t
        ∂unitVolume) := by
  have h :=
    hasSum_prod_fourierCoeffOn_unit
      (greenResidualComplex_memLp_Ioc X)
      (complexTestSlope_memLp_Ioc φ)
  rw [← GRWTSK.NumberTheory.VonMangoldt.ComplexReadout.unit_integral_eq_interval]
  convert h using 1
  · funext k
    rfl
  · apply integral_congr_ae
    filter_upwards with t
    simp [greenResidualComplex]

/-- Natural symmetric shell of polarized source/test coordinates. -/
def greenPolarizedFourierShell
    (X : ℕ) (φ : ComplexTest) (n : ℕ) : ℂ :=
  greenPolarizedFourierTerm X φ (n : ℤ) +
    greenPolarizedFourierTerm X φ (-((n : ℤ) + 1))

theorem greenPolarizedFourierShell_hasSum
    (X : ℕ) (φ : ComplexTest) :
    HasSum (greenPolarizedFourierShell X φ)
      (∫ t,
        greenResidualComplex X t * φ.slope t
        ∂unitVolume) := by
  simpa [greenPolarizedFourierShell] using
    (greenPolarizedFourierTerm_hasSum X φ).nat_add_neg_add_one

/-- Finite growing paired Fourier head. -/
def greenPolarizedFourierHead
    (X : ℕ) (φ : ComplexTest) (N : ℕ) : ℂ :=
  ∑ n ∈ Finset.range N, greenPolarizedFourierShell X φ n

theorem greenPolarizedFourierHead_tendsto
    (X : ℕ) (φ : ComplexTest) :
    Tendsto (greenPolarizedFourierHead X φ)
      atTop
      (𝓝 (∫ t,
        greenResidualComplex X t * φ.slope t
        ∂unitVolume)) :=
  (greenPolarizedFourierShell_hasSum X φ).tendsto_sum_nat

/-- Exact endpoint part of the centered action. -/
def complexTestEndpointReadout
    (X : ℕ) (φ : ComplexTest) : ℂ :=
  φ.value 0 * (mass0 X : ℂ) +
    (φ.value 1 - φ.value 0) * (mass1 X : ℂ)

/-- Finite Fourier-feature approximation to the exact source action. -/
def fourierReconstructedActionHead
    (X : ℕ) (φ : ComplexTest) (N : ℕ) : ℂ :=
  complexTestEndpointReadout X φ -
    greenPolarizedFourierHead X φ N

/-- For every positive octave and every admissible test, the finite arithmetic
feature heads converge to the unchanged exact source action. -/
theorem fourierReconstructedActionHead_tendsto
    {X : ℕ} (hX : 0 < X)
    (φ : ComplexTest) :
    Tendsto (fourierReconstructedActionHead X φ)
      atTop (𝓝 (action X φ.value)) := by
  have hhead := greenPolarizedFourierHead_tendsto X φ
  have h :=
    tendsto_const_nhds.sub hhead
  rw [ComplexReadout.centered_ibp φ hX]
  simpa [fourierReconstructedActionHead,
    complexTestEndpointReadout,
    greenResidualComplex,
    greenSourceFrameValue_eq_centeredResidual] using h

end GRWTSK.RiemannHypothesis
```
