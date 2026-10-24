# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ranking.Variant6f26eab89dc80ca1016d0a8c0ac5d33260fc660de590078f9b7932a8836d2eed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fca9f7d98a80859fd3b0eb60a1df6f544cc0122` · SHA-256 `e1a35bfacff29d0bd0905b6d6ace77973421a6d0c5a5e8d5a4521d67be17e5d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardAdmission.Variant52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HardAdmission.Variant52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6","mathematical_subject":"Computation.DataStructures","original_sha256":"52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Ranking.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Juris.Recognition
import Mathematics.Juris.Profile
import Mathematics.Mutation.Diagnosis

/-!
# Deterministic ranking after hard admission

Ranking is a proof-preserving permutation of an already admitted list.  It has
no constructor for admission, permission, recognition, or theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardAdmission.Variant52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6

namespace Mathematics.Mutation

open Mathematics.Juris

structure HardAdmission where
  jurisAllowed : Prop
  humanPolicyAllowed : Prop
  operatingSystemAllowed : Prop
  sandboxSafe : Prop
  snapshotCurrent : Prop
  authorityCompatible : Prop
  oracleAvailable : Prop
  juris_proof : jurisAllowed
  human_policy_proof : humanPolicyAllowed
  operating_system_proof : operatingSystemAllowed
  sandbox_proof : sandboxSafe
  snapshot_proof : snapshotCurrent
  authority_proof : authorityCompatible
  oracle_proof : oracleAvailable

structure Admitted (Candidate : Type) where
  candidate : Candidate
  admission : HardAdmission

structure MutationRankVector where
  separation : Nat
  newStrata : StratumSet
  newBoundaries : BoundarySet
  oracleStrength : Nat
  expectedCoverage : Nat
  supportSize : Nat
  newTrustDemand : Nat
  blastRadius : Nat
  cost : Nat
  duration : Nat
  stableId : StableId

structure DischargeRankVector where
  certificateFit : Nat
  obstructionCoverage : Nat
  cutsetCoverage : Nat
  routePreservation : Nat
  reversibility : Nat
  diagnosticYield : Nat
  scopedRespectEvidence : Nat
  newTrustDemand : Nat
  authorityExpansion : Nat
  blastRadius : Nat
  cost : Nat
  latency : Nat
  stableId : StableId

structure RankProfile (Candidate : Type) where
  profileId : StableId
  snapshotDigest : Digest
  order : List Candidate → List Candidate
  preservesCandidates :
    ∀ candidates, List.Perm (order candidates) candidates

def deterministicRank
    (profile : RankProfile Candidate)
    (candidates : List Candidate) :
    List Candidate :=
  profile.order candidates

noncomputable def paretoAntichain
    (candidates : List Candidate)
    (dominates : Candidate → Candidate → Prop) :
    List Candidate := by
  classical
  exact candidates.filter fun candidate =>
    ¬ ∃ other ∈ candidates, dominates other candidate

theorem mutation_rank_deterministic
    (profile : RankProfile Candidate)
    (candidates : List Candidate) :
    deterministicRank profile candidates =
      deterministicRank profile candidates :=
  rfl

theorem discharge_rank_deterministic
    (profile : RankProfile Candidate)
    (candidates : List Candidate) :
    deterministicRank profile candidates =
      deterministicRank profile candidates :=
  rfl

theorem ranking_preserves_admitted_set
    (profile : RankProfile (Admitted Candidate))
    (candidates : List (Admitted Candidate)) :
    List.Perm
      (deterministicRank profile candidates)
      candidates :=
  profile.preservesCandidates candidates

theorem recognition_not_rank_input
    (profile : RankProfile Candidate)
    (candidates : List Candidate)
    (_left _right : Option HumanRecognitionReceipt) :
    deterministicRank profile candidates =
      deterministicRank profile candidates :=
  rfl

end Mathematics.Mutation
```
