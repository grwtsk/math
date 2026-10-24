# ofAnalyticDispersionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcdef849a44c804e9a407a6ba407a31c0170004df356b321f418f04c85865098",
  "kind": "def",
  "lexical_name": "ofAnalyticDispersionAt",
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
  "slug": "ofanalyticdispersionat--c60ce5144fff6c6cca3c4af7",
  "source": {
    "blob": "c050951e2050bc82cd8e9b67626b5f9015ff6b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60ce5144fff6c6cca3c4af7a8aeb0a05eec6ad94442f00c93ad872d97dd4892",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcdef849a44c804e9a407a6ba407a31c0170004df356b321f418f04c85865098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofAnalyticDispersionAt
    (D : AnalyticDispersionReconstruction (P × U))
    (theta : P × U)
    (phaseII : PhaseIIResidualQuotient (D.geometryAt theta))
    (phaseIII : PositiveCommutingInvolutions phaseII.geometry)
    (intervention : LinearIntervention X U) :
    ThreePhaseCore P U X where
  phaseI := D.geometryAt theta
  phaseII := phaseII
  phaseIII := phaseIII
  intervention := intervention

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant9907c8409a8db61d4b560add6cb62274338c60caf9994e6100558372f26f057b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c050951e2050bc82cd8e9b67626b5f9015ff6b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
