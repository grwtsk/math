# PreDiscrTrees

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40cd3aad9bcef6a28e0a82ea0746a1ae668d7e0fc34140f79d010c793685b8bd",
  "kind": "structure",
  "lexical_name": "PreDiscrTrees",
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
  "slug": "prediscrtrees--1301cb286b7eab6d3d9896ac",
  "source": {
    "blob": "39dc82d3a84ed7309efc6d03c94fb11f37b9f208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1301cb286b7eab6d3d9896ac69bf9e039c1e13883f580818fd1f5ab3a08336df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40cd3aad9bcef6a28e0a82ea0746a1ae668d7e0fc34140f79d010c793685b8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure PreDiscrTrees where
  /-- The `rw` discrimination tree root. -/
  rw : PreDiscrTree RwLemma := {}
  /-- The `grw` discrimination tree root. -/
  grw : PreDiscrTree GrwLemma := {}
  /-- The `apply` discrimination tree root. -/
  app : PreDiscrTree ApplyLemma := {}
  /-- The `apply at` discrimination tree root. -/
  appAt : PreDiscrTree ApplyAtLemma := {}

/-- Insert the entries `maps` into the pre-discrimination trees `pres`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39dc82d3a84ed7309efc6d03c94fb11f37b9f208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
