# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AstTransform.Variantb35d497e064d8bb8448b6738941811dc7932f1e0d045f487524db25618e92af1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b10ff862e2d96d4630a609564cb751e6e6785f8e` · SHA-256 `b35d497e064d8bb8448b6738941811dc7932f1e0d045f487524db25618e92af1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.LeanSource

/-!
# Folder.Pipeline.AstTransform

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.ast_transform
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure AstTransform where
  declarations : LeanSource → List String
  namespaces : LeanSource → List String

end Pipeline
end Folder
```
