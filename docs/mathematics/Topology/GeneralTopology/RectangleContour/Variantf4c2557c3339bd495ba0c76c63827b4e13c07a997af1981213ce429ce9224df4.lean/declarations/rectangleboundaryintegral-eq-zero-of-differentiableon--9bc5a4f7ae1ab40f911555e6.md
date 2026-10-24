# rectangleBoundaryIntegral_eq_zero_of_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a911b7aa-8c06-e363-f0cf-be7f7a8e9738",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_eq_zero_of_differentiableOn",
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
  "slug": "rectangleboundaryintegral-eq-zero-of-differentiableon--9bc5a4f7ae1ab40f911555e6",
  "source": {
    "blob": "0a1d2901945e8b38eeccfd6b9a70275cfc48a5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc5a4f7ae1ab40f911555e60c81ea3beb368a23856c45d1ec7e5d71aee6be68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a911b7aa-8c06-e363-f0cf-be7f7a8e9738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_eq_zero_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_differentiableOn f z w hf

/-- The honest pole-free vertical-line shift: the change between the two
vertical edges equals the difference of the horizontal edges. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a1d2901945e8b38eeccfd6b9a70275cfc48a5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
