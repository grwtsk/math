# TensorLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55f5c5b47de1d745de79fb0e7f6e6440db4fc64f747f13e8f126b86dfe069346",
  "kind": "class",
  "lexical_name": "TensorLE",
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
  "slug": "tensorle--82fb44ba72fae8c83cebc250",
  "source": {
    "blob": "6c7b284a609441361cccab9d95ff9c9b985e0867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82fb44ba72fae8c83cebc250ddaa9b5bffa78a0a229631dcc40d1d56dc7eabf5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55f5c5b47de1d745de79fb0e7f6e6440db4fc64f747f13e8f126b86dfe069346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class TensorLE (P₁ P₂ Q : ObjectProperty C) : Prop where
  prop_tensor (X₁ X₂ : C) (h₁ : P₁ X₁) (h₂ : P₂ X₂) : Q (X₁ ⊗ X₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7b284a609441361cccab9d95ff9c9b985e0867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
