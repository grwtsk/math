# boundedIntegrableFunctionsIntegralCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08322eb97db621af825e4d52abacde8fb5afacd3724f5d7a7352b1e4a1828423",
  "kind": "def",
  "lexical_name": "boundedIntegrableFunctionsIntegralCLM",
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
  "slug": "boundedintegrablefunctionsintegralclm--813a3cee9d3c917c18ccee34",
  "source": {
    "blob": "3ba49625aefcee5afce1ae38ea4def7bed9c5096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:813a3cee9d3c917c18ccee3433a6f2bda2b8495a04340ab3b784f173034df065",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08322eb97db621af825e4d52abacde8fb5afacd3724f5d7a7352b1e4a1828423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundedIntegrableFunctionsIntegralCLM [MeasurableSpace α] (μ : Measure α) [IsFiniteMeasure μ] :
    boundedIntegrableFunctions μ →L[ℝ] ℝ :=
  LinearMap.mkContinuous (E := ↥(boundedIntegrableFunctions μ))
    { toFun := fun f => ∫ x, f.1 x ∂μ
      map_add' := fun f g => integral_add f.2 g.2
      map_smul' := fun c f => integral_smul c f.1 } (μ univ).toReal
    (by
      intro f
      rw [mul_comm]
      apply norm_integral_le_of_norm_le_const
      apply Filter.eventually_of_forall
      intro x
      exact BoundedContinuousFunction.norm_coe_le_norm f.1 x)
#align counterexample.phillips_1940.bounded_integrable_functions_integral_clm Counterexample.Phillips1940.boundedIntegrableFunctionsIntegralCLM

/-- Given a measure, there exists a continuous linear form on the space of all bounded functions
(not necessarily measurable) that coincides with the integral on bounded measurable functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba49625aefcee5afce1ae38ea4def7bed9c5096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
