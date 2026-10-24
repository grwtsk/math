# lanEvaluationIsoColim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0367d120ff6a60470dd733f471c86824885580d298d9d1ee7f36a7b74c50497",
  "kind": "def",
  "lexical_name": "lanEvaluationIsoColim",
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
  "slug": "lanevaluationisocolim--4f7eafbe2def19cca9d5cf5b",
  "source": {
    "blob": "48dabd82aa7b3be221ea572cf6bd92847b339d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f7eafbe2def19cca9d5cf5bbee06bc8adcdcbcd69f9787c73e78fe45eb552a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0367d120ff6a60470dd733f471c86824885580d298d9d1ee7f36a7b74c50497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lanEvaluationIsoColim (F : C ⥤ D) (X : D)
    [∀ X : D, HasColimitsOfShape (CostructuredArrow F X) E] :
    lan F ⋙ (evaluation D E).obj X ≅
      (whiskeringLeft _ _ E).obj (CostructuredArrow.proj F X) ⋙ colim :=
  NatIso.ofComponents (fun G => colim.mapIso (Iso.refl _))
    (by
      intro G H i
      -- porting note: was `ext` in lean 3
      -- Now `ext` can't see that `lan` is a colimit.
      -- Uncertain whether it makes sense to add another `@[ext]` lemma.
      -- See https://github.com/leanprover-community/mathlib4/issues/5229
      apply colimit.hom_ext
      intro j
      simp only [Functor.comp_map, Functor.mapIso_refl, evaluation_obj_map, whiskeringLeft_obj_map,
        lan_map_app, colimit.ι_desc_assoc, Category.comp_id, Category.assoc]
      -- porting note: this deals with the fact that the type of `lan_map_app` has changed
      -- See https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/change.20in.20behaviour.20with.20.60simps.60/near/354350606
      erw [show ((Lan.equiv F H (Lan.loc F H)) (𝟙 (Lan.loc F H))).app j.left =
        colimit.ι (Lan.diagram F H (F.obj j.left))
        (CostructuredArrow.mk (𝟙 (F.obj j.left))) by apply Category.comp_id]
      erw [colimit.ι_pre_assoc (Lan.diagram F H X) (CostructuredArrow.map j.hom), Category.id_comp,
        Category.comp_id, colimit.ι_map]
      rcases j with ⟨j_left, ⟨⟨⟩⟩, j_hom⟩
      congr
      rw [CostructuredArrow.map_mk, Category.id_comp, CostructuredArrow.mk])
set_option linter.uppercaseLean3 false in
#align category_theory.Lan_evaluation_iso_colim CategoryTheory.lanEvaluationIsoColim

variable [ConcreteCategory.{u₁} E] [HasLimits E] [HasColimits E]

variable [ReflectsLimits (forget E)] [PreservesFilteredColimits (forget E)]

variable [PreservesLimits (forget E)]

/-- If `F : C ⥤ D` is a representably flat functor between small categories, then the functor
`Lan F.op` that takes presheaves over `C` to presheaves over `D` preserves finite limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dabd82aa7b3be221ea572cf6bd92847b339d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
