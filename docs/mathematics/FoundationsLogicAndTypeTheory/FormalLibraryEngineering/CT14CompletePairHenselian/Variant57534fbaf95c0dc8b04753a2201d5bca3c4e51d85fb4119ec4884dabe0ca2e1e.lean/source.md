# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT14CompletePairHenselian.Variant57534fbaf95c0dc8b04753a2201d5bca3c4e51d85fb4119ec4884dabe0ca2e1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d7572a4aa514bbe93d4df1fc563fc6cb6a6a5b` · SHA-256 `57534fbaf95c0dc8b04753a2201d5bca3c4e51d85fb4119ec4884dabe0ca2e1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-14: complete adic pairs are Henselian.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct14_completePairHenselian
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT14Claim S :=
  registry.ct14

end FCRS.Theorems
```
