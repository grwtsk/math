# nhdsSet_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3789c8b5-8836-1c17-56eb-8cc6aef3330c",
  "kind": "theorem",
  "lexical_name": "nhdsSet_union",
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
  "slug": "nhdsset-union--9c7893a81ebdc97ca6e4b8e0",
  "source": {
    "blob": "dfd29e7fee3683ce8dad50c2b294d06ea6d94f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7893a81ebdc97ca6e4b8e04bdf97296e2f32007d4f9d964b98bbdb5f74b13b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3789c8b5-8836-1c17-56eb-8cc6aef3330c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsSet_union (s t : Set α) : 𝓝ˢ (s ∪ t) = 𝓝ˢ s ⊔ 𝓝ˢ t := by
  simp only [nhdsSet, image_union, sSup_union]
#align nhds_set_union nhdsSet_union

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variante0871570bc4d7a40b16b95b2a032d50e0f23a87fbbdd0de1701e7b9517e5ba51.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfd29e7fee3683ce8dad50c2b294d06ea6d94f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
