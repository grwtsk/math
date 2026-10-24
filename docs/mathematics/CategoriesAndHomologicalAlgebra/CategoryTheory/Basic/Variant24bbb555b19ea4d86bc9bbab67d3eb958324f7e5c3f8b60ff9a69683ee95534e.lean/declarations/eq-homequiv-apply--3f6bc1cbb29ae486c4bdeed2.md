# eq_homEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4abfd0f1-882f-6fa7-b2b9-fb45310a4e32",
  "kind": "theorem",
  "lexical_name": "eq_homEquiv_apply",
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
  "slug": "eq-homequiv-apply--3f6bc1cbb29ae486c4bdeed2",
  "source": {
    "blob": "6bf07d806588471a5794fd565c6768734a4efe48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6bc1cbb29ae486c4bdeed226ef8324c81f00381d9e291963fe7cd17ef8fe04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4abfd0f1-882f-6fa7-b2b9-fb45310a4e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_homEquiv_apply {A : C} {B : D} (f : F.obj A ⟶ B) (g : A ⟶ G.obj B) :
    g = adj.homEquiv A B f ↔ (adj.homEquiv A B).symm g = f :=
  eq_unit_comp_map_iff adj f g

/-- If `adj : F ⊣ G`, and `X : C`, then `F.obj X` corepresents `Y ↦ (X ⟶ G.obj Y)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf07d806588471a5794fd565c6768734a4efe48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
