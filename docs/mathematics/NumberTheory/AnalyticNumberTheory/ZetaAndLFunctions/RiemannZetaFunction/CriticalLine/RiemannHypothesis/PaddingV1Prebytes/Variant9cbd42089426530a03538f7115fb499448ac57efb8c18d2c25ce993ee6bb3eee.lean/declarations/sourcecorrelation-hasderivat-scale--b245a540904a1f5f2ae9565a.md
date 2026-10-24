# sourceCorrelation_hasDerivAt_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdb1f6c5-f391-eb88-e2ed-c6311f37fc34",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_hasDerivAt_scale",
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
  "slug": "sourcecorrelation-hasderivat-scale--b245a540904a1f5f2ae9565a",
  "source": {
    "blob": "3526b6fbbbdb7e10dd21891a5d2971822d2e8044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PaddingV1Prebytes/Variant9cbd42089426530a03538f7115fb499448ac57efb8c18d2c25ce993ee6bb3eee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b245a540904a1f5f2ae9565a483b7a2b27ba024fe504536b849f2321b40c01fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PaddingV1Prebytes/Variant9cbd42089426530a03538f7115fb499448ac57efb8c18d2c25ce993ee6bb3eee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdb1f6c5-f391-eb88-e2ed-c6311f37fc34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_hasDerivAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    HasDerivAt (fun B => sourceCorrelation explicitSecondDerivative B s)
      (correlationScaleDerivative A s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hd := originalSourceState_hasDerivAt hA
  have ht := L.hasFDerivAt.comp_hasDerivAt A hd
  have hi := hd.inner ℂ ht
  have hr := Complex.reCLM.hasFDerivAt.comp_hasDerivAt A hi
  have hs : HasDerivAt (fun B =>
      (⟪originalSourceState B, translation s (originalSourceState B)⟫_ℂ).re)
      (correlationScaleDerivative A s) A := by
    simpa [L, correlationScaleDerivative, add_comm, Function.comp_def] using hr
  apply hs.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact sourceCorrelation_eq_inner hB s

/-- Local C¹ comes from norm C¹ of the actual source, rather than a formal integral rule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PaddingV1Prebytes/Variant9cbd42089426530a03538f7115fb499448ac57efb8c18d2c25ce993ee6bb3eee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PaddingV1Prebytes/Variant9cbd42089426530a03538f7115fb499448ac57efb8c18d2c25ce993ee6bb3eee.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3526b6fbbbdb7e10dd21891a5d2971822d2e8044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
