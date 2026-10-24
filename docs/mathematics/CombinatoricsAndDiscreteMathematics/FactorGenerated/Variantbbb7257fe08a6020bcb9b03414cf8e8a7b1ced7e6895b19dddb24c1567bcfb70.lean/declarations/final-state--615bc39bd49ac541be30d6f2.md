# final_state

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
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f86fb391-5f28-fe75-029f-c9abb54ba046",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e79b04b9-cd8a-5ca6-dafb-b6b404c5699e",
  "kind": "theorem",
  "lexical_name": "final_state",
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
  "slug": "final-state--615bc39bd49ac541be30d6f2",
  "source": {
    "blob": "fcda82260aadb1690ee21782c82039cb983e1e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615bc39bd49ac541be30d6f2a35b6eeb60d76027ebc4b036e67d80018d742df7",
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

Occurrence: `result:e79b04b9-cd8a-5ca6-dafb-b6b404c5699e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem final_state : state_3.residual = 17 ∧ state_3.horizon = 4 ∧ state_3.extracted = (Finsupp.single 13 1 : PrimePowers) ∧ state_3.excluded = ({2,3,13} : Finset Nat) := by
  refine ⟨rfl, ?_, ?_, ?_⟩
  · norm_num [state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon]
  · norm_num [state_0, state_1, state_2, state_3, initial, extract, exclude, State.horizon, add_comm, add_left_comm, add_assoc]
  · decide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variantbbb7257fe08a6020bcb9b03414cf8e8a7b1ced7e6895b19dddb24c1567bcfb70.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcda82260aadb1690ee21782c82039cb983e1e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
