# boundaryIntegral_eq_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dcd6134-48bb-6fdd-9e39-5bb7e5bb374b",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_eq_inner",
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
  "slug": "boundaryintegral-eq-inner--67341dba9899e2b5ce1e2f80",
  "source": {
    "blob": "1c1c63377f168a60a35d80f5fc6e80de1fdf0230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67341dba9899e2b5ce1e2f80827f7463adc4445fded7e94b0216b5bf35027724",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dcd6134-48bb-6fdd-9e39-5bb7e5bb374b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_eq_inner
    (outer inner : OrderedRectangle)
    (h : Contains outer inner)
    (f : ℂ → ℂ)
    (hBottom : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left outer.bottom)
        (corner outer.right inner.bottom)))
    (hTop : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left inner.top)
        (corner outer.right outer.top)))
    (hLeft : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left inner.bottom)
        (corner inner.left inner.top)))
    (hRight : DifferentiableOn ℂ f
      (closedRectangle
        (corner inner.right inner.bottom)
        (corner outer.right inner.top))) :
    outer.boundaryIntegral f = inner.boundaryIntegral f := by
  exact rectangleBoundaryIntegral_eq_innerRectangle f
    h.left_lt.le inner.left_lt_right.le h.right_lt.le
    h.bottom_lt.le inner.bottom_lt_top.le h.top_lt.le
    hBottom hTop hLeft hRight

end OrderedRectangle

end

end Surface.Core.ComplexAnalysis.Scratch

#print axioms Surface.Core.ComplexAnalysis.Scratch.four_rectangles_boundary_sum
#print axioms Surface.Core.ComplexAnalysis.Scratch.rectangleBoundaryIntegral_eq_innerRectangle
#print axioms Surface.Core.ComplexAnalysis.Scratch.rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn
#print axioms Surface.Core.ComplexAnalysis.Scratch.OrderedRectangle.boundaryIntegral_eq_inner
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1c63377f168a60a35d80f5fc6e80de1fdf0230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
