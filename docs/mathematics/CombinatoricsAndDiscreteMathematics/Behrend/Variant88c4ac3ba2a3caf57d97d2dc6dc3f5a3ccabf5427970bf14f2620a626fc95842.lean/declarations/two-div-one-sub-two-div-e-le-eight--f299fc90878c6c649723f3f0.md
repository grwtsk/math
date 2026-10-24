# two_div_one_sub_two_div_e_le_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d71fc0-a19e-9671-8a8d-0f0e7c512c19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35e5832d-581c-f95a-a06e-2ec58dc8d2d9",
  "kind": "theorem",
  "lexical_name": "two_div_one_sub_two_div_e_le_eight",
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
  "slug": "two-div-one-sub-two-div-e-le-eight--f299fc90878c6c649723f3f0",
  "source": {
    "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f299fc90878c6c649723f3f063ade26125deb283059710f65f957afdc29dc102",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35e5832d-581c-f95a-a06e-2ec58dc8d2d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_div_one_sub_two_div_e_le_eight : 2 / (1 - 2 / exp 1) ≤ 8 := by
  rw [div_le_iff₀, mul_sub, mul_one, mul_div_assoc', le_sub_comm, div_le_iff₀ (exp_pos _)]
  · linarith [exp_one_gt_d9]
  rw [sub_pos, div_lt_one] <;> exact exp_one_gt_d9.trans' (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4172d38d8a681aa347b81d0c994a9cef488018de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
