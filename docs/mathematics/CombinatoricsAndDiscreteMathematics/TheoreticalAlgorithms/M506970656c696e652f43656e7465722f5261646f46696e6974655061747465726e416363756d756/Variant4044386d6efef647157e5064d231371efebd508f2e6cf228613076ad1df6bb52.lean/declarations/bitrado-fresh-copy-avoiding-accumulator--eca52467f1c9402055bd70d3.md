# bitRado_fresh_copy_avoiding_accumulator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87edcebd020896891f31ae7bde686095161bad38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8526064b-7577-c7c4-0b06-534a088739e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c18e43c-6a9e-2bae-f7b4-5e7991ab6ede",
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
  "slug": "bitrado-fresh-copy-avoiding-accumulator--eca52467f1c9402055bd70d3",
  "source": {
    "blob": "87edcebd020896891f31ae7bde686095161bad38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eca52467f1c9402055bd70d3ca968bed1cb90ba6793b4e941debbc08c1a7e1b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c18e43c-6a9e-2bae-f7b4-5e7991ab6ede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–39.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant4044386d6efef647157e5064d231371efebd508f2e6cf228613076ad1df6bb52.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87edcebd020896891f31ae7bde686095161bad38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
