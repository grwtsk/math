# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceReader.Varianta97b3f2d48109442af8afca107e2215d78d432fc478493b16ca9e4f3580532dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a23ad5f7a2a324aef60896a4a78cb752891d09f` · SHA-256 `a97b3f2d48109442af8afca107e2215d78d432fc478493b16ca9e4f3580532dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.LeanSource

/-!
# Folder.Pipeline.LeanSourceReader

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.lean_source_reader
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure LeanSourceReader where
  read : String → Option LeanSource

end Pipeline
end Folder
```
