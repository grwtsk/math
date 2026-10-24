# PresheafHom.isAmalgamation_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2a28fab-f41a-d601-1d18-1e7f94129b60",
  "kind": "lemma",
  "lexical_name": "PresheafHom.isAmalgamation_iff",
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
  "slug": "presheafhom-isamalgamation-iff--a457d2c2a7900d4dd9ffe4e7",
  "source": {
    "blob": "2089ac7932f034973dae9f495e82887779378516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a457d2c2a7900d4dd9ffe4e7861c59d7e98bb1507b72bd18f57dcb6129456f35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a28fab-f41a-d601-1d18-1e7f94129b60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PresheafHom.isAmalgamation_iff {X : C} (S : Sieve X)
    (x : Presieve.FamilyOfElements (presheafHom F G) S.arrows)
    (hx : x.Compatible) (y : (presheafHom F G).obj (op X)) :
    x.IsAmalgamation y ↔ ∀ (Y : C) (g : Y ⟶ X) (hg : S g),
      y.app (op (Over.mk g)) = (x g hg).app (op (Over.mk (𝟙 Y))) := by
  constructor
  · intro h Y g hg
    rw [← h g hg]
    dsimp
    rw [presheafHom_map_app_op_mk_id]
  · intro h Y g hg
    dsimp
    ext ⟨W : Over Y⟩
    refine (h W.left (W.hom ≫ g) (S.downward_closed hg _)).trans ?_
    have H := hx (𝟙 _) W.hom (S.downward_closed hg W.hom) hg (by simp)
    simp only [op_id, Functor.map_id, id_apply] at H
    rw [H, presheafHom_map_app _ _ W.hom (by simp)]
    rfl

section

variable {X : C} {S : Sieve X}
    (hG : ∀ ⦃Y : C⦄ (f : Y ⟶ X), IsLimit (G.mapCone (S.pullback f).arrows.cocone.op))

namespace PresheafHom.IsSheafFor

variable (x : Presieve.FamilyOfElements (presheafHom F G) S.arrows) {Y : C}

set_option backward.defeqAttrib.useBackward true in
include hG in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2089ac7932f034973dae9f495e82887779378516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
