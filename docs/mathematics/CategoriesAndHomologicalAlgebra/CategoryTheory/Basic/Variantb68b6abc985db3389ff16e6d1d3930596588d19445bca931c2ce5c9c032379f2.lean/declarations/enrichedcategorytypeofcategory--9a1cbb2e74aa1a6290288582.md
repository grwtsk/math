# enrichedCategoryTypeOfCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ac3dda5965b7f6b90238aa4a055612931239ff7b900fd9ffb73b9cdf60e7cd3",
  "kind": "def",
  "lexical_name": "enrichedCategoryTypeOfCategory",
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
  "slug": "enrichedcategorytypeofcategory--9a1cbb2e74aa1a6290288582",
  "source": {
    "blob": "95bf36525c56d82731fd31a6c64d4acc5d28b001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a1cbb2e74aa1a6290288582fd24e24a42c3481c78eec26d767bde5fea0645e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ac3dda5965b7f6b90238aa4a055612931239ff7b900fd9ffb73b9cdf60e7cd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enrichedCategoryTypeOfCategory (C : Type u₁) [𝒞 : Category.{v} C] :
    EnrichedCategory (Type v) C where
  Hom := 𝒞.Hom
  id X _ := 𝟙 X
  comp _ _ _ p := p.1 ≫ p.2
  id_comp X Y := by ext; simp
  comp_id X Y := by ext; simp
  assoc W X Y Z := by ext ⟨f, g, h⟩; simp

/-- We verify that an enriched category in `Type u` is just the same thing as an honest category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bf36525c56d82731fd31a6c64d4acc5d28b001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
