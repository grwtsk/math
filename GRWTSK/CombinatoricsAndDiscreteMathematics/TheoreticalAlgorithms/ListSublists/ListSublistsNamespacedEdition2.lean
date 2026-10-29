-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.List.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","mathematical_subject":"Computation.DataStructures","original_sha256":"f011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/list_sublists.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.List.Basic

-- this times out with `sublistsFast`

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76

set_option maxRecDepth 562 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl
