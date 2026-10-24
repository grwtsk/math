# condition_sub_two_mul_int_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e386a6d4-aac7-7ec8-272a-fbba6d9d2ccb",
  "kind": "lemma",
  "lexical_name": "condition_sub_two_mul_int_iff",
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
  "slug": "condition-sub-two-mul-int-iff--4f8c9f5b3dfba0989aaa67d3",
  "source": {
    "blob": "7b46297a45bcf184127f07f2235ae05ae2f65aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8c9f5b3dfba0989aaa67d380721a3822676abd7a504f1f39ca8511780eb541",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e386a6d4-aac7-7ec8-272a-fbba6d9d2ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condition_sub_two_mul_int_iff {α : ℝ} (m : ℤ) : Condition (α - 2 * m) ↔ Condition α := by
  unfold Condition
  congr! 2 with n hn
  apply dvd_iff_dvd_of_dvd_sub
  simp_rw [← Finset.sum_sub_distrib, mul_sub]
  norm_cast
  simp_rw [Int.floor_sub_intCast, sub_sub_cancel_left]
  convert! condition_two_mul_int (-m) n hn
  norm_cast
  rw [Int.floor_intCast]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b46297a45bcf184127f07f2235ae05ae2f65aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
