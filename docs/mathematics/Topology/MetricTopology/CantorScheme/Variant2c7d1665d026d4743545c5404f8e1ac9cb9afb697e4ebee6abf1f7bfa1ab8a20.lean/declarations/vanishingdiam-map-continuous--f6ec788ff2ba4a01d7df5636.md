# VanishingDiam.map_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3ce8ad-52d5-8b60-98bc-5254281b2170",
  "kind": "theorem",
  "lexical_name": "VanishingDiam.map_continuous",
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
  "slug": "vanishingdiam-map-continuous--f6ec788ff2ba4a01d7df5636",
  "source": {
    "blob": "2c9202a0abd41a545c76cf54f32c1b50fcb5ed5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 147,
    "path": "GRWTSK/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ec788ff2ba4a01d7df5636cb02d7f9deee91130af4cbc8fe7d567937a07bdd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3ce8ad-52d5-8b60-98bc-5254281b2170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem VanishingDiam.map_continuous [TopologicalSpace β] [DiscreteTopology β]
    (hA : VanishingDiam A) : Continuous (inducedMap A).2 := by
  rw [Metric.continuous_iff']
  rintro x ε ε_pos
  obtain ⟨n, hn⟩ := hA.dist_lt _ ε_pos x
  rw [_root_.eventually_nhds_iff]
  refine ⟨(↑)⁻¹' cylinder x.1 n, ?_, ?_, by simp⟩
  · rintro y hyx
    rw [mem_preimage, Subtype.coe_mk, cylinder_eq_res, mem_ofPred] at hyx
    apply hn
    · rw [← hyx]
      apply map_mem
    apply map_mem
  apply continuous_subtype_val.isOpen_preimage
  apply isOpen_cylinder

/-- A scheme on a complete space with vanishing diameter
such that each set contains the closure of its children
induces a total map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CantorScheme/Variant2c7d1665d026d4743545c5404f8e1ac9cb9afb697e4ebee6abf1f7bfa1ab8a20.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9202a0abd41a545c76cf54f32c1b50fcb5ed5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
