# visibleBoundaryRoles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faae49d1150423637ec86bd7426c17d40d4456571bd6965e98a9b52d64fe7403",
  "kind": "def",
  "lexical_name": "visibleBoundaryRoles",
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
  "slug": "visibleboundaryroles--7955afe7321e0da923d5887d",
  "source": {
    "blob": "7b61843c4a3e9c5b837686fee0b6c4b87aab0647",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7955afe7321e0da923d5887d87192a55ae91b455b40ce68d1042829ad54877de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faae49d1150423637ec86bd7426c17d40d4456571bd6965e98a9b52d64fe7403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visibleBoundaryRoles : List MarkedBoundaryRole := [
  { point := BoundaryPoint.zero, role := BoundaryRole.additiveZeroNull },
  { point := BoundaryPoint.half, role := BoundaryRole.midpointSpin },
  { point := BoundaryPoint.one, role := BoundaryRole.analyticIdentity },
  { point := BoundaryPoint.two, role := BoundaryRole.multiplicativeDoubling }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b61843c4a3e9c5b837686fee0b6c4b87aab0647` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
