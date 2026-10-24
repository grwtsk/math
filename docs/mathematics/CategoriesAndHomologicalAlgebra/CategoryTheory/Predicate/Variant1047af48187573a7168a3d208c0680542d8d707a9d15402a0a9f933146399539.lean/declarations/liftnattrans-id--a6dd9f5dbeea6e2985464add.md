# liftNatTrans_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88646771-1fff-0ead-bbbb-9a52fea28cfd",
  "kind": "theorem",
  "lexical_name": "liftNatTrans_id",
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
  "slug": "liftnattrans-id--a6dd9f5dbeea6e2985464add",
  "source": {
    "blob": "e60699794f69115e4bfae89d29702085b7923cff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 366,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6dd9f5dbeea6e2985464addabccc6753d1d3883c625a72b654c97dce82fab04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88646771-1fff-0ead-bbbb-9a52fea28cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftNatTrans_id (F : C ⥤ E) (F' : D ⥤ E) [h : Lifting L W F F'] :
    liftNatTrans L W F F F' F' (𝟙 F) = 𝟙 F' :=
  natTrans_ext L W _ _ fun X => by
    simp only [liftNatTrans_app, NatTrans.id_app, id_comp, Iso.hom_inv_id_app]
    rfl
#align category_theory.localization.lift_nat_trans_id CategoryTheory.Localization.liftNatTrans_id

/-- Given a localization functor `L : C ⥤ D` for `W : MorphismProperty C`,
if `(F₁' F₂' : D ⥤ E)` are functors which lifts functors `(F₁ F₂ : C ⥤ E)`,
a natural isomorphism `τ : F₁ ⟶ F₂` lifts to a natural isomorphism `F₁' ⟶ F₂'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60699794f69115e4bfae89d29702085b7923cff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
