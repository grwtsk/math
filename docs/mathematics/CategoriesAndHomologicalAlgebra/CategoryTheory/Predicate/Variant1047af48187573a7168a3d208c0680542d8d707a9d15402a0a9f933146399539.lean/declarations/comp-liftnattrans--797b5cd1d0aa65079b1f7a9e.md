# comp_liftNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:040d4343-b4da-a384-f112-efb01021afcb",
  "kind": "theorem",
  "lexical_name": "comp_liftNatTrans",
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
  "slug": "comp-liftnattrans--797b5cd1d0aa65079b1f7a9e",
  "source": {
    "blob": "e60699794f69115e4bfae89d29702085b7923cff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:797b5cd1d0aa65079b1f7a9e3066bdfebe39f5fffeae92718b0161a7a0093b13",
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

Occurrence: `result:040d4343-b4da-a384-f112-efb01021afcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_liftNatTrans (F₁ F₂ F₃ : C ⥤ E) (F₁' F₂' F₃' : D ⥤ E) [h₁ : Lifting L W F₁ F₁']
    [h₂ : Lifting L W F₂ F₂'] [h₃ : Lifting L W F₃ F₃'] (τ : F₁ ⟶ F₂) (τ' : F₂ ⟶ F₃) :
    liftNatTrans L W F₁ F₂ F₁' F₂' τ ≫ liftNatTrans L W F₂ F₃ F₂' F₃' τ' =
      liftNatTrans L W F₁ F₃ F₁' F₃' (τ ≫ τ') :=
  natTrans_ext L W _ _ fun X => by
    simp only [NatTrans.comp_app, liftNatTrans_app, assoc, Iso.inv_hom_id_app_assoc]
#align category_theory.localization.comp_lift_nat_trans CategoryTheory.Localization.comp_liftNatTrans

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant1047af48187573a7168a3d208c0680542d8d707a9d15402a0a9f933146399539.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60699794f69115e4bfae89d29702085b7923cff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
