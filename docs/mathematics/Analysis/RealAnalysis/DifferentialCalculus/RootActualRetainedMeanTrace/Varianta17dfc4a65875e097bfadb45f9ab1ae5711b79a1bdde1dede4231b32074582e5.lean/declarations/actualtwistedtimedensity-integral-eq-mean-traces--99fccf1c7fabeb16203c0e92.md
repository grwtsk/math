# actualTwistedTimeDensity_integral_eq_mean_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a460acb7-bc02-37a7-1e42-15e513696674",
  "kind": "theorem",
  "lexical_name": "actualTwistedTimeDensity_integral_eq_mean_traces",
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
  "slug": "actualtwistedtimedensity-integral-eq-mean-traces--99fccf1c7fabeb16203c0e92",
  "source": {
    "blob": "86166d3d106f6ad67e913bd33a0e948964a509d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Varianta17dfc4a65875e097bfadb45f9ab1ae5711b79a1bdde1dede4231b32074582e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fccf1c7fabeb16203c0e92697b708e4696a2f75b013a5054f599b046a6f047",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Varianta17dfc4a65875e097bfadb45f9ab1ae5711b79a1bdde1dede4231b32074582e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a460acb7-bc02-37a7-1e42-15e513696674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTwistedTimeDensity_integral_eq_mean_traces {A : ℝ} (hA : 0 < A)
    (t l b : ℝ) :
    (∫ s in l..b, actualTwistedTimeDensity A t s) =
      actualRetainedMeanSourcePrimitive A t b - actualRetainedMeanSourcePrimitive A t l := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  have ht : Continuous (actualTwistedTimeDensity A t) := by
    unfold actualTwistedTimeDensity
    fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => actualRetainedMeanSourcePrimitive_hasDerivAt hA t s) (ht.intervalIntegrable l b)

/-- This primitive vanishes only at the true closed upper support, including its source jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Varianta17dfc4a65875e097bfadb45f9ab1ae5711b79a1bdde1dede4231b32074582e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Varianta17dfc4a65875e097bfadb45f9ab1ae5711b79a1bdde1dede4231b32074582e5.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86166d3d106f6ad67e913bd33a0e948964a509d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
