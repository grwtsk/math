# cofan'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:796cf41d3b12d907e0c0c12f5e92687634975ff41facd9270f06a62f8098069b",
  "kind": "abbrev",
  "lexical_name": "cofan'",
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
  "slug": "cofan--2f8fe61fbff45da6a830ea72",
  "source": {
    "blob": "61fd0a1170e31b1325dd0243ab9ae0ba775bd09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variant323c1fbdac14f7b74c3000c56a5170584700637d8c2e02378e5a7076eebab9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f8fe61fbff45da6a830ea72e3d42b8ea1fca9f0842d564bcd81740d7c796e36",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variant323c1fbdac14f7b74c3000c56a5170584700637d8c2e02378e5a7076eebab9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:796cf41d3b12d907e0c0c12f5e92687634975ff41facd9270f06a62f8098069b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev cofan' (Δ : SimplexCategoryᵒᵖ) : Cofan (summand N Δ) :=
  Cofan.mk (X.obj Δ) (fun A => φ A.1.unop.len ≫ X.map A.e.op)

end Splitting

/-- A splitting of a simplicial object `X` consists of the datum of a sequence
of objects `N`, a sequence of morphisms `ι : N n ⟶ X _⦋n⦌` such that
for all `Δ : SimplexCategoryᵒᵖ`, the canonical map `Splitting.map X ι Δ`
is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variant323c1fbdac14f7b74c3000c56a5170584700637d8c2e02378e5a7076eebab9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variant323c1fbdac14f7b74c3000c56a5170584700637d8c2e02378e5a7076eebab9a3.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61fd0a1170e31b1325dd0243ab9ae0ba775bd09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
