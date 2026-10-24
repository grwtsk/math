# sourceIndex_aligned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5d475a0-b2e6-286b-b1e6-8534d07b6317",
  "kind": "theorem",
  "lexical_name": "sourceIndex_aligned",
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
  "slug": "sourceindex-aligned--dfbf3894ec2be9609282a948",
  "source": {
    "blob": "abdffa9d3ec64e1072c1d01603352aa0f0ac7377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfbf3894ec2be9609282a9486c2b8dee2cf2191588d584bfd02bd250e397e09a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5d475a0-b2e6-286b-b1e6-8534d07b6317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceIndex_aligned (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {p : List Plan} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : JetPoleContour.check n (RationalRectangleMesh.vertices l u a) p y = true) :
    JetPoleContour.sourceIndex ht =
      index ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
          differentiable_poleNormalizedZeta.continuous.continuousOn)
        ((RationalRectangleMesh.rectangle l u hx hy).image_closed _ _)
        (fun t => boundary_of_tube l u hx hy hm ht _
          ((RationalRectangleMesh.rectangle l u hx hy).curve_boundary t)) :=
  index_homotopy (JetPoleContour.source_closed ht) _ (JetPoleContour.source_nonzero ht) _
    (sourceHomotopy l u hx hy hm ht)

/-- Finite success is the only substantive premise. All generated analytic
suppliers and the inherited canonical argument principle retain their trust duties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetRectangleCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetRectangleCount.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdffa9d3ec64e1072c1d01603352aa0f0ac7377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
