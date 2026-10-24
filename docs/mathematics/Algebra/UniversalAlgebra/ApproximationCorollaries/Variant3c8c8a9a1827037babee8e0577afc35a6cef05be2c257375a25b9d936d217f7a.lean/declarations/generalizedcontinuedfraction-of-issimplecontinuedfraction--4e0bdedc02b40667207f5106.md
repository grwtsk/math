# GeneralizedContinuedFraction.of_isSimpleContinuedFraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28f60ca4867ff79f8b0ddce7aa6d6e57dbbb730a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f5b8520-b1ea-4ffa-2448-90f0a5b1d50b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be095826-0dd8-4c9c-e870-2f2b1551adad",
  "kind": "theorem",
  "lexical_name": "GeneralizedContinuedFraction.of_isSimpleContinuedFraction",
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
  "slug": "generalizedcontinuedfraction-of-issimplecontinuedfraction--4e0bdedc02b40667207f5106",
  "source": {
    "blob": "28f60ca4867ff79f8b0ddce7aa6d6e57dbbb730a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 51,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0bdedc02b40667207f51066b2a0a1ba31f2168f7c02ce35678ad074daca2b9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be095826-0dd8-4c9c-e870-2f2b1551adad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GeneralizedContinuedFraction.of_isSimpleContinuedFraction :
    (of v).IsSimpleContinuedFraction := fun _ _ nth_part_num_eq =>
  of_part_num_eq_one nth_part_num_eq
#align generalized_continued_fraction.of_is_simple_continued_fraction GeneralizedContinuedFraction.of_isSimpleContinuedFraction

/-- Creates the simple continued fraction of a value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f60ca4867ff79f8b0ddce7aa6d6e57dbbb730a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
