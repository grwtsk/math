# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusInteraction.Variantbd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbea27939e85c1c4f2fafd0013250f1abc9123d3` · SHA-256 `bd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect

structure MobiusInteractionDescriptor where
  interactionRef : String
  supportRefs : List String
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .higherMobiusInteraction

end Mathematics.SemiLocalDefect
```
