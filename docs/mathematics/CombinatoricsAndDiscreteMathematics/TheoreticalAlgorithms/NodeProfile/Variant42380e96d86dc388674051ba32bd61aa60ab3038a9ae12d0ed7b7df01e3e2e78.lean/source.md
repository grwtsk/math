# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodeProfile.Variant42380e96d86dc388674051ba32bd61aa60ab3038a9ae12d0ed7b7df01e3e2e78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65be881a5338b197cca9a8a8ca7e20052aa9d83` · SHA-256 `42380e96d86dc388674051ba32bd61aa60ab3038a9ae12d0ed7b7df01e3e2e78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Mathematics.SemiLocalDefect.Presentation

structure NodeProfile where
  nodeRef : String
  capacityRef : String
  openObligationRefs : List String
  presentationRef : String
  authoritativeEffect : Bool := false

end Mathematics.SemiLocalDefect.Presentation
```
