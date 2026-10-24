# actualInsideStripKernel_eventually_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8854749d-3ff3-dc81-a803-9891c459d719",
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
  "slug": "actualinsidestripkernel-eventually-below--54d685ebaf2b92f253cb843e",
  "source": {
    "blob": "ec26ac74c01337e6f44d3f426fb55520cf847ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d685ebaf2b92f253cb843e572c37bcd34f6950e9b8362205554884a1addad1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8854749d-3ff3-dc81-a803-9891c459d719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–76.

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
  by_contra hnot
  have hm := mul_le_mul_of_nonneg_left (le_of_not_gt hnot) hp.le
  linarith

/-- The actual prescribed kernel values tend to negative infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelUnbounded/Variant49f5fb1b4820b14ef629ab28ab3b122521b32f547849deb92e537b0525786ffd.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec26ac74c01337e6f44d3f426fb55520cf847ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
