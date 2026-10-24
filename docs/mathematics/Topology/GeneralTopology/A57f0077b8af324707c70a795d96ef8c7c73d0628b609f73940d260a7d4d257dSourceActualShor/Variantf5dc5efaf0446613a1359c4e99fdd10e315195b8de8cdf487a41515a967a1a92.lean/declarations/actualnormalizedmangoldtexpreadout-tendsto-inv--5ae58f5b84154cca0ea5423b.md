# actualNormalizedMangoldtExpReadout_tendsto_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a1ec58c-948c-8877-aba5-f86802877198",
  "kind": "theorem",
  "lexical_name": "actualNormalizedMangoldtExpReadout_tendsto_inv",
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
  "slug": "actualnormalizedmangoldtexpreadout-tendsto-inv--5ae58f5b84154cca0ea5423b",
  "source": {
    "blob": "c136216e0a0a18c23ee68387c963d18472f3dd61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae58f5b84154cca0ea5423bb42bfea3131e818afb6f760938f83db6b891bd2c",
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

Occurrence: `result:6a1ec58c-948c-8877-aba5-f86802877198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNormalizedMangoldtExpReadout_tendsto_inv {lam : ℝ} (hlam : 0 < lam) :
    Tendsto (actualNormalizedMangoldtExpReadout lam) atTop (𝓝 (1 / lam)) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-lam * T)) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 lam hlam
  have hh := ((actualCenteredMangoldtLogError_tendsto_zero.add_const (1 / lam)).sub
    ((actualMangoldtErrorConvolution_tendsto_zero hlam).const_mul lam)).sub
      (he.const_mul (Real.eulerMascheroniConstant + 1 / lam))
  simp only [zero_add, mul_zero, sub_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with T hT
  exact (actualNormalizedMangoldtExpReadout_eq_convolution hlam.ne' hT).symm

/-- The complete closed half-weighted Mangoldt prefix at A squared is asymptotic to 2A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c136216e0a0a18c23ee68387c963d18472f3dd61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
