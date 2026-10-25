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
