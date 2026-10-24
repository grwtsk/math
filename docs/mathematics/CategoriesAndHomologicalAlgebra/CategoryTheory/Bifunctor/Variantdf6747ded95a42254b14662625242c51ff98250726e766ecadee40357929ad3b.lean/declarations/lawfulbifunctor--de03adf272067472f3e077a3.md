# LawfulBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bff982bc1b29e5e631df855b4832094868bcdc5bf0a12a47f961b849edfd6f31",
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
  "slug": "lawfulbifunctor--de03adf272067472f3e077a3",
  "source": {
    "blob": "40e906bf2dbec88498404eb087352af03eeaa0ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de03adf272067472f3e077a3e235263793f167622a9059ba5b901b7ec1bc69e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bff982bc1b29e5e631df855b4832094868bcdc5bf0a12a47f961b849edfd6f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulBifunctor (F : Type u₀ → Type u₁ → Type u₂) [Bifunctor F] : Prop where
  id_bimap : ∀ {α β} (x : F α β), bimap id id x = x
  bimap_bimap :
    ∀ {α₀ α₁ α₂ β₀ β₁ β₂} (f : α₀ → α₁) (f' : α₁ → α₂) (g : β₀ → β₁) (g' : β₁ → β₂) (x : F α₀ β₀),
      bimap f' g' (bimap f g x) = bimap (f' ∘ f) (g' ∘ g) x
#align is_lawful_bifunctor LawfulBifunctor

export LawfulBifunctor (id_bimap bimap_bimap)

attribute [higher_order bimap_id_id] id_bimap
#align is_lawful_bifunctor.bimap_id_id LawfulBifunctor.bimap_id_id

attribute [higher_order bimap_comp_bimap] bimap_bimap
#align is_lawful_bifunctor.bimap_comp_bimap LawfulBifunctor.bimap_comp_bimap

export LawfulBifunctor (bimap_id_id bimap_comp_bimap)

variable {F : Type u₀ → Type u₁ → Type u₂} [Bifunctor F]

namespace Bifunctor

/-- Left map of a bifunctor. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e906bf2dbec88498404eb087352af03eeaa0ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
