# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanSource.Variantf0e948e784edbb41186c58c82ef108cc7f9bac820294448085be55b61c244a89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4555a725bd8f78e80aa1a110727be87a087a5ef` · SHA-256 `f0e948e784edbb41186c58c82ef108cc7f9bac820294448085be55b61c244a89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Pipeline.LeanSource

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.lean_source
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure LeanSource where
  path : String
  moduleName : String
  sourceText : String
  imports : List String

end Pipeline
end Folder
```
