# actualXiComplexLaplace_real_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eab67aa1-1e76-9a39-2a13-1044dfa8e9d2",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_real_norm_le",
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
  "slug": "actualxicomplexlaplace-real-norm-le--d40d9fb375828b8d58acd993",
  "source": {
    "blob": "cc82975d2ff76021dde51c01caafdc26a3eb4676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d40d9fb375828b8d58acd993f2280517b3e79c2217be07b1662c50ee6894c8b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab67aa1-1e76-9a39-2a13-1044dfa8e9d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_real_norm_le {σ : ℝ} (hσ : 1 / 2 < σ) :
    ‖actualXiComplexLaplace (σ : ℂ)‖ ≤
      actualDampedXiFiniteBudget * Real.exp (-(σ - 1 / 2) * Real.log 7) := by
  have ht := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiLaplace_integrableOn hσ) tendsto_id
  have hb := le_of_tendsto ht.abs (by
    filter_upwards [eventually_ge_atTop (Real.log 7)] with T hT
    exact actualXiFiniteRealLaplace_abs_le hσ hT)
  rw [actualXiComplexLaplace_ofReal, Complex.norm_real, Real.norm_eq_abs]
  exact hb

end
end FormalResearch.RiemannHypothesis.SourceActualXiRealLaplaceUniform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiRealLaplaceUniform/Variant34b601b01b7994d88fde218f6505dfb34bd89070f442d3fdc58996e241da1c12.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc82975d2ff76021dde51c01caafdc26a3eb4676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
