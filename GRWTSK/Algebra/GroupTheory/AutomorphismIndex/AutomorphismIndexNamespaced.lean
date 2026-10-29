-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OrbitIndexCode.Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.OrbitIndexCode.Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28","mathematical_subject":"Algebra.Groups","original_sha256":"98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Frontier/AutomorphismIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Symmetry.Canonical
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Automorphism-orbit frontier indices

Finite-orbit canonicalization is reused from `BinaryFrontier`.  The ordinal
wrapper remains constant on each orbit and complete for orbit identity.
-/


namespace GRWTSK.Algebra.GroupTheory.OrbitIndexCode.Variant98e98c47f6096358142c431267f5fcac61a8dd4b8fc570427be485b4e6557c28

namespace Mathematics.StratifiedBoundary.Frontier

open Mathematics.BinaryFrontier.Symmetry
open Mathematics.StratifiedBoundary.OrdinalTally

universe uGroup uFrontier

variable
  (GroupCarrier : Type uGroup)
  (Frontier : Type uFrontier)
  [Group GroupCarrier]
  [Fintype GroupCarrier]
  [DecidableEq GroupCarrier]
  [MulAction GroupCarrier Frontier]
  [DecidableEq Frontier]
  [LinearOrder Frontier]

def orbitIndexCode
    {limits : LimitSemantics}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (frontier : Frontier) :
    StratifiedFrontierCode :=
  index.code
    (canon GroupCarrier Frontier frontier)

theorem orbitIndexCode_invariant
    {limits : LimitSemantics}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (automorphism : GroupCarrier)
    (frontier : Frontier) :
    orbitIndexCode
        GroupCarrier Frontier index
        (automorphism • frontier) =
      orbitIndexCode
        GroupCarrier Frontier index frontier := by
  simp [orbitIndexCode,
    canon_smul GroupCarrier Frontier]

theorem orbitIndexCode_eq_iff_sameOrbit
    {limits : LimitSemantics}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (left right : Frontier) :
    orbitIndexCode
        GroupCarrier Frontier index left =
        orbitIndexCode
          GroupCarrier Frontier index right ↔
      ∃ automorphism : GroupCarrier,
        automorphism • left = right := by
  constructor
  · intro sameCode
    have sameCanonical :
        canon GroupCarrier Frontier left =
          canon GroupCarrier Frontier right :=
      index.stratified_frontier_index_injective
        sameCode
    exact
      (canon_eq_iff_same_orbit
        GroupCarrier Frontier left right).mp
        sameCanonical
  · rintro ⟨automorphism, transformed⟩
    calc
      orbitIndexCode
          GroupCarrier Frontier index left =
        orbitIndexCode
          GroupCarrier Frontier index
          (automorphism • left) :=
            (orbitIndexCode_invariant
              GroupCarrier Frontier index
              automorphism left).symm
      _ =
        orbitIndexCode
          GroupCarrier Frontier index right := by
            rw [transformed]

end Mathematics.StratifiedBoundary.Frontier
