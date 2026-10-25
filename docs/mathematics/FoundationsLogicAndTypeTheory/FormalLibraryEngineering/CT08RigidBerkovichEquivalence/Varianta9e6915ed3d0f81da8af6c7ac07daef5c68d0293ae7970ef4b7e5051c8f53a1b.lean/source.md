# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT08RigidBerkovichEquivalence.Varianta9e6915ed3d0f81da8af6c7ac07daef5c68d0293ae7970ef4b7e5051c8f53a1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f60f1b7f2ca95ac9a506d42f1c634984c9776a5f` · SHA-256 `a9e6915ed3d0f81da8af6c7ac07daef5c68d0293ae7970ef4b7e5051c8f53a1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-08: rigid/Berkovich equivalence.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct08_rigidBerkovichEquivalence
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT08Claim S :=
  registry.ct08

end FCRS.Theorems
```
