-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SoninIncrementIsOrthogonalProjection.Variant46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SoninIncrementIsOrthogonalProjection.Variant46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/Increment/Properties.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.Increment.Certificate

/-!
# Projection-increment theorem primitives
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SoninIncrementIsOrthogonalProjection.Variant46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninIncrement_isOrthogonalProjection
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (_hp : p ∉ S) :
    OrthogonalProjectionCertificate
      (soninIncrement P S p) := by
  apply cert.difference_isProjection
  intro x hx
  exact Finset.mem_insert_of_mem hx

theorem soninIncrement_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorNonnegative
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).nonnegative

theorem soninIncrement_idempotent
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorIdempotent
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).idempotent

theorem soninIncrement_selfAdjoint
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorSelfAdjoint
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).selfAdjoint

end Mathematics.SemiLocalDefect.SoninCore
