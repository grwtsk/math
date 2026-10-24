# extensionProduct_le_of_isTriangulatedClosed₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31fc04d9-8b37-95fa-76ed-7b3acfba60b0",
  "kind": "lemma",
  "lexical_name": "extensionProduct_le_of_isTriangulatedClosed₂",
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
  "slug": "extensionproduct-le-of-istriangulatedclosed--c60575d6beefdd4d64f48831",
  "source": {
    "blob": "7c507bd2eafb8ac5e9ff4a732492b3af0ebe7693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c60575d6beefdd4d64f48831c5a4dd1d0f70fc47960fb233c470c21c9d56c342",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31fc04d9-8b37-95fa-76ed-7b3acfba60b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extensionProduct_le_of_isTriangulatedClosed₂ {P₁ P₂ Q : ObjectProperty C}
    [Q.IsTriangulatedClosed₂] [Q.IsClosedUnderIsomorphisms] (h₁ : P₁ ≤ Q) (h₂ : P₂ ≤ Q) :
    extensionProduct P₁ P₂ ≤ Q := by
  intro _ ⟨_, _, _, _, _, hT, hY, hZ⟩
  exact ext_of_isTriangulatedClosed₂ Q _ hT (h₁ _ hY) (h₂ _ hZ)

set_option backward.defeqAttrib.useBackward true in
@[stacks 0FX2 "first part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c507bd2eafb8ac5e9ff4a732492b3af0ebe7693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
