# LawfulBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9bf0aed8d897a7ef6a80ae4860b7bf0374a3f3e7573f23bfe39be65a587ba25",
  "kind": "class",
  "lexical_name": "LawfulBifunctor",
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
  "slug": "lawfulbifunctor--ef05063ef7018ce10d50d6fe",
  "source": {
    "blob": "5954c52cc8f012226c56a9cc4eb17deb40d79894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef05063ef7018ce10d50d6fe9dd778762d4fac3c75d37ce29599e352b209e02c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9bf0aed8d897a7ef6a80ae4860b7bf0374a3f3e7573f23bfe39be65a587ba25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulBifunctor (F : Type u₀ → Type u₁ → Type u₂) [Bifunctor F] : Prop where
  id_bimap : ∀ {α β} (x : F α β), bimap id id x = x
  bimap_bimap :
    ∀ {α₀ α₁ α₂ β₀ β₁ β₂} (f : α₀ → α₁) (f' : α₁ → α₂) (g : β₀ → β₁) (g' : β₁ → β₂) (x : F α₀ β₀),
      bimap f' g' (bimap f g x) = bimap (f' ∘ f) (g' ∘ g) x

export LawfulBifunctor (id_bimap bimap_bimap)

attribute [higher_order bimap_id_id] id_bimap

attribute [higher_order bimap_comp_bimap] bimap_bimap

export LawfulBifunctor (bimap_id_id bimap_comp_bimap)

variable {F : Type u₀ → Type u₁ → Type u₂} [Bifunctor F]

namespace Bifunctor

/-- Left map of a bifunctor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantf4e06fc476e7f6ceb976cfb98048aa7ce35e060fdf14c902fce6596c9dffb3de.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5954c52cc8f012226c56a9cc4eb17deb40d79894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
