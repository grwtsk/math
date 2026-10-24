# map_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfe68db9829c17727024cfcd4fedf5cab1750858",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32cef452763b8d210161815bce886e70018af27ffcd60f17b8d9b655e099cad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce88d9ce-f360-86b0-f017-2ce08cb3517f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a45f8063-f06e-a79a-7ac6-763a0ff39374",
  "kind": "theorem",
  "lexical_name": "map_inf",
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
  "slug": "map-inf--a97af1ea5823aeff763504b8",
  "source": {
    "blob": "dfe68db9829c17727024cfcd4fedf5cab1750858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 214,
    "path": "GRWTSK/Algebra/GroupTheory/Map/Variant32cef452763b8d210161815bce886e70018af27ffcd60f17b8d9b655e099cad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a97af1ea5823aeff763504b88c117ff06e863ce12e446b73b21ea9ad33d9fdc8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Map/Variant32cef452763b8d210161815bce886e70018af27ffcd60f17b8d9b655e099cad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a45f8063-f06e-a79a-7ac6-763a0ff39374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_inf (H K : Subgroup G) (f : G →* N) (hf : Function.Injective f) :
    (H ⊓ K).map f = H.map f ⊓ K.map f := SetLike.coe_injective (Set.image_inter hf)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Map/Variant32cef452763b8d210161815bce886e70018af27ffcd60f17b8d9b655e099cad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Map/Variant32cef452763b8d210161815bce886e70018af27ffcd60f17b8d9b655e099cad9.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe68db9829c17727024cfcd4fedf5cab1750858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
