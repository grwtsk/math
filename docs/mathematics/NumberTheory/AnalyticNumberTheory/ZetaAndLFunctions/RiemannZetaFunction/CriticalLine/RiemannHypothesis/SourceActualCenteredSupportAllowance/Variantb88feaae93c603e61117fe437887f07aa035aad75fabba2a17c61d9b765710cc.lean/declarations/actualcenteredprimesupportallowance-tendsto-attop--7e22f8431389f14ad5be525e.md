# actualCenteredPrimeSupportAllowance_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33e6eff6-a147-b571-647d-7badc5259852",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimeSupportAllowance_tendsto_atTop",
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
  "slug": "actualcenteredprimesupportallowance-tendsto-attop--7e22f8431389f14ad5be525e",
  "source": {
    "blob": "e73e5c186313bc11c6524798244fe91b03cf73ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 156,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variantb88feaae93c603e61117fe437887f07aa035aad75fabba2a17c61d9b765710cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e22f8431389f14ad5be525ef2c0dd67e93e043b4b8e9b8a345f5876de1da9fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variantb88feaae93c603e61117fe437887f07aa035aad75fabba2a17c61d9b765710cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e6eff6-a147-b571-647d-7badc5259852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimeSupportAllowance_tendsto_atTop :
    Tendsto actualCenteredPrimeSupportAllowance atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 9) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 9)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hh : Tendsto (fun A : ℝ =>
      (5184 * Real.exp (-(3 / 2) * Real.log 2) / Real.pi) *
        Real.exp (2 * A) / A ^ 9) atTop atTop := by
    convert ht.const_mul_atTop (by positivity :
      0 < 5184 * Real.exp (-(3 / 2) * Real.log 2) / Real.pi) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualCenteredPrimeSupportAllowance_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualCenteredSupportAllowance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variantb88feaae93c603e61117fe437887f07aa035aad75fabba2a17c61d9b765710cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variantb88feaae93c603e61117fe437887f07aa035aad75fabba2a17c61d9b765710cc.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e73e5c186313bc11c6524798244fe91b03cf73ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
