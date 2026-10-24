# actual_integer_hull_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b81666b0-77da-cd08-15d3-196023552527",
  "kind": "theorem",
  "lexical_name": "actual_integer_hull_image",
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
  "slug": "actual-integer-hull-image--3038b6b6aacb2415046cfed6",
  "source": {
    "blob": "6976806d8dd451773cc5476d35ba7a628d7c621d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3038b6b6aacb2415046cfed6d67b7de918e4d045fba63bd9c6bad6e2fc159f7c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b81666b0-77da-cd08-15d3-196023552527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_integer_hull_image (A : ℝ) (hA : 1 ≤ A) :
    logEquiv '' (positiveIntegerHull A hA : Set PositiveL2) =
      (logIntegerHull A hA : Set LogL2) := by
  change logEquiv '' ((Submodule.span ℂ (range (actualIntegerOrbit A hA))).topologicalClosure :
    Set PositiveL2) = _
  rw [actual_integer_closure_eq]
  change logEquiv '' closure (Submodule.span ℂ (range (integerOrbit A hA)) : Set PositiveL2) =
    closure (Submodule.span ℂ (range (logIntegerOrbit A hA)) : Set LogL2)
  rw [←LinearIsometryEquiv.coe_toHomeomorph,Homeomorph.image_closure]
  change closure (logEquiv '' (Submodule.span ℂ (range (integerOrbit A hA)) : Set PositiveL2)) = _
  rw [logEquiv_span_image]
  have hr : logEquiv '' range (integerOrbit A hA) = range (logIntegerOrbit A hA) := by
    rw [←range_comp]
    apply congrArg range
    funext n
    exact logMap_normalized_integerOrbit A hA n
  rw [hr]

/-- The precise indicator membership question is transported, never assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant3f37b0f1c4c1cf2ca676a2bdf8b862004f6effde4c9b019717699e87de4e62a6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6976806d8dd451773cc5476d35ba7a628d7c621d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
