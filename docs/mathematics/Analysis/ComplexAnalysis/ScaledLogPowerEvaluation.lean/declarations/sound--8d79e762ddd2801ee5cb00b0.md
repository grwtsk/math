# sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9589600f-f36f-56fb-0f0c-ee820511ea70",
  "kind": "theorem",
  "lexical_name": "sound",
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
  "slug": "sound--8d79e762ddd2801ee5cb00b0",
  "source": {
    "blob": "5dd32cf82f5897f688145089415cc748f23651b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/Analysis/Complex/ScaledLogPowerEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d79e762ddd2801ee5cb00b066861175046eaf8b86bf4f85c1e728a7fd7f6fb9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9589600f-f36f-56fb-0f0c-ee820511ea70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sound (p : PowerInput t z) : ‖logPower t z - p.value‖ ≤ p.error := by
  have hr : ‖(z * ((p.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.squarings‖ ≤ p.radius := by
    rw [norm_div, norm_mul, norm_pow, Complex.norm_ofNat,
      Complex.norm_real, Real.norm_eq_abs]
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right (norm_le_rectNorm z) (abs_nonneg _)) (by positivity)
  have hd0 : ‖z * (Real.log t : ℂ) - z * ((p.logarithm.center : ℝ) : ℂ)‖ ≤
      rectNorm z * (p.logarithm.error : ℝ) := by
    rw [← mul_sub, norm_mul, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul (norm_le_rectNorm z) p.logarithm.sound
      (abs_nonneg _) (rectNorm_nonneg z)
  have hd : ‖(z * (Real.log t : ℂ)) / (2 : ℂ) ^ p.squarings -
      (z * ((p.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.squarings‖ ≤ p.displacement := by
    rw [← sub_div, norm_div, norm_pow, Complex.norm_ofNat]
    exact div_le_div_of_nonneg_right hd0 (by positivity)
  exact scaled_exp_sound (z * (Real.log t : ℂ)) (z * ((p.logarithm.center : ℝ) : ℂ))
    p.squarings p.degree p.radius p.displacement hr
    (degree_guard_of_unit_radius p.radius p.radius_guard p.degree p.degree_pos)
    hd p.displacement_guard

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ScaledLogPowerEvaluation.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd32cf82f5897f688145089415cc748f23651b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
