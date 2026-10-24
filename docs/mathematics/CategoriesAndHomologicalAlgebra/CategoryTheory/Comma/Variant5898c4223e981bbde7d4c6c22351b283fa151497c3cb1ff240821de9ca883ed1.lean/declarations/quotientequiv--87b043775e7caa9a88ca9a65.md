# quotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cd0541be86b53c19b7ee42f991555fd1ff0cff627c2154cca16b2415260a38f",
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
  "slug": "quotientequiv--87b043775e7caa9a88ca9a65",
  "source": {
    "blob": "c06f2853e9a6e628d592693bb950676d2bc2171e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87b043775e7caa9a88ca9a65f6acc65697935933adbdd091b3e119764522848a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cd0541be86b53c19b7ee42f991555fd1ff0cff627c2154cca16b2415260a38f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientEquiv [HasColimits C] [PreservesColimits S] (A : CostructuredArrow S T) :
    Subobject (op A) ≃o { P : Subobject (op A.left) // ∃ q, S.map P.arrow.unop ≫ q = A.hom } where
  toFun P := ⟨projectQuotient P, projectQuotient_factors P⟩
  invFun P := liftQuotient P.val P.prop.choose_spec
  left_inv P := lift_projectQuotient _ _
  right_inv P := Subtype.ext (by simp only [liftQuotient, Quiver.Hom.unop_op, homMk_left,
      Quiver.Hom.op_unop, projectQuotient_mk, Subobject.mk_arrow])
  map_rel_iff' := by
    apply Subobject.ind₂
    intro P Q f g hf hg
    refine' ⟨fun h => Subobject.mk_le_mk_of_comm _ _, fun h => _⟩
    · refine' (homMk (Subobject.ofMkLEMk _ _ h).unop ((cancel_epi (S.map g.unop.left)).1 _)).op
      dsimp
      simp only [← S.map_comp_assoc, unop_left_comp_ofMkLEMk_unop, unop_op, CommaMorphism.w,
        Functor.const_obj_obj, right_eq_id, Functor.const_obj_map, Category.comp_id]
    · apply Quiver.Hom.unop_inj
      ext
      exact unop_left_comp_ofMkLEMk_unop _
    · refine' Subobject.mk_le_mk_of_comm (Subobject.ofMkLEMk _ _ h).unop.left.op _
      refine' Quiver.Hom.unop_inj _
      have := congr_arg Quiver.Hom.unop (Subobject.ofMkLEMk_comp h)
      simpa only [unop_op, Functor.id_obj, Functor.const_obj_obj, MonoOver.mk'_obj, Over.mk_left,
        MonoOver.mk'_arrow, unop_comp, Quiver.Hom.unop_op, comp_left]
          using congr_arg CommaMorphism.left this
#align category_theory.costructured_arrow.quotient_equiv CategoryTheory.CostructuredArrow.quotientEquiv

/-- If `C` is well-copowered and cocomplete and `S` preserves colimits, then
    `CostructuredArrow S T` is well-copowered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c06f2853e9a6e628d592693bb950676d2bc2171e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
