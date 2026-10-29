-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ConnectorReleaseProfile.Variant65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ConnectorReleaseProfile.Variant65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Access/ReleaseProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Access.PassivityObstruction

/-!
# Certified connector release

Release is a proposal priority unless a separate admissible-heuristic theorem
relates it to remaining primary cost.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ConnectorReleaseProfile.Variant65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761

namespace Mathematics.SemiLocalDefect.Access

structure ConnectorReleaseProfile
    (primeUniverse : FinitePrimeUniverse) where
  edge : PrimeInsertionEdge primeUniverse
  descendantWeight : ℚ
  proofCost : ℚ
  descendantWeight_nonnegative :
    0 ≤ descendantWeight
  proofCost_positive :
    0 < proofCost
  descendantCount :
    descendantWeight =
      2 ^
        (Fintype.card primeUniverse.Prime -
          edge.source.card - 1)
  release : ℚ
  release_eq :
    release =
      descendantWeight / proofCost
  certified : Prop
  certifiedProof : certified

structure ReleaseAStarAdmissibility
    {primeUniverse : FinitePrimeUniverse}
    (profile :
      ConnectorReleaseProfile primeUniverse) where
  remainingPrimaryCost : ℚ
  heuristic : ℚ
  lowerBound :
    heuristic ≤ remainingPrimaryCost
  releaseDerived : Prop
  releaseDerivedProof : releaseDerived

end Mathematics.SemiLocalDefect.Access
