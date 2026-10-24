# actual_normalizedTest_scaled_edge_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8094d17b-b026-5a4d-36da-b4b3442f4cc0",
  "kind": "theorem",
  "lexical_name": "actual_normalizedTest_scaled_edge_tendsto",
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
  "slug": "actual-normalizedtest-scaled-edge-tendsto--2a9777205f5966e3765dc427",
  "source": {
    "blob": "ac8b3928a55512885caca109aacd722833e91524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a9777205f5966e3765dc427cd7766ae97927d7e3d2d9e596d6205ae904eae57",
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

Occurrence: `result:8094d17b-b026-5a4d-36da-b4b3442f4cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalizedTest_scaled_edge_tendsto {u : ℝ} (hu : 0 ≤ u) :
    Tendsto (fun A : ℝ =>
      (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        normalizedTest explicitSecondDerivative A (A - u)) atTop
      (𝓝 (actualLeadingEndpointPolynomial u)) := by
  have he : (fun A : ℝ =>
      (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        normalizedTest explicitSecondDerivative A (A - u)) =ᶠ[atTop]
      fun A : ℝ => endpointPolynomial A u := by
    filter_upwards [eventually_ge_atTop (max 1 (u / 2))] with A hA
    have h1 : 1 ≤ A := (le_max_left _ _).trans hA
    have huA : u ≤ 2 * A := by have := (le_max_right (1 : ℝ) (u / 2)).trans hA; linarith
    rw [normalizedTest_endpoint A u h1 hu huA]
    have hn : A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) ≠ 0 := by
      have hZ := source_normalization_pos A h1
      have hp : 0 < A := by linarith
      positivity
    field_simp [Real.sqrt_ne_zero'.mpr (source_normalization_pos A h1)]
  exact (endpointPolynomial_tendsto_leading u).congr' he.symm

/-- The genuine finite leading overlap, retaining its signed product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant6ec8e13c88bfbef85fc5f7bb67c9e91c5827715b744bbb774def602ff917298e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8b3928a55512885caca109aacd722833e91524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
