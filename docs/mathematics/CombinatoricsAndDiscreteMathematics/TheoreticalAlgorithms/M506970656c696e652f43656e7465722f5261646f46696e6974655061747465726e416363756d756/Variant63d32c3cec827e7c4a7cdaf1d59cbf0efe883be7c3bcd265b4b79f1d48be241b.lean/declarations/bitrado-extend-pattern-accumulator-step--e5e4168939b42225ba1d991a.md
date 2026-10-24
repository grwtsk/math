# bitRado_extend_pattern_accumulator_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0af8af9c8fe4606a3f1fc3b89f18b4ccf8aa86c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5b6d186-77b9-6336-bfa8-6db1e0226aaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:465f628f-86b0-11d8-869c-6457ee45da69",
  "kind": "theorem",
  "lexical_name": "bitRado_extend_pattern_accumulator_step",
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
  "slug": "bitrado-extend-pattern-accumulator-step--e5e4168939b42225ba1d991a",
  "source": {
    "blob": "0af8af9c8fe4606a3f1fc3b89f18b4ccf8aa86c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e4168939b42225ba1d991a68e48dc12cf680c54b84d91998a37a5511d0bb06",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:465f628f-86b0-11d8-869c-6457ee45da69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitRado_extend_pattern_accumulator_step
    (x : Nat) (xs forbidden acc : List Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ y : Nat,
      y ∉ acc ∧
        PatternAccumulator x xs forbidden (y :: acc) := by
  obtain ⟨y, hyx, hyxs, hyacc, hyforbidden, hynonadj, hycopy⟩ :=
    bitRado_fresh_copy_avoiding_accumulator x xs acc forbidden
  refine ⟨y, hyacc, ?_⟩
  constructor
  · exact List.nodup_cons.mpr ⟨hyacc, hacc.1⟩
  · intro z hz
    rcases List.mem_cons.mp hz with hzy | hzacc
    · subst z
      exact ⟨hyx, hyxs, hyforbidden, hynonadj, hycopy⟩
    · exact hacc.2 z hzacc

end Think.Pipeline.Center.RadoFinitePatternAccumulatorStep
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant63d32c3cec827e7c4a7cdaf1d59cbf0efe883be7c3bcd265b4b79f1d48be241b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0af8af9c8fe4606a3f1fc3b89f18b4ccf8aa86c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
