# positiveHeightZeroCount_le_bothSignZeroCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc27d42c-edc9-b33a-1e02-fc13fcfd4338",
  "kind": "theorem",
  "lexical_name": "positiveHeightZeroCount_le_bothSignZeroCount",
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
  "slug": "positiveheightzerocount-le-bothsignzerocount--24cef5954b8032896b2750ac",
  "source": {
    "blob": "72ea0c7dcc6e92aa5b39b66a898b0c38f6201dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24cef5954b8032896b2750acba703b6266cc202b930da50be025d7cf2045e3b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc27d42c-edc9-b33a-1e02-fc13fcfd4338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveHeightZeroCount_le_bothSignZeroCount (σ T : ℝ) :
    positiveHeightZeroCount σ T ≤ bothSignZeroCount σ T := by
  classical
  unfold positiveHeightZeroCount bothSignZeroCount
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro z hz
    rcases Finset.mem_filter.mp hz with ⟨hpos, hre⟩
    exact Finset.mem_filter.mpr
      ⟨positiveHeightHead_subset_heightHead T hpos, hre⟩
  · intro z _ _
    exact Nat.zero_le (multiplicity z)

/-- Exact conclusion at 3/4 supplied by Guth--Maynard Theorem 1.2.
No constructor is supplied here: source-matching and external analytic proof
are required before this proposition can be used unconditionally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72ea0c7dcc6e92aa5b39b66a898b0c38f6201dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
