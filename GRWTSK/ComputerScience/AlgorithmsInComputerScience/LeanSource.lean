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
