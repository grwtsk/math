# weakPullback.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92b450eda2baccef6e59b05a5d8aeb75aa94997233b11a3be6027b329c8a20f1",
  "kind": "abbrev",
  "lexical_name": "weakPullback.map",
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
  "slug": "weakpullback-map--f7a0eabb597018a742304c34",
  "source": {
    "blob": "3069b29544772d9848dee8bd11ba253ae8928d0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7a0eabb597018a742304c348e29a84a37bfc19efbe8aa9b6f563ca7396371a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92b450eda2baccef6e59b05a5d8aeb75aa94997233b11a3be6027b329c8a20f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev weakPullback.map {W X Y Z S T : C} (f₁ : W ⟶ S) (f₂ : X ⟶ S) [HasWeakPullback f₁ f₂]
    (g₁ : Y ⟶ T) (g₂ : Z ⟶ T) [HasWeakPullback g₁ g₂] (i₁ : W ⟶ Y) (i₂ : X ⟶ Z) (i₃ : S ⟶ T)
    (eq₁ : f₁ ≫ i₃ = i₁ ≫ g₁) (eq₂ : f₂ ≫ i₃ = i₂ ≫ g₂) :
    weakPullback f₁ f₂ ⟶ weakPullback g₁ g₂ :=
  weakPullback.lift (weakPullback.fst f₁ f₂ ≫ i₁) (weakPullback.snd f₁ f₂ ≫ i₂)
    (by simp only [Category.assoc, ← eq₁, ← eq₂, weakPullback.condition_assoc])

/-- A morphism from the weak pullback of `W ⟶ S` and `X ⟶ S` to the weak pullback of
`Y ⟶ T` and `Z ⟶ T` given `S ⟶ T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variante7b83ae2bdce95b908a8eab12af4a1ccbdd01777617b61cca561938515071497.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3069b29544772d9848dee8bd11ba253ae8928d0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
