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
