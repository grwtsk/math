# exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22323489-dbed-a17a-031b-40900c1ed4e3",
  "kind": "theorem",
  "lexical_name": "exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico",
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
  "slug": "exists-boundarypoint-realangularaddress-eq-of-mem-ico--512b03be9130ae72223fc70a",
  "source": {
    "blob": "ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 344,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:512b03be9130ae72223fc70a0de62e293270a57c7389781533e50e521689801c",
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

Occurrence: `result:22323489-dbed-a17a-031b-40900c1ed4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico
    (k : ℕ) {x : ℝ}
    (hx : x ∈ Set.Ico 0 (angularPeriod k)) :
    ∃ p : BoundaryPoint k,
      (p.2 : ℝ) < 1 ∧
        sourceRealAngularAddress k p = x := by
  let z : ℤ := ⌊x⌋
  have hz_nonneg : 0 ≤ z := by
    dsimp [z]
    exact Int.floor_nonneg.mpr hx.1
  have hz_le : (z : ℝ) ≤ x := by
    dsimp [z]
    exact Int.floor_le x
  have hz_lt_period : (z : ℝ) < angularPeriod k :=
    lt_of_le_of_lt hz_le hx.2
  have hz_toNat : (z.toNat : ℤ) = z :=
    Int.toNat_of_nonneg hz_nonneg
  have hz_toNat_real : (z.toNat : ℝ) = (z : ℝ) := by
    exact_mod_cast hz_toNat
  have hn_lt_real :
      (z.toNat : ℝ) < ((4 * (k + 2) : ℕ) : ℝ) := by
    rw [hz_toNat_real]
    simpa [angularPeriod] using hz_lt_period
  have hn_lt : z.toNat < 4 * (k + 2) := by
    exact_mod_cast hn_lt_real
  let n : Fin (4 * (k + 2)) := ⟨z.toNat, hn_lt⟩
  let t : unitInterval := ⟨Int.fract x, unitInterval.fract_mem x⟩
  refine ⟨(cornerOfOrdinal k n, t), ?_, ?_⟩
  · exact Int.fract_lt_one x
  · unfold sourceRealAngularAddress
    rw [directedSideOrdinal_cornerOfOrdinal]
    dsimp [n, t]
    rw [hz_toNat_real]
    dsimp [z]
    simp [add_comm]

/-- Global injectivity of the descended perimeter angle. Equality in
the additive circle is first reduced to equality in its half-open
fundamental domain and then to equality of exact source points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
