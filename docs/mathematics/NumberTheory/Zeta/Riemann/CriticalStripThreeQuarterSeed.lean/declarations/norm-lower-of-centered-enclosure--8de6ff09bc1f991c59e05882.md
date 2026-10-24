# norm_lower_of_centered_enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1434c447-de7d-4336-f9bf-876d1d5edd1a",
  "kind": "theorem",
  "lexical_name": "norm_lower_of_centered_enclosure",
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
  "slug": "norm-lower-of-centered-enclosure--8de6ff09bc1f991c59e05882",
  "source": {
    "blob": "e38d872d033f2c1f23f404a8ea99db338128d193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de6ff09bc1f991c59e058828bf90b271c8d0ad7209831e5670a138ca56766f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1434c447-de7d-4336-f9bf-876d1d5edd1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_lower_of_centered_enclosure {s v : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ))
    (he : ‖v - (s + 1) / 2‖ ≤ ‖s‖ * ‖s - 1‖ / (2 * s.re)) :
    (1 / 256 : ℝ) ≤ ‖v‖ := by
  have hs : 0 < s.re := by linarith
  let L : ℝ := s.re * ‖s + 1‖
  let R : ℝ := ‖s‖ * ‖s - 1‖
  have hL : 0 ≤ L := mul_nonneg hs.le (norm_nonneg _)
  have hR : 0 ≤ R := mul_nonneg (norm_nonneg _) (norm_nonneg _)
  have hquad : (11 / 256 : ℝ) ≤ L ^ 2 - R ^ 2 := by
    dsimp only [L, R]
    rw [quarticGap_norm_identity]
    exact quarticGap_lower hx hx1 hy
  have hgeo := norm_geometry hx hx1 hy
  have hLu : L ≤ (9 / 4 : ℝ) := by
    have h := mul_le_mul hx1 hgeo.2.2 (norm_nonneg _) zero_le_one
    dsimp only [L]
    nlinarith
  have hRu : R ≤ (5 / 4 : ℝ) := by
    have h := mul_le_mul hgeo.1 hgeo.2.1 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5 / 4)
    dsimp only [R]
    nlinarith
  have hsum : L + R ≤ (7 / 2 : ℝ) := by linarith
  have hstrict : R < L := (sq_lt_sq₀ hR hL).mp (by linarith)
  have hgap : (1 / 128 : ℝ) ≤ L - R := by
    by_contra hnot
    have hp := mul_le_mul_of_nonneg_right hsum (sub_nonneg.mpr hstrict.le)
    nlinarith [lt_of_not_ge hnot]
  have hscaled := scaled_reference_inequality hs he
  have hupper : 2 * s.re * ‖v‖ ≤ 2 * ‖v‖ := by
    have h := mul_le_mul_of_nonneg_right hx1 (norm_nonneg v)
    nlinarith
  change L - R ≤ 2 * s.re * ‖v‖ at hscaled
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38d872d033f2c1f23f404a8ea99db338128d193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
