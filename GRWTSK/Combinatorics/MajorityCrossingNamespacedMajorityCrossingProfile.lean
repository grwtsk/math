-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MajorityCrossingProfile.Variant045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MajorityCrossingProfile.Variant045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/MajorityCrossing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Card

/-!
# Optional majority-crossing frontier

This profile models only explicitly threshold-based finite carriers.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MajorityCrossingProfile.Variant045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5

namespace Mathematics.StratifiedBoundary

def majorityThreshold (carrierSize : Nat) : Nat :=
  carrierSize / 2 + 1

structure MajorityCrossingProfile
    (Carrier : Type u)
    [Fintype Carrier] where
  profileId : String
  primitiveCrossing : Finset Carrier → Prop
  crossing_exact :
    ∀ support,
      primitiveCrossing support ↔
        support.card = majorityThreshold (Fintype.card Carrier)
  createsTheoremAuthority : Bool := false
  createsTheoremAuthority_exact :
    createsTheoremAuthority = false

end Mathematics.StratifiedBoundary
