# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleEngine.Variant27c643705dc41a7f8e9aa4834a7fb00303b5badfc1fb60fb7f2a1029782c34c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4f74f210e676f5878aaf82660d339735d92ebe2` · SHA-256 `27c643705dc41a7f8e9aa4834a7fb00303b5badfc1fb60fb7f2a1029782c34c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.RuleEngine

/-!
# Folder.Theorem.Archive.RuleEngine

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy rule-engine materialization.
Ontology: proof.archive.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyRuleEngine_realize
    (D : Folder.Archive.MatrixAtomDictionary)
    (r : Folder.Archive.IndexSpinRef Folder.Archive.copyAction)
    (M : Folder.Carrier.BinaryMatrix)
    (hget :
      Folder.Archive.realizeIndexSpin?
        Folder.Archive.copyAction D r = some M) :
    Folder.Archive.realizeLayerRecipe?
        Folder.Archive.copyAction Folder.Archive.copyRuleEngine D
        { ref := r, rule := Folder.Archive.copyRuleEngine.copyId } =
      some M :=
  Folder.Archive.copyRuleEngine_realize D r M hget

end Archive
end Theorem
end Folder
```
