# actualLeadingEdgeProduct_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:888c7c8d-f7f9-6f6e-c724-676df1b050b5",
  "kind": "theorem",
  "lexical_name": "actualLeadingEdgeProduct_intervalIntegrable",
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
  "slug": "actualleadingedgeproduct-intervalintegrable--51bc685dbc8427b73ffdf9bd",
  "source": {
    "blob": "c4c98a5a390f21e53f127ed89007ddc84d4a4760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant742ec45e3c7082efb0488fc6d13e432b62d1816e86096ed71ab793e37883cc26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51bc685dbc8427b73ffdf9bde26a62dfd2daba3edabdc1c2ab8896a7c7bfbcf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant742ec45e3c7082efb0488fc6d13e432b62d1816e86096ed71ab793e37883cc26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:888c7c8d-f7f9-6f6e-c724-676df1b050b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingEdgeProduct_intervalIntegrable (u : ℝ) :
    IntervalIntegrable (fun r : ℝ =>
      actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r)) volume 0 u := by
  exact (by unfold actualLeadingEndpointPolynomial; fun_prop : Continuous _).intervalIntegrable _ _

/-- The actual endpoint-product integrals converge on every fixed closed overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant742ec45e3c7082efb0488fc6d13e432b62d1816e86096ed71ab793e37883cc26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEdgeLeadingLimit/Variant742ec45e3c7082efb0488fc6d13e432b62d1816e86096ed71ab793e37883cc26.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c98a5a390f21e53f127ed89007ddc84d4a4760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
