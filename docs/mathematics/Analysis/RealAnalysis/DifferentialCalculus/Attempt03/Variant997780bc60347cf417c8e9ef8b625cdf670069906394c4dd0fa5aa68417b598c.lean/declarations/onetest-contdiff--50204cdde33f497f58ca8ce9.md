# oneTest_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52eb0066-2ce7-c010-c398-69920639f87c",
  "kind": "theorem",
  "lexical_name": "oneTest_contDiff",
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
  "slug": "onetest-contdiff--50204cdde33f497f58ca8ce9",
  "source": {
    "blob": "2472fbaf73e7c639a2aedea748c08521cadcacca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50204cdde33f497f58ca8ce9171d3ebf5183e5e1feca639089ee9856c1b2c1bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52eb0066-2ce7-c010-c398-69920639f87c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem oneTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualOneConvolutionReturnTest A) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.continuous_iteratedDeriv 1 (by norm_num)
  have hB : Continuous (actualOneConvolutionReturnTest A) := by
    unfold actualOneConvolutionReturnTest
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
      ((hc.continuous_iteratedDeriv 2 (by norm_num)).add (h1.div_const 2))
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun t => (actualOneConvolutionReturnTest_hasDerivAt hA t).differentiableAt, ?_⟩
  rw [show deriv (actualOneConvolutionReturnTest A) = fun t =>
      actualOneConvolutionReturnTest A t + actualDampedXiReturnDensity A t from
    funext (fun t => (actualOneConvolutionReturnTest_hasDerivAt hA t).deriv)]
  exact hB.add (returnDensity_continuous hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2472fbaf73e7c639a2aedea748c08521cadcacca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
