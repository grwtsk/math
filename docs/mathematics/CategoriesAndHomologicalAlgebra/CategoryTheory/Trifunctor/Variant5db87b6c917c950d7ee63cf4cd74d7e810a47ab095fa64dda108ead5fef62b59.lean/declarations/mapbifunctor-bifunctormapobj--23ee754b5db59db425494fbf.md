# ιMapBifunctor₁₂BifunctorMapObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c23f18bcdd5f9c23ef7dc32905ed1f054ba5f60350d77262a05ecd971c0f710c",
  "kind": "def",
  "lexical_name": "ιMapBifunctor₁₂BifunctorMapObj",
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
  "slug": "mapbifunctor-bifunctormapobj--23ee754b5db59db425494fbf",
  "source": {
    "blob": "a46bf95c469160735713e970381cf9bae9a12514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 295,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23ee754b5db59db425494fbf69f9b60f61c42842cf5a31e13c1521949cc3bcd7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c23f18bcdd5f9c23ef7dc32905ed1f054ba5f60350d77262a05ecd971c0f710c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ιMapBifunctor₁₂BifunctorMapObj (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (j : J)
    (h : r (i₁, i₂, i₃) = j) :
    (G.obj ((F₁₂.obj (X₁ i₁)).obj (X₂ i₂))).obj (X₃ i₃) ⟶
      mapBifunctorMapObj G ρ₁₂.q (mapBifunctorMapObj F₁₂ ρ₁₂.p X₁ X₂) X₃ j :=
  (G.map (ιMapBifunctorMapObj F₁₂ ρ₁₂.p X₁ X₂ i₁ i₂ _ rfl)).app (X₃ i₃) ≫
    ιMapBifunctorMapObj G ρ₁₂.q (mapBifunctorMapObj F₁₂ ρ₁₂.p X₁ X₂) X₃ (ρ₁₂.p ⟨i₁, i₂⟩) i₃ j
      (by rw [← h, ← ρ₁₂.hpq])

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46bf95c469160735713e970381cf9bae9a12514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
