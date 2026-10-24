# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeneralizationAtlas.Variantb16b43194e1e42d2279460140beb156f460eccc22bb50037049285e4997860f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4dde5a72513e45538857f52a90ae7a30be1d45b` · SHA-256 `b16b43194e1e42d2279460140beb156f460eccc22bb50037049285e4997860f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Hodge.KnownCaseAttachment

/-!
# Folder.GrandChallenge.Hodge.GeneralizationAtlas

Radiation role: research-boundary
BinaryMatrix spine: This module records a Hodge attachment atlas contract.
Ontology: hodge_attachment_atlas
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Hodge

structure HodgeGeneralizationAtlas where
  knownCases : List HodgeKnownCase
  attachmentMaps : List HodgeAttachmentMap
  coversGeneralizationPath : Prop
  coversGeneralizationPath_certified : coversGeneralizationPath
  sourceLabel : String

theorem hodge_atlas_covers_if_supplied
    (A : HodgeGeneralizationAtlas) :
    A.coversGeneralizationPath :=
  A.coversGeneralizationPath_certified

end Hodge
end GrandChallenge
end Folder
```
