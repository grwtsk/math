# uncurry_obj_curry_obj_flip_flip'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419ed9a6-c482-dc51-c0be-4ff656b8d911",
  "kind": "lemma",
  "lexical_name": "uncurry_obj_curry_obj_flip_flip'",
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
  "slug": "uncurry-obj-curry-obj-flip-flip--eed44ced7b5877f7ad78afd3",
  "source": {
    "blob": "ad73cfb6e527dd27bd8244286d5342b1e5665672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eed44ced7b5877f7ad78afd3016f67f4d36e6eb9dd6bb8d1c3b17548abdb7e56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419ed9a6-c482-dc51-c0be-4ff656b8d911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uncurry_obj_curry_obj_flip_flip' (F₁ : B ⥤ C) (F₂ : D ⥤ E) (G : C × E ⥤ H) :
    uncurry.obj (F₁ ⋙ (F₂ ⋙ (curry.obj G).flip).flip) = (F₁.prod F₂) ⋙ G :=
  Functor.ext (by simp) (fun ⟨x₁, x₂⟩ ⟨y₁, y₂⟩ ⟨f₁, f₂⟩ => by
    dsimp
    simp only [Category.id_comp, Category.comp_id, ← G.map_comp, prod_comp])

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad73cfb6e527dd27bd8244286d5342b1e5665672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
