# oneBoundaries_singleton_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5740e6dc-f904-0aae-9fe4-164a98b3d32c",
  "kind": "theorem",
  "lexical_name": "oneBoundaries_singleton_zero",
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
  "slug": "oneboundaries-singleton-zero--7519545734a9a29252e10e72",
  "source": {
    "blob": "ec4976503fbe649a34e511eb00eaed344008fc96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 207,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7519545734a9a29252e10e727e3f69467cae83c73cad8edf204c50bb6847b493",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5740e6dc-f904-0aae-9fe4-164a98b3d32c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneBoundaries_singleton_zero (k : ℕ) :
    OneBoundaries k = {0} := by
  ext v
  constructor
  · rintro ⟨n, hn⟩
    have hv : v = 0 := by
      calc
        v = differentialTwo k n := hn.symm
        _ = 0 := differentialTwo_apply_zero k n
    simpa using hv
  · intro hv
    have hzero : v = 0 := by simpa using hv
    subst v
    exact ⟨0, differentialTwo_apply_zero k 0⟩

/-- EXACT number of source-labelled one-cells, namely 2*g with
g=k+2. This is a finite counting theorem, not yet a CW isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec4976503fbe649a34e511eb00eaed344008fc96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
