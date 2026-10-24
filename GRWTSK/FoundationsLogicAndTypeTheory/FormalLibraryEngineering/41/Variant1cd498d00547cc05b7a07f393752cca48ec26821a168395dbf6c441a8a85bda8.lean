-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/41.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737

set_option aesop.check.all true

/--
error: no such rule set: 'Nonexistent'
  (Use 'declare_aesop_rule_set' to declare rule sets.
   Declared rule sets are not visible in the current file; they only become visible once you import the declaring file.)
-/
#guard_msgs in
example : True := by
  aesop (rule_sets := [Nonexistent])
