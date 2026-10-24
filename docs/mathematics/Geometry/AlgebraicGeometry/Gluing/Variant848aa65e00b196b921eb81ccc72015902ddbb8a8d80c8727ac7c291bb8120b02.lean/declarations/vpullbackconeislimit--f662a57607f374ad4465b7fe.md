# vPullbackConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6c1a62cd7e3e18e34b3ba21e4b69c1a1647aa5d2a2438ab125e1fc827bf4903",
  "kind": "def",
  "lexical_name": "vPullbackConeIsLimit",
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
  "slug": "vpullbackconeislimit--f662a57607f374ad4465b7fe",
  "source": {
    "blob": "3073bc48c7f9bb8329cbd87b2290f3aa40e33f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 722,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f662a57607f374ad4465b7feca2424ac7ddb1c39735f9a1c53cef5b9288e6041",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6c1a62cd7e3e18e34b3ba21e4b69c1a1647aa5d2a2438ab125e1fc827bf4903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vPullbackConeIsLimit (i j : D.J) : IsLimit (𝖣.vPullbackCone i j) :=
  𝖣.vPullbackConeIsLimitOfMap forgetToSheafedSpace i j
    (D.toSheafedSpaceGlueData.vPullbackConeIsLimit _ _)
#align algebraic_geometry.LocallyRingedSpace.glue_data.V_pullback_cone_is_limit AlgebraicGeometry.LocallyRingedSpace.GlueData.vPullbackConeIsLimit

end GlueData

end LocallyRingedSpace

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3073bc48c7f9bb8329cbd87b2290f3aa40e33f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
