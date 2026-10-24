# actualKernelProbeReadout_normalized_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c6a09b6-1600-002b-5f5e-18fc61104796",
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
  "slug": "actualkernelprobereadout-normalized-tendsto--ccfc21d3113e5612c171493d",
  "source": {
    "blob": "3d65275ad0887c895255b6e2dbca29f8772e62a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccfc21d3113e5612c171493d2f759a6a0bbc22761f9e2c3d2f334a030e02c46e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c6a09b6-1600-002b-5f5e-18fc61104796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–190.

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
    rfl
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d65275ad0887c895255b6e2dbca29f8772e62a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
