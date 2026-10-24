# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpansionIndex.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d66f10ce24e2ddf10c37cfdd461931674553165` · SHA-256 `32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.ExpansionIndex

/-!
# Folder.Theorem.Catalan.ExpansionIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

theorem expandAt_internal
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.internal = T.internal + 1 :=
  CTree.expandAt?_internal h

theorem expandAt_leaves
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.leaves = T.leaves + 1 :=
  CTree.expandAt?_leaves h

end Catalan
end Folder
```
