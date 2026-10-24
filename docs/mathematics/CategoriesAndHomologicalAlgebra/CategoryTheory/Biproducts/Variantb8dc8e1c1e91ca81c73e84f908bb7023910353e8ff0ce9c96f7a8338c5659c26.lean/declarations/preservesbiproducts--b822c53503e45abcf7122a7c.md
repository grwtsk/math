# PreservesBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c500b5a0870527efb510235f1d8c6b2e12daefa795079760d304cc46a3d62f2",
  "kind": "class",
  "lexical_name": "PreservesBiproducts",
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
  "slug": "preservesbiproducts--b822c53503e45abcf7122a7c",
  "source": {
    "blob": "0590c7e2e0c984ae90b986b887d4392f13fea076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b822c53503e45abcf7122a7c64a61b48ddb59ab9350cacc6e209f18885df7c3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c500b5a0870527efb510235f1d8c6b2e12daefa795079760d304cc46a3d62f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreservesBiproducts (F : C ⥤ D) [PreservesZeroMorphisms F] : Prop where
  preserves : ∀ {J : Type w₁}, PreservesBiproductsOfShape J F

attribute [inherit_doc PreservesBiproducts] PreservesBiproducts.preserves

attribute [instance 100] PreservesBiproducts.preserves

/-- Preserving biproducts at a bigger universe level implies preserving biproducts at a
smaller universe level. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantb8dc8e1c1e91ca81c73e84f908bb7023910353e8ff0ce9c96f7a8338c5659c26.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0590c7e2e0c984ae90b986b887d4392f13fea076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
