# sixHeight_multiplier_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dcbbc29-daad-4039-1052-59b5e79e5c30",
  "kind": "lemma",
  "lexical_name": "sixHeight_multiplier_bound",
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
  "slug": "sixheight-multiplier-bound--ec70c33be7e677d4015c6a7a",
  "source": {
    "blob": "c62cc54111a3e2b186f4a43d34da768bfdd4807a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec70c33be7e677d4015c6a7a1821351e9effc4684f065daed7558238b26b4eb9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dcbbc29-daad-4039-1052-59b5e79e5c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sixHeight_multiplier_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖multiplier s‖ ≤ (481 / 144 : ℝ) * referenceFactors s := by
  have hpair : ‖s + 1‖ * ‖s + 3‖ ≤
      (13 / 18 : ℝ) * (‖s + 5‖ * ‖s + 4‖) := by
    have h := mul_le_mul (sixHeight_shift_one_five hx hx1 hy)
      (sixHeight_shift_three_four hx hx1 hy) (norm_nonneg _)
      (mul_nonneg (by norm_num) (norm_nonneg _))
    convert h using 1 <;> ring
  have hfour : (‖s‖ * ‖s - 1‖) * (‖s + 1‖ * ‖s + 3‖) ≤
      (481 / 18 : ℝ) * (‖s + 5‖ * ‖s + 4‖) := by
    have h := mul_le_mul (sixHeight_factor_product hx hx1 hy) hpair
      (mul_nonneg (norm_nonneg _) (norm_nonneg _)) (by norm_num : (0 : ℝ) ≤ 37)
    convert h using 1 <;> ring
  have hm : ‖multiplier s‖ ≤
      (481 / 18 : ℝ) * (‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖) := by
    have h := mul_le_mul_of_nonneg_right hfour (norm_nonneg (s + 2))
    calc
      ‖multiplier s‖ = ((‖s‖ * ‖s - 1‖) * (‖s + 1‖ * ‖s + 3‖)) * ‖s + 2‖ := by
        simp only [multiplier, CubicPrimitive.multiplier, norm_mul]
        ring
      _ ≤ ((481 / 18 : ℝ) * (‖s + 5‖ * ‖s + 4‖)) * ‖s + 2‖ := h
      _ = _ := by ring
  have hp : 8 * (‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖) ≤ referenceFactors s := by
    have h := mul_le_mul_of_nonneg_left (nine_sub_norm_lower hx1)
      (by positivity : 0 ≤ ‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖)
    dsimp only [referenceFactors]
    nlinarith [h]
  nlinarith

/-- The error is bounded relative to the SAME corrected quartic reference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c62cc54111a3e2b186f4a43d34da768bfdd4807a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
