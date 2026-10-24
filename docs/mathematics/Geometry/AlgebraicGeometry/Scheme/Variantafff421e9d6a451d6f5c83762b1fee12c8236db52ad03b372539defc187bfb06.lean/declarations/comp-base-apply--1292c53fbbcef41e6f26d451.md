# comp_base_apply

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
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c995fc3-baad-ce0d-f33d-ec810de574b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ba242f1-22da-17f4-a02d-bddca4b31822",
  "kind": "theorem",
  "lexical_name": "comp_base_apply",
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
  "slug": "comp-base-apply--1292c53fbbcef41e6f26d451",
  "source": {
    "blob": "8067d26bcc5cc750afd8a72a9f4ea3bb7d0eaa4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 307,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1292c53fbbcef41e6f26d451624ed36bdf2cdc9aeb9894312dc8e44bb4b3a00c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ba242f1-22da-17f4-a02d-bddca4b31822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_base_apply {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g).base x = g.base (f.base x) := by
  simp

@[simp, reassoc] -- reassoc lemma does not need `simp`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantafff421e9d6a451d6f5c83762b1fee12c8236db52ad03b372539defc187bfb06.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8067d26bcc5cc750afd8a72a9f4ea3bb7d0eaa4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
