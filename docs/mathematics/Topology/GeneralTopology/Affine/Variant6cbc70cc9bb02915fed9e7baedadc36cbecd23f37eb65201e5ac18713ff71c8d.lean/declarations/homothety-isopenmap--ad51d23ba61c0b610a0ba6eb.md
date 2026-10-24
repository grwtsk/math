# homothety_isOpenMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e5ebe65d6ba81e136a9b1d7f931dbe307819b5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:246536bb-65a2-b980-a203-18426bf93447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f04c5c1e-30f5-99f3-1d3d-6e2b3071f4a2",
  "kind": "theorem",
  "lexical_name": "homothety_isOpenMap",
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
  "slug": "homothety-isopenmap--ad51d23ba61c0b610a0ba6eb",
  "source": {
    "blob": "2e5ebe65d6ba81e136a9b1d7f931dbe307819b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad51d23ba61c0b610a0ba6eb8d950de736d9fda18391a9462d20bda32b8552d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04c5c1e-30f5-99f3-1d3d-6e2b3071f4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homothety_isOpenMap (x : F) (t : R) (ht : t ≠ 0) : IsOpenMap <| homothety x t := by
  apply IsOpenMap.of_inverse (homothety_continuous x t⁻¹) <;> intro e <;>
    simp [← AffineMap.comp_apply, ← homothety_mul, ht]

end Field

end AffineMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Affine/Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e5ebe65d6ba81e136a9b1d7f931dbe307819b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
