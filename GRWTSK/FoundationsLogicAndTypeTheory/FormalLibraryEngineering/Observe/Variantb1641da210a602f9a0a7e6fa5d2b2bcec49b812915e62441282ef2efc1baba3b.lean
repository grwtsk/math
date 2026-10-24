-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Observe.Variant50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Observe.Variant50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/LibrarySearch/observe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Observe


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Observe.Variant50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95

set_option linter.unusedVariables false

/-- info: Try this: have h : x + y = y + x := Nat.add_comm x y -/
#guard_msgs in
example (x y : Nat) : True := by
  observe? h : x + y = y + x
  guard_hyp h : x + y = y + x
  trivial
