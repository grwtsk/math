# hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 607,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b578c27-7d97-b696-ab59-d8bd57c3c8f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa65e4d0-04a3-118e-0103-19b15dbc3d90",
  "kind": "lemma",
  "lexical_name": "hom_ext",
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
  "slug": "hom-ext--519842cecfc348b011abed72",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 607,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:519842cecfc348b011abed726c6a153d50036e6b2dba2bea7888321f56f028ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa65e4d0-04a3-118e-0103-19b15dbc3d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_ext {Φ : uliftYoneda.{max w v₂}.LeftExtension (F ⋙ uliftYoneda.{max w v₁})}
    (f g : Functor.LeftExtension.mk F.op.lan (compULiftYonedaIsoULiftYonedaCompLan F).hom ⟶ Φ) :
    f = g := by
  ext P : 3
  apply (F.op.lan.obj P).hom_ext_of_isLeftKanExtension (F.op.lanUnit.app P)
  apply (colimitOfRepresentable.{max w v₂} P).hom_ext
  intro x
  have eq := F.op.lanUnit.naturality (uliftYonedaEquiv.{max w v₂}.symm x.unop.2)
  have eq₁ := congr_hom (CC := fun X ↦ X) (congr_app (congr_app (StructuredArrow.w f) x.unop.1.unop)
    (F.op.obj x.unop.1)) (ULift.up (𝟙 _))
  have eq₂ := congr_hom (CC := fun X ↦ X) (congr_app (congr_app (StructuredArrow.w g) x.unop.1.unop)
    (F.op.obj x.unop.1)) (ULift.up (𝟙 _))
  dsimp at eq₁ eq₂ eq ⊢
  simp only [reassoc_of% eq, ← Functor.whiskerLeft_comp]
  congr 2
  simp only [← cancel_epi ((compULiftYonedaIsoULiftYonedaCompLan F).hom.app x.unop.1.unop),
    NatTrans.naturality]
  apply uliftYonedaEquiv.injective
  simp [eq₁, eq₂, uliftYonedaEquiv_apply]

end compULiftYonedaIsoULiftYonedaCompLan

variable [∀ (P : Cᵒᵖ ⥤ Type max w v₁ v₂), F.op.HasLeftKanExtension P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
