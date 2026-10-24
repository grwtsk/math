# quarticGap_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ec12c4-0154-3a93-2148-fedb07765e5d",
  "kind": "lemma",
  "lexical_name": "quarticGap_lower",
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
  "slug": "quarticgap-lower--f633f0459d672fa63a4fa4d2",
  "source": {
    "blob": "e38d872d033f2c1f23f404a8ea99db338128d193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f633f0459d672fa63a4fa4d2db0f6b15334bc322c921c72ff1b50b8cbeb05ac6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ec12c4-0154-3a93-2148-fedb07765e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quarticGap_lower {x y : ℝ} (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1)
    (hy : |y| ≤ (3 / 4 : ℝ)) : (11 / 256 : ℝ) ≤ quarticGap x y := by
  have hx0 : 0 ≤ x := by linarith
  have hx2 : (1 / 4 : ℝ) ≤ x ^ 2 := by nlinarith [sq_nonneg (x - 1 / 2)]
  have hx3 : (1 / 8 : ℝ) ≤ x ^ 3 := by
    have h := mul_le_mul hx hx2 (by norm_num : (0 : ℝ) ≤ 1 / 4) hx0
    nlinarith
  have hbetween := mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hx1)
  have hxm : (x - 1) ^ 2 ≤ (1 / 4 : ℝ) := by nlinarith
  have hy2 : y ^ 2 ≤ (9 / 16 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg y) (by norm_num : (0 : ℝ) ≤ 3 / 4)
    nlinarith [sq_abs y]
  have hy4 : y ^ 4 ≤ (81 / 256 : ℝ) := by
    have h := mul_le_mul hy2 hy2 (sq_nonneg y) (by norm_num : (0 : ℝ) ≤ 9 / 16)
    nlinarith
  have hmix : (x - 1) ^ 2 * y ^ 2 ≤ (9 / 64 : ℝ) := by
    have h := mul_le_mul hxm hy2 (sq_nonneg y) (by norm_num : (0 : ℝ) ≤ 1 / 4)
    nlinarith
  dsimp only [quarticGap]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38d872d033f2c1f23f404a8ea99db338128d193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
