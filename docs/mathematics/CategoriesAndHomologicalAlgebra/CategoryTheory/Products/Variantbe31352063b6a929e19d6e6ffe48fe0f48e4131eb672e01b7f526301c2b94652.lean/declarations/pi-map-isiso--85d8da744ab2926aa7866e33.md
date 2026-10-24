# Pi.map_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84be23d97fb93c909fe1a3482bbbef0a37182f39d9095afd23377eeaf96e7bf7",
  "kind": "instance",
  "lexical_name": "Pi.map_isIso",
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
  "slug": "pi-map-isiso--85d8da744ab2926aa7866e33",
  "source": {
    "blob": "6388f8c7a3ed47640ab3cfe274981a6edf8905cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 385,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85d8da744ab2926aa7866e33cfa121444644e81fa97e04a906f575a6edc85a3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84be23d97fb93c909fe1a3482bbbef0a37182f39d9095afd23377eeaf96e7bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.map_isIso {f g : β → C} [HasProductsOfShape β C] (p : ∀ b, f b ⟶ g b)
    [∀ b, IsIso <| p b] : IsIso <| Pi.map p :=
  inferInstanceAs (IsIso (Pi.mapIso (fun b ↦ asIso (p b))).hom)

section

/- In this section, we provide some API for products when we are given a functor
`Discrete α ⥤ C` instead of a map `α → C`. -/

variable (X : Discrete α ⥤ C) [HasProduct (fun j => X.obj (Discrete.mk j))]

/-- A limit cone for `X : Discrete α ⥤ C` that is given
by `∏ᶜ (fun j => X.obj (Discrete.mk j))`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6388f8c7a3ed47640ab3cfe274981a6edf8905cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
