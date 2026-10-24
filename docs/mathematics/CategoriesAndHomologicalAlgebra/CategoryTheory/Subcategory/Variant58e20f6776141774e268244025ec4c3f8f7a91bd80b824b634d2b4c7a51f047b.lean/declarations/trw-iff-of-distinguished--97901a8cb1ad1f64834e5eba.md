# trW_iff_of_distinguished'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "759c0feaf72a037ccb164922c16fae1aea809c53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65ccd944-9362-c80d-d3f5-b214602a7e1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:008b60cf-a5d3-b5ca-cbc8-00f24a09e1b6",
  "kind": "lemma",
  "lexical_name": "trW_iff_of_distinguished'",
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
  "slug": "trw-iff-of-distinguished--97901a8cb1ad1f64834e5eba",
  "source": {
    "blob": "759c0feaf72a037ccb164922c16fae1aea809c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 563,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97901a8cb1ad1f64834e5ebab6193e4d646795eb7510679044c8cd7489304650",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:008b60cf-a5d3-b5ca-cbc8-00f24a09e1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trW_iff_of_distinguished' [P.IsStableUnderShift ℤ]
    [P.IsClosedUnderIsomorphisms] (T : Triangle C) (hT : T ∈ distTriang C) :
    P.trW T.mor₂ ↔ P T.obj₁ := by
  simpa [P.prop_shift_iff_of_isStableUnderShift]
    using! P.trW_iff_of_distinguished _ (rot_of_distTriang _ hT)

section

variable (F : D ⥤ C) [F.CommShift ℤ] [F.IsTriangulated]
  [P.IsClosedUnderIsomorphisms]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759c0feaf72a037ccb164922c16fae1aea809c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
