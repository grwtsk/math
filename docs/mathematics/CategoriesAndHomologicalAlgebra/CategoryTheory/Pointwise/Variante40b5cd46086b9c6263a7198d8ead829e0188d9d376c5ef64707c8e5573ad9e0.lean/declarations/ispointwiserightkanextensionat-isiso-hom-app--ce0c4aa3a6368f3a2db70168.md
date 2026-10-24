# IsPointwiseRightKanExtensionAt.isIso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12c6638bcdfe280e9c2b77d83820694ee7369392",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75b1807c-6081-42c1-e88d-bc66a7400e65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a79934c-a332-452d-7e8c-ee88a5eb582f",
  "kind": "lemma",
  "lexical_name": "IsPointwiseRightKanExtensionAt.isIso_hom_app",
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
  "slug": "ispointwiserightkanextensionat-isiso-hom-app--ce0c4aa3a6368f3a2db70168",
  "source": {
    "blob": "12c6638bcdfe280e9c2b77d83820694ee7369392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce0c4aa3a6368f3a2db7016847f2bd7c775278791e6cc430ae3036d0a0181e93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a79934c-a332-452d-7e8c-ee88a5eb582f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPointwiseRightKanExtensionAt.isIso_hom_app
    {X : C} (h : E.IsPointwiseRightKanExtensionAt (L.obj X)) [L.Full] [L.Faithful] :
    IsIso (E.hom.app X) := by
  simpa using h.isIso_π_app_of_isInitial _ StructuredArrow.mkIdInitial

namespace IsPointwiseRightKanExtensionAt

variable {E} {Y : D} (h : E.IsPointwiseRightKanExtensionAt Y)
  [HasLimit (StructuredArrow.proj Y L ⋙ F)]

/-- A pointwise right Kan extension of `F` along `L` applied to an object `Y` is isomorphic to
`limit (StructuredArrow.proj Y L ⋙ F)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variante40b5cd46086b9c6263a7198d8ead829e0188d9d376c5ef64707c8e5573ad9e0.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12c6638bcdfe280e9c2b77d83820694ee7369392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
