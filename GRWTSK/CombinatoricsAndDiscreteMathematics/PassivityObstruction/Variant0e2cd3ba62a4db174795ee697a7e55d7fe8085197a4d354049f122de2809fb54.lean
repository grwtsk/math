-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PassivityObstruction.Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PassivityObstruction.Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Access/PassivityObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Access.PrimeCutAccess

/-!
# Primitive finite passivity obstructions

A failed search or exhausted budget is not a negative witness.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PassivityObstruction.Variantc44cbcd0d2de25b3e89c9ff8bc1a47d53d9a3bf90753e480a76dab649144c175

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstruction where
  primeUniverse : FinitePrimeUniverse
  sourceCut : Finset primeUniverse.Prime
  insertedPrime : primeUniverse.Prime
  insertedPrime_not_mem :
    insertedPrime ∉ sourceCut
  compressionRank : Nat
  compressionRank_positive :
    0 < compressionRank
  witness : Fin compressionRank → ℚ
  quadraticAt :
    Finset primeUniverse.Prime →
      Nat → ℚ
  quadraticValue : ℚ
  quadraticValue_eq :
    quadraticValue =
      quadraticAt sourceCut compressionRank
  quadraticValue_neg :
    quadraticValue < 0
  properSubcutsNonnegative :
    ∀ subcut,
      subcut ⊂ sourceCut →
      0 ≤ quadraticAt subcut compressionRank
  lowerRanksNonnegative :
    ∀ rank,
      rank < compressionRank →
      0 ≤ quadraticAt sourceCut rank
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation
  canonical : Prop
  canonicalProof : canonical
  certificateDigest : CertificateDigest

inductive PassivitySearchResult
  | obstruction (witness : PassivityObstruction)
  | residualFrontier
      (primeUniverse : FinitePrimeUniverse)
      (checkedCuts checkedRanks : Nat)
  | rejectedEnvelope
      (reason : Nat)

end Mathematics.SemiLocalDefect.Access
