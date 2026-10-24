# evaluated_index_eq_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f31fea63-e22d-1b62-18df-7bbd47901b31",
  "kind": "theorem",
  "lexical_name": "evaluated_index_eq_count",
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
  "slug": "evaluated-index-eq-count--57c434fa3b98fbddf4de66e4",
  "source": {
    "blob": "cd83a5a324a709a4c1255b7e8b1f79b449fab9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57c434fa3b98fbddf4de66e40c6ab18d45825596502d2ba89e93500e2beadb05",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31fea63-e22d-1b62-18df-7bbd47901b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaluated_index_eq_count {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (ht : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT)
    (r : C(I,I)) (r0 : r 0 = 0) (r1 : r 1 = 1)
    (hparam : ∀ t, polygonMap n (PoleContourHomotopy.vertices v) t =
      (region T hT).curve (r t)) :
    PoleContourWinding.sourceIndex ht he = (MirrorCountingRectangle.count T : ℤ) := by
  let g := lift (sourceCurve T hT) (sourceCurve_nonzero T hT hb)
  have gc : g 0 = g 1 := lift_closed _ (sourceCurve_closed T hT) _
  have hloop : PoleContourWinding.sourceLift ht he = g.comp r := by
    ext t
    simp only [PoleContourWinding.source_value, PoleContourHomotopy.sourceLoop,
      PolygonFreeHomotopy.sourceMap, sourceCurve, Rectangle.image,
      ContinuousMap.comp_apply, g, lift, hparam t]
  unfold PoleContourWinding.sourceIndex
  rw [hloop]
  exact (LoopIndexOperations.winding_reparam g gc r r0 r1).trans (index_eq_count T hT hb)

/-- The computed integer is a count ONLY with the exact traversal and actual
source premises. No successful target-rectangle trace is asserted here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd83a5a324a709a4c1255b7e8b1f79b449fab9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
