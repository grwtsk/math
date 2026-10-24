# over_map_compatiblePreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1239b9ee-0359-8d16-8500-c4e83862d5e8",
  "kind": "lemma",
  "lexical_name": "over_map_compatiblePreserving",
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
  "slug": "over-map-compatiblepreserving--9943cd00ea8191ee8d85b34c",
  "source": {
    "blob": "35617770c1b1a47be2946a309843262691cbf79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 300,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9943cd00ea8191ee8d85b34cd03f59ec9ddb3d4b5505df2465380adecbe20d37",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1239b9ee-0359-8d16-8500-c4e83862d5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma over_map_compatiblePreserving {X Y : C} (f : X ⟶ Y) :
    CompatiblePreserving (J.over Y) (Over.map f) where
  compatible {F Z _ x hx Y₁ Y₂ W f₁ f₂ g₁ g₂ hg₁ hg₂ h} := by
    let W' : Over X := Over.mk (f₁.left ≫ Y₁.hom)
    let g₁' : W' ⟶ Y₁ := Over.homMk f₁.left
    let g₂' : W' ⟶ Y₂ := Over.homMk f₂.left
      (by simpa using! (Over.forget _).congr_map h.symm =≫ Z.hom)
    let e : (Over.map f).obj W' ≅ W := Over.isoMk (Iso.refl _)
      (by simpa [W'] using! (Over.w f₁).symm)
    convert congr_arg (F.obj.map e.inv.op)
      (hx g₁' g₂' hg₁ hg₂ (by ext; exact (Over.forget _).congr_map h)) using 1
    all_goals
      dsimp [e, W', g₁', g₂']
      rw [← Functor.map_comp_apply]
      apply ConcreteCategory.congr_hom
      congr 1
      rw [← op_comp]
      congr 1
      ext
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35617770c1b1a47be2946a309843262691cbf79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
