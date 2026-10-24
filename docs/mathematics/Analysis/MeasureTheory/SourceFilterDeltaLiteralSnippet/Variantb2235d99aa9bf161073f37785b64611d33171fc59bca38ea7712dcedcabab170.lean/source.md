# Complete source: GRWTSK.Analysis.MeasureTheory.SourceFilterDeltaLiteralSnippet.Variantb2235d99aa9bf161073f37785b64611d33171fc59bca38ea7712dcedcabab170

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2947878077eead59c7eea8669bd156314ae7994e` · SHA-256 `b2235d99aa9bf161073f37785b64611d33171fc59bca38ea7712dcedcabab170`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace SourceFilterDeltaLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
open SourceFilterDeltaScratch
noncomputable section
example : {z : ℂ | W z = 0}.Countable := W_zero_set_countable
example : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := boundaryW_ae_ne_zero
example (ε h t : ℝ) : boundaryFilter ε h t =
    W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
      (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
        (1 + (ε : ℂ) + (t : ℂ) * Complex.I) := rfl
end
end SourceFilterDeltaLiteral
```
