# Complete source: GRWTSK.Topology.GeneralTopology.LimitState.Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac29ad61ca2d1a429b91b836b566b87555053895` · SHA-256 `4d3dbdbf0abfe7e50477efe846afd12b035c1326a59910e751f2837b048d087e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LimitBoundaryState.Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LimitBoundaryState.Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Boundary/LimitState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.Instances.ENNReal.Lemmas
import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Formal projective-limit state

The limit state is a compatible family.  It is not claimed to be one finite
runtime bitfield.  A metric formula is accepted only with its full metric and
separation laws.
-/


namespace GRWTSK.Topology.GeneralTopology.LimitBoundaryState.Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule
universe uPersistent

structure LimitBoundaryState
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  component :
    ∀ stage,
      (system.cut stage).State
  compatible :
    ∀ stage,
      system.projectState
          (Nat.le_succ stage)
          (component (stage + 1)) =
        component stage

structure AddressedLimitBoundaryState
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    (PersistentId : Type uPersistent) where
  projectiveState :
    LimitBoundaryState system
  boundaryAddress :
    Mathematics.StratifiedBoundary.Frontier.BoundaryAddress
  persistentId : PersistentId
  addressMatchesProjectiveState : Prop
  addressCompatibilityProof :
    addressMatchesProjectiveState

inductive LimitStateExistenceMode
  | explicitCompatibleWitness
  | coherentSections
  | compactInverseLimit
  deriving DecidableEq, Repr, Fintype

structure LimitStateNonemptyCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  mode : LimitStateExistenceMode
  witness : LimitBoundaryState system
  witnessDigest : String
  finiteEnumerationClaimed : Bool := false
  noFiniteEnumerationClaim :
    finiteEnumerationClaimed = false := by
      rfl

theorem limitBoundaryState_nonempty
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      LimitStateNonemptyCertificate system) :
    Nonempty (LimitBoundaryState system) :=
  ⟨certificate.witness⟩

structure CoherentSectionCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  liftAdjacent :
    ∀ stage,
      (system.cut stage).State →
        (system.cut (stage + 1)).State
  sectionLaw :
    ∀ stage state,
      system.projectState
          (Nat.le_succ stage)
          (liftAdjacent stage state) =
        state
  seed : (system.cut 0).State
  compatibleWitness :
    LimitBoundaryState system
  witnessGeneratedBySections : Prop
  generationProof :
    witnessGeneratedBySections

structure LimitMetricCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  weight : Nat → ℝ
  weightPositive :
    ∀ stage, 0 < weight stage
  weightSummable :
    Summable weight
  distance :
    LimitBoundaryState system →
      LimitBoundaryState system → ℝ
  distanceFormula :
    ∀ left right,
      distance left right =
        ∑' stage,
          weight stage *
            min 1
              ((system.cut stage).closure.system.metric.distance
                (left.component stage)
                (right.component stage))
  distanceNonnegative :
    ∀ left right,
      0 ≤ distance left right
  distanceSelf :
    ∀ state,
      distance state state = 0
  distanceSymmetric :
    ∀ left right,
      distance left right =
        distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle +
          distance middle right
  separated :
    ∀ {left right},
      distance left right = 0 →
      left = right

end Mathematics.StratifiedBoundary.Boundary
```
