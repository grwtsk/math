# uliftYonedaEquiv_symm_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f804a86dd8449d0cfb69472cbfd436d97805d34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bf2a7ef-ec90-7f37-704a-4330dea5f987",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:846cfc8f-e1fe-6875-aa0c-e4a5aea99028",
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
  "slug": "uliftyonedaequiv-symm-map--609bf46abef8e6227246127c",
  "source": {
    "blob": "0f804a86dd8449d0cfb69472cbfd436d97805d34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:609bf46abef8e6227246127c5ec268deb324d76e0791525d9194a9bde4aea887",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:846cfc8f-e1fe-6875-aa0c-e4a5aea99028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uliftYonedaEquiv_symm_map {X Y : Cᵒᵖ} (f : X ⟶ Y) {F : Sheaf J (Type (max v v'))}
    (t : F.obj.obj X) : J.uliftYonedaEquiv.symm (F.obj.map f t) =
      J.uliftYoneda.map f.unop ≫ J.uliftYonedaEquiv.symm t := by
  obtain ⟨u, rfl⟩ := J.uliftYonedaEquiv.surjective t
  rw [uliftYonedaEquiv_naturality', Equiv.symm_apply_apply, Equiv.symm_apply_apply]

/-- Two morphisms of sheaves of types `P ⟶ Q` coincide if the precompositions
with morphisms `uliftYoneda.obj X ⟶ P` agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f804a86dd8449d0cfb69472cbfd436d97805d34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
