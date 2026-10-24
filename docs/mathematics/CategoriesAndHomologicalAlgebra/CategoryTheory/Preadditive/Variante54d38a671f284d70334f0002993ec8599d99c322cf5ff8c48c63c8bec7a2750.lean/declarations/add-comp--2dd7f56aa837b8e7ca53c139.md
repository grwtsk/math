# add'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc8cc3ed-2c8f-03e4-4054-18e16e68a9c5",
  "kind": "lemma",
  "lexical_name": "add'_comp",
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
  "slug": "add-comp--2dd7f56aa837b8e7ca53c139",
  "source": {
    "blob": "f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dd7f56aa837b8e7ca53c139ff39074d609b5dbc19c94e41125d4108bee9c582",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8cc3ed-2c8f-03e4-4054-18e16e68a9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add'_comp (f₁ f₂ : L.obj X ⟶ L.obj Y) (g : L.obj Y ⟶ L.obj Z) :
    add' W f₁ f₂ ≫ g = add' W (f₁ ≫ g) (f₂ ≫ g) := by
  obtain ⟨α, h₁, h₂⟩ := exists_leftFraction₂ L W f₁ f₂
  obtain ⟨β, hβ⟩ := exists_leftFraction L W g
  obtain ⟨γ, hγ⟩ := (RightFraction.mk _ α.hs β.f).exists_leftFraction
  dsimp at hγ
  rw [add'_eq W f₁ f₂ α h₁ h₂, add'_eq W (f₁ ≫ g) (f₂ ≫ g)
    (LeftFraction₂.mk (α.f ≫ γ.f) (α.f' ≫ γ.f) (β.s ≫ γ.s)
    (W.comp_mem _ _ β.hs γ.hs))]; rotate_left
  · rw [h₁, hβ]
    exact LeftFraction.map_comp_map_eq_map _ _ _ hγ _
  · rw [h₂, hβ]
    exact LeftFraction.map_comp_map_eq_map _ _ _ hγ _
  rw [hβ, LeftFraction.map_comp_map_eq_map _ _ γ hγ]
  dsimp [LeftFraction₂.add]
  rw [add_comp]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
