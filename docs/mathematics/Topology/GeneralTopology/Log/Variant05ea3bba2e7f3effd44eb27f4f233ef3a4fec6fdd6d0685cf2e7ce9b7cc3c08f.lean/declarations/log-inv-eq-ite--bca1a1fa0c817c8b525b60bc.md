# log_inv_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d5475ad3cd6c5c66bacb7f6840f303e4525ff30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b7f630b-c281-7a56-593c-a5f7110e1e06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c66d0ee-286e-39bb-31bb-2ab4b1ccb087",
  "kind": "theorem",
  "lexical_name": "log_inv_eq_ite",
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
  "slug": "log-inv-eq-ite--bca1a1fa0c817c8b525b60bc",
  "source": {
    "blob": "6d5475ad3cd6c5c66bacb7f6840f303e4525ff30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bca1a1fa0c817c8b525b60bc92b43d03467f2b3cfc7a0f5b0aff19217c1c25b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c66d0ee-286e-39bb-31bb-2ab4b1ccb087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_inv_eq_ite (x : ℂ) : log x⁻¹ = if x.arg = π then -conj (log x) else -log x := by
  by_cases hx : x = 0
  · simp [hx]
  rw [inv_def, log_mul_ofReal, Real.log_inv, ofReal_neg, ← sub_eq_neg_add, log_conj_eq_ite]
  · simp_rw [log, map_add, map_mul, conj_ofReal, conj_I, normSq_eq_abs, Real.log_pow,
      Nat.cast_two, ofReal_mul, neg_add, mul_neg, neg_neg]
    norm_num; rw [two_mul] -- Porting note: added to simplify `↑2`
    split_ifs
    · rw [add_sub_right_comm, sub_add_cancel']
    · rw [add_sub_right_comm, sub_add_cancel']
  · rwa [inv_pos, Complex.normSq_pos]
  · rwa [map_ne_zero]
#align complex.log_inv_eq_ite Complex.log_inv_eq_ite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variant05ea3bba2e7f3effd44eb27f4f233ef3a4fec6fdd6d0685cf2e7ce9b7cc3c08f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5475ad3cd6c5c66bacb7f6840f303e4525ff30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
