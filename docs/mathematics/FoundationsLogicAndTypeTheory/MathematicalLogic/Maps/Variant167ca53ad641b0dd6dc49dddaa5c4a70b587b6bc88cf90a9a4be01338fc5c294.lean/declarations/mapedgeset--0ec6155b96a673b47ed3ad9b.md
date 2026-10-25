# mapEdgeSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bab8a06618e8bd6461af11483643b30d895545d6b2813af3d31ccb4cd2cadde3",
  "kind": "def",
  "lexical_name": "mapEdgeSet",
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
  "slug": "mapedgeset--0ec6155b96a673b47ed3ad9b",
  "source": {
    "blob": "afc84f0d5600119a69d6b5601c0b3ea3fe96aa20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 355,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ec6155b96a673b47ed3ad9bffb56f2b1409ae51db82e0685c6e4265d65ae9c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bab8a06618e8bd6461af11483643b30d895545d6b2813af3d31ccb4cd2cadde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapEdgeSet : G.edgeSet ↪ G'.edgeSet where
  toFun := Hom.mapEdgeSet f
  inj' := Hom.mapEdgeSet.injective f.toRelHom f.injective

/-- A graph embedding induces an embedding of neighbor sets. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc84f0d5600119a69d6b5601c0b3ea3fe96aa20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
