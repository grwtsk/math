# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PairCorrelation.Variant0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d18a317a94913357a6326786886b50473e290459` · SHA-256 `0fb84bb63c029352680df8d35c707e7ea451da352d9b2a939b8fbf2ff35dfdb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Heat

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PairCorrelationPolicy where
  kernelName : String
  regularizerOnly : Bool
  exactSymmetrySource : String
  noTheoremAuthority : Prop
deriving Repr

def montgomeryGUEPolicy : PairCorrelationPolicy :=
  { kernelName := "montgomery_gue"
    regularizerOnly := true
    exactSymmetrySource := "group_orbits"
    noTheoremAuthority := True }

theorem montgomeryGUEPolicy_regularizerOnly :
    montgomeryGUEPolicy.regularizerOnly = true := by
  rfl

end Think.RadoProjectedModularHeatflow
```
