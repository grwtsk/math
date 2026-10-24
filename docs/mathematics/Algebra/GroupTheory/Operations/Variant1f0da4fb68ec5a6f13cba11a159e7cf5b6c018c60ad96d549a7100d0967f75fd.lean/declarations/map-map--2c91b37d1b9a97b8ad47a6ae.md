# map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80aae71eb7463e4feeb75c9a35992df9092d976e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f0da4fb68ec5a6f13cba11a159e7cf5b6c018c60ad96d549a7100d0967f75fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:187c7cc9-dca0-f80d-cbbf-bf84d6b931c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cddd0892-8e0d-8ab8-985e-9b6fb571d0ca",
  "kind": "theorem",
  "lexical_name": "map_map",
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
  "slug": "map-map--2c91b37d1b9a97b8ad47a6ae",
  "source": {
    "blob": "80aae71eb7463e4feeb75c9a35992df9092d976e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant1f0da4fb68ec5a6f13cba11a159e7cf5b6c018c60ad96d549a7100d0967f75fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c91b37d1b9a97b8ad47a6ae119490dd3d7834e4f4bfc9ded9ac1a9d1e29a257",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant1f0da4fb68ec5a6f13cba11a159e7cf5b6c018c60ad96d549a7100d0967f75fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cddd0892-8e0d-8ab8-985e-9b6fb571d0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_map (g : N →* P) (f : M →* N) : (S.map f).map g = S.map (g.comp f) :=
  SetLike.coe_injective <| image_image _ _ _

-- The simpNF linter says that the LHS can be simplified via `Submonoid.mem_map`.
-- However this is a higher priority lemma.
-- It seems the side condition `hf` is not applied by `simpNF`.
-- https://github.com/leanprover/std4/issues/207
@[to_additive (attr := simp 1100, nolint simpNF)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant1f0da4fb68ec5a6f13cba11a159e7cf5b6c018c60ad96d549a7100d0967f75fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant1f0da4fb68ec5a6f13cba11a159e7cf5b6c018c60ad96d549a7100d0967f75fd.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80aae71eb7463e4feeb75c9a35992df9092d976e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
