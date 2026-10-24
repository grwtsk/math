# actualInsideStripKernel_eventually_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0004c9bb-1715-dd9d-59d7-5d9a70b1b17a",
  "kind": "theorem",
  "lexical_name": "actualInsideStripKernel_eventually_below",
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
  "slug": "actualinsidestripkernel-eventually-below--7c3fa4a127721ebb3bb021de",
  "source": {
    "blob": "ab9b106867290aac8aae5a977d23b12b69c91743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c3fa4a127721ebb3bb021de10f05ceb2c8d8437bd6aad57b8c03b13a48e339b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0004c9bb-1715-dd9d-59d7-5d9a70b1b17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInsideStripKernel_eventually_below (L : ℝ) :
    ∀ᶠ n in atTop,
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re < L := by
  have hn := actualInsideStripKernel_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-301989888 : ℝ) < -150994944)
  have hs := (actualInsideStrip_sequence_scale_tendsto_zero.mul_const |L|).eventually_lt_const
    (by norm_num : (0 : ℝ) * |L| < 150994944)
  filter_upwards [hn, hs, sequence_tendsto.eventually_ge_atTop 1] with n hn hs hA
  let scale : ℝ := actualInsideStripSequence n ^ 9 *
    sourceNormalization (actualInsideStripSequence n) * Real.exp (-actualInsideStripSequence n / 2)
  have hp : 0 < scale := sequence_scale_pos hA
  change scale *
    (actualBilateralCorrelationTransform (actualInsideStripSequence n) actualInsideStripMode).re <
      -150994944 at hn
  change scale * |L| < 150994944 at hs
  have hl := mul_le_mul_of_nonneg_left (neg_abs_le L) hp.le
  have hlarge : -150994944 < scale * L := by nlinarith
  exact (mul_lt_mul_left hp).mp (hn.trans hlarge)

/-- The actual prescribed kernel values tend to negative infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variantf1c42f8bfd78a33295d17ff2242cb01cada7799f1847c33130f8f0e178fc1fae.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9b106867290aac8aae5a977d23b12b69c91743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
