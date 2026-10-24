# radialSourceToAdjunction_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4ef7b24-b96a-d169-dc11-f753987c182a",
  "kind": "theorem",
  "lexical_name": "radialSourceToAdjunction_zero",
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
  "slug": "radialsourcetoadjunction-zero--7792d9df303fcbcbf9b03766",
  "source": {
    "blob": "f1627e0134c5211e63c626a366b5ba373fe66994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7792d9df303fcbcbf9b03766840c1eb173bfe3879cd3d2211703e44a83ba9644",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ef7b24-b96a-d169-dc11-f753987c182a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radialSourceToAdjunction_zero (k : ℕ)
    (p q : BoundaryPoint k) :
    radialSourceToAdjunction k (p, 0) =
      radialSourceToAdjunction k (q, 0) := by
  unfold radialSourceToAdjunction
  exact congrArg
    (fun z : CircleCone.Cone (UnpairedPerimeter k) =>
      originalDiskMap k (perimeterConeDiskHomeomorph k z))
    (Quotient.sound (Or.inr ⟨rfl, rfl⟩))

/-- Every authentic perimeter seam is respected at EVERY radius,
before the outer opposite-side identifications are considered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1627e0134c5211e63c626a366b5ba373fe66994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
