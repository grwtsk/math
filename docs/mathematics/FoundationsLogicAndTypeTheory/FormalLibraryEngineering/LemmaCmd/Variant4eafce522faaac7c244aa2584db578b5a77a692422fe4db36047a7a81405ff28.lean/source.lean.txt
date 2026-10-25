-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test1.Variante26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Test1.Variante26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lemma_cmd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lemma

-- lemma disabled by default

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test1.Variante26c5c452961a8a6f7a0e0af6254913226da1a21c9cc9e6e802c3e2644b5d351

/--
info: Try this:
  [apply] theorem
---
error: `lemma` is not supported by default, please use `theorem` instead.
Use `set_option lang.lemmaCmd true` to enable the use of the `lemma` command in a file.
Use the command line option `-Dlang.lemmaCmd=true` to enable the use of `lemma` globally.
-/
#guard_msgs in
lemma test1 : 3 < 7 := by decide

-- lemma enabled for one command
set_option lang.lemmaCmd true in
lemma test2 : 3 < 7 := by decide

-- lemma disabled again
/--
info: Try this:
  [apply] theorem
---
error: `lemma` is not supported by default, please use `theorem` instead.
Use `set_option lang.lemmaCmd true` to enable the use of the `lemma` command in a file.
Use the command line option `-Dlang.lemmaCmd=true` to enable the use of `lemma` globally.
-/
#guard_msgs in
lemma test3 : 3 < 7 := by decide

-- lemma enabled for rest of file
set_option lang.lemmaCmd true

lemma test4 : 3 < 7 := by decide

lemma test5 : 3 < 7 := by decide
