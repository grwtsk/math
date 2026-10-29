-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Trace.Variant90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Trace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d

example : True := by
  trace 2 + 2 + 3
  trivial

example : True := by
  trace "hello" ++ " world"
  trivial
