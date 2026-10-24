# compatibility_Γ₂N₁_Γ₂N₂_natTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d25da7923331f040e5f28803e8895f40902d9cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a855a0334a52993a9737b56d6ef5b078315d9955e830ac605d9788ab1ad53d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c4e9178-8bb1-7c74-f8a8-d44d45f072b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e913a1e7-e5f1-9e0e-9f45-5f39ba6bc85c",
  "kind": "theorem",
  "lexical_name": "compatibility_Γ₂N₁_Γ₂N₂_natTrans",
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
  "slug": "compatibility-n-n-nattrans--2c48bf46142807837482d2fb",
  "source": {
    "blob": "8d25da7923331f040e5f28803e8895f40902d9cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant7a855a0334a52993a9737b56d6ef5b078315d9955e830ac605d9788ab1ad53d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c48bf46142807837482d2fb8b048d36a665b640e25fb169005fd99c3e7eece7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant7a855a0334a52993a9737b56d6ef5b078315d9955e830ac605d9788ab1ad53d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e913a1e7-e5f1-9e0e-9f45-5f39ba6bc85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatibility_Γ₂N₁_Γ₂N₂_natTrans (X : SimplicialObject C) :
    Γ₂N₁.natTrans.app X =
      (Γ₂N₂ToKaroubiIso.app X).inv ≫
        Γ₂N₂.natTrans.app ((toKaroubi (SimplicialObject C)).obj X) := by
  rw [Γ₂N₂.natTrans_app_f_app]
  dsimp only [Karoubi.decompId_i_toKaroubi, Karoubi.decompId_p_toKaroubi, Functor.comp_map,
    NatTrans.comp_app]
  rw [N₂.map_id, Γ₂.map_id, Iso.app_inv]
  dsimp only [toKaroubi]
  erw [id_comp]
  rw [comp_id, Iso.inv_hom_id_app_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant7a855a0334a52993a9737b56d6ef5b078315d9955e830ac605d9788ab1ad53d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant7a855a0334a52993a9737b56d6ef5b078315d9955e830ac605d9788ab1ad53d9.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d25da7923331f040e5f28803e8895f40902d9cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
