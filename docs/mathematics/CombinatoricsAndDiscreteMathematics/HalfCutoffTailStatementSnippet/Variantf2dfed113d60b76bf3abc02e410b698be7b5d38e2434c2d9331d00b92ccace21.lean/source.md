# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.HalfCutoffTailStatementSnippet.Variantf2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb440ca86fcf93c7a097d32213a29c416c6e27a1` · SHA-256 `f2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace HalfCutoffTailStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  exact HalfCutoffTailScratch.reciprocal_half_cutoff_tail_le Y G hYG hhalf

example (h g : ℕ) :
    Real.sqrt ((h*g^2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
  exact HalfCutoffTailScratch.sqrt_square_scale h g

example (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  exact HalfCutoffTailScratch.thetaRemainder_half_cutoff_tail_abs_le A h Y G hA hh hYG hhalf

end
end HalfCutoffTailStatementChecks
```
