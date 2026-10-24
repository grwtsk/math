# presheafIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71876b9d965e010595053b61f550ce9f5a8f8f0f7d5bb959e891bffc93bc0558",
  "kind": "def",
  "lexical_name": "presheafIso",
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
  "slug": "presheafiso--1c0d306e9b3dc3750a335c30",
  "source": {
    "blob": "2c57abdb7f0afcf62a5be016bc7845b4366895f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 365,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c0d306e9b3dc3750a335c309c7ae08078185d612d1b80e1369fe675fead6eb2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71876b9d965e010595053b61f550ce9f5a8f8f0f7d5bb959e891bffc93bc0558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def presheafIso {ℱ ℱ' : Sheaf K A} (i : G.op ⋙ ℱ.val ≅ G.op ⋙ ℱ'.val) :
    ℱ.val ≅ ℱ'.val := by
  have : ∀ X : Dᵒᵖ, IsIso ((sheafHom H i.hom).app X) := by
    intro X
    -- porting note: somehow `apply` in Lean 3 is leaving a typeclass goal,
    -- perhaps due to elaboration order. The corresponding `apply` in Lean 4 fails
    -- because the instance can't yet be synthesized. I hence reorder the proof.
    suffices IsIso (yoneda.map ((sheafHom H i.hom).app X)) by
      apply isIso_of_reflects_iso _ yoneda
    use (sheafYonedaHom H i.inv).app X
    constructor <;> ext x : 2 <;>
      simp only [sheafHom, NatTrans.comp_app, NatTrans.id_app, Functor.image_preimage]
    · exact ((Types.presheafIso H (isoOver i (unop x))).app X).hom_inv_id
    · exact ((Types.presheafIso H (isoOver i (unop x))).app X).inv_hom_id
    -- porting note: Lean 4 proof is finished, Lean 3 needed `inferInstance`
  haveI : IsIso (sheafHom H i.hom) := by apply NatIso.isIso_of_isIso_app
  apply asIso (sheafHom H i.hom)
#align category_theory.cover_dense.presheaf_iso CategoryTheory.CoverDense.presheafIso

/-- Given a natural isomorphism `G ⋙ ℱ ≅ G ⋙ ℱ'` between presheaves of arbitrary category,
where `G` is full and cover-dense, and `ℱ', ℱ` are sheaves,
we may obtain a natural isomorphism between presheaves.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c57abdb7f0afcf62a5be016bc7845b4366895f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
