# fiveHeight_coordinate_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a7cebf5-8d0f-f257-9216-1780130d027c",
  "kind": "lemma",
  "lexical_name": "fiveHeight_coordinate_squares",
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
  "slug": "fiveheight-coordinate-squares--d7acf7ec26e9d4a26abff888",
  "source": {
    "blob": "97dc2829e0bfede0def62dbb44e315d40fadf53e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7acf7ec26e9d4a26abff888c0d3eb41c2e00c7cf1ba0f2a1207dedf1e26c937",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a7cebf5-8d0f-f257-9216-1780130d027c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fiveHeight_coordinate_squares {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (5 : ℝ)) :
    s.re ^ 2 ≤ 1 ∧ (s.re - 1) ^ 2 ≤ 1 / 4 ∧ s.im ^ 2 ≤ 25 := by
  have hx0 : 0 ≤ s.re := by linarith
  have hx2 : s.re ^ 2 ≤ 1 := by nlinarith [mul_le_mul hx1 hx1 hx0 zero_le_one]
  have hxa : |s.re - 1| ≤ (1 / 2 : ℝ) := by
    rw [abs_of_nonpos (sub_nonpos.mpr hx1)]; linarith
  have hxm2 : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by
    have h := mul_le_mul hxa hxa (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)
    nlinarith [sq_abs (s.re - 1)]
  have hy2 : s.im ^ 2 ≤ (25 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 5)
    nlinarith [sq_abs s.im]
  exact ⟨hx2, hxm2, hy2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97dc2829e0bfede0def62dbb44e315d40fadf53e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
