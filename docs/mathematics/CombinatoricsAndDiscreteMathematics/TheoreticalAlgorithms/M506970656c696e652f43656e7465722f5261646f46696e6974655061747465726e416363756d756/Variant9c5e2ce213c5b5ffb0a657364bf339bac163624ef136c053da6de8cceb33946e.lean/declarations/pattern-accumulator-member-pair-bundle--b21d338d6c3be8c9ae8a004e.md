# pattern_accumulator_member_pair_bundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7813c29ce2bbed151e329bd9c329386495a2fcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c64d3c31-156d-3f8c-5fd0-416e2c526e7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2765b458-52d9-860a-18c0-6c282dacb7c3",
  "kind": "theorem",
  "lexical_name": "pattern_accumulator_member_pair_bundle",
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
  "slug": "pattern-accumulator-member-pair-bundle--b21d338d6c3be8c9ae8a004e",
  "source": {
    "blob": "c7813c29ce2bbed151e329bd9c329386495a2fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21d338d6c3be8c9ae8a004e9b5dcb9ba14edd806bc6db15746ff97dea04e10d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2765b458-52d9-860a-18c0-6c282dacb7c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pattern_accumulator_member_pair_bundle
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc : PatternAccumulator x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    (y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden) ∧
      (¬ bitRadoEdge y x ∧
        ∀ v : Nat, v ∈ xs ->
          (bitRadoEdge y v ↔ bitRadoEdge x v)) := by
  exact
    ⟨pattern_accumulator_member_avoidance_bundle hacc hy,
      pattern_accumulator_member_edge_bundle hacc hy⟩

end Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant9c5e2ce213c5b5ffb0a657364bf339bac163624ef136c053da6de8cceb33946e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7813c29ce2bbed151e329bd9c329386495a2fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
