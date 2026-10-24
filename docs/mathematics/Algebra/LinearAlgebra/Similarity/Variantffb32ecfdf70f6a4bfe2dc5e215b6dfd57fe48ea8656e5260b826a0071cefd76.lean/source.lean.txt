-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixSimilarity.Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MatrixSimilarity.Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d","mathematical_subject":"Foundations.Unclassified","original_sha256":"30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Similarity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Token


namespace GRWTSK.Algebra.LinearAlgebra.MatrixSimilarity.Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d

namespace Surface.Legacy

structure MatrixSimilarity where
  numerator : Nat
  denominator : Nat
  denominator_pos : 0 < denominator
  bounded : numerator ≤ denominator

def similarityValue (s : MatrixSimilarity) : Rat :=
  (s.numerator : Rat) / (s.denominator : Rat)

def similarityGE
    (s : MatrixSimilarity)
    (threshold : Rat) : Prop :=
  threshold ≤ similarityValue s

inductive SimilarityMode
| supportJaccard
| normalizedHammingComplement
| factorOverlap
| spectralKernelOverlap
| declaredCustomExact
deriving DecidableEq, Repr

structure SimilarityThreshold where
  value : Rat
  lowerBound : 0 ≤ value
  upperBound : value ≤ 1

theorem matrixSimilarity_denominator_ne_zero
    (s : MatrixSimilarity) :
    s.denominator ≠ 0 := by
  exact Nat.ne_of_gt s.denominator_pos

theorem matrixSimilarity_operational_boundary
    (s : MatrixSimilarity) :
    s.numerator ≤ s.denominator := by
  exact s.bounded

end Surface.Legacy
