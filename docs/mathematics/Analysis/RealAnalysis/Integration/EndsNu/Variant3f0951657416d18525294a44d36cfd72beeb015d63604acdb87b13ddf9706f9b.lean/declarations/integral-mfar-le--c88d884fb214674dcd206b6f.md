# integral_Mfar_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abdb1d2a-b065-dcff-f69e-41585b9581ef",
  "kind": "lemma",
  "lexical_name": "integral_Mfar_le",
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
  "slug": "integral-mfar-le--c88d884fb214674dcd206b6f",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 533,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c88d884fb214674dcd206b6ff8f1f9768ba11a05447d89c7af27af30f872fb48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abdb1d2a-b065-dcff-f69e-41585b9581ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_Mfar_le (hF : LocalHypsCoreW cϱ p F) (hB : 0 ≤ B) (hT : 1 ≤ p.T) :
    ∫ Δ in Ioi (2 * p.T), Mfar cϱ p B Δ ≤ p.d / p.T * (cϱ / p.w) * (B / 2 + 4) := by
  have hT0 : 0 < p.T := by linarith
  have h2T : 0 < 2 * p.T := by linarith
  have hc : (0:ℝ) ≤ cϱ := by linarith [hF.four_le_cϱ]
  have hw : 0 < p.w := by linarith [hF.one_le_w]

  have hI2 := integral_Ioi_rpow_of_lt (by norm_num : (-2:ℝ) < -1) h2T
  have hI32 := integral_Ioi_rpow_of_lt (by norm_num : (-(3/2):ℝ) < -1) h2T
  have hint2 := integrableOn_Ioi_rpow_of_lt (by norm_num : (-2:ℝ) < -1) h2T
  have hint32 := integrableOn_Ioi_rpow_of_lt (by norm_num : (-(3/2):ℝ) < -1) h2T
  have e : ∫ Δ in Ioi (2 * p.T), Mfar cϱ p B Δ = p.d * (cϱ / p.w) *
      (B * (∫ Δ in Ioi (2 * p.T), Δ ^ (-2:ℝ))
        + (2 / Real.sqrt p.T) * ∫ Δ in Ioi (2 * p.T), Δ ^ (-(3/2):ℝ)) := by
    rw [setIntegral_congr_fun measurableSet_Ioi
      (fun Δ hΔ => Mfar_eq_rpow (cϱ := cϱ) hT0 (lt_trans h2T hΔ)),
      integral_const_mul, integral_add (hint2.const_mul _) (hint32.const_mul _),
      integral_const_mul, integral_const_mul]
  rw [e, hI2, hI32]
  -- evaluate: (2T)^{-1} and 2(2T)^{-1/2}; bound (2T)^{-1/2} ≤ 1/√T
  have ev1 : -(2 * p.T) ^ ((-2:ℝ) + 1) / ((-2:ℝ) + 1) = 1 / (2 * p.T) := by
    rw [show (-2:ℝ) + 1 = -1 by norm_num, Real.rpow_neg_one]; field_simp
  have ev2 : -(2 * p.T) ^ (-(3/2:ℝ) + 1) / (-(3/2:ℝ) + 1) = 2 * (2 * p.T) ^ (-(1/2):ℝ) := by
    rw [show (-(3/2:ℝ)) + 1 = -(1/2) by norm_num]; field_simp
  rw [ev1, ev2]
  have hsq : (2 * p.T) ^ (-(1/2):ℝ) ≤ 1 / Real.sqrt p.T := by
    rw [Real.rpow_neg h2T.le, ← Real.sqrt_eq_rpow, one_div]
    exact inv_anti₀ (Real.sqrt_pos.mpr hT0) (Real.sqrt_le_sqrt (by linarith))
  have hsT : 0 < Real.sqrt p.T := Real.sqrt_pos.mpr hT0
  have key : B * (1 / (2 * p.T)) + 2 / Real.sqrt p.T * (2 * (2 * p.T) ^ (-(1/2):ℝ))
      ≤ 1 / p.T * (B / 2 + 4) := by
    have h1 : 2 / Real.sqrt p.T * (2 * (2 * p.T) ^ (-(1/2):ℝ)) ≤ 2 / Real.sqrt p.T * (2 * (1 / Real.sqrt p.T)) := by
      gcongr
    have h2 : 2 / Real.sqrt p.T * (2 * (1 / Real.sqrt p.T)) = 4 / p.T := by
      rw [show (4:ℝ) / p.T = 4 / (Real.sqrt p.T * Real.sqrt p.T) by rw [Real.mul_self_sqrt hT0.le]]
      field_simp; ring
    have h3 : B * (1 / (2 * p.T)) = 1 / p.T * (B / 2) := by field_simp
    rw [h3]
    have : 1 / p.T * (B / 2 + 4) = 1 / p.T * (B / 2) + 4 / p.T := by field_simp
    rw [this]
    linarith
  calc p.d * (cϱ / p.w) * (B * (1 / (2 * p.T)) + 2 / Real.sqrt p.T * (2 * (2 * p.T) ^ (-(1/2):ℝ)))
      ≤ p.d * (cϱ / p.w) * (1 / p.T * (B / 2 + 4)) :=
        mul_le_mul_of_nonneg_left key (by positivity)
    _ = p.d / p.T * (cϱ / p.w) * (B / 2 + 4) := by field_simp

/-- integrability of N2's integrand on ℝ ∖ I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
