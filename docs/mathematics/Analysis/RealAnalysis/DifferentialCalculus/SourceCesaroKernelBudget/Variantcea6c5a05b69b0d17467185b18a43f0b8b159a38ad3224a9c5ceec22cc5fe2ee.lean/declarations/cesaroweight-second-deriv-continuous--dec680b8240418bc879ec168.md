# cesaroWeight_second_deriv_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cb83dfd-8fff-72c4-48a7-5069851b8cc4",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_second_deriv_continuous",
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
  "slug": "cesaroweight-second-deriv-continuous--dec680b8240418bc879ec168",
  "source": {
    "blob": "d76d6ad67de95a3248ef9c359d7b5aadb4f04b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec680b8240418bc879ec1688830809d60e90213cfd299400036ea7224c62082",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cb83dfd-8fff-72c4-48a7-5069851b8cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_second_deriv_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (deriv (deriv (cesaroWeight A))) := by
  have he : deriv (deriv (cesaroWeight A)) = fun t =>
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 :=
    funext fun t => cesaroWeight_second_deriv A t hA
  rw [he]
  have hc3 : Continuous (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) :=
    (show Differentiable ℝ (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
      from fun t => (actual_correlation_fourth_derivative A hA t).differentiableAt).continuous
  have hc2 : Continuous (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
    (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one
  exact hc3.add (hc2.div_const 2)

/-- Pointwise control of the actual second-primitive kernel, with explicit scale powers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d76d6ad67de95a3248ef9c359d7b5aadb4f04b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
