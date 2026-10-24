# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualConstructedStripSymmetryOrbit.Variant63d5762b26c782d5acc025f66bb14345b2f5ea798f1bbda4238a0eea35f379df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `005dbd58b3cca9e819bad8bc6f7fb56e304f6e2c` · SHA-256 `63d5762b26c782d5acc025f66bb14345b2f5ea798f1bbda4238a0eea35f379df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualInsideStripKernelUnbounded

/-!
Reflection and conjugation of the actual source kernel preserve its ordinary
complex weights. The constructed four-member strip orbit below is an auxiliary
spectral configuration. It is never identified with actual zeta zeros or their
multiplicities; no actual full-zero lower bound or failure is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualConstructedStripSymmetryOrbit
open MeasureTheory Filter
open scoped Topology ComplexConjugate
open SourcePairing ActualCorrelationOppositeHalf
open ActualInsideStripKernelNegativeSequence ActualInsideStripKernelUnbounded
noncomputable section

/-- Source evenness preserves the exact ordinary transform under reflection. -/
theorem actualBilateral_reflected_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A (-z) = actualBilateralCorrelationTransform A z := by
  rw [actualBilateralCorrelationTransform_eq_halves (by linarith : 0 < A),
    actualBilateralCorrelationTransform_eq_halves (by linarith : 0 < A)]
  simp only [neg_neg, add_comm]

/-- Conjugation commutes with the genuine compact source integral. -/
theorem actualBilateral_conjugated_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A (conj z) =
      conj (actualBilateralCorrelationTransform A z) := by
  have hord : -(2 * A) ≤ 2 * A := by linarith
  unfold actualBilateralCorrelationTransform
  rw [intervalIntegral.integral_of_le hord, intervalIntegral.integral_of_le hord,
    ← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [map_mul, ← Complex.exp_conj, Complex.conj_ofReal]

/-- An independently constructed symmetry orbit, with four literal ordinary weights. -/
def actualConstructedStripOrbitWeight (A : ℝ) : ℂ :=
  actualBilateralCorrelationTransform A actualInsideStripMode +
    actualBilateralCorrelationTransform A (-actualInsideStripMode) +
    actualBilateralCorrelationTransform A (conj actualInsideStripMode) +
    actualBilateralCorrelationTransform A (-conj actualInsideStripMode)

/-- Its exact real part is four times the original actual strip-kernel real part. -/
theorem actualConstructedStripOrbitWeight_real {A : ℝ} (hA : 1 ≤ A) :
    (actualConstructedStripOrbitWeight A).re =
      4 * (actualBilateralCorrelationTransform A actualInsideStripMode).re := by
  unfold actualConstructedStripOrbitWeight
  rw [actualBilateral_reflected_eq hA, actualBilateral_reflected_eq hA,
    actualBilateral_conjugated_eq hA]
  simp only [Complex.add_re, Complex.conj_re]
  ring

/-- Even a symmetry-complete auxiliary configuration has no uniform lower kernel bound. -/
theorem actualConstructedStripOrbitWeight_below_beyond (R L : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧ (actualConstructedStripOrbitWeight A).re < L := by
  obtain ⟨A, hR, hA, hneg⟩ := actualInsideStripKernel_below_beyond R (L / 4)
  refine ⟨A, hR, hA, ?_⟩
  rw [actualConstructedStripOrbitWeight_real hA]
  linarith

end
end FormalResearch.RiemannHypothesis.ActualConstructedStripSymmetryOrbit
```
