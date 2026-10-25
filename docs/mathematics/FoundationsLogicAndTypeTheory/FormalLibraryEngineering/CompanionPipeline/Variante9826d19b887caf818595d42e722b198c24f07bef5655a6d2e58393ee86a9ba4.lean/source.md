# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompanionPipeline.Variante9826d19b887caf818595d42e722b198c24f07bef5655a6d2e58393ee86a9ba4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e7ff4973ea848feb5a6e79c00e4c9cf71642d0a` · SHA-256 `e9826d19b887caf818595d42e722b198c24f07bef5655a6d2e58393ee86a9ba4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.LeanSourceReader
import Folder.Pipeline.CompanionEmitter

/-!
# Folder.Pipeline.CompanionPipeline

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.companion_pipeline
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure CompanionPipeline where
  reader : LeanSourceReader
  emitter : CompanionEmitter

end Pipeline
end Folder
```
