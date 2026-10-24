-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MainAction.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MainAction.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/tools/LeanSourceTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm
import all tools.LeanSource.Cli


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MainAction.Variantbf19d42b5820302330518188d1c935a5f4634c4ee093151482e934d4daa33cbc

public section

/-! # Pinned Lean source-command tracer -/

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathDiscoveryLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
