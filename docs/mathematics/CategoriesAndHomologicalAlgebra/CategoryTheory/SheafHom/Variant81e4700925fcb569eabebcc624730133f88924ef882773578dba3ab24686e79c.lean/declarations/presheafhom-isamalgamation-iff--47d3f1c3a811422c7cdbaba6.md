# PresheafHom.isAmalgamation_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b798e48eb161ce8f65e7b288d0c96ec864566fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7d4d8e7-9e80-e3cf-f8c9-bfed51b8b87d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaee61e3-c5e3-c8d7-02fd-4f4852c45c30",
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
  "slug": "presheafhom-isamalgamation-iff--47d3f1c3a811422c7cdbaba6",
  "source": {
    "blob": "1b798e48eb161ce8f65e7b288d0c96ec864566fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47d3f1c3a811422c7cdbaba66a0b5d3cbf1de3a583634dd5d1c021d69a309083",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaee61e3-c5e3-c8d7-02fd-4f4852c45c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PresheafHom.isAmalgamation_iff {X : C} (S : Sieve X)
    (x : Presieve.FamilyOfElements (presheafHom F G) S.arrows)
    (hx : x.Compatible) (y : (presheafHom F G).obj (op X)) :
    x.IsAmalgamation y ↔ ∀ (Y : C) (g : Y ⟶ X) (hg : S g),
      y.app (op (Over.mk g)) = (x g hg).app (op (Over.mk (𝟙 Y))) := by
  constructor
  · intro h Y g hg
    rw [← h g hg, presheafHom_map_app_op_mk_id]
  · intro h Y g hg
    dsimp
    ext ⟨W : Over Y⟩
    refine (h W.left (W.hom ≫ g) (S.downward_closed hg _)).trans ?_
    have H := hx (𝟙 _) W.hom (S.downward_closed hg W.hom) hg (by simp)
    dsimp at H
    simp only [Functor.map_id, FunctorToTypes.map_id_apply] at H
    rw [H, presheafHom_map_app_op_mk_id]
    rfl

section

variable {X : C} {S : Sieve X}
    (hG : ∀ ⦃Y : C⦄ (f : Y ⟶ X), IsLimit (G.mapCone (S.pullback f).arrows.cocone.op))

namespace PresheafHom.IsSheafFor

variable (x : Presieve.FamilyOfElements (presheafHom F G) S.arrows) {Y : C}

include hG in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b798e48eb161ce8f65e7b288d0c96ec864566fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
