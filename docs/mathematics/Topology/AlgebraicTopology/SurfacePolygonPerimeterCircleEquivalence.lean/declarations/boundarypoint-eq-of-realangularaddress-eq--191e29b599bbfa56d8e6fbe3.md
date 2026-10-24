# boundaryPoint_eq_of_realAngularAddress_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05d81f83-723a-a0a1-44b0-e73981755e23",
  "kind": "theorem",
  "lexical_name": "boundaryPoint_eq_of_realAngularAddress_eq",
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
  "slug": "boundarypoint-eq-of-realangularaddress-eq--191e29b599bbfa56d8e6fbe3",
  "source": {
    "blob": "ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 287,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:191e29b599bbfa56d8e6fbe303331d205cce65d6b04dbf12c225af7f84ca57a3",
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

Occurrence: `result:05d81f83-723a-a0a1-44b0-e73981755e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPoint_eq_of_realAngularAddress_eq (k : ℕ)
    {p q : BoundaryPoint k}
    (hp : (p.2 : ℝ) < 1)
    (hq : (q.2 : ℝ) < 1)
    (haddr :
      sourceRealAngularAddress k p =
        sourceRealAngularAddress k q) :
    p = q := by
  have hp0 : 0 ≤ (p.2 : ℝ) := p.2.property.1
  have hq0 : 0 ≤ (q.2 : ℝ) := q.2.property.1
  have hpq :
      directedSideOrdinal k p.1 ≤ directedSideOrdinal k q.1 := by
    by_contra hnot
    have hlt :
        directedSideOrdinal k q.1 < directedSideOrdinal k p.1 :=
      Nat.lt_of_not_ge hnot
    have hsucc :
        directedSideOrdinal k q.1 + 1 ≤
          directedSideOrdinal k p.1 :=
      Nat.succ_le_iff.mpr hlt
    have hcast :
        (directedSideOrdinal k q.1 : ℝ) + 1 ≤
          (directedSideOrdinal k p.1 : ℝ) := by
      exact_mod_cast hsucc
    unfold sourceRealAngularAddress at haddr
    linarith
  have hqp :
      directedSideOrdinal k q.1 ≤ directedSideOrdinal k p.1 := by
    by_contra hnot
    have hlt :
        directedSideOrdinal k p.1 < directedSideOrdinal k q.1 :=
      Nat.lt_of_not_ge hnot
    have hsucc :
        directedSideOrdinal k p.1 + 1 ≤
          directedSideOrdinal k q.1 :=
      Nat.succ_le_iff.mpr hlt
    have hcast :
        (directedSideOrdinal k p.1 : ℝ) + 1 ≤
          (directedSideOrdinal k q.1 : ℝ) := by
      exact_mod_cast hsucc
    unfold sourceRealAngularAddress at haddr
    linarith
  have hord :
      directedSideOrdinal k p.1 = directedSideOrdinal k q.1 :=
    Nat.le_antisymm hpq hqp
  have hc : p.1 = q.1 :=
    directedSideOrdinal_injective k hord
  have htval : (p.2 : ℝ) = (q.2 : ℝ) := by
    unfold sourceRealAngularAddress at haddr
    rw [hord] at haddr
    linarith
  have ht : p.2 = q.2 := Subtype.ext htval
  exact Prod.ext hc ht

/-- Every real representative in `[0,4g)` decomposes into one exact
source directed side and a half-open interval parameter. Integer floor
selects the side; fractional part selects the parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
