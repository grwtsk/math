# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN06HRegImpliesHSG.Variantfad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccb064891ad7bd578946cd072ce0820b710f2e71` · SHA-256 `fad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Proposed research implication: a verified Henselian regularity theorem
produces Henselian Serre generation.
-/
theorem hen06_hregImpliesHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN06Claim S :=
  registry.hen06

end FCRS.Algebraization.Theorems
```
