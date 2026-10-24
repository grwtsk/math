# poleNormalized_deriv_norm_le_subtracted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:900efc71-e5db-cd6b-1158-bd746d175be6",
  "kind": "theorem",
  "lexical_name": "poleNormalized_deriv_norm_le_subtracted",
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
  "slug": "polenormalized-deriv-norm-le-subtracted--2094a5f869a2e21fc90456e1",
  "source": {
    "blob": "35d8ca52a56b1691d8d54dcb105f2744f143d7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2094a5f869a2e21fc90456e15d30edb789d9b5946f86c04b5e8f46d864b76c0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:900efc71-e5db-cd6b-1158-bd746d175be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_deriv_norm_le_subtracted {σ a B : ℝ} {s : ℂ}
    (ha : 0 < a) (haσ : a < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖deriv poleNormalizedZeta s‖ ≤
      1 + (2 * B + 1) / σ + B * (B + 1) / (σ * (σ - a)) := by
  have hσ : 0 < σ := ha.trans haσ
  have hB0 : 0 ≤ B := (norm_nonneg s).trans hB
  have hM := fractionalMellin_norm_le hσ hs
  have hD := fractionalMellin_deriv_norm_le_subtracted ha haσ hs
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      _ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa only [norm_one] using add_le_add_right hB 1
  have htwo : ‖2 * s - 1‖ ≤ 2 * B + 1 := by
    calc
      _ ≤ ‖(2 : ℂ) * s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ = 2 * ‖s‖ + 1 := by norm_num [norm_mul]
      _ ≤ 2 * B + 1 := by linarith
  rw [(poleNormalized_hasDerivAt_mellin (hσ.trans_le hs)).deriv]
  calc
    _ ≤ ‖(1 : ℂ)‖ + ‖(2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s‖ := norm_sub_le _ _
    _ ≤ 1 + (‖(2 * s - 1) * fractionalMellin s‖ +
        ‖s * (s - 1) * deriv fractionalMellin s‖) := by
      simpa only [norm_one] using add_le_add_left (norm_add_le _ _) (1 : ℝ)
    _ ≤ 1 + ((2 * B + 1) * (1 / σ) +
        B * (B + 1) * (1 / (σ * (σ - a)))) := by
      simp only [norm_mul]
      apply add_le_add_left
      apply add_le_add
      · exact mul_le_mul htwo hM (norm_nonneg _) (by positivity)
      · exact mul_le_mul
          (mul_le_mul hB hsub (norm_nonneg _) hB0) hD
          (norm_nonneg _) (mul_nonneg hB0 (by positivity))
    _ = _ := by ring

/-- In the existing Re(s)>=1/2, |s|<=1 patch region this improves 45 to 113/7.
It does not alter the earlier source declarations or their replay identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d8ca52a56b1691d8d54dcb105f2744f143d7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
