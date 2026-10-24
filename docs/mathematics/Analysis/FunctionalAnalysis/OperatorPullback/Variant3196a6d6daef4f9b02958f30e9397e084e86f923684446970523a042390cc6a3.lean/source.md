# Complete source: GRWTSK.Analysis.FunctionalAnalysis.OperatorPullback.Variant3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6716a13c788fcd5bc5f5b063cb1a38fa603d646` · SHA-256 `3196a6d6daef4f9b02958f30e9397e084e86f923684446970523a042390cc6a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PacketModel
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Fixed-Hilbert operator pullback
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

universe uHilbert

noncomputable def operatorPullback
    {Hilbert : Type uHilbert}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (transport defect : HilbertEnd Hilbert) :
    HilbertEnd Hilbert :=
  transport.adjoint.comp
    (defect.comp transport)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
