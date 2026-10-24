# bitRado_fresh_copy_avoiding_accumulator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:226cebdc-bcfa-e0a2-dd4a-1f19804c83d9",
  "kind": "theorem",
  "lexical_name": "bitRado_fresh_copy_avoiding_accumulator",
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
  "slug": "bitrado-fresh-copy-avoiding-accumulator--8d7ac7bf7452035c362ade50",
  "source": {
    "blob": "b80fd2ecd6c9156a74a1f14003d6ad67e2829b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7744500935c98f4557d917ebe3ea6b966c33dd4ccd047a1281be43b93ffd72c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7ac7bf7452035c362ade5065d8eedc6de9b475f9b4836a0c9ad51bff93fb5e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7744500935c98f4557d917ebe3ea6b966c33dd4ccd047a1281be43b93ffd72c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:226cebdc-bcfa-e0a2-dd4a-1f19804c83d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitRado_fresh_copy_avoiding_accumulator
    (x : Nat) (xs acc forbidden : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          y ∉ acc ∧
            y ∉ forbidden ∧
              ¬ bitRadoEdge y x ∧
                ∀ v : Nat, v ∈ xs ->
                  (bitRadoEdge y v ↔ bitRadoEdge x v) := by
  obtain ⟨y, hyx, hyxs, hyForbiddenAppend, hynonadj, hycopy⟩ :=
    bitRado_copy_finite_pattern_avoiding_extra_list x xs (acc ++ forbidden)
  exact
    ⟨y, hyx, hyxs,
      not_mem_left_of_not_mem_append hyForbiddenAppend,
      not_mem_right_of_not_mem_append hyForbiddenAppend,
      hynonadj, hycopy⟩

end Think.Pipeline.Center.RadoFinitePatternAccumulator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7744500935c98f4557d917ebe3ea6b966c33dd4ccd047a1281be43b93ffd72c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7744500935c98f4557d917ebe3ea6b966c33dd4ccd047a1281be43b93ffd72c5.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b80fd2ecd6c9156a74a1f14003d6ad67e2829b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
