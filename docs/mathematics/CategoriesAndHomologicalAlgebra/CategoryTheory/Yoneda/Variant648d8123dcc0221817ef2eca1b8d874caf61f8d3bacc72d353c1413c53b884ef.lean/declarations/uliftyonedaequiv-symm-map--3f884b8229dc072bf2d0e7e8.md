# uliftYonedaEquiv_symm_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a38e1c67dc5468febd2358339fcc57926cef6914",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 938,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e83ce88-5a5c-77eb-7aea-c07916bde4fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fa267cc-8d5b-80d8-c63d-64c1b693dc72",
  "kind": "lemma",
  "lexical_name": "uliftYonedaEquiv_symm_map",
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
  "slug": "uliftyonedaequiv-symm-map--3f884b8229dc072bf2d0e7e8",
  "source": {
    "blob": "a38e1c67dc5468febd2358339fcc57926cef6914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 938,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f884b8229dc072bf2d0e7e89f4be77dbcf0aff55036eb64bd03607ee4cf7415",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa267cc-8d5b-80d8-c63d-64c1b693dc72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uliftYonedaEquiv_symm_map {X Y : Cᵒᵖ} (f : X ⟶ Y) {F : Cᵒᵖ ⥤ Type (max w v₁)}
    (t : F.obj X) :
    uliftYonedaEquiv.{w}.symm (F.map f t) =
      uliftYoneda.map f.unop ≫ uliftYonedaEquiv.symm t := by
  obtain ⟨u, rfl⟩ := uliftYonedaEquiv.surjective t
  rw [uliftYonedaEquiv_naturality]
  simp

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a38e1c67dc5468febd2358339fcc57926cef6914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
