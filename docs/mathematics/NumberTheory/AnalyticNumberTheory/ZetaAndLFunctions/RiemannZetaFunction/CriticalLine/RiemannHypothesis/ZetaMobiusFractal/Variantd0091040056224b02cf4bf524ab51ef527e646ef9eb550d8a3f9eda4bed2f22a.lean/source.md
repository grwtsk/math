# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZetaMobiusFractal.Variantd0091040056224b02cf4bf524ab51ef527e646ef9eb550d8a3f9eda4bed2f22a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aa719286173c004fdbbaa23080fe6dcd8bf9fe8` · SHA-256 `d0091040056224b02cf4bf524ab51ef527e646ef9eb550d8a3f9eda4bed2f22a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.ZetaMobius

namespace Surface.Legacy

structure ZetaMobiusFractalFunction where
  base : CertifiedNowhereDifferentiableFractalFunction
  scaleLaw : FractalScaleLaw
  zetaMobiusData : ZetaMobiusScaleData
  arithmeticSound : ZetaMobiusArithmeticSound zetaMobiusData

theorem zetaMobiusFractal_is_nowhereDifferentiableFractal :
    ∀ f : ZetaMobiusFractalFunction,
      ∃ g : CertifiedNowhereDifferentiableFractalFunction,
        g = f.base := by
  intro f
  exact ⟨f.base, rfl⟩

end Surface.Legacy
```
