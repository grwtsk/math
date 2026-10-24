# rectangleBoundaryIntegral_eq_zero_of_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efa04f7499f2853b07cf38f04180ffd014ebbec4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62be2078-16d6-0635-3764-62c1ef98ae43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26e4b8d7-b065-7a8d-13e2-5820ceb3eeca",
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
  "slug": "rectangleboundaryintegral-eq-zero-of-differentiableon--9563858332347444c2c4f081",
  "source": {
    "blob": "efa04f7499f2853b07cf38f04180ffd014ebbec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9563858332347444c2c4f0812bf77d2b67a57be96504da36af1dc1186f87c7a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26e4b8d7-b065-7a8d-13e2-5820ceb3eeca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_eq_zero_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_differentiableOn f z w hf

/-- The honest pole-free vertical-line shift: the change between the two
vertical edges equals the difference of the horizontal edges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efa04f7499f2853b07cf38f04180ffd014ebbec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
