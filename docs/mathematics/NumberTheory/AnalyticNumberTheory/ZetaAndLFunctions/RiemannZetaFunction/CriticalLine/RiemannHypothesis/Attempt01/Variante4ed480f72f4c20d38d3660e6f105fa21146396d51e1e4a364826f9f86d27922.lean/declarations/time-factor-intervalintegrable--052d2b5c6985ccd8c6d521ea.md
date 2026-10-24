# time_factor_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb930290-72de-7ee9-3f9e-314eb779102b",
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
  "slug": "time-factor-intervalintegrable--052d2b5c6985ccd8c6d521ea",
  "source": {
    "blob": "f1ac264af0fefb1d57d73ab68b06003e5402ddc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052d2b5c6985ccd8c6d521eab8715eafdc603ab5b2149ebb771ff1f37296f5b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb930290-72de-7ee9-3f9e-314eb779102b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ac264af0fefb1d57d73ab68b06003e5402ddc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
