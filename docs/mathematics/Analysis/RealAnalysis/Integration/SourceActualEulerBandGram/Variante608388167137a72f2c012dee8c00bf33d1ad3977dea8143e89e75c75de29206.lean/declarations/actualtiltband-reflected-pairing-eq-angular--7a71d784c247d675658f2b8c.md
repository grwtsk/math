# actualTiltBand_reflected_pairing_eq_angular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75dc7cb6-8e91-e3aa-44d8-a7a764190087",
  "kind": "theorem",
  "lexical_name": "actualTiltBand_reflected_pairing_eq_angular",
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
  "slug": "actualtiltband-reflected-pairing-eq-angular--7a71d784c247d675658f2b8c",
  "source": {
    "blob": "40ccc358923369a8bc6204bc6fc7281767350ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a71d784c247d675658f2b8c57ec309e2d93b26e13ff31a855d5f8d00d1327e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75dc7cb6-8e91-e3aa-44d8-a7a764190087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBand_reflected_pairing_eq_angular {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) (u : ℝ) :
    ⟪actualTiltBandState A T, translation u (reflection (actualTiltBandState A T))⟫_ℂ =
      (1 / (2 * Real.pi) : ℂ) * ∫ t in -T..T,
        actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
          Complex.exp (-(t : ℂ) * (u : ℂ) * I) := by
  rw [pairing_integral hA T u]
  unfold actualStandardBand
  rw [integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (show -T / (2 * Real.pi) ≤ T / (2 * Real.pi) by
      apply div_le_div_of_nonneg_right (by linarith) (by positivity))]
  simp_rw [phase_eq, spectrum_neg_sq hA]
  have hid : (fun ξ : ℝ =>
      Complex.exp (-((2 * Real.pi * ξ : ℝ) : ℂ) * (u : ℂ) * I) *
        actualInitialPrimeMellin A ((3 / 2 : ℂ) +
          ((2 * Real.pi * ξ : ℝ) : ℂ) * I)) =
      (fun ξ : ℝ => (fun t : ℝ =>
        actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
          Complex.exp (-(t : ℂ) * (u : ℂ) * I)) (2 * Real.pi * ξ)) := by
    funext ξ
    ring
  rw [hid, intervalIntegral.integral_comp_mul_left
    (fun t : ℝ => actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
      Complex.exp (-(t : ℂ) * (u : ℂ) * I))
    (show (2 * Real.pi : ℝ) ≠ 0 by positivity)]
  have ha : 2 * Real.pi * (-T / (2 * Real.pi)) = -T := by field_simp
  have hb : 2 * Real.pi * (T / (2 * Real.pi)) = T := by field_simp
  rw [ha, hb]
  simp only [Complex.real_smul, Complex.ofReal_inv, one_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ccc358923369a8bc6204bc6fc7281767350ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
