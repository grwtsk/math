# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AnalysisProfile.Variant9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57a49f5860ec8823df82f04c2a34dcc2f1094f71` · SHA-256 `9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao `analysis` pedagogical profile -/

namespace Mathematics.Projects.Tao

structure AnalysisProfile where
  base : Projects.ProjectProfile
  textbookChapterArtifacts : List StableId
  localDefinitionIds : List StableId
  mathlibDefinitionIds : List StableId
  bridgeCertificateIds : List StableId
  exerciseObligationIds : List StableId
  pedagogicalCommentArtifactIds : List StableId
  literateDocumentArtifactIds : List StableId
  transitionPointIds : List StableId
  preservePedagogicalDivergence : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
```
