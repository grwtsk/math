# StableUnderBaseChange.baseChange_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7188ee55-53db-4564-233f-c1277aef7a04",
  "kind": "theorem",
  "lexical_name": "StableUnderBaseChange.baseChange_map",
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
  "slug": "stableunderbasechange-basechange-map--17deb36f5d45fb6107d3b5b9",
  "source": {
    "blob": "866a1999084551ea5789400b88f5a4f2a1c9b831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Varianta7663dc5ad2c06f2b1302d972d53c06792c3f101bda564da40dc7b7500cd5b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17deb36f5d45fb6107d3b5b907b9c8d5229e44e6b9aade931d8b1edfaa803a94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Varianta7663dc5ad2c06f2b1302d972d53c06792c3f101bda564da40dc7b7500cd5b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7188ee55-53db-4564-233f-c1277aef7a04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StableUnderBaseChange.baseChange_map [HasPullbacks C] {P : MorphismProperty C}
    (hP : StableUnderBaseChange P) {S S' : C} (f : S' ⟶ S) {X Y : Over S} (g : X ⟶ Y)
    (H : P g.left) : P ((baseChange f).map g).left := by
  let e :=
    pullbackRightPullbackFstIso Y.hom f g.left ≪≫
      pullback.congrHom (g.w.trans (Category.comp_id _)) rfl
  have : e.inv ≫ pullback.snd = ((baseChange f).map g).left := by
    ext <;> dsimp <;> simp
  rw [← this, hP.respectsIso.cancel_left_isIso]
  exact hP.snd _ _ H
#align category_theory.morphism_property.stable_under_base_change.base_change_map CategoryTheory.MorphismProperty.StableUnderBaseChange.baseChange_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Varianta7663dc5ad2c06f2b1302d972d53c06792c3f101bda564da40dc7b7500cd5b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Varianta7663dc5ad2c06f2b1302d972d53c06792c3f101bda564da40dc7b7500cd5b65.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `866a1999084551ea5789400b88f5a4f2a1c9b831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
