# tensorHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92a9da6284dc18bdcf37701ad57dfb67260d495495224d842e03c97165bccfcf",
  "kind": "abbrev",
  "lexical_name": "tensorHom",
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
  "slug": "tensorhom--d6af5853da54ea515c089254",
  "source": {
    "blob": "098e9f8b3175087ea6e4f343777eb4ca80843bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbdb2b6f43f783f5421a1a38e2b458cb81b9a9be2f72b6e11000ea42d6dbf0884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6af5853da54ea515c089254ffe96b5bc83a36a6fcb2a280867b2be16369ad10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbdb2b6f43f783f5421a1a38e2b458cb81b9a9be2f72b6e11000ea42d6dbf0884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92a9da6284dc18bdcf37701ad57dfb67260d495495224d842e03c97165bccfcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev tensorHom (f : X₁ ⟶ Y₁) (g : X₂ ⟶ Y₂) : tensorObj ℬ X₁ X₂ ⟶ tensorObj ℬ Y₁ Y₂ :=
  (BinaryFan.IsLimit.lift' (ℬ Y₁ Y₂).isLimit ((ℬ X₁ X₂).cone.π.app ⟨.left⟩ ≫ f)
      (((ℬ X₁ X₂).cone.π.app ⟨.right⟩ : (ℬ X₁ X₂).cone.pt ⟶ X₂) ≫ g)).val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbdb2b6f43f783f5421a1a38e2b458cb81b9a9be2f72b6e11000ea42d6dbf0884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbdb2b6f43f783f5421a1a38e2b458cb81b9a9be2f72b6e11000ea42d6dbf0884.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `098e9f8b3175087ea6e4f343777eb4ca80843bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
