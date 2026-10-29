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
