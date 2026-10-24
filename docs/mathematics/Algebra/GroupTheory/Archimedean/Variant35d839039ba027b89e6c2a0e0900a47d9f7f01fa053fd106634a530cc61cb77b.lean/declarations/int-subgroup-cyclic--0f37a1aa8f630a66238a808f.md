# Int.subgroup_cyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee4c24b0bd4eea6b9c7a452fb482ad47e82118d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a87e80a-8565-a891-d135-6514acb4240d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d697961c-0f8a-258b-7919-27b7c11ce22e",
  "kind": "theorem",
  "lexical_name": "Int.subgroup_cyclic",
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
  "slug": "int-subgroup-cyclic--0f37a1aa8f630a66238a808f",
  "source": {
    "blob": "ee4c24b0bd4eea6b9c7a452fb482ad47e82118d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f37a1aa8f630a66238a808f8b049affd070e41a76271c31990bac72f956a82b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d697961c-0f8a-258b-7919-27b7c11ce22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.subgroup_cyclic (H : AddSubgroup ℤ) : ∃ a, H = AddSubgroup.closure {a} :=
  have : Ioo (0 : ℤ) 1 = ∅ := eq_empty_of_forall_not_mem fun m hm =>
    hm.1.not_le (lt_add_one_iff.1 hm.2)
  AddSubgroup.cyclic_of_isolated_zero one_pos <| by simp [this]
#align int.subgroup_cyclic Int.subgroup_cyclic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4c24b0bd4eea6b9c7a452fb482ad47e82118d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
