# SpectralObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f97a20ff5bfc59dec154de60dc2adcd8f774047eb3a2701fdacca9225740a717",
  "kind": "structure",
  "lexical_name": "SpectralObject",
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
  "slug": "spectralobject--31c8aab5ffc8f39a803dd914",
  "source": {
    "blob": "a3e0a1a237d15d4ced108ca2051c972d4f7c075c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31c8aab5ffc8f39a803dd9140581e6fbefe89a7fe6c21cad399591e3797219ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f97a20ff5bfc59dec154de60dc2adcd8f774047eb3a2701fdacca9225740a717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpectralObject where
  /-- A sequence of functors from `ComposableArrows ι 1` to the abelian category.
  The image of `mk₁ f` will be referred to as `H^n(f)` in the documentation. -/
  H (n : ℤ) : ComposableArrows ι 1 ⥤ C
  /-- The connecting homomorphism of the spectral object. (Use `δ` instead.) -/
  δ' (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) :
    functorArrows ι 1 2 2 ⋙ H n₀ ⟶ functorArrows ι 0 1 2 ⋙ H n₁
  exact₁' (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) (D : ComposableArrows ι 2) :
    (mk₂ ((δ' n₀ n₁ h).app D) ((H n₁).map ((mapFunctorArrows ι 0 1 0 2 2).app D))).Exact
  exact₂' (n : ℤ) (D : ComposableArrows ι 2) :
    (mk₂ ((H n).map ((mapFunctorArrows ι 0 1 0 2 2).app D))
      ((H n).map ((mapFunctorArrows ι 0 2 1 2 2).app D))).Exact
  exact₃' (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) (D : ComposableArrows ι 2) :
    (mk₂ ((H n₀).map ((mapFunctorArrows ι 0 2 1 2 2).app D)) ((δ' n₀ n₁ h).app D)).Exact

namespace SpectralObject

variable {C ι} (X : SpectralObject C ι)

section

/-- The connecting homomorphism of the spectral object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1c08155f707703ce170ea57b5ba84ce1d912ae804f7509fe055ccafc59bca47b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3e0a1a237d15d4ced108ca2051c972d4f7c075c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
