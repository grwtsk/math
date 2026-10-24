# sourceCorrelation_deriv_hasDerivAt_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b530e171c2774cad4e3501ee741490c37c5b1b66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc6caf3d-27d8-0efe-ce40-caf890e2daff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b651d79f-9507-fc01-b5ba-973a4a20f8f8",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_hasDerivAt_integral",
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
  "slug": "sourcecorrelation-deriv-hasderivat-integral--758c77c70697a79158b900d3",
  "source": {
    "blob": "b530e171c2774cad4e3501ee741490c37c5b1b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758c77c70697a79158b900d3883f4bb87d771e4a18b62c714bee55e73a85c16d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b651d79f-9507-fc01-b5ba-973a4a20f8f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_hasDerivAt_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (-(∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t))) t := by
  rw [sourceCorrelation_deriv_eq_convolution hA]
  have hd := (reflectedTest_hasCompactSupport A hA).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_deriv_integrable hA).locallyIntegrable
    ((normalizedTest_contDiff A hA).comp contDiff_neg) t
  have heq : deriv (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) =
      fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) (-x) :=
    funext fun x ↦ (reflectedTest_hasDerivAt hA x).deriv
  simpa only [heq, convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul,
    neg_sub, mul_neg, integral_neg] using hd

/-- The second derivative is the negative first-derivative autocorrelation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b530e171c2774cad4e3501ee741490c37c5b1b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
