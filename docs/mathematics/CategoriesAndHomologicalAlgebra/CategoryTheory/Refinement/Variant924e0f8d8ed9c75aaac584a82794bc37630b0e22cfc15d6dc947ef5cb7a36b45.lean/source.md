# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Refinement.Variant924e0f8d8ed9c75aaac584a82794bc37630b0e22cfc15d6dc947ef5cb7a36b45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e37e828ddb7713533a6a55e9d4bc67af6a03560` · SHA-256 `1ddb0bf85a4e1fcab1d9b5e4b2c3aac8e8d6913bff5e8cfc75160d84794e2f87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RefinementSystem.Variantecbfcd7071a152a3aba741fdcc1bf9548a4422959196ae650ca84b81d3517c9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecbfcd7071a152a3aba741fdcc1bf9548a4422959196ae650ca84b81d3517c9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RefinementSystem.Variantecbfcd7071a152a3aba741fdcc1bf9548a4422959196ae650ca84b81d3517c9b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ecbfcd7071a152a3aba741fdcc1bf9548a4422959196ae650ca84b81d3517c9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Refinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Observation


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RefinementSystem.Variantecbfcd7071a152a3aba741fdcc1bf9548a4422959196ae650ca84b81d3517c9b

universe u

namespace FCRS.ControlledPlane

/-- Every closed coordinate occurs at some declared refinement stage. -/
def ClosedCoordinateComplete
    (Coord Stage : Type u)
    (observedAt : Coord → Stage → Prop) : Prop :=
  ∀ c, ∃ s, observedAt c s

/-- Once introduced, a coordinate persists at every declared refinement. -/
def PersistentCoverage
    (Coord Stage : Type u)
    (refines : Stage → Stage → Prop)
    (observedAt : Coord → Stage → Prop) : Prop :=
  ∀ c {next prev},
    refines next prev →
    observedAt c prev →
    observedAt c next

/--
A uniform-carrier compatible system.  It supplies restriction maps but makes
no claim that a categorical inverse limit has been constructed.
-/
structure RefinementSystem
    (Stage Coord Entity Control Point : Type u) where
  refines : Stage → Stage → Prop
  observedAt : Coord → Stage → Prop
  restrictEntity : Stage → Stage → Entity → Entity
  restrictControl : Stage → Stage → Control → Control
  observationAt : Stage → ControlledObservation Entity Control Point

/--
A coherent refinement relation with functorial entity/control restrictions and
commuting observations.  These laws are supplied as evidence; the raw
`RefinementSystem` does not obtain them definitionally.
-/
structure RefinementCoherent
    {Stage Coord Entity Control Point : Type u}
    (R : RefinementSystem Stage Coord Entity Control Point) : Prop where
  refinesRefl :
    ∀ s, R.refines s s
  refinesTrans :
    ∀ {next middle prev},
      R.refines next middle →
      R.refines middle prev →
      R.refines next prev
  restrictEntityId :
    ∀ s x, R.restrictEntity s s x = x
  restrictControlId :
    ∀ s c, R.restrictControl s s c = c
  restrictEntityComp :
    ∀ {next middle prev},
      R.refines next middle →
      R.refines middle prev →
      ∀ x,
        R.restrictEntity middle prev
            (R.restrictEntity next middle x) =
          R.restrictEntity next prev x
  restrictControlComp :
    ∀ {next middle prev},
      R.refines next middle →
      R.refines middle prev →
      ∀ c,
        R.restrictControl middle prev
            (R.restrictControl next middle c) =
          R.restrictControl next prev c
  projectCommutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      (R.observationAt prev).project
          (R.restrictEntity next prev x) =
        (R.observationAt next).project x
  controlCommutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      (R.observationAt prev).control
          (R.restrictEntity next prev x) =
        R.restrictControl next prev
          ((R.observationAt next).control x)

/--
An abstract coherent controlled presentation.  It carries the refinement laws
and an explicit cross-stage cone equation, but no universal property and no
construction of a categorical projective limit.
-/
structure CoherentControlledPresentation
    {Stage Coord Entity Control Point : Type u}
    (R : RefinementSystem Stage Coord Entity Control Point)
    (O : ControlledObservation Entity Control Point) where
  refinementCoherent : RefinementCoherent R
  decoder : LosslessDecoder O
  stageProjection : Stage → Entity → Entity
  stageProjectionCommutes :
    ∀ {next prev}, R.refines next prev → ∀ x,
      R.restrictEntity next prev (stageProjection next x) =
        stageProjection prev x
  observationCompatible :
    ∀ s x,
      combinedObservation (R.observationAt s) (stageProjection s x) =
        combinedObservation O x

end FCRS.ControlledPlane
```
