# contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1cf9922aa2b52c5ad3e772d707f344b6c8e6e65f8360b0241f79e6579337cf4",
  "kind": "def",
  "lexical_name": "contains",
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
  "slug": "contains--ba90d87f3ab65926cd220d1e",
  "source": {
    "blob": "882db8706fe111d664caf4c4b380a01fac1fdaa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variantc24a2c03d2a665cba2b02e552361a10a906e6979fb87d5688a4ed14a94e4c515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba90d87f3ab65926cd220d1e79f95dd6f845b22a2ebed24eef1f5539a18c2dce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variantc24a2c03d2a665cba2b02e552361a10a906e6979fb87d5688a4ed14a94e4c515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1cf9922aa2b52c5ad3e772d707f344b6c8e6e65f8360b0241f79e6579337cf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contains (map : IndexMultiMap α β) (key : α) : Bool :=
  map.indexes.contains key

/--
Updates all values associated with `key` by applying `f` to each one.
If the key is absent, returns the map unchanged.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variantc24a2c03d2a665cba2b02e552361a10a906e6979fb87d5688a4ed14a94e4c515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variantc24a2c03d2a665cba2b02e552361a10a906e6979fb87d5688a4ed14a94e4c515.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `882db8706fe111d664caf4c4b380a01fac1fdaa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
