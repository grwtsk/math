# actual_correlation_scaled_edge_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fe26e1f-ee89-f384-9d9d-bc410a2a641f",
  "kind": "theorem",
  "lexical_name": "actual_correlation_scaled_edge_tendsto",
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
  "slug": "actual-correlation-scaled-edge-tendsto--7ce7b26ff1152db04a121fde",
  "source": {
    "blob": "ac8b3928a55512885caca109aacd722833e91524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ce7b26ff1152db04a121fde446970b32fa6c7e67523437c6d416435b6e3f457",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe26e1f-ee89-f384-9d9d-bc410a2a641f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_scaled_edge_tendsto {u : ℝ} (hu : 0 ≤ u) :
    Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A *
      sourceCorrelation explicitSecondDerivative A (2 * A - u)) atTop
      (𝓝 (actualLeadingEdgeConvolution u)) := by
  have he : (fun A : ℝ => A ^ 9 * sourceNormalization A *
      sourceCorrelation explicitSecondDerivative A (2 * A - u)) =ᶠ[atTop]
      fun A : ℝ => ∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r) := by
    filter_upwards [eventually_ge_atTop (max 1 (u / 2))] with A hA
    have h1 : 1 ≤ A := (le_max_left _ _).trans hA
    have huA : u ≤ 2 * A := by have := (le_max_right (1 : ℝ) (u / 2)).trans hA; linarith
    rw [sourceCorrelation_upper_edge A u h1 hu huA]
    have hn : A ^ 9 * sourceNormalization A ≠ 0 := by
      have hZ := source_normalization_pos A h1
      have hp : 0 < A := by linarith
      positivity
    field_simp [(source_normalization_pos A h1).ne']
  exact (endpointProduct_integral_tendsto_leading hu).congr' he.symm

end
end FormalResearch.RiemannHypothesis.SourceActualEdgeLeadingLimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8b3928a55512885caca109aacd722833e91524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
