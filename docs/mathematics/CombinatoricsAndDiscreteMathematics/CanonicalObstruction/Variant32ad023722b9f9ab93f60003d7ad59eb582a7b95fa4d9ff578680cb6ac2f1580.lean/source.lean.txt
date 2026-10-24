-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalObstruction.Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CanonicalObstruction.Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Refinement/CanonicalObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Refinement.Boundary
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction

/-!
# Canonical primitive obstruction

Canonicalization acts only on raw state/core data.  Boundary infeasibility and
core minimality remain separate proof objects transported by completion
equivariance.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalObstruction.Variant9da1fa9455e9aed7eb1ba36d2924da17802d877adfdc2c575b7beaf6a2f89628

namespace Mathematics.BinaryFrontier.Refinement

open Mathematics.BinaryFrontier
open Mathematics.BinaryFrontier.Completion
open Mathematics.BinaryFrontier.Obstruction
open Mathematics.BinaryFrontier.Symmetry

universe uNode uFull uConstraint uGroup

def SameAutomorphismOrbit
    {GroupCarrier : Type uGroup}
    {Carrier : Type*}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    (left right : Carrier) : Prop :=
  ∃ automorphism : GroupCarrier,
    automorphism • left = right

structure CanonicalObstruction
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint)
    (registry constraints : Finset Constraint)
    (node : Node)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [Fintype GroupCarrier]
    [DecidableEq GroupCarrier]
    [MulAction GroupCarrier
      (PartialBitfield width)]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    [LinearOrder
      (RawObstruction
        (PartialBitfield width) Constraint)] where
  completionEquivariance :
    CompletionEquivariance
      semantics GroupCarrier
  boundary :
    FirstInfeasibleBoundary
      tree semantics constraints node
  primitive :
    PrimitiveCore
      semantics registry (tree.state node)
  primitiveWithinBoundary :
    primitive.constraints ⊆ constraints
  rawRecord :
    RawObstruction
      (PartialBitfield width) Constraint
  rawRecord_correct :
    rawRecord.state = tree.state node ∧
      rawRecord.core = primitive.constraints
  canonicalRecord :
    RawObstruction
      (PartialBitfield width) Constraint
  canonical_correct :
    canonicalRecord =
      canon
        GroupCarrier
        (RawObstruction
          (PartialBitfield width) Constraint)
        rawRecord

theorem automorphic_obstructions_same_canonical_record
    {GroupCarrier : Type uGroup}
    {Partial : Type*}
    {Constraint : Type*}
    [DecidableEq Constraint]
    [Group GroupCarrier]
    [Fintype GroupCarrier]
    [DecidableEq GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Constraint]
    [LinearOrder
      (RawObstruction Partial Constraint)]
    (automorphism : GroupCarrier)
    (obstruction :
      RawObstruction Partial Constraint) :
    canon GroupCarrier
        (RawObstruction Partial Constraint)
        (automorphism • obstruction) =
      canon GroupCarrier
        (RawObstruction Partial Constraint)
        obstruction :=
  canon_smul
    GroupCarrier
    (RawObstruction Partial Constraint)
    automorphism obstruction

theorem canonical_obstruction_unique
    {GroupCarrier : Type uGroup}
    {Partial : Type*}
    {Constraint : Type*}
    [DecidableEq Constraint]
    [Group GroupCarrier]
    [Fintype GroupCarrier]
    [DecidableEq GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Constraint]
    [LinearOrder
      (RawObstruction Partial Constraint)]
    (left right :
      RawObstruction Partial Constraint) :
    canon GroupCarrier
          (RawObstruction Partial Constraint)
          left =
        canon GroupCarrier
          (RawObstruction Partial Constraint)
          right ↔
      SameAutomorphismOrbit
        left right :=
  canon_eq_iff_same_orbit
    GroupCarrier
    (RawObstruction Partial Constraint)
    left right

end Mathematics.BinaryFrontier.Refinement
