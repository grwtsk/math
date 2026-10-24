# strictAnti_eulerMascheroniSeq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70239be26bd5307a6e8fca5c5c45496014960f41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f351fcb4-c7f4-2490-c48c-8a35e1e59158",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3b22281-1a68-f0e2-e03d-f27fc8bb9f99",
  "kind": "lemma",
  "lexical_name": "strictAnti_eulerMascheroniSeq'",
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
  "slug": "strictanti-eulermascheroniseq--2f4bc37d847398c74e0a08a3",
  "source": {
    "blob": "70239be26bd5307a6e8fca5c5c45496014960f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f4bc37d847398c74e0a08a3f12b0e432025b6b2bde7fa68a0cf812b7b760e95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3b22281-1a68-f0e2-e03d-f27fc8bb9f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictAnti_eulerMascheroniSeq' : StrictAnti eulerMascheroniSeq' := by
  refine strictAnti_nat_of_succ_lt (fun n ↦ ?_)
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [eulerMascheroniSeq']
  simp_rw [eulerMascheroniSeq', eq_false_intro hn.ne', reduceCtorEq, if_false]
  rw [← sub_pos, sub_sub_sub_comm,
    harmonic_succ, Rat.cast_add, ← sub_sub, sub_self, zero_sub, sub_eq_add_neg, neg_sub,
    ← sub_eq_neg_add, sub_pos, ← log_div (by positivity) (by positivity), ← neg_lt_neg_iff,
    ← log_inv]
  refine (log_lt_sub_one_of_pos ?_ ?_).trans_le (le_of_eq ?_)
  · positivity
  · field_simp
  · field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70239be26bd5307a6e8fca5c5c45496014960f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
