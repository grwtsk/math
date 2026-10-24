# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93fSourceBoundaryUn.Varianta1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9415515d70227f03c13998dad5a08c9eb1fd7f94` · SHA-256 `a1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceBoundaryLayer
import Mathlib.Topology.UniformSpace.HeineCantor
import Mathlib.Topology.UniformSpace.UniformConvergence

namespace FormalResearch.RiemannHypothesis.SourceBoundaryLayer
open Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceScaledKernel

noncomputable section

theorem uniform_test (L : ℝ) :
    TendstoUniformlyOn boundaryKernel boundaryProfile atTop (Icc 0 L) := by
  let F : ℝ → ℝ → ℝ := fun q y ↦
    (y ^ 9 / 16 * endpointPolynomialZero (y * q) +
      y ^ 7 / 2 * endpointPolynomialOne (y * q) +
        y ^ 5 * endpointPolynomialTwo (y * q)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
        (196608 / 5005 : ℝ) * q ^ 4)
  have hden (q : ℝ) : (4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
      (196608 / 5005 : ℝ) * q ^ 4 ≠ 0 := ne_of_gt (by positivity)
  have hcont : Continuous (Function.uncurry F) := by
    change Continuous (fun p : ℝ × ℝ ↦
      (p.2 ^ 9 / 16 * endpointPolynomialZero (p.2 * p.1) +
        p.2 ^ 7 / 2 * endpointPolynomialOne (p.2 * p.1) +
          p.2 ^ 5 * endpointPolynomialTwo (p.2 * p.1)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * p.1 ^ 2 +
        (196608 / 5005 : ℝ) * p.1 ^ 4))
    apply Continuous.div
    · unfold endpointPolynomialZero endpointPolynomialOne endpointPolynomialTwo
      fun_prop
    · fun_prop
    · intro p
      exact hden p.1
  have huc : UniformContinuousOn (Function.uncurry F) ((Icc (-1) 1) ×ˢ (Icc 0 L)) :=
    (isCompact_Icc.prod isCompact_Icc).uniformContinuousOn_of_continuous hcont.continuousOn
  have huf : TendstoUniformlyOn F (F 0) (nhdsWithin (0 : ℝ) (Icc (-1) 1)) (Icc 0 L) :=
    huc.tendstoUniformlyOn (by norm_num)
  have hq : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhdsWithin (0 : ℝ) (Icc (-1) 1)) := by
    apply tendsto_nhdsWithin_iff.mpr
    refine ⟨tendsto_inv_atTop_zero, ?_⟩
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
    constructor
    · linarith [inv_nonneg.mpr (le_of_lt hpos)]
    · exact (inv_le_one₀ hpos).mpr hA
  have hu : TendstoUniformlyOn (fun A : ℝ ↦ F A⁻¹) (F 0) atTop (Icc 0 L) :=
    fun u hu ↦ hq.eventually (huf u hu)
  have heq : ∀ᶠ A : ℝ in atTop, EqOn (F A⁻¹) (boundaryKernel A) (Icc 0 L) := by
    filter_upwards [eventually_ge_atTop (max 1 L)] with A hA
    intro y hy
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hAL : L ≤ A := (le_max_right _ _).trans hA
    rw [boundary_kernel_exact A y hA1 hy.1 (by linarith [hy.2]),
      source_normalization_inverse_square]
    unfold F
    simp only [div_eq_mul_inv, inv_pow]
    ring
  have hright : EqOn (F 0) boundaryProfile (Icc 0 L) := by
    intro y _
    norm_num [F, endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo,
      boundaryProfile]
    ring
  exact (hu.congr heq).congr_right hright

end
end FormalResearch.RiemannHypothesis.SourceBoundaryLayer
```
