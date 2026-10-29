-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleName.Variante3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleName.Variante3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d","mathematical_subject":"Computation.DataStructures","original_sha256":"e3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanEnvironmentExtractElements/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import tools.LeanEnvironmentExtractElements.Module


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleName.Variante3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d

open Lean System

namespace MathematicsLeanEnvironmentExtractElements

private def moduleName (value : String) : Name :=
  value.splitOn "." |>.foldl (init := Name.anonymous) fun result part =>
    Name.str result part

private def parseArguments : List String → IO (Name × Name)
  | ["--module", value, "--scope", scope] =>
      return (moduleName value, moduleName scope)
  | ["--help"] =>
      IO.println
        "usage: mathematics_lean_element_extract --module Module.Name --scope Scope.Root" *>
        IO.Process.exit 0
  | _ =>
      throw <| IO.userError
        "usage: mathematics_lean_element_extract --module Module.Name --scope Scope.Root"

end MathematicsLeanEnvironmentExtractElements

def main (arguments : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  let (moduleName, scopeName) ←
    MathematicsLeanEnvironmentExtractElements.parseArguments arguments
  let emitter ← MathematicsLeanEnvironmentExtractElements.EventEmitter.create
  MathematicsLeanEnvironmentExtractElements.emitModule emitter moduleName scopeName
