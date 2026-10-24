# tendsto_measure_thickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8244a07b-9c2f-5b45-1546-100d0c757451",
  "kind": "theorem",
  "lexical_name": "tendsto_measure_thickening",
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
  "slug": "tendsto-measure-thickening--024722d80f05b3bd6c04b118",
  "source": {
    "blob": "3e23632cc068a75fc3d0abe181b9a848aa899a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:024722d80f05b3bd6c04b11894850c0a25bfaaea3aa4b7d6fcf91f2554fbfbf2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8244a07b-9c2f-5b45-1546-100d0c757451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_measure_thickening {μ : Measure α} {s : Set α}
    (hs : ∃ R > 0, μ (thickening R s) ≠ ∞) :
    Tendsto (fun r => μ (thickening r s)) (𝓝[>] 0) (𝓝 (μ (closure s))) := by
  rw [closure_eq_iInter_thickening]
  exact tendsto_measure_biInter_gt (fun r _ => isOpen_thickening.nullMeasurableSet)
      (fun i j _ ij => thickening_mono ij _) hs

/-- If a closed set has a thickening with finite measure, then the measure of its
`r`-thickenings converge to its measure as `r > 0` tends to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant83d8bc4fd4172624205283b7d0d9ca1d7eb20bde97ecde5acc3bd756a5222e86.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e23632cc068a75fc3d0abe181b9a848aa899a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
