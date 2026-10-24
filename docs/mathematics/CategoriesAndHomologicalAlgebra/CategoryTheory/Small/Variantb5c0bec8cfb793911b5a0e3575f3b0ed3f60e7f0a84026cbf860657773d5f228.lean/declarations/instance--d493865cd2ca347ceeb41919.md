# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24358a2842371019361080cfb93271c6eb530afb0d42de28af6607fe5918afa4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d493865cd2ca347ceeb41919",
  "source": {
    "blob": "83ab27679b52eafffe56520bc374e3e916ed237e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d493865cd2ca347ceeb41919f43af0dff967f3e1fac0728b747fef9ee62f5306",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24358a2842371019361080cfb93271c6eb530afb0d42de28af6607fe5918afa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsFilteredOrEmpty (filteredClosure f).FullSubcategory where
  cocone_objs j j' :=
    ⟨⟨max j.1 j'.1, filteredClosure.max j.2 j'.2⟩, leftToMax _ _, rightToMax _ _, trivial⟩
  cocone_maps {j j'} f f' :=
    ⟨⟨coeq f f', filteredClosure.coeq j.2 j'.2 f f'⟩, coeqHom (C := C) f f', coeq_condition _ _⟩

namespace FilteredClosureSmall
/-! Our goal for this section is to show that the size of the filtered closure of an `α`-indexed
    family of objects in `C` only depends on the size of `α` and the morphism types of `C`, not on
    the size of the objects of `C`. More precisely, if `α` lives in `Type w`, the objects of `C`
    live in `Type u` and the morphisms of `C` live in `Type v`, then we want
    `Small.{max v w} (FullSubcategory (filteredClosure f))`.

    The strategy is to define a type `AbstractFilteredClosure` which should be an inductive type
    similar to `filteredClosure`, which lives in the correct universe and surjects onto the full
    subcategory. The difficulty with this is that we need to define it at the same time as the map
    `AbstractFilteredClosure → C`, as the coequalizer constructor depends on the actual morphisms
    in `C`. This would require some kind of inductive-recursive definition, which Lean does not
    allow. Our solution is to define a function `ℕ → Σ t : Type (max v w), t → C` by (strong)
    induction and then take the union over all natural numbers, mimicking what one would do in a
    set-theoretic setting. -/

/-- One step of the inductive procedure consists of adjoining all maxima and coequalizers of all
    objects and morphisms obtained so far. This is quite redundant, picking up many objects which we
    already hit in earlier iterations, but this is easier to work with later. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ab27679b52eafffe56520bc374e3e916ed237e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
