# actualAdjointColumnPrimitive_sub_criticalMain_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c852ec-b924-e9dc-b01a-7b18298c707b",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_sub_criticalMain_tendsto_zero",
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
  "slug": "actualadjointcolumnprimitive-sub-criticalmain-tendsto-zero--28dae1aa42cc6461dcab6739",
  "source": {
    "blob": "8c0ec654589c6fc1e2acdbebf2c00fe4abdd1f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03Source/Variant0f3528f9e238f309153ccdef965a054e9f56a68f24ebbf9dba51260646fe8866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28dae1aa42cc6461dcab673969259b4b7d9ce2ab1c98a69d9047396d1dc5ba4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03Source/Variant0f3528f9e238f309153ccdef965a054e9f56a68f24ebbf9dba51260646fe8866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52c852ec-b924-e9dc-b01a-7b18298c707b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_sub_criticalMain_tendsto_zero :
    Tendsto (fun A : ℝ => actualAdjointColumnPrimitive A
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) - actualCriticalColumnTraceMain A)
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    (by simpa only [mul_zero] using
      (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 4).const_mul 24)
  filter_upwards [eventually_ge_atTop (4 : ℝ)] with A hA
  simpa only [mul_assoc] using actualAdjointColumnPrimitive_sub_criticalMain_abs_le hA

end
end FormalResearch.RiemannHypothesis.SourceActualCenteredHalfUpperDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03Source/Variant0f3528f9e238f309153ccdef965a054e9f56a68f24ebbf9dba51260646fe8866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03Source/Variant0f3528f9e238f309153ccdef965a054e9f56a68f24ebbf9dba51260646fe8866.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0ec654589c6fc1e2acdbebf2c00fe4abdd1f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
