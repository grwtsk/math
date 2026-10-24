# difference_primitive_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7ab79c85e0d91d794be36e399894f4535a3454b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06e354dc-47cf-e17f-6665-920463ee5fc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:470ddeee-6f5e-2d43-118e-65627db015fb",
  "kind": "theorem",
  "lexical_name": "difference_primitive_eq",
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
  "slug": "difference-primitive-eq--4b91a8888163ae339d1f19e1",
  "source": {
    "blob": "d7ab79c85e0d91d794be36e399894f4535a3454b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b91a8888163ae339d1f19e17d8c78407869d3e16e2f03bd21d14aa13f311a4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:470ddeee-6f5e-2d43-118e-65627db015fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem difference_primitive_eq (A s : ℝ) (hA : 1 ≤ A) :
    Real.exp (-s / 2) * (∫ t in (-2 * A)..s,
      Real.exp (t / 2) * correlationDifference A t) =
      sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s := by
  have hc := CorrelationRegularity.sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hiC := primitive_integrand_intervalIntegrable A s hA
  have hiD : IntervalIntegrable (fun t : ℝ ↦ Real.exp (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume (-2 * A) s :=
    (((continuous_id.div_const 2).rexp).mul hc.continuous_deriv_one).intervalIntegrable _ _
  simp only [correlationDifference, mul_sub, ← mul_div_assoc]
  rw [intervalIntegral.integral_sub hiD (hiC.div_const 2),
    intervalIntegral.integral_div, mul_sub, ← mul_div_assoc,
    ← correlationPrimitive_derivative_eq A s hA,
    (correlationPrimitive_hasDerivAt A s hA).deriv]
  change sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s / 2 -
    correlationPrimitive A s / 2 = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeStatements/Variantf9886cc7ccf1b59144b4e58e2466f9c624f15eba40936e0203f5c9b4f0542c59.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ab79c85e0d91d794be36e399894f4535a3454b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
