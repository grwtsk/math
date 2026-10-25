# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT06Sheafiness.Variant61beb2cf3ac647f39df73172ddf2996ff78cdb4cad5bfcc82a56f3e2e495be1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6801bad5bc34beb7f5eaa56e45567f848febd0ff` · SHA-256 `61beb2cf3ac647f39df73172ddf2996ff78cdb4cad5bfcc82a56f3e2e495be1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-06: strongly Noetherian sheafiness and rational acyclicity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct06_sheafiness
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT06Claim S :=
  registry.ct06

end FCRS.Theorems
```
