# final_map

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
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4ef8db5-b9dd-8860-aaef-b348ee5ff06f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:438a7787-e624-6a58-b975-62905d687db8",
  "kind": "theorem",
  "lexical_name": "final_map",
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
  "slug": "final-map--e707c4f08be6a9cfb267c6cf",
  "source": {
    "blob": "fcda82260aadb1690ee21782c82039cb983e1e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e707c4f08be6a9cfb267c6cff26000291e10370a2f4cabd29f36d36b5478f339",
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

Occurrence: `result:438a7787-e624-6a58-b975-62905d687db8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem final_map : closed.factors = (Finsupp.single 13 1 : PrimePowers) + (Finsupp.single 17 1 : PrimePowers) := by norm_num [closed, closePrime, state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon, add_comm, add_left_comm, add_assoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcda82260aadb1690ee21782c82039cb983e1e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
