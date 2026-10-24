# quotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6595bfdf051010bd224972d3cfd8eb5c31d8f360b52e920a0cc1f36ff80bf70",
  "kind": "def",
  "lexical_name": "quotientEquiv",
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
  "slug": "quotientequiv--e4a54c596641f1da8d1d2249",
  "source": {
    "blob": "fee4f1f5a92a2b108022dd7b7a7dd07ed3330188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4a54c596641f1da8d1d22490954c071aefec7f568d6950489c341d2770c296d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6595bfdf051010bd224972d3cfd8eb5c31d8f360b52e920a0cc1f36ff80bf70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientEquiv [HasFiniteColimits C] [PreservesFiniteColimits S] (A : CostructuredArrow S T) :
    Subobject (op A) ≃o { P : Subobject (op A.left) // ∃ q, S.map P.arrow.unop ≫ q = A.hom } where
  toFun P := ⟨projectQuotient P, projectQuotient_factors P⟩
  invFun P := liftQuotient P.val P.prop.choose_spec
  left_inv _ := lift_projectQuotient _ _
  right_inv P := Subtype.ext (by simp only [liftQuotient, Quiver.Hom.unop_op, homMk_left,
      Quiver.Hom.op_unop, projectQuotient_mk, Subobject.mk_arrow])
  map_rel_iff' := by
    apply Subobject.ind₂
    intro P Q f g hf hg
    refine ⟨fun h => Subobject.mk_le_mk_of_comm ?_ ?_, fun h => ?_⟩
    · refine (homMk (Subobject.ofMkLEMk _ _ h).unop ((cancel_epi (S.map g.unop.left)).1 ?_)).op
      dsimp
      simp only [← S.map_comp_assoc, unop_left_comp_ofMkLEMk_unop, unop_op, CommaMorphism.w,
        right_eq_id, Functor.const_obj_map]
    · apply Quiver.Hom.unop_inj
      ext
      exact unop_left_comp_ofMkLEMk_unop _
    · refine Subobject.mk_le_mk_of_comm (Subobject.ofMkLEMk _ _ h).unop.left.op ?_
      refine Quiver.Hom.unop_inj ?_
      have := congr_arg Quiver.Hom.unop (Subobject.ofMkLEMk_comp h)
      simpa only [unop_op, Functor.id_obj, Functor.const_obj_obj, MonoOver.mk_obj, Over.mk_left,
        MonoOver.mk_arrow, unop_comp, Quiver.Hom.unop_op, comp_left]
          using congr_arg CommaMorphism.left this

/-- If `C` is well-copowered and cocomplete and `S` preserves colimits, then
    `CostructuredArrow S T` is well-copowered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee4f1f5a92a2b108022dd7b7a7dd07ed3330188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
