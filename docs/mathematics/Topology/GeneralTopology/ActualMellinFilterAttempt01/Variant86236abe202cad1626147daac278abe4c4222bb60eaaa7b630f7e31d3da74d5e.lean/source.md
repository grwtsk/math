# Complete source: GRWTSK.Topology.GeneralTopology.ActualMellinFilterAttempt01.Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d560c2cb449bfb14abffc3e92f00f6043ae1edd3` · SHA-256 `86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualGoodKernel
import SourceBoundaryOrder

/-! Literal Mellin pole filter for the fixed actual logarithmic source.
Direction: grwtsk contributors. Focused scratch adapter: OpenAI Codex.
The primitive transform is independently defined as its compact integral.
No Mellin zero-free theorem, Nyman closure or signed arithmetic budget is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMellinFilter
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.LogarithmicSource ContinuousResearch.SourceBoundaryTransform
open ContinuousResearch.SourceBoundaryOrder

theorem actual_mellin_eq_normalizedTransform (A : ℝ) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s = normalizedTransform A (s-1/2) := by
  rw [actualLogSource,lift_mellin_eq_bilateral]
  rfl

theorem actual_mellin_pole_filter {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*normalizedPrimitiveTransform A (s-1/2) := by
  rw [actual_mellin_eq_normalizedTransform,actual_complex_pole_filter hA]
  congr 1
  ring

theorem actual_mellin_pole_filter_unnormalized {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*primitiveTransform A (s-1/2)/(Real.sqrt (sourceNormalization A) : ℂ) := by
  rw [actual_mellin_pole_filter hA,primitive_transform_normalization]
  ring

theorem actual_mellin_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  have hz := (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  rw [actual_mellin_pole_filter_unnormalized hA]
  simp only [ne_eq,div_eq_zero_iff,mul_eq_zero,sub_eq_zero]
  have hz' : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hz
  tauto

theorem actual_mellin_halfstrip_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  apply actual_mellin_nonzero_iff_bump hA
  · intro he; simp [he] at hl
  · intro he; simp [he] at hu

end ContinuousResearch.ActualMellinFilter
```
