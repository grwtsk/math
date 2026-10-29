-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","mathematical_subject":"Computation.DataStructures","original_sha256":"47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Data.Int.Basic
import Std.Tactic.GuardExpr

-- complement

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant47ed8691a1102eb14be62876def2eb0a59f8564d28df98f31bb2e46371a1cc3f

#guard ~~~(-1:Int) = 0
#guard ~~~(0:Int) = -1
#guard ~~~(1:Int) = -2
#guard ~~~(-2:Int) = 1

-- shiftRight
#guard (2:Int) >>> 1 = 1
#guard (0:Int) >>> 1 = 0
#guard ~~~(1:Int) >>> 1 = ~~~0
#guard ~~~(0:Int) >>> 1 = ~~~0
#guard ~~~(2:Int) >>> 1 = ~~~1
#guard ~~~(4:Int) >>> 1 = ~~~2
#guard ~~~(4:Int) >>> 2 = ~~~1
