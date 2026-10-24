# IsOpenEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0559add01fdf5eec382b35f415277664759de9251f08399d6683e9f293494fb",
  "kind": "structure",
  "lexical_name": "IsOpenEmbedding",
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
  "slug": "isopenembedding--27b582e6988a34d33a6081d4",
  "source": {
    "blob": "be561ceadc28b663fcaf5103e172ff8fcc113998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27b582e6988a34d33a6081d48e7bc9476970505c73c948e0c90f920a88147945",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0559add01fdf5eec382b35f415277664759de9251f08399d6683e9f293494fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsOpenEmbedding (f : X → Y) : Prop extends IsEmbedding f where
  /-- The range of an open embedding is an open set. -/
  isOpen_range : IsOpen <| range f

/-- A closed embedding is an embedding with closed image. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be561ceadc28b663fcaf5103e172ff8fcc113998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
