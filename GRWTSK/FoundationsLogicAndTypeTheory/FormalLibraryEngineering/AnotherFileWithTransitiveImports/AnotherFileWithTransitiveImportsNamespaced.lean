-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportDiff.Variantdb107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ImportDiff.Variantdb107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61","mathematical_subject":"Foundations.Unclassified","original_sha256":"db107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraphTest/AnotherFileWithTransitiveImports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ImportGraph.Tools.ImportDiff
import ImportGraphTest.Unused
import ImportGraphTest.FileWithTransitiveImports


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportDiff.Variantdb107cbeecac07dd166b8954b198fb4aef44269342859bc529ec62fce7eeae61

/--
info: The following are already imported (possibly transitively):
ImportGraphTest.FileWithTransitiveImports
---
info: Found 2 additional imports:
ImportGraphTest.FileWithTransitiveImports
ImportGraphTest.Used
-/
#guard_msgs in
#import_diff ImportGraphTest.FileWithTransitiveImports

/--
info: The following are already imported (possibly transitively):
ImportGraphTest.FileWithTransitiveImports
ImportGraphTest.Used
---
info: Found 2 additional imports:
ImportGraphTest.FileWithTransitiveImports
ImportGraphTest.Used
-/
#guard_msgs in
#import_diff ImportGraphTest.FileWithTransitiveImports ImportGraphTest.Used


/-- error: File SomeBogusFilename cannot be found. -/
#guard_msgs in
#import_diff SomeBogusFilename
