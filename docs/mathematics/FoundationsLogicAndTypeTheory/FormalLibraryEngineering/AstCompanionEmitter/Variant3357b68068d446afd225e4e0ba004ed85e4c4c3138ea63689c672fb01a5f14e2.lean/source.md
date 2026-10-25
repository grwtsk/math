# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AstCompanionEmitter.Variant3357b68068d446afd225e4e0ba004ed85e4c4c3138ea63689c672fb01a5f14e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30ab1d258c256b4f72e9eadb071b122a74809757` · SHA-256 `3357b68068d446afd225e4e0ba004ed85e4c4c3138ea63689c672fb01a5f14e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.AstTransform
import Folder.Pipeline.CompanionEmitter

/-!
# Folder.Pipeline.AstCompanionEmitter

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.ast_companion_emitter
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure AstCompanionEmitter where
  transform : AstTransform
  emitter : CompanionEmitter

end Pipeline
end Folder
```
