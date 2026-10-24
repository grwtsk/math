# shiftFunctorCompIsoId_add'_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b48cb4bc6a7eba81754185d7c8a96159e7c7d288",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 506,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85ebdee7-7ef1-160a-856a-e94db69699d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c06249f3-3a7d-2f7c-a6d2-41a9b31d98ca",
  "kind": "lemma",
  "lexical_name": "shiftFunctorCompIsoId_add'_inv_app",
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
  "slug": "shiftfunctorcompisoid-add-inv-app--b8db42d148015be8af6353b0",
  "source": {
    "blob": "b48cb4bc6a7eba81754185d7c8a96159e7c7d288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 506,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8db42d148015be8af6353b073afc0d1bc1ef5f62df2e05d113aa35319df9fb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c06249f3-3a7d-2f7c-a6d2-41a9b31d98ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorCompIsoId_add'_inv_app :
    (shiftFunctorCompIsoId C p' p hp).inv.app X =
      (shiftFunctorCompIsoId C n' n hn).inv.app X ≫
      (shiftFunctorCompIsoId C m' m hm).inv.app (X⟦n'⟧)⟦n⟧' ≫
      (shiftFunctorAdd' C m n p h).inv.app (X⟦n'⟧⟦m'⟧) ≫
      ((shiftFunctorAdd' C n' m' p'
        (by rw [← add_left_inj p, hp, ← h, add_assoc,
          ← add_assoc m', hm, zero_add, hn])).inv.app X)⟦p⟧' := by
  dsimp [shiftFunctorCompIsoId]
  simp only [Functor.map_comp, Category.assoc]
  congr 1
  rw [← NatTrans.naturality]
  dsimp
  rw [← cancel_mono ((shiftFunctorAdd' C p' p 0 hp).inv.app X), Iso.hom_inv_id_app,
    Category.assoc, Category.assoc, Category.assoc, Category.assoc,
    ← shiftFunctorAdd'_assoc_inv_app p' m n n' p 0
      (by rw [← add_left_inj n, hn, add_assoc, h, hp]) h (by rw [add_assoc, h, hp]),
    ← Functor.map_comp_assoc, ← Functor.map_comp_assoc, ← Functor.map_comp_assoc,
    Category.assoc, Category.assoc,
    shiftFunctorAdd'_assoc_inv_app n' m' m p' 0 n' _ _
      (by rw [add_assoc, hm, add_zero]), Iso.hom_inv_id_app_assoc,
    ← shiftFunctorAdd'_add_zero_hom_app, Iso.hom_inv_id_app,
    Functor.map_id, Category.id_comp, Iso.hom_inv_id_app]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant915e16c3414bbe719e56e1f0213068e62bb242e6b2c5183f006d223dc01287f5.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b48cb4bc6a7eba81754185d7c8a96159e7c7d288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
