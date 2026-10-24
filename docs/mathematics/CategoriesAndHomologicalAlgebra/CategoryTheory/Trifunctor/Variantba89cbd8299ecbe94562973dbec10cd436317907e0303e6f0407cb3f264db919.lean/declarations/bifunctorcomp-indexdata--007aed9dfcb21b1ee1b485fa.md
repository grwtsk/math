# BifunctorComp₂₃IndexData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd9bd305b7e44277849b52b2145d6f648b60681a78a763447e9489e398386314",
  "kind": "structure",
  "lexical_name": "BifunctorComp₂₃IndexData",
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
  "slug": "bifunctorcomp-indexdata--007aed9dfcb21b1ee1b485fa",
  "source": {
    "blob": "0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 435,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:007aed9dfcb21b1ee1b485fab0f95b41ce4f16581a6e96c03b54ab55f178170d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd9bd305b7e44277849b52b2145d6f648b60681a78a763447e9489e398386314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BifunctorComp₂₃IndexData where
  /-- an auxiliary type -/
  I₂₃ : Type*
  /-- a map `I₂ × I₃ → I₂₃` -/
  p : I₂ × I₃ → I₂₃
  /-- a map `I₁ × I₂₃ → J` -/
  q : I₁ × I₂₃ → J
  hpq (i : I₁ × I₂ × I₃) : q ⟨i.1, p i.2⟩ = r i

variable {r} (ρ₂₃ : BifunctorComp₂₃IndexData r)
  (X₁ : GradedObject I₁ C₁) (X₂ : GradedObject I₂ C₂) (X₃ : GradedObject I₃ C₃)

/-- Given bifunctors `F : C₁ ⥤ C₂₃ ⥤ C₄`, `G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃`, graded objects
`X₁ : GradedObject I₁ C₁`, `X₂ : GradedObject I₂ C₂`, `X₃ : GradedObject I₃ C₃` and
`ρ₂₃ : BifunctorComp₂₃IndexData r`, this asserts that for all `i₁ : I₁` and `i₂₃ : ρ₂₃.I₂₃`,
the functor `F(X₁ i₁, _)` commutes with the coproducts of the `G₂₃(X₂ i₂, X₃ i₃)`
such that `ρ₂₃.p ⟨i₂, i₃⟩ = i₂₃`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
