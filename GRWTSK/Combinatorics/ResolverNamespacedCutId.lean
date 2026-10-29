-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CutId.Variant7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CutId.Variant7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Resolver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathlib.Data.Finset.Basic

/-!
# Conservative stratified resolver result

A higher-layer unknown preserves any lower-layer finite certificate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CutId.Variant7228b692469e01b297efff4e85bf54d97feb4ce2c8c2c9e1dbf46db1e1fd927b

namespace Mathematics.StratifiedBoundary

structure CutId where
  value : String
deriving DecidableEq, Repr

inductive StratifiedUnknownKind
  | ordinalNotationProfile
  | ordinalNormalization
  | ordinalComparison
  | fundamentalSequence
  | limitMonotonicity
  | limitCofinality
  | stratumAssignment
  | localFrontierRank
  | orbitFrontierRank
  | successorEmbedding
  | successorProjection
  | projectionLipschitz
  | kernelProjectivity
  | invariantLawProjectivity
  | automorphismProjectivity
  | bitfieldProjectivity
  | inverseLimitNonempty
  | limitMetricSeparation
  | limitMetricCompleteness
  | compatibleLimitCoupling
  | limitKernel
  | limitContraction
  | traceProjectivity
  | cylinderTraceWellDefined
  | cylinderTraceExtension
  | arithmeticSuccessorCorrespondence
  | arithmeticLimitCorrespondence
  | limitNormCompatibility
  | uniformOrdinalScale
deriving DecidableEq, Repr

inductive StratifiedRejection
  | malformedOrdinalCode
  | zeroBlockCoefficient
  | remainderOutsideBlock
  | unregisteredFundamentalSequence
  | nonmonotoneFundamentalSequence
  | noncofinalFundamentalSequence
  | incompatiblePredecessorStratum
  | malformedProjectiveComposition
  | nonTotalProjection
  | persistentIdentityConflict
  | malformedCylinderReference
deriving DecidableEq, Repr

inductive StratifiedResolution
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (FiniteResult LimitWitness : Type v)
  | finite
      (result : FiniteResult)
      (stratum : CanonicalOrdinalTally profile)
      (localRank : Option Nat)
      (ordinalIndex : Option (CanonicalOrdinalTally profile))
  | limitBoundary
      (stratum : CanonicalOrdinalTally profile)
      (fundamentalSequence : FundamentalSequenceId)
      (witness : LimitWitness)
  | unknown
      (nearestCut : CutId)
      (unknowns : Finset StratifiedUnknownKind)
  | rejected
      (reason : StratifiedRejection)

end Mathematics.StratifiedBoundary
