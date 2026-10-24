# mdifferentiableWithinAt_iff_target_of_mem_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28b03dd1-d8ee-176b-09d1-6e18b2ba591a",
  "kind": "theorem",
  "lexical_name": "mdifferentiableWithinAt_iff_target_of_mem_source",
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
  "slug": "mdifferentiablewithinat-iff-target-of-mem-source--9304a631e52fbb0667bbcbc6",
  "source": {
    "blob": "4e587fe5b3410f6e5528e9b31a119d3c873f9680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 274,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9304a631e52fbb0667bbcbc6f0edc4634026689fd7c53600b896201071d3fbce",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b03dd1-d8ee-176b-09d1-6e18b2ba591a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableWithinAt_iff_target_of_mem_source
    [IsManifold I' 1 M'] {x : M} {y : M'} (hy : f x ∈ (chartAt H' y).source) :
    MDifferentiableWithinAt I I' f s x ↔
      ContinuousWithinAt f s x ∧ MDifferentiableWithinAt I 𝓘(𝕜, E') (extChartAt I' y ∘ f) s x := by
  simp_rw [MDifferentiableWithinAt]
  rw [differentiableWithinAt_localInvariantProp.liftPropWithinAt_indep_chart_target
      (chart_mem_maximalAtlas y) hy,
    and_congr_right]
  intro hf
  simp_rw [StructureGroupoid.liftPropWithinAt_self_target]
  simp_rw [((chartAt H' y).continuousAt hy).comp_continuousWithinAt hf]
  rw [← extChartAt_source I'] at hy
  simp_rw [(continuousAt_extChartAt' hy).comp_continuousWithinAt hf]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e587fe5b3410f6e5528e9b31a119d3c873f9680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
