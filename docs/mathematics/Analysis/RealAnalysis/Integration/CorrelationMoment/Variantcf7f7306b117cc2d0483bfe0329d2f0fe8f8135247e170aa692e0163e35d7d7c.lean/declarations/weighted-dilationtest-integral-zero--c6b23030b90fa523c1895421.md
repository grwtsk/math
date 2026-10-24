# weighted_dilationTest_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed0451c647701bff0458e9c1625e07723c725ec6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:171f8fb0-c1dc-06d7-9bb8-fcce7ba77a8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05844249-337a-6cdb-937e-76bf39437500",
  "kind": "theorem",
  "lexical_name": "weighted_dilationTest_integral_zero",
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
  "slug": "weighted-dilationtest-integral-zero--c6b23030b90fa523c1895421",
  "source": {
    "blob": "ed0451c647701bff0458e9c1625e07723c725ec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b23030b90fa523c18954210adc4b9651de8d73d8ca28e661bafcd960cbe235",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05844249-337a-6cdb-937e-76bf39437500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_dilationTest_integral_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) = 0 := by
  have hpos : 0 < A := by linarith
  have hab : -A ≤ A := by linarith
  have hc : Continuous (fun x ↦ Real.exp (σ * x) *
      (secondInterior A x - bumpInterior A x / 4)) :=
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id))).mul
      ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4))
  rw [weighted_dilationTest_eq_indicator A σ hA]
  rw [zeroExtension_integral _ (-A) A hab,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ polePrimitive_hasDerivAt A σ x hσ) (hc.intervalIntegrable (-A) A)]
  rw [(polePrimitive_endpoints A σ (ne_of_gt hpos)).1,
    (polePrimitive_endpoints A σ (ne_of_gt hpos)).2]
  ring

/-- Fixed source normalization preserves genuine weighted integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed0451c647701bff0458e9c1625e07723c725ec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
