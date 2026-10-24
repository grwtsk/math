# instCompleteSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:331bcf632cde8e9c4469fe1abc275af9e5aef3c46aacc71236789505c4980e84",
  "kind": "instance",
  "lexical_name": "instCompleteSpace",
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
  "slug": "instcompletespace--37502a366399d68be3f8cb79",
  "source": {
    "blob": "ed7a784918444b6dfd9515da2fb8f8680dc2bf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37502a366399d68be3f8cb7972856de2b9fc59a7ce6e465865e20a8e74e60a26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:331bcf632cde8e9c4469fe1abc275af9e5aef3c46aacc71236789505c4980e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteSpace [IsTopologicalAddGroup E] [SequentialSpace (ι → E)] :
    CompleteSpace (E [⋀^ι]→L[𝕜] F) :=
  completeSpace <| .of_seq fun _u x hux ↦ (hux.isVonNBounded_range 𝕜).insert x

end CompleteSpace

section RestrictScalars

variable (𝕜' : Type*) [NontriviallyNormedField 𝕜'] [NormedAlgebra 𝕜' 𝕜]
  [Module 𝕜' E] [IsScalarTower 𝕜' 𝕜 E] [Module 𝕜' F] [IsScalarTower 𝕜' 𝕜 F] [ContinuousSMul 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed7a784918444b6dfd9515da2fb8f8680dc2bf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
