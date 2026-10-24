# sourcedShortToCycles_range_eq_boundariesInCycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9940959d-14c5-dad2-4e4f-02e0c7fa3348",
  "kind": "theorem",
  "lexical_name": "sourcedShortToCycles_range_eq_boundariesInCycles",
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
  "slug": "sourcedshorttocycles-range-eq-boundariesincycles--8891469b70ce70e086936a42",
  "source": {
    "blob": "725364f5acc11389b94be1957b1ce53e810014bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 142,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8891469b70ce70e086936a42228d5965d531b797cb97e18397ad3636b54ec967",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9940959d-14c5-dad2-4e4f-02e0c7fa3348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcedShortToCycles_range_eq_boundariesInCycles (k : ℕ) :
    LinearMap.range (sourcedShortComplex k).moduleCatToCycles =
      OneBoundariesInCycles k := by
  ext z
  constructor
  · rintro ⟨n, hn⟩
    change (z : OneCellChains k) ∈ (differentialTwo k).range
    exact ⟨n, congrArg Subtype.val hn⟩
  · intro hz
    change (z : OneCellChains k) ∈ (differentialTwo k).range at hz
    rcases hz with ⟨n, hn⟩
    exact ⟨n, Subtype.ext hn⟩

/-- Pinned Mathlib identifies categorical homology with the quotient
of its genuine degree-one cycle kernel by range(S.moduleCatToCycles).
The source range equality above identifies this with the ACTUAL
parent CandidateFirstHomology quotient rather than a new quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `725364f5acc11389b94be1957b1ce53e810014bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
