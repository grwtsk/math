# BifunctorComp₁₂IndexData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4069bee1a80b9297bfbcdcf654adf393d3aeb5a2b983c8ae917efd5af4904dae",
  "kind": "structure",
  "lexical_name": "BifunctorComp₁₂IndexData",
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
  "slug": "bifunctorcomp-indexdata--48a75969873a70667bdffed1",
  "source": {
    "blob": "a46bf95c469160735713e970381cf9bae9a12514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48a75969873a70667bdffed1028e4207f3a1469262d5b6234d7ff88d5c8c59ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4069bee1a80b9297bfbcdcf654adf393d3aeb5a2b983c8ae917efd5af4904dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BifunctorComp₁₂IndexData where
  /-- an auxiliary type -/
  I₁₂ : Type*
  /-- a map `I₁ × I₂ → I₁₂` -/
  p : I₁ × I₂ → I₁₂
  /-- a map `I₁₂ × I₃ → J` -/
  q : I₁₂ × I₃ → J
  hpq (i : I₁ × I₂ × I₃) : q ⟨p ⟨i.1, i.2.1⟩, i.2.2⟩ = r i

variable {r} (ρ₁₂ : BifunctorComp₁₂IndexData r)
  (X₁ : GradedObject I₁ C₁) (X₂ : GradedObject I₂ C₂) (X₃ : GradedObject I₃ C₃)

/-- Given bifunctors `F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂`, `G : C₁₂ ⥤ C₃ ⥤ C₄`, graded objects
`X₁ : GradedObject I₁ C₁`, `X₂ : GradedObject I₂ C₂`, `X₃ : GradedObject I₃ C₃` and
`ρ₁₂ : BifunctorComp₁₂IndexData r`, this asserts that for all `i₁₂ : ρ₁₂.I₁₂` and `i₃ : I₃`,
the functor `G(-, X₃ i₃)` commutes with the coproducts of the `F₁₂(X₁ i₁, X₂ i₂)`
such that `ρ₁₂.p ⟨i₁, i₂⟩ = i₁₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant5db87b6c917c950d7ee63cf4cd74d7e810a47ab095fa64dda108ead5fef62b59.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46bf95c469160735713e970381cf9bae9a12514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
