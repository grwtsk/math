# positivePoleSlope_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5802886362339dbfa6f33d1f3145f79b3e24f72f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3157790-b3ea-55df-b011-3a5ebf1288ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b80722a3-1f72-9659-6184-21bae8822115",
  "kind": "theorem",
  "lexical_name": "positivePoleSlope_pos",
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
  "slug": "positivepoleslope-pos--457a784faceafaf858ae37d1",
  "source": {
    "blob": "5802886362339dbfa6f33d1f3145f79b3e24f72f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457a784faceafaf858ae37d16b396ff898f0f1a3d52d6285a2dafa6dd4a0f074",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b80722a3-1f72-9659-6184-21bae8822115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePoleSlope_pos : 0 < positivePoleSlope := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1) 11
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (2721 : ℝ) < 1001 * Real.exp 1 := by linarith
  have hp : 0 < Real.exp (-1 / 2 : ℝ) := Real.exp_pos _
  have hexp : Real.exp (1 / 2 : ℝ) = Real.exp 1 * Real.exp (-1 / 2) := by
    rw [← Real.exp_add]
    norm_num
  have hd : 0 < 1001 * Real.exp (1 / 2 : ℝ) - 2721 * Real.exp (-1 / 2) := by
    rw [hexp]
    nlinarith [mul_pos (sub_pos.mpr he') hp]
  unfold positivePoleSlope
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5802886362339dbfa6f33d1f3145f79b3e24f72f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
