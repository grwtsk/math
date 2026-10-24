# li2_bounds_verified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddab6407-f166-dd09-f0d9-c27ebaff233b",
  "kind": "theorem",
  "lexical_name": "li2_bounds_verified",
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
  "slug": "li2-bounds-verified--1826ba9f5f2c00847c640e6a",
  "source": {
    "blob": "db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 856,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1826ba9f5f2c00847c640e6aa26a10510ed1e1a31564d4dfc4a64a4f8fc8c258",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddab6407-f166-dd09-f0d9-c27ebaff233b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 856–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li2_bounds_verified : (1039:ℚ)/1000 ≤ li2 ∧ li2 ≤ (106:ℚ)/100 := by
  constructor
  · -- Lower bound: li(2) ≥ 1.039
    rw [li2_decomposition]
    have h0 := g_integral_00_lower
    have h1 := g_integral_01_lower_numerical
    have h2 := g_integral_12_lower_numerical
    have h3 := g_mid_integral_lower
    have h4 := g_integral_45_lower_numerical
    have h5 := g_integral_56_lower_numerical
    have h6 := g_integral_67_lower
    -- Sum: 0 + 0.00008 + 0.0008 + 1.03775 + 0.0008 + 0.00008 + 0 = 1.03951 > 1.039
    have hsum : (∫ t in (0:ℝ)..(1/100000), g t) +
                (∫ t in (1/100000:ℝ)..(1/10000), g t) +
                (∫ t in (1/10000:ℝ)..(1/1000), g t) +
                (∫ t in (1/1000:ℝ)..(999/1000), g t) +
                (∫ t in (999/1000:ℝ)..(9999/10000), g t) +
                (∫ t in (9999/10000:ℝ)..(99999/100000), g t) +
                (∫ t in (99999/100000:ℝ)..1, g t) ≥
                0 + (8:ℚ)/100000 + (8:ℚ)/10000 + (103775:ℚ)/100000 +
                (8:ℚ)/10000 + (8:ℚ)/100000 + 0 := by linarith
    have hcalc : (0:ℝ) + ((8:ℚ)/100000 : ℝ) + ((8:ℚ)/10000 : ℝ) + ((103775:ℚ)/100000 : ℝ) +
                 ((8:ℚ)/10000 : ℝ) + ((8:ℚ)/100000 : ℝ) + 0 ≥ (1039:ℚ)/1000 := by norm_num
    linarith
  · -- Upper bound: li(2) ≤ 1.06
    rw [li2_decomposition]
    have h0 := g_integral_tail_upper (1/100000) (by norm_num) (by norm_num)
    have h1 := integral_upper_bound (1/100000) (1/10000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h2 := integral_upper_bound (1/10000) (1/1000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h3 := g_mid_integral_upper
    have h4 := integral_upper_bound (999/1000) (9999/10000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h5 := integral_upper_bound (9999/10000) (99999/100000) 2
      (by norm_num) (by norm_num) (by norm_num)
      (fun t ha hb => g_le_two t (by linarith) (by linarith))
    have h6 := g_integral_right_tail_upper (1/100000) (by norm_num) (by norm_num)
    simp only [one_div] at h0 h6
    have h6' : ∫ t in (99999/100000:ℝ)..1, g t ≤ 2 * (1/100000) := by
      convert h6 using 2 <;> ring
    have hsum : (∫ t in (0:ℝ)..(1/100000), g t) +
                (∫ t in (1/100000:ℝ)..(1/10000), g t) +
                (∫ t in (1/10000:ℝ)..(1/1000), g t) +
                (∫ t in (1/1000:ℝ)..(999/1000), g t) +
                (∫ t in (999/1000:ℝ)..(9999/10000), g t) +
                (∫ t in (9999/10000:ℝ)..(99999/100000), g t) +
                (∫ t in (99999/100000:ℝ)..1, g t) ≤
                2 * (1/100000) + 2 * (1/10000 - 1/100000) +
                2 * (1/1000 - 1/10000) + (104840:ℚ)/100000 +
                2 * (9999/10000 - 999/1000) + 2 * (99999/100000 - 9999/10000) +
                2 * (1/100000) := by
      linarith
    have hcalc : 2 * (1/100000 : ℝ) + 2 * (1/10000 - 1/100000) +
                 2 * (1/1000 - 1/10000) + ((104840:ℚ)/100000 : ℝ) +
                 2 * (9999/10000 - 999/1000) + 2 * (99999/100000 - 9999/10000) +
                 2 * (1/100000) ≤ (106:ℚ)/100 := by
      norm_num
    linarith

/-- Lower bound extraction from verified bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean#L856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
