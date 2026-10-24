# actualKernelProbeReadout_normalized_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4182bebf-196b-33a9-530f-0041928d1efb",
  "kind": "theorem",
  "lexical_name": "actualKernelProbeReadout_normalized_tendsto",
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
  "slug": "actualkernelprobereadout-normalized-tendsto--1b8483d2e6cb61db3f85b766",
  "source": {
    "blob": "9234655406ca52af771c25772dcaa012eee2e69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8483d2e6cb61db3f85b7664ef470cccdfc1acb91cb26fb8c4134318e98c621",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4182bebf-196b-33a9-530f-0041928d1efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualKernelProbeReadout_normalized_tendsto (epsilon : ℝ) :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) *
      actualKernelProbeReadout A epsilon) atTop (𝓝 (108883906560 * epsilon)) := by
  have hs : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2)) atTop (𝓝 0) := by
    have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℝ)
      (1 / 2) (by norm_num)
    convert! h using 1
    ext A
    simp only [show -(1 / 2 : ℝ) * A = -A / 2 by ring]
    exact congrArg (fun x : ℝ => x * Real.exp (-A / 2)) (Real.rpow_natCast A 9).symm
  have hh := (actual_half_real_scaled.const_mul (epsilon * (3 / 4))).sub hs
  have hl : epsilon * (3 / 4) *
      (5435817984 / ((65536 / 109395 : ℝ) / 16)) - 0 = 108883906560 * epsilon := by
    norm_num
    ring
  rw [hl] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualKernelProbeReadout_eq hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9234655406ca52af771c25772dcaa012eee2e69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
