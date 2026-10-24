# actualInsideStripKernel_eventually_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fa8d801-0fef-a577-883a-023d15f3d59b",
  "kind": "theorem",
  "lexical_name": "actualInsideStripKernel_eventually_negative",
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
  "slug": "actualinsidestripkernel-eventually-negative--eb6da4a4f54e639625c47f04",
  "source": {
    "blob": "66924c3eaa4193796f5b658015b49145dbbc282d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variantabec6831ac1f30d5323acf7850c548e1aff7f92d807e5cea8e9a0c5c8c405181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb6da4a4f54e639625c47f04f426185327e09b049a2d16fe8b1eaeba172e066c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variantabec6831ac1f30d5323acf7850c548e1aff7f92d807e5cea8e9a0c5c8c405181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa8d801-0fef-a577-883a-023d15f3d59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInsideStripKernel_eventually_negative :
    ∀ᶠ n in atTop,
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re < 0 := by
  have hn := actualInsideStripKernel_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-301989888 : ℝ) < 0)
  filter_upwards [hn, actualInsideStripSequence_tendsto.eventually_ge_atTop 1] with n hn hA
  have hp : 0 < actualInsideStripSequence n ^ 9 *
      sourceNormalization (actualInsideStripSequence n) *
        Real.exp (-actualInsideStripSequence n / 2) := by
    have hZ := source_normalization_pos (actualInsideStripSequence n) hA
    have hAp : 0 < actualInsideStripSequence n := by linarith
    positivity
  by_contra h
  have hv : 0 ≤ (actualBilateralCorrelationTransform (actualInsideStripSequence n)
      actualInsideStripMode).re := le_of_not_gt h
  have hh := mul_nonneg hp.le hv
  linarith

/-- Blanket nonnegative real strip-kernel rules fail at arbitrarily large actual scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variantabec6831ac1f30d5323acf7850c548e1aff7f92d807e5cea8e9a0c5c8c405181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variantabec6831ac1f30d5323acf7850c548e1aff7f92d807e5cea8e9a0c5c8c405181.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66924c3eaa4193796f5b658015b49145dbbc282d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
