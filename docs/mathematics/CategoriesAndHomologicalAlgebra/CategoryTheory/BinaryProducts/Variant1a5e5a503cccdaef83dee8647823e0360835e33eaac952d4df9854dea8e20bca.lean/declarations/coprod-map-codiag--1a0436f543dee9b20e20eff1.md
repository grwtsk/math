# coprod.map_codiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a5e02f331b6bad70e42c2007eaceaf4aa7b73a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f94cd895-1dc8-8ce3-106c-46f548e87e23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d2da0f6-8f6c-f4c8-ce68-964e5cd557ff",
  "kind": "theorem",
  "lexical_name": "coprod.map_codiag",
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
  "slug": "coprod-map-codiag--1a0436f543dee9b20e20eff1",
  "source": {
    "blob": "8a5e02f331b6bad70e42c2007eaceaf4aa7b73a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 380,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a0436f543dee9b20e20eff16a84934f53ca339bfab617917af8d9829875d8f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d2da0f6-8f6c-f4c8-ce68-964e5cd557ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprod.map_codiag {X Y : C} (f : X ⟶ Y) [HasBinaryCoproduct X X] [HasBinaryCoproduct Y Y] :
    coprod.map f f ≫ codiag Y = codiag X ≫ f := by simp

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5e02f331b6bad70e42c2007eaceaf4aa7b73a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
