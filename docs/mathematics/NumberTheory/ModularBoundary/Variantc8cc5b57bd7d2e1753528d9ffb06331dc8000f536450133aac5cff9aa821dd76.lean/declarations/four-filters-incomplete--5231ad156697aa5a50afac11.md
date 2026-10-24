# four_filters_incomplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b02bca29c6d7ab70311dfda5a71ebf70789c394",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:083fcecb-0233-b7e8-aab4-310c4f800bcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe85e91e-db3d-c945-ea64-652aa275ffbe",
  "kind": "theorem",
  "lexical_name": "four_filters_incomplete",
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
  "slug": "four-filters-incomplete--5231ad156697aa5a50afac11",
  "source": {
    "blob": "5b02bca29c6d7ab70311dfda5a71ebf70789c394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 161,
    "path": "GRWTSK/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5231ad156697aa5a50afac1141e4ce9e0b0cf5f1ae96f258b2915ea31de1c196",
  "verification": {
    "reference": "docs/verification/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe85e91e-db3d-c945-ea64-652aa275ffbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_filters_incomplete :
    Passes ({2, 3, 5, 7} : Finset ℕ) 121 ∧ ¬ Nat.Prime 121 := by
  norm_num [Passes, Gate]

/-- The next missing prime modulus detects the square eleven squared. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ModularBoundary/Variantc8cc5b57bd7d2e1753528d9ffb06331dc8000f536450133aac5cff9aa821dd76.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b02bca29c6d7ab70311dfda5a71ebf70789c394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
