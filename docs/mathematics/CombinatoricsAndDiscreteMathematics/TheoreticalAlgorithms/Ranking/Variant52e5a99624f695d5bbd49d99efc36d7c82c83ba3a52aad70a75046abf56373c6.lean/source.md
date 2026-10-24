# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ranking.Variant52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cf08727520e5979bb4f6e6b741112dc9431cc2c` · SHA-256 `52e5a99624f695d5bbd49d99efc36d7c82c83ba3a52aad70a75046abf56373c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Juris.Recognition
import Mathematics.Juris.Profile
import Mathematics.Mutation.Diagnosis

/-!
# Deterministic ranking after hard admission

Ranking is a proof-preserving permutation of an already admitted list.  It has
no constructor for admission, permission, recognition, or theorem authority.
-/

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
