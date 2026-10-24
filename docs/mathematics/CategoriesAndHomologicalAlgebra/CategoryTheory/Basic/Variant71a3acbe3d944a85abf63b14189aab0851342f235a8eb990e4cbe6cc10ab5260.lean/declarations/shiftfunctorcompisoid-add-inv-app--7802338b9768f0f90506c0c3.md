# shiftFunctorCompIsoId_add'_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa7bc086-b6f3-1bd2-a65a-76e81fa7aa16",
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
  "slug": "shiftfunctorcompisoid-add-inv-app--7802338b9768f0f90506c0c3",
  "source": {
    "blob": "1918c46cb95db727d22936ca2f992d717aeb38a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 545,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7802338b9768f0f90506c0c30b779a0585b55bc4fe6a128376f36259eaaadafc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa7bc086-b6f3-1bd2-a65a-76e81fa7aa16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–569.

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
    shiftFunctorAdd'_assoc_inv_app n' m' m p' 0 n' _ hm
      (by rw [add_assoc, hm, add_zero]), Iso.hom_inv_id_app_assoc,
    ← shiftFunctorAdd'_add_zero_hom_app, Iso.hom_inv_id_app,
    Functor.map_id, Category.id_comp, Iso.hom_inv_id_app]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant71a3acbe3d944a85abf63b14189aab0851342f235a8eb990e4cbe6cc10ab5260.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1918c46cb95db727d22936ca2f992d717aeb38a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
