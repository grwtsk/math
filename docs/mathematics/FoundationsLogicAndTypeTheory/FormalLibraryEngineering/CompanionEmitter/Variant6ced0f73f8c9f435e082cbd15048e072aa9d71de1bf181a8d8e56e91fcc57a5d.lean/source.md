# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompanionEmitter.Variant6ced0f73f8c9f435e082cbd15048e072aa9d71de1bf181a8d8e56e91fcc57a5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2acf6ee7b1926004d05942240429b3780b7a3b6b` · SHA-256 `6ced0f73f8c9f435e082cbd15048e072aa9d71de1bf181a8d8e56e91fcc57a5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.LeanSource

/-!
# Folder.Pipeline.CompanionEmitter

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.companion_emitter
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure CompanionEmitter where
  emitTypeScript : LeanSource → String
  emitRust : LeanSource → String
  emitMarkdown : LeanSource → String

end Pipeline
end Folder
```
