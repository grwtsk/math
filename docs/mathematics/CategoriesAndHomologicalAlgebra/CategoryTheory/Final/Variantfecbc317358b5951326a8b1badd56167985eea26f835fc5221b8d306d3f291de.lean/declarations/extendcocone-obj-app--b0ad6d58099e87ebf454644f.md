# extendCocone_obj_ι_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4be9c549-8dfc-6e64-d67f-2ea34076eff3",
  "kind": "lemma",
  "lexical_name": "extendCocone_obj_ι_app'",
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
  "slug": "extendcocone-obj-app--b0ad6d58099e87ebf454644f",
  "source": {
    "blob": "363482bad4919be7a541753ea8f6e3d0ea174957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0ad6d58099e87ebf454644fb002b985c4c15f66eb871a9c1080d9b0167ef159",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4be9c549-8dfc-6e64-d67f-2ea34076eff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extendCocone_obj_ι_app' (c : Cocone (F ⋙ G)) {X : D} {Y : C} (f : X ⟶ F.obj Y) :
    (extendCocone.obj c).ι.app X = G.map f ≫ c.ι.app Y := by
  apply induction (k₀ := f) (z := rfl) F fun Z g =>
    G.map g ≫ c.ι.app Z = G.map f ≫ c.ι.app Y
  · intro _ _ _ _ _ h₁ h₂
    simp [← h₁, ← Functor.comp_map, c.ι.naturality, h₂]
  · intro _ _ _ _ _ h₁ h₂
    simp [← h₂, ← h₁, ← Functor.comp_map, c.ι.naturality]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363482bad4919be7a541753ea8f6e3d0ea174957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
