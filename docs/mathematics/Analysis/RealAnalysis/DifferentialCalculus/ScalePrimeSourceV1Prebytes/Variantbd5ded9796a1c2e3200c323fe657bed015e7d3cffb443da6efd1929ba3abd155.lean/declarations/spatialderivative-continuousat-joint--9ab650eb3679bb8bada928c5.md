# spatialDerivative_continuousAt_joint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00042f0b-29fa-7add-e077-f5b2c87eb502",
  "kind": "theorem",
  "lexical_name": "spatialDerivative_continuousAt_joint",
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
  "slug": "spatialderivative-continuousat-joint--9ab650eb3679bb8bada928c5",
  "source": {
    "blob": "d26d56b30d35993d79b86df15dcd0bac768b8e98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variantbd5ded9796a1c2e3200c323fe657bed015e7d3cffb443da6efd1929ba3abd155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab650eb3679bb8bada928c52ea8ca7c7ba19881f91f6d6f6a5e873f29618566",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variantbd5ded9796a1c2e3200c323fe657bed015e7d3cffb443da6efd1929ba3abd155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00042f0b-29fa-7add-e077-f5b2c87eb502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivative_continuousAt_joint {z : ℝ × ℝ} (hz : 0 < z.1) :
    ContinuousAt (fun y : ℝ × ℝ => spatialDerivative y.1 y.2) z := by
  have hd1 : ContDiff ℝ 2 (deriv sourceBump) := sourceBump_contDiff_three.deriv'
  have hd2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) := hd1.deriv'
  have h1 : Continuous (deriv sourceBump) := hd1.continuous
  have h3 : Continuous (deriv (deriv (deriv sourceBump))) := hd2.continuous_deriv_one
  have hn := sourceNormalization_pos hz
  unfold spatialDerivative scaleAmplitude sourceNormalization
  fun_prop (disch := first | positivity | exact hz.ne' | exact hn.ne')

/-- The joint field is continuous on all positive scales, including spatial seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variantbd5ded9796a1c2e3200c323fe657bed015e7d3cffb443da6efd1929ba3abd155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variantbd5ded9796a1c2e3200c323fe657bed015e7d3cffb443da6efd1929ba3abd155.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26d56b30d35993d79b86df15dcd0bac768b8e98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
