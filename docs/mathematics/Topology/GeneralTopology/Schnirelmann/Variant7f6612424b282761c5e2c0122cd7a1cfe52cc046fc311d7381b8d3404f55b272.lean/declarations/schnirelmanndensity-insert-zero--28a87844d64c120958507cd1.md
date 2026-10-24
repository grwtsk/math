# schnirelmannDensity_insert_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:392e8ee7-8ef6-fbac-a3c0-2340709eec3c",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_insert_zero",
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
  "slug": "schnirelmanndensity-insert-zero--28a87844d64c120958507cd1",
  "source": {
    "blob": "3d52dc79ce8e422d45375b4cf549ad7a7aa640db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a87844d64c120958507cd1d2cebbe385ba20e76137b0acf3d19572d71d0dd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:392e8ee7-8ef6-fbac-a3c0-2340709eec3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma schnirelmannDensity_insert_zero [DecidablePred (· ∈ insert 0 A)] :
    schnirelmannDensity (insert 0 A) = schnirelmannDensity A :=
  schnirelmannDensity_congr' (by aesop)

/-- The Schnirelmann density is unaffected by removing `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d52dc79ce8e422d45375b4cf549ad7a7aa640db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
