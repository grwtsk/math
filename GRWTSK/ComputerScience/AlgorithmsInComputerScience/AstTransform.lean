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
