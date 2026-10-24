# Complete source: GRWTSK.NumberTheory.Chebyshev.ClassicalRieszReality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3aef30ea3155288cc823d7eac4566bd84672bb5` · SHA-256 `053f5d2b086aeaf083b3e86b272d95633801af93528600318718df76536440ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalResidues
import GRWTSK.NumberTheory.Chebyshev.ClassicalRieszCoefficientLimits
import GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight

/-! # Reality of the actual finite heads and boundary-derived coefficients
Conjugation preserves the canonical height head and actual multiplicities.
The coefficient limits are therefore real without assuming RH or fitting them
to the unresolved classical special values. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology BigOperators ComplexConjugate
namespace GRWTSK.NumberTheory.Chebyshev.ClassicalRieszReality
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.LocalZeroSymmetry
open GRWTSK.RiemannHypothesis.CanonicalSignedHeight
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open ClassicalRieszNormalization ClassicalRieszCoefficientLimits FirstRieszWeakRawLimit

theorem conjugate_weighted_height_sum (T : ℝ) (f : ZeroPoint → ℂ)
    (hf : ∀ z, f (conjugatePoint z) = conj (f z)) :
    conj (∑ z ∈ heightHead T, (multiplicity z:ℂ)*f z) =
      ∑ z ∈ heightHead T, (multiplicity z:ℂ)*f z := by
  classical
  rw [map_sum]
  apply Finset.sum_bij (fun z _ => conjugatePoint z)
  · intro z hz
    exact (mem_heightHead _ _).mpr (by simpa only [conjugate_height] using (mem_heightHead _ _).mp hz)
  · intro z _ w _ h
    exact conjugate_injective h
  · intro z hz
    refine ⟨conjugatePoint z,?_,conjugatePoint_involutive z⟩
    exact (mem_heightHead _ _).mpr (by simpa only [conjugate_height] using (mem_heightHead _ _).mp hz)
  · intro z _
    simp [conjugate_multiplicity,hf]

theorem finiteHeightZeroHead_conj (x T : ℝ) : conj (finiteHeightZeroHead x T) = finiteHeightZeroHead x T := by
  unfold finiteHeightZeroHead
  rw [map_neg,conjugate_weighted_height_sum]
  intro z
  exact pointwiseZeroTerm_conj x z.1

theorem finiteRieszZeroHead_conj (x T : ℝ) : conj (finiteRieszZeroHead x T) = finiteRieszZeroHead x T := by
  unfold finiteRieszZeroHead
  rw [map_neg,conjugate_weighted_height_sum]
  intro z
  simp [firstRieszZeroKernel,logPower,← Complex.exp_conj]

theorem finiteSourceSlope_conj (T : ℝ) : conj (finiteSourceSlope T) = finiteSourceSlope T := by
  simp only [finiteSourceSlope,map_sub,map_add,map_div₀,Complex.conj_ofReal,Complex.conj_ofNat,finiteRieszZeroHead_conj]

theorem finiteSourceIntercept_conj (T : ℝ) : conj (finiteSourceIntercept T) = finiteSourceIntercept T := by
  simp only [finiteSourceIntercept,map_sub,map_neg,map_mul,Complex.conj_ofNat,Complex.conj_ofReal,finiteSourceSlope_conj,finiteRieszZeroHead_conj]

theorem sourceSlope_conj : conj sourceSlope = sourceSlope := by
  have h := (Complex.continuous_conj.tendsto sourceSlope).comp finiteSourceSlope_tendsto_source
  have he : (fun T => conj (finiteSourceSlope T)) = finiteSourceSlope := funext finiteSourceSlope_conj
  change Tendsto (fun T => conj (finiteSourceSlope T)) atTop (𝓝 (conj sourceSlope)) at h
  rw [he] at h
  exact tendsto_nhds_unique h finiteSourceSlope_tendsto_source

theorem sourceIntercept_conj : conj sourceIntercept = sourceIntercept := by
  have h := (Complex.continuous_conj.tendsto sourceIntercept).comp finiteSourceIntercept_tendsto_source
  have he : (fun T => conj (finiteSourceIntercept T)) = finiteSourceIntercept := funext finiteSourceIntercept_conj
  change Tendsto (fun T => conj (finiteSourceIntercept T)) atTop (𝓝 (conj sourceIntercept)) at h
  rw [he] at h
  exact tendsto_nhds_unique h finiteSourceIntercept_tendsto_source

theorem sourceSlope_im : sourceSlope.im = 0 := by
  have h := congrArg Complex.im sourceSlope_conj
  simp only [Complex.conj_im] at h
  linarith

theorem sourceIntercept_im : sourceIntercept.im = 0 := by
  have h := congrArg Complex.im sourceIntercept_conj
  simp only [Complex.conj_im] at h
  linarith

theorem rawClassicalHead_conj (x T : ℝ) : conj (rawClassicalHead x T) = rawClassicalHead x T := by
  simp [rawClassicalHead,finiteHeightZeroHead_conj,sourceSlope_conj]

theorem rawClassicalHead_im (x T : ℝ) : (rawClassicalHead x T).im = 0 := by
  have h := congrArg Complex.im (rawClassicalHead_conj x T)
  simp only [Complex.conj_im] at h
  linarith
/-- The actual special-value candidate retains its literal zeta derivative. -/
theorem logDeriv_neg_one_eq :
    logDeriv riemannZeta (-1) = -12*deriv riemannZeta (-1) := by
  rw [logDeriv_apply,FirstRieszClassicalResidues.riemannZeta_neg_one]
  ring

theorem logDeriv_neg_one_conj : conj (logDeriv riemannZeta (-1)) = logDeriv riemannZeta (-1) := by
  have hd := GRWTSK.Analysis.Complex.ConjugateAnalyticOrder.deriv_conjugation
    (f := riemannZeta) (fun w => by simpa only [Complex.star_def] using riemannZeta_conj w) (-1)
  have he : conj (deriv riemannZeta (-1)) = deriv riemannZeta (-1) := by
    simpa only [Complex.star_def,map_neg,map_one] using hd.symm
  simp only [logDeriv_neg_one_eq,map_mul,map_neg,Complex.conj_ofNat,he]
end GRWTSK.NumberTheory.Chebyshev.ClassicalRieszReality
```
