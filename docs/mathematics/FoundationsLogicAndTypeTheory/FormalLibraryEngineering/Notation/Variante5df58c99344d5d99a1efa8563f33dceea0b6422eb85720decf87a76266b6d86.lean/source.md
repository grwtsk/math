# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variante5df58c99344d5d99a1efa8563f33dceea0b6422eb85720decf87a76266b6d86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed52885ea4719eebdd8d4f59c798bfe8eee15e2b` · SHA-256 `e5df58c99344d5d99a1efa8563f33dceea0b6422eb85720decf87a76266b6d86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Proposition.Proposition

/-!
# Folder.Proposition.Notation

Radiation role: documentation-support
BinaryMatrix spine: This module provides notation, interpretation, or documentation-facing support around the BinaryMatrix spine.
Ontology: proposition.notation
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Proposition

def holds (P : Proposition) : Prop :=
  P.statement

end Proposition
end Folder
```
