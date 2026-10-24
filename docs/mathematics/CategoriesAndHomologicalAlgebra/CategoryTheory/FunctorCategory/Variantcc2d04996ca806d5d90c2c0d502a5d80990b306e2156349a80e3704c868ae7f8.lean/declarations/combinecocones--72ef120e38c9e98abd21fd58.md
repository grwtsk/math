# combineCocones

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55eb97654584768169e3e597070947d73f8a0df92d55b9714fc9f2954bf39f49",
  "kind": "def",
  "lexical_name": "combineCocones",
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
  "slug": "combinecocones--72ef120e38c9e98abd21fd58",
  "source": {
    "blob": "4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72ef120e38c9e98abd21fd588f156ad6c4b3b503761de30786ec4b601c8ab267",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55eb97654584768169e3e597070947d73f8a0df92d55b9714fc9f2954bf39f49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combineCocones (F : J ⥤ K ⥤ C) (c : ∀ k : K, ColimitCocone (F.flip.obj k)) : Cocone F
    where
  pt :=
    { obj := fun k => (c k).cocone.pt
      map := fun {k₁} {k₂} f => (c k₁).isColimit.desc ⟨_, F.flip.map f ≫ (c k₂).cocone.ι⟩
      map_id := fun k =>
        (c k).isColimit.hom_ext fun j => by
          dsimp
          simp
      map_comp := fun {k₁} {k₂} {k₃} f₁ f₂ => (c k₁).isColimit.hom_ext fun j => by simp }
  ι :=
    { app := fun j => { app := fun k => (c k).cocone.ι.app j }
      naturality := fun j₁ j₂ g => by ext k; exact (c k).cocone.ι.naturality g }
#align category_theory.limits.combine_cocones CategoryTheory.Limits.combineCocones

/-- The stitched together cocones each project down to the original given cocones (up to iso). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
