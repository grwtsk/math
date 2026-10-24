# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Blueprint.Variant931778d49e8a68e516c18b62710b82e19dfa7f6dc3ead8a90d9e75ac1c967f7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f8384d29551221bd3703b1fec0ecd229886865` · SHA-256 `931778d49e8a68e516c18b62710b82e19dfa7f6dc3ead8a90d9e75ac1c967f7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Blueprint

/-!
Blueprint surface marker.

This root surfaces blueprint authority-band metadata and conceptual boundary
markers only. It does not import the unresolved analytic/PNT or tactic
blueprint files.
-/

namespace Formal.Surface.Blueprint

def importsBlueprintCorpus : Bool := false

theorem blueprint_corpus_not_imported : importsBlueprintCorpus = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Formal.Blueprint.Analytic"
  , "Formal.Blueprint.PrimeNumberTheoremAnd"
  , "Formal.Blueprint.Tactic"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 3 := by
  rfl

end Formal.Surface.Blueprint
```
