# canonicalRealAngularAddress_mem_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f074a0a2-e5dd-6ac4-7f05-8a72cc70ce09",
  "kind": "theorem",
  "lexical_name": "canonicalRealAngularAddress_mem_Ico",
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
  "slug": "canonicalrealangularaddress-mem-ico--54b207c299c616282c25f07e",
  "source": {
    "blob": "ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 259,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b207c299c616282c25f07ec1d70a496efcf97a76efb75630a96370f204acc1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f074a0a2-e5dd-6ac4-7f05-8a72cc70ce09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalRealAngularAddress_mem_Ico (k : ℕ)
    (p : BoundaryPoint k) :
    sourceRealAngularAddress k (canonicalBoundaryPoint k p) ∈
      Set.Ico 0 (angularPeriod k) := by
  let q := canonicalBoundaryPoint k p
  change sourceRealAngularAddress k q ∈
    Set.Ico 0 (angularPeriod k)
  have hord :
      directedSideOrdinal k q.1 < 4 * (k + 2) :=
    directedSideOrdinal_bound k q.1
  have hord_succ :
      directedSideOrdinal k q.1 + 1 ≤ 4 * (k + 2) :=
    Nat.succ_le_iff.mpr hord
  have ht0 : 0 ≤ (q.2 : ℝ) := q.2.property.1
  have ht1 : (q.2 : ℝ) < 1 := by
    simpa [q] using canonicalBoundaryPoint_parameter_lt_one k p
  have hs :
      (directedSideOrdinal k q.1 : ℝ) + 1 ≤ angularPeriod k := by
    unfold angularPeriod
    exact_mod_cast hord_succ
  constructor
  · unfold sourceRealAngularAddress
    positivity
  · unfold sourceRealAngularAddress
    linarith

/-- Two half-open source interval representatives with the same real
address are literally the same exact source point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
