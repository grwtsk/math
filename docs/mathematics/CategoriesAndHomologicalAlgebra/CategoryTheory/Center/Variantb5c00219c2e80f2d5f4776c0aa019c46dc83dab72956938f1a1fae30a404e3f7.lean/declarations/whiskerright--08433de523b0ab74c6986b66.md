# whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b2ffae244e0189411a7fc1d68944f100f9375a83bc5cfe01e28b6f9ed6cddf7",
  "kind": "def",
  "lexical_name": "whiskerRight",
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
  "slug": "whiskerright--08433de523b0ab74c6986b66",
  "source": {
    "blob": "246e075463981e6bc758dfe560c57e0084d2b9f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08433de523b0ab74c6986b66bf2ccca95007ba62d47f92c0c1d4c0e3f9920aac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b2ffae244e0189411a7fc1d68944f100f9375a83bc5cfe01e28b6f9ed6cddf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskerRight {X₁ X₂ : Center C} (f : X₁ ⟶ X₂) (Y : Center C) :
    tensorObj X₁ Y ⟶ tensorObj X₂ Y where
  f := f.f ▷ Y.1
  comm U := whiskerRight_comm f Y U

set_option backward.isDefEq.respectTransparency false in
/-- Auxiliary definition for the `MonoidalCategory` instance on `Center C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `246e075463981e6bc758dfe560c57e0084d2b9f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
