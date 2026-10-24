# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.AngularTriangleFullAudit.Variant8118463aa849d5dbbcb52ea7a7a84af03b8882d089f69a9ea651fb01dac067a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb4f5bd8e0c4189c035a78f661c9b8f6f4e4adeb` · SHA-256 `8118463aa849d5dbbcb52ea7a7a84af03b8882d089f69a9ea651fb01dac067a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel

/-! The angularly normalized triangle inequality for genuine full-line L2 functions. -/
set_option autoImplicit false
namespace AngularL2TriangleScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
noncomputable section

/-- The angular square-integral norm equals the scaled norm of the admitted full-line vector. -/
theorem sqrt_normalized_integral_eq_norm (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ := by
  rw [← norm_sq_toLp f hf, Real.sqrt_mul (by positivity), Real.sqrt_sq (norm_nonneg _)]

/-- Minkowski's inequality retains the complete angular square integrals of both summands. -/
theorem sqrt_normalized_integral_add_le (f g : ℝ → ℂ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) := by
  have hs := sqrt_normalized_integral_eq_norm (f + g) (hf.add hg)
  simp only [Pi.add_apply] at hs
  rw [hs,
    sqrt_normalized_integral_eq_norm f hf, sqrt_normalized_integral_eq_norm g hg]
  rw [MemLp.toLp_add hf hg]
  calc
    Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f + hg.toLp g‖ ≤
        Real.sqrt (1 / (2 * Real.pi)) * (‖hf.toLp f‖ + ‖hg.toLp g‖) :=
      mul_le_mul_of_nonneg_left (norm_add_le _ _) (Real.sqrt_nonneg _)
    _ = _ := mul_add _ _ _

end
end AngularL2TriangleScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @AngularL2TriangleScratch.sqrt_normalized_integral_eq_norm
#print AngularL2TriangleScratch.sqrt_normalized_integral_eq_norm
#print axioms AngularL2TriangleScratch.sqrt_normalized_integral_eq_norm
#check @AngularL2TriangleScratch.sqrt_normalized_integral_add_le
#print AngularL2TriangleScratch.sqrt_normalized_integral_add_le
#print axioms AngularL2TriangleScratch.sqrt_normalized_integral_add_le
```
