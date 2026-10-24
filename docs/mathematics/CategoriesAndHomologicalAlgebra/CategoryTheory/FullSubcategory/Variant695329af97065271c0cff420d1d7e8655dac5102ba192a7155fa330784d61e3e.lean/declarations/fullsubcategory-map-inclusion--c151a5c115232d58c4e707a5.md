# FullSubcategory.map_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d872e342-7d64-02fa-9c15-af266fc577d3",
  "kind": "theorem",
  "lexical_name": "FullSubcategory.map_inclusion",
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
  "slug": "fullsubcategory-map-inclusion--c151a5c115232d58c4e707a5",
  "source": {
    "blob": "92c79ed59f839c704734277a286945c096b737b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c151a5c115232d58c4e707a565ac1026d3fc841164557e795a9e9e55b6b8889e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d872e342-7d64-02fa-9c15-af266fc577d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FullSubcategory.map_inclusion (h : ∀ ⦃X⦄, Z X → Z' X) :
    FullSubcategory.map h ⋙ fullSubcategoryInclusion Z' = fullSubcategoryInclusion Z :=
  rfl
#align category_theory.full_subcategory.map_inclusion CategoryTheory.FullSubcategory.map_inclusion

section lift

variable {D : Type u₂} [Category.{v₂} D] (P Q : D → Prop)

/-- A functor which maps objects to objects satisfying a certain property induces a lift through
    the full subcategory of objects satisfying that property. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c79ed59f839c704734277a286945c096b737b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
