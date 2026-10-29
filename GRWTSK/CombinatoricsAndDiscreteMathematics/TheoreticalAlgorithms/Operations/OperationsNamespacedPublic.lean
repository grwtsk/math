-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operations.Variant02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Operations.Variant02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7","mathematical_subject":"Foundations.Unclassified","original_sha256":"02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Data/EReal/Operations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.EReal.Operations


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operations.Variant02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7

open ENNReal

namespace EReal

proof_wanted recENNReal_neg_coe_ennreal {motive : EReal → Sort*} (coe : ∀ x : ℝ≥0∞, motive x)
    (neg_coe : ∀ x : ℝ≥0∞, 0 < x → motive (-x)) {x : ℝ≥0∞} (hx : 0 < x) :
    recENNReal coe neg_coe (-x) = neg_coe x hx

end EReal
