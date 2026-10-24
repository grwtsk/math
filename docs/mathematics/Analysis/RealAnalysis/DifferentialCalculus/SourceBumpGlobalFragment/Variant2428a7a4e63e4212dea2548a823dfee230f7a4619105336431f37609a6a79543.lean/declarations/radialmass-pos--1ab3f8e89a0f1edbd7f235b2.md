# radialMass_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "026e5abf5697fd518a3c68d5b4db0711d1eae438",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acec641b-8a15-1161-5bdb-c8cdb96d0593",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aacf4f89-98f5-499a-0885-671ce0f48018",
  "kind": "theorem",
  "lexical_name": "radialMass_pos",
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
  "slug": "radialmass-pos--1ab3f8e89a0f1edbd7f235b2",
  "source": {
    "blob": "026e5abf5697fd518a3c68d5b4db0711d1eae438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ab3f8e89a0f1edbd7f235b24d9552c21d9e8c11aa112f14588bb60c50d47eae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aacf4f89-98f5-499a-0885-671ce0f48018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radialMass_pos (z : ℂ) : 0 < radialMass z := by
  obtain ⟨ε, hε, hεn⟩ := Metric.eventually_nhds_iff.mp
    (radialProfile_eventually_ne_zero z)
  let r : ℝ := min ε 1 / 2
  have hr : 0 < r := half_pos (lt_min hε (by norm_num))
  have hrε : r < ε := by dsimp [r]; linarith [min_le_left ε 1]
  have hr1 : r ≤ 1 := by dsimp [r]; linarith [min_le_right ε 1]
  have hnr : radialProfile z r ≠ 0 := hεn (by simpa [Real.dist_eq, abs_of_pos hr] using hrε)
  apply intervalIntegral.integral_pos (by norm_num)
    ((continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2)).continuousOn
  · intro t ht
    exact mul_nonneg (pow_nonneg ht.1.le 10) (sq_nonneg _)
  · exact ⟨r, ⟨hr.le, hr1⟩, mul_pos (pow_pos hr 10)
      (sq_pos_of_pos (norm_pos_iff.mpr hnr))⟩

/-- At a zero of the source transform, the exact regular radial energy identity holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `026e5abf5697fd518a3c68d5b4db0711d1eae438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
