# natDegree_preΨ'_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ddec9bf5baf69d4c2fba16ce28fa69283ca83f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14ab1e21-9cec-7803-b1d6-4628868c15bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16f4a941-23f3-83b7-3407-e1d357830065",
  "kind": "lemma",
  "lexical_name": "natDegree_preΨ'_pos",
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
  "slug": "natdegree-pre-pos--4950e406a1f4c3aec9f4d2d2",
  "source": {
    "blob": "5ddec9bf5baf69d4c2fba16ce28fa69283ca83f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 255,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4950e406a1f4c3aec9f4d2d24fed85472746a155b2a102667c9f5a672253bb7c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f4a941-23f3-83b7-3407-e1d357830065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natDegree_preΨ'_pos {n : ℕ} (hn : 2 < n) (h : (n : R) ≠ 0) : 0 < (W.preΨ' n).natDegree := by
  simp_rw [W.natDegree_preΨ' h, Nat.div_pos_iff, zero_lt_two, true_and]
  split_ifs <;> exact Nat.AtLeastTwo.prop.trans <| Nat.sub_le_sub_right (Nat.pow_le_pow_left hn 2) _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant011128eefca0f00f777fbf22bbc9638347f8c302145a631ff8ef8c04378bdc57.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ddec9bf5baf69d4c2fba16ce28fa69283ca83f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
