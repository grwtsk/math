# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT20HenselianCounterboundary.Variant0da210e6535ba5cc06fb86dc1f730670a2942d9e43806f1089af5209c79398ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `859d91271a9596a2d3dde4842543d8e3c1ea2e4b` · SHA-256 `0da210e6535ba5cc06fb86dc1f730670a2942d9e43806f1089af5209c79398ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-20: the characteristic-zero/mixed-characteristic obstruction to unrestricted Henselian essential surjectivity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct20_henselianCounterboundary
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT20Claim S :=
  registry.ct20

end FCRS.Theorems
```
