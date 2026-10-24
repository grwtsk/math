-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LosslessRenderProfile.Variant17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LosslessRenderProfile.Variant17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Rendering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Discharge

/-!
# Stratum-specific problem renderings

Lossless renderers carry their decoder theorem.  Lossy projections are a
different type and must name their loss manifest.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LosslessRenderProfile.Variant17f8d3b7fa11abb20eb60c3575b82205ce39c9b6942a46d41b1565c76bb50b60

namespace Mathematics.Mutation

structure LosslessRenderProfile (Output : Type) where
  profileId : StableId
  target : Stratum
  render : ProblemIR → Output
  decode : Output → ProblemIR
  roundtrip :
    ∀ problem, decode (render problem) = problem

def renderProblem
    (profile : LosslessRenderProfile Output)
    (problem : ProblemIR) :
    Output :=
  profile.render problem

theorem lossless_render_roundtrip
    (profile : LosslessRenderProfile Output)
    (problem : ProblemIR) :
    profile.decode (renderProblem profile problem) = problem :=
  profile.roundtrip problem

structure LossyProblemProjection (Output : Type) where
  profileId : StableId
  target : Stratum
  render : ProblemIR → Output
  lossManifest : Finset StableId

end Mathematics.Mutation
