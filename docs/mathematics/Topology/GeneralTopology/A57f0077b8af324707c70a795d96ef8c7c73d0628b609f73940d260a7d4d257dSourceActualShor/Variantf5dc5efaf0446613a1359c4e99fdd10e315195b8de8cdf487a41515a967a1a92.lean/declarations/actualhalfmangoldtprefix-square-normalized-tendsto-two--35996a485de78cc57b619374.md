# actualHalfMangoldtPrefix_square_normalized_tendsto_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5748a6c0-79d4-5ee9-ee2f-77bcc9057160",
  "kind": "theorem",
  "lexical_name": "actualHalfMangoldtPrefix_square_normalized_tendsto_two",
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
  "slug": "actualhalfmangoldtprefix-square-normalized-tendsto-two--35996a485de78cc57b619374",
  "source": {
    "blob": "c136216e0a0a18c23ee68387c963d18472f3dd61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35996a485de78cc57b6193741a8b6b147f033e4b63060e91933afae73fc87186",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5748a6c0-79d4-5ee9-ee2f-77bcc9057160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfMangoldtPrefix_square_normalized_tendsto_two :
    Tendsto (fun A : ℝ => actualMangoldtHalfClosedPrefix (2 * Real.log A) / A)
      atTop (𝓝 2) := by
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hh := (actualNormalizedMangoldtExpReadout_tendsto_inv
    (by norm_num : (0 : ℝ) < 1 / 2)).comp ht
  norm_num at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  change actualNormalizedMangoldtExpReadout (1 / 2) (2 * Real.log A) = _
  rw [actualNormalizedMangoldtExpReadout_half hT]
  rw [show -(2 * Real.log A) / 2 = -Real.log A by ring,
    Real.exp_neg, Real.exp_log hp]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c136216e0a0a18c23ee68387c963d18472f3dd61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
