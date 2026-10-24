# split_0_data

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcda82260aadb1690ee21782c82039cb983e1e38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22bd4c42-ee17-e7fa-f67a-6ab5f6dd41e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1b7d19c-e5ea-d07d-c23e-2dae279ba5ab",
  "kind": "theorem",
  "lexical_name": "split_0_data",
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
  "slug": "split-0-data--db2652ca5a3dd3d3964e45fd",
  "source": {
    "blob": "fcda82260aadb1690ee21782c82039cb983e1e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14,
    "line": 14,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db2652ca5a3dd3d3964e45fd33659c9f816498fd6af91f3681362f3fafa8470e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b7d19c-e5ea-d07d-c23e-2dae279ba5ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–14.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_0_data : split_0.divisor = 13 ∧ split_0.quotient = 17 ∧ (221:Nat) = 13*17 := by norm_num [split_0, certifyDivisorSplit]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcda82260aadb1690ee21782c82039cb983e1e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
