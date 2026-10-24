# time_factor_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eada4a8-824f-1ad4-24d1-10cc14792b04",
  "kind": "theorem",
  "lexical_name": "time_factor_intervalIntegrable",
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
  "slug": "time-factor-intervalintegrable--1ac5ec6bb927c65ec21e97e6",
  "source": {
    "blob": "5030a4af413ef9d1b36f4787212d814df633c016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ac5ec6bb927c65ec21e97e681df8f9dc0f1ff60cae9dc9a25d0ecd4a5952799",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eada4a8-824f-1ad4-24d1-10cc14792b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem time_factor_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ho := (upper_time_orders hA).1.trans (upper_time_orders hA).2
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ho).continuousOn
  rw [uIcc_of_le ho] at hp
  have h1 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 1
    (by norm_num)
  have h2 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 2
    (by norm_num)
  have hc : Continuous (fun t => actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)) := by
    unfold actualRetainedMeanSourcePrimitive
    fun_prop
  exact (hp.intervalIntegrable_of_Icc ho).mul_continuousOn hc.continuousOn

/-- True closed support shortens the actual mean time integral, without deleting its lower trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5030a4af413ef9d1b36f4787212d814df633c016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
