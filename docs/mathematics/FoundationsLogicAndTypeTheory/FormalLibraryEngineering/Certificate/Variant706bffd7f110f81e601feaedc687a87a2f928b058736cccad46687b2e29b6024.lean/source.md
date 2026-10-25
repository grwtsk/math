# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant706bffd7f110f81e601feaedc687a87a2f928b058736cccad46687b2e29b6024

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35ab2910d5991ac49f0ceb0e5cf18c2fa135d7bf` · SHA-256 `706bffd7f110f81e601feaedc687a87a2f928b058736cccad46687b2e29b6024`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/-!
# Folder.Linear.Certificate

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.certificate
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Linear

structure Certificate (Claim : Prop) where
  verify : Claim

theorem Certificate.sound {Claim : Prop}
    (C : Certificate Claim) :
    Claim :=
  C.verify

end Linear
end Folder
```
