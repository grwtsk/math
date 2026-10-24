# stalkMap_hom_inv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8067d26bcc5cc750afd8a72a9f4ea3bb7d0eaa4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 861,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1a631bc-db61-4f71-3af7-8bd7b433af71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c77b7bb-376d-a263-9002-d9804d77a044",
  "kind": "lemma",
  "lexical_name": "stalkMap_hom_inv_apply",
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
  "slug": "stalkmap-hom-inv-apply--f07d210d90538960d166833a",
  "source": {
    "blob": "8067d26bcc5cc750afd8a72a9f4ea3bb7d0eaa4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 861,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f07d210d90538960d166833aa6c57e568b4d29568c10f086a4a405e81586ce06",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c77b7bb-376d-a263-9002-d9804d77a044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkMap_hom_inv_apply (e : X ≅ Y) (y : Y) (z) :
    e.inv.stalkMap y (e.hom.stalkMap (e.inv.base y) z) =
      (Y.presheaf.stalkCongr (.of_eq (by simp))).hom z :=
  DFunLike.congr_fun (CommRingCat.hom_ext_iff.mp (stalkMap_hom_inv e y)) z

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8067d26bcc5cc750afd8a72a9f4ea3bb7d0eaa4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
