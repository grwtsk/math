# actualAnchoredXiTailPrimitive_normalized_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae44d089-7b9d-1753-8dc4-9f1b9954d6a7",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_normalized_tendsto_zero",
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
  "slug": "actualanchoredxitailprimitive-normalized-tendsto-zero--c6b773ce52141a8bcacf3d66",
  "source": {
    "blob": "ada63547f874e36823610ce670d39ed91b2a8432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantba33f0883a1c4daff243d2e4edf876ee354247862b0061fdc3748982b55e307e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b773ce52141a8bcacf3d6658db9fca3a4142bfbcee667a9465e0dcb35e792f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variantba33f0883a1c4daff243d2e4edf876ee354247862b0061fdc3748982b55e307e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae44d089-7b9d-1753-8dc4-9f1b9954d6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_normalized_tendsto_zero :
    Tendsto (fun T => actualAnchoredXiTailPrimitive T * Real.exp (-T / 2))
      atTop (𝓝 0) := by
  have hh := tendsto_integral_filter_of_dominated_convergence
    (μ := volume.restrict (Ioi (Real.log 7)))
    (F := actualF7NormalizedKernel) (f := fun _ => (0 : ℝ))
    (fun r => |actualXiInverseSquareTimeDensity r|)
    (Eventually.of_forall actualF7NormalizedKernel_aestronglyMeasurable)
    (Eventually.of_forall (fun T => ae_of_all _ (actualF7NormalizedKernel_norm_le T)))
    actualXiInverseSquareTimeDensity_integrableOn.norm
    (ae_of_all _ kernel_tendsto_zero)
  simp only [integral_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
  exact actualF7NormalizedKernel_integral_eq_primitive hT

end
end FormalResearch.RiemannHypothesis.SourceActualF7NormalizedPnt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variantba33f0883a1c4daff243d2e4edf876ee354247862b0061fdc3748982b55e307e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantba33f0883a1c4daff243d2e4edf876ee354247862b0061fdc3748982b55e307e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ada63547f874e36823610ce670d39ed91b2a8432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
