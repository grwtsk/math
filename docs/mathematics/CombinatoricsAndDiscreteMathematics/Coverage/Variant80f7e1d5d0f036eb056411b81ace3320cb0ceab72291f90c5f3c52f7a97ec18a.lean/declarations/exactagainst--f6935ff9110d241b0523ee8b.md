# ExactAgainst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc7e2126efdc9fc3267a8432d5de1fa208d8cd811acd678688f40c1577768512",
  "kind": "structure",
  "lexical_name": "ExactAgainst",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exactagainst--f6935ff9110d241b0523ee8b",
  "source": {
    "blob": "396666a1d4c00525d6f081576987fe906c24b8b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 781,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6935ff9110d241b0523ee8ba2550be6b909949b0d3fc354173f56f5f0e61184",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc7e2126efdc9fc3267a8432d5de1fa208d8cd811acd678688f40c1577768512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 781–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactAgainst
    (matrix : ProbeObservationMatrix)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily) : Prop where
  matrixHashPresent : matrix.contentHash.IsPresent
  profileBound : matrix.profile = plan.profile
  familyBound : matrix.probeFamily = family.id
  pointsBound : matrix.points = plan.points
  probesBound : matrix.probes = family.probes
  pointHashesBound :
    ∀ pointId ∈ matrix.points,
      ∃ point,
        space.pointAt pointId = some point ∧
        point.id = pointId ∧
        matrix.pointContentHash pointId = point.sourceSpan.contentHash ∧
        (matrix.pointContentHash pointId).IsPresent
  total :
    ∀ probe ∈ matrix.probes, ∀ point ∈ matrix.points,
      ∃ observed, matrix.observation probe point = some observed
  entriesExact :
    ∀ probe point observed,
      matrix.observation probe point = some observed →
        probe ∈ matrix.probes ∧
        point ∈ matrix.points ∧
        observed.probe = probe ∧
        observed.point = point ∧
        observed.id.value ≠ 0 ∧
        observed.pointContentHash = matrix.pointContentHash point ∧
        observed.pointContentHash.IsPresent ∧
        observed.observationContentHash.IsPresent ∧
        observed.exactness = .exact ∧
        observed.outcome.WellFormed ∧
        observed.validatorResult.WellFormed ∧
        ∃ probeRecord,
          family.probeAt probe = some probeRecord ∧
          probeRecord.id = probe ∧
          observed.exactness = probeRecord.exactness

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant80f7e1d5d0f036eb056411b81ace3320cb0ceab72291f90c5f3c52f7a97ec18a.lean#L781).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396666a1d4c00525d6f081576987fe906c24b8b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
