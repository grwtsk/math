-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M.Variantadfa8ec71e41e13abe18485bbaaa1b14e33ad84caf59b671e1f8c8ed15a80d7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adfa8ec71e41e13abe18485bbaaa1b14e33ad84caf59b671e1f8c8ed15a80d7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.M.Variantadfa8ec71e41e13abe18485bbaaa1b14e33ad84caf59b671e1f8c8ed15a80d7b","mathematical_subject":"Computation.DataStructures","original_sha256":"adfa8ec71e41e13abe18485bbaaa1b14e33ad84caf59b671e1f8c8ed15a80d7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/kmp_matcher.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.String.Matcher
import Batteries.Data.List.Matcher

/-! # Tests for the Knuth-Morris-Pratt (KMP) matching algorithm -/

/-! ### String API -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M.Variantadfa8ec71e41e13abe18485bbaaa1b14e33ad84caf59b671e1f8c8ed15a80d7b

/-- Matcher for pattern "abba" -/
def m := String.Matcher.ofString "abba"

#guard ! Option.isSome (m.find? "AbbabbA")

#guard Option.isSome (m.find? "aabbaa")

#guard Array.size (m.findAll "abbabba") = 2

#guard Array.size (m.findAll "abbabbabba") = 3

#guard Option.isSome ("xyyxx".findSubstr? "xy")

#guard ! Option.isSome ("xyyxx".findSubstr? "xyx")

#guard Array.size ("xyyxx".findAllSubstr "xyx") = 0

#guard Array.size ("xyyxxyx".findAllSubstr "xyx") = 1

#guard Array.size ("xyxyyxxyx".findAllSubstr "xyx") = 2

#guard Array.size ("xyxyxyyxxyxyx".findAllSubstr "xyx") = 4

/-! ### List API -/

def lm := List.Matcher.ofList [0,1,1,0]

#guard lm.find? [2,1,1,0,1,1,2] == none

#guard lm.find? [0,0,1,1,0,0] == some (1, 5)

#guard (lm.findAll [0,1,1,0,1,1,0]).size == 2

#guard (lm.findAll [0,1,1,0,1,1,0,1,1,0]).size == 3
