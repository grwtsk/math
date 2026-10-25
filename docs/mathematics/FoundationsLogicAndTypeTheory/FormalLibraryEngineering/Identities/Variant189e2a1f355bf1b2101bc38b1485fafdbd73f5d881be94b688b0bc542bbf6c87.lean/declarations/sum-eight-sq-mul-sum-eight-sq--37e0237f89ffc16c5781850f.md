# sum_eight_sq_mul_sum_eight_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3c111282fdd3f31d8a04b12a4847f7eb0f3beaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/189e2a1f355bf1b2101bc38b1485fafdbd73f5d881be94b688b0bc542bbf6c87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce6f6cb1-7b7e-10cc-76fe-bb8aae5cf241",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d9f6078-2b8b-579d-5072-462d3a777d6f",
  "kind": "theorem",
  "lexical_name": "sum_eight_sq_mul_sum_eight_sq",
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
  "slug": "sum-eight-sq-mul-sum-eight-sq--37e0237f89ffc16c5781850f",
  "source": {
    "blob": "a3c111282fdd3f31d8a04b12a4847f7eb0f3beaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variant189e2a1f355bf1b2101bc38b1485fafdbd73f5d881be94b688b0bc542bbf6c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37e0237f89ffc16c5781850f9d95d48f24ad7c72afe95908144a684d9a644aeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variant189e2a1f355bf1b2101bc38b1485fafdbd73f5d881be94b688b0bc542bbf6c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d9f6078-2b8b-579d-5072-462d3a777d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eight_sq_mul_sum_eight_sq :
    (x₁ ^ 2 + x₂ ^ 2 + x₃ ^ 2 + x₄ ^ 2 + x₅ ^ 2 + x₆ ^ 2 + x₇ ^ 2 + x₈ ^ 2) *
      (y₁ ^ 2 + y₂ ^ 2 + y₃ ^ 2 + y₄ ^ 2 + y₅ ^ 2 + y₆ ^ 2 + y₇ ^ 2 + y₈ ^ 2) =
    (x₁ * y₁ - x₂ * y₂ - x₃ * y₃ - x₄ * y₄ - x₅ * y₅ - x₆ * y₆ - x₇ * y₇ - x₈ * y₈) ^ 2 +
      (x₁ * y₂ + x₂ * y₁ + x₃ * y₄ - x₄ * y₃ + x₅ * y₆ - x₆ * y₅ - x₇ * y₈ + x₈ * y₇) ^ 2 +
      (x₁ * y₃ - x₂ * y₄ + x₃ * y₁ + x₄ * y₂ + x₅ * y₇ + x₆ * y₈ - x₇ * y₅ - x₈ * y₆) ^ 2 +
      (x₁ * y₄ + x₂ * y₃ - x₃ * y₂ + x₄ * y₁ + x₅ * y₈ - x₆ * y₇ + x₇ * y₆ - x₈ * y₅) ^ 2 +
      (x₁ * y₅ - x₂ * y₆ - x₃ * y₇ - x₄ * y₈ + x₅ * y₁ + x₆ * y₂ + x₇ * y₃ + x₈ * y₄) ^ 2 +
      (x₁ * y₆ + x₂ * y₅ - x₃ * y₈ + x₄ * y₇ - x₅ * y₂ + x₆ * y₁ - x₇ * y₄ + x₈ * y₃) ^ 2 +
      (x₁ * y₇ + x₂ * y₈ + x₃ * y₅ - x₄ * y₆ - x₅ * y₃ + x₆ * y₄ + x₇ * y₁ - x₈ * y₂) ^ 2 +
      (x₁ * y₈ - x₂ * y₇ + x₃ * y₆ + x₄ * y₅ - x₅ * y₄ - x₆ * y₃ + x₇ * y₂ + x₈ * y₁) ^ 2 := by
  ring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variant189e2a1f355bf1b2101bc38b1485fafdbd73f5d881be94b688b0bc542bbf6c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variant189e2a1f355bf1b2101bc38b1485fafdbd73f5d881be94b688b0bc542bbf6c87.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c111282fdd3f31d8a04b12a4847f7eb0f3beaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
