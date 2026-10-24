# mapBifunctorMapObj_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42294970-9738-ef44-03e8-66c254fcdeca",
  "kind": "lemma",
  "lexical_name": "mapBifunctorMapObj_ext",
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
  "slug": "mapbifunctormapobj-ext--cb450852805638e14572dfa3",
  "source": {
    "blob": "89fc92686f865fa849e0e1964a429019d5444aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant20efada44f9d02ac818e1562ff9414a1e0c0ffe0ee13d22c77b92263adfc521a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb450852805638e14572dfa324cd097fd34ec7596e53686dc5f95b5cdc807647",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant20efada44f9d02ac818e1562ff9414a1e0c0ffe0ee13d22c77b92263adfc521a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42294970-9738-ef44-03e8-66c254fcdeca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorMapObj_ext {X : GradedObject I C₁} {Y : GradedObject J C₂} {A : C₃} {k : K}
    [HasMap (((mapBifunctor F I J).obj X).obj Y) p]
    {f g : mapBifunctorMapObj F p X Y k ⟶ A}
    (h : ∀ (i : I) (j : J) (hij : p ⟨i, j⟩ = k),
      ιMapBifunctorMapObj F p X Y i j k hij ≫ f = ιMapBifunctorMapObj F p X Y i j k hij ≫ g) :
    f = g := by
  apply mapObj_ext
  rintro ⟨i, j⟩ hij
  exact h i j hij

variable {F p} in
/-- Constructor for morphisms from `mapBifunctorMapObj F p X Y k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant20efada44f9d02ac818e1562ff9414a1e0c0ffe0ee13d22c77b92263adfc521a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant20efada44f9d02ac818e1562ff9414a1e0c0ffe0ee13d22c77b92263adfc521a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89fc92686f865fa849e0e1964a429019d5444aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
