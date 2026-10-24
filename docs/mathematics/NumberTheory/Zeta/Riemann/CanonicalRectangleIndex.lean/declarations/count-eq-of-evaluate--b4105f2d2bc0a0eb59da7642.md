# count_eq_of_evaluate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe5e5f88-4aa8-cb89-060f-d1fa77e6bf01",
  "kind": "theorem",
  "lexical_name": "count_eq_of_evaluate",
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
  "slug": "count-eq-of-evaluate--b4105f2d2bc0a0eb59da7642",
  "source": {
    "blob": "cd83a5a324a709a4c1255b7e8b1f79b449fab9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4105f2d2bc0a0eb59da7642eb40fba81e4052d3fd81a8387c5e1c1bf8ea74ee",
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

Occurrence: `result:fe5e5f88-4aa8-cb89-060f-d1fa77e6bf01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_eq_of_evaluate {n : ℕ} {v y : List Coordinates} {d : List EdgeData} {k : ℤ}
    (he : Enclosures n d) (hk : PoleContourPolygonIndex.evaluate n v d y = some k)
    (T : ℝ) (hT : 0 < T+1/4) (hb : BoundaryNonzero T hT)
    (r : C(I,I)) (r0 : r 0 = 0) (r1 : r 1 = 1)
    (hparam : ∀ t, polygonMap n (PoleContourHomotopy.vertices v) t =
      (region T hT).curve (r t)) : (MirrorCountingRectangle.count T : ℤ) = k := by
  have ht := ((PoleContourPolygonIndex.evaluate_eq_some_iff _ _ _ _ _).mp hk).1
  exact (evaluated_index_eq_count ht he T hT hb r r0 r1 hparam).symm.trans
    (PoleContourPolygonIndex.evaluate_sound ht he hk)

/-- Conditional numerical completion at the unchanged height fifteen. NONE of
its boundary, enclosure, evaluation or traversal premises is asserted here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd83a5a324a709a4c1255b7e8b1f79b449fab9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
