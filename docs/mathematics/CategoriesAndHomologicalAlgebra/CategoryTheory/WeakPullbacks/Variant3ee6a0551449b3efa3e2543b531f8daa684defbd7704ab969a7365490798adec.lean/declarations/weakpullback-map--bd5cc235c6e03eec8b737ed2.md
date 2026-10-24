# weakPullback.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3b59bf6a29124a32f4b7310b5464e6f46531737f5071b0cb1c4573094ff54d5",
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
  "slug": "weakpullback-map--bd5cc235c6e03eec8b737ed2",
  "source": {
    "blob": "a3067cfc8db96867e1608d6a1268aab5c9a9f17e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd5cc235c6e03eec8b737ed27b8dc79c36ba57eb72995f708d8e2c31793c8040",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3b59bf6a29124a32f4b7310b5464e6f46531737f5071b0cb1c4573094ff54d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3067cfc8db96867e1608d6a1268aab5c9a9f17e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
