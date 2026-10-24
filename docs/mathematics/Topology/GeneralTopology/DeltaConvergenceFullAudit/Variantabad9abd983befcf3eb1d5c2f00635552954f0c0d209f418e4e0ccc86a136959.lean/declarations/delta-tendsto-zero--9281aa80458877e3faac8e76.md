# delta_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f655f1d-cbfe-6931-b14a-bce4b8ffebcd",
  "kind": "theorem",
  "lexical_name": "delta_tendsto_zero",
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
  "slug": "delta-tendsto-zero--9281aa80458877e3faac8e76",
  "source": {
    "blob": "8b41ca111ef36ac2dc96c67a2c19933e3ae1f332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9281aa80458877e3faac8e769ca323a3bc6f5cc73037c198a88f072a2cba1af4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f655f1d-cbfe-6931-b14a-bce4b8ffebcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delta_tendsto_zero (ε h : ℕ → ℝ)
    (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4) (hhpos : ∀ j, 0 ≤ h j)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => delta (ε j) (h j)) atTop (nhds 0) := by
  simpa only [delta, Real.sqrt_zero, Function.comp_def] using
    (Real.continuous_sqrt.tendsto 0).comp
      (deltaSq_tendsto_zero ε h hεpos hεsmall hhpos hε hh)

end
end SourceFilterDeltaConvergenceScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceFilterDeltaConvergenceScratch.boundaryFilter_norm_le
#print SourceFilterDeltaConvergenceScratch.boundaryFilter_norm_le
#print axioms SourceFilterDeltaConvergenceScratch.boundaryFilter_norm_le
#check @SourceFilterDeltaConvergenceScratch.boundaryFilter_error_sq_le
#print SourceFilterDeltaConvergenceScratch.boundaryFilter_error_sq_le
#print axioms SourceFilterDeltaConvergenceScratch.boundaryFilter_error_sq_le
#check @SourceFilterDeltaConvergenceScratch.boundaryFilter_error_integrable
#print SourceFilterDeltaConvergenceScratch.boundaryFilter_error_integrable
#print axioms SourceFilterDeltaConvergenceScratch.boundaryFilter_error_integrable
#check @SourceFilterDeltaConvergenceScratch.deltaSq
#print SourceFilterDeltaConvergenceScratch.deltaSq
#print axioms SourceFilterDeltaConvergenceScratch.deltaSq
#check @SourceFilterDeltaConvergenceScratch.delta
#print SourceFilterDeltaConvergenceScratch.delta
#print axioms SourceFilterDeltaConvergenceScratch.delta
#check @SourceFilterDeltaConvergenceScratch.boundaryFilter_tendsto
#print SourceFilterDeltaConvergenceScratch.boundaryFilter_tendsto
#print axioms SourceFilterDeltaConvergenceScratch.boundaryFilter_tendsto
#check @SourceFilterDeltaConvergenceScratch.deltaSq_tendsto_zero
#print SourceFilterDeltaConvergenceScratch.deltaSq_tendsto_zero
#print axioms SourceFilterDeltaConvergenceScratch.deltaSq_tendsto_zero
#check @SourceFilterDeltaConvergenceScratch.delta_tendsto_zero
#print SourceFilterDeltaConvergenceScratch.delta_tendsto_zero
#print axioms SourceFilterDeltaConvergenceScratch.delta_tendsto_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b41ca111ef36ac2dc96c67a2c19933e3ae1f332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
