-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MixedPlaceProfile.Variantec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MixedPlaceProfile.Variantec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/TwoPrimeInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.OnePrimePassivity
import Mathematics.SemiLocalDefect.CochainCurvature
import Mathematics.SemiLocalDefect.Hardy.BalanceGauge

/-!
# Two-prime interaction profile

Closedness, Loewner interaction, transport holonomy, and balance curvature
are independent coordinates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MixedPlaceProfile.Variantec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e

namespace Mathematics.SemiLocalDefect.QSeries

universe uPrime

structure MixedPlaceProfile
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (source : Finset Prime)
    (left right : Prime) where
  cochainCurvature : model.Operator
  cochainCurvature_eq :
    cochainCurvature =
      boundaryCurvature
        capacity source left right
  defectInteraction : model.Operator
  defectInteraction_eq :
    defectInteraction =
      placeInteraction
        capacity source left right
  transportHolonomy : model.Operator
  balanceGaugeCurvature : model.Operator
  holonomyFlat : Prop
  balanceFlat : Prop

structure TwoPrimeCompressionCertificate
    (leftPrime rightPrime rank : Nat) where
  left_isPrime : Nat.Prime leftPrime
  right_isPrime : Nat.Prime rightPrime
  distinct : leftPrime ≠ rightPrime
  matrix : RationalMatrix rank
  sign : InteractionSign
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation
  signSound : Prop
  signSoundProof : signSound

end Mathematics.SemiLocalDefect.QSeries
