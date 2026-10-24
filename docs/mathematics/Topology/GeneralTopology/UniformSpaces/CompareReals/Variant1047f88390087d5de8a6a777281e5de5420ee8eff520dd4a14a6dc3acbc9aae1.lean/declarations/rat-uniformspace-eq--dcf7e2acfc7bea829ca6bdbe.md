# Rat.uniformSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45086353-fd18-86a2-0ac0-629556ad06f1",
  "kind": "theorem",
  "lexical_name": "Rat.uniformSpace_eq",
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
  "slug": "rat-uniformspace-eq--dcf7e2acfc7bea829ca6bdbe",
  "source": {
    "blob": "24325b65c50b40b856ef3f846b1f64793f9c0f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcf7e2acfc7bea829ca6bdbe5bc9cfaf3d2cc98fa9e1df8565a2ab920db893e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45086353-fd18-86a2-0ac0-629556ad06f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rat.uniformSpace_eq :
    (AbsoluteValue.abs : AbsoluteValue ℚ ℚ).uniformSpace = PseudoMetricSpace.toUniformSpace := by
  ext s
  rw [(AbsoluteValue.hasBasis_uniformity _).mem_iff, Metric.uniformity_basis_dist_rat.mem_iff]
  simp only [Rat.dist_eq, AbsoluteValue.abs_apply, ← Rat.cast_sub, ← Rat.cast_abs, Rat.cast_lt,
    abs_sub_comm]

/-- Cauchy reals packaged as a completion of ℚ using the absolute value route. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24325b65c50b40b856ef3f846b1f64793f9c0f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
