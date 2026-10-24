# vertical_boundW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5cbacb6-70b4-6830-3e76-c9e3137ad5fd",
  "kind": "theorem",
  "lexical_name": "vertical_boundW",
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
  "slug": "vertical-boundw--444d5cb05cdb603eee5af1b8",
  "source": {
    "blob": "914d33c50b2fa2dc9431a58ebc899c28af675d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:444d5cb05cdb603eee5af1b8f8245bdac4c33508fad181074950d8f8ce9b11a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5cbacb6-70b4-6830-3e76-c9e3137ad5fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_boundW : ∃ t₁ : ℝ, 2 ≤ t₁ ∧ ∀ T₁ T₂ : ℝ, t₁ ≤ T₁ → T₁ ≤ T₂ →
    (∀ t ∈ Icc T₁ T₂, hardyW (2 + t * I) ≠ 0) ∧
    |(∫ t in T₁..T₂, logDeriv hardyW (2 + t * I) * I).im| ≤ 2 * Real.pi := by
  obtain ⟨t₁, ht₁, hlow⟩ := hardyW_two_line_lower
  refine ⟨t₁, ht₁, fun T₁ T₂ hT₁ h12 => ?_⟩
  have hfacts : ∀ t ∈ Icc T₁ T₂, t ≠ 0 ∧ ((2 : ℂ) + t * I).im ≠ 0 ∧ 3 ≤ (Gw (2 + t * I)).re ∧
      Gw (2 + t * I) ≠ 0 ∧ hardyW (2 + t * I) ≠ 0 := by
    intro t ht
    have ht0 : 0 < t := by linarith [ht.1]
    have habs : t₁ ≤ |t| := by rw [abs_of_pos ht0]; linarith [ht.1]
    obtain ⟨hre, hnorm⟩ := hlow t habs
    have hG0 : Gw (2 + t * I) ≠ 0 := fun h => by
      have : (Gw (2 + t * I)).re = 0 := by rw [h]; simp
      unfold Gw at this; linarith
    have hW0 : hardyW (2 + t * I) ≠ 0 := fun h => by rw [h, norm_zero] at hnorm; linarith
    exact ⟨ht0.ne', by simp [ht0.ne'], hre, hG0, hW0⟩
  refine ⟨fun t ht => (hfacts t ht).2.2.2.2, ?_⟩
  -- pointwise split along the segment
  have heq : EqOn (fun t : ℝ => logDeriv hardyW (2 + t * I) * I)
      (fun t : ℝ => logDeriv riemannZeta (2 + t * I) * I + logDeriv Gw (2 + t * I) * I) (uIcc T₁ T₂) := by
    intro t ht
    rw [uIcc_of_le h12] at ht
    obtain ⟨-, hs, -, hG, -⟩ := hfacts t ht
    simp only
    rw [logDeriv_hardyW_eq_of_zeta_ne hs (zeta_two_line_ne_zero t) hG]; ring
  -- integrability (continuity along the segment)
  have hcζ : ContinuousOn (fun t : ℝ => logDeriv riemannZeta (2 + t * I) * I) (uIcc T₁ T₂) := by
    intro t ht
    rw [uIcc_of_le h12] at ht
    obtain ⟨-, hs, -, -, -⟩ := hfacts t ht
    have hc := continuousAt_logDeriv_of_analyticAt
      (analyticAt_riemannZeta (ne_one_of_im_ne_zero hs)) (zeta_two_line_ne_zero t)
    exact ((hc.comp (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t) (by fun_prop)).mul
      continuousAt_const).continuousWithinAt
  have hcG : ContinuousOn (fun t : ℝ => logDeriv Gw (2 + t * I) * I) (uIcc T₁ T₂) := by
    intro t ht
    rw [uIcc_of_le h12] at ht
    obtain ⟨-, hs, -, hG, -⟩ := hfacts t ht
    have hc := continuousAt_logDeriv_of_analyticAt (Gw_analyticAt hs (zeta_two_line_ne_zero t)) hG
    exact ((hc.comp (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t) (by fun_prop)).mul
      continuousAt_const).continuousWithinAt
  rw [integral_congr heq, integral_add hcζ.intervalIntegrable hcG.intervalIntegrable, Complex.add_im]
  have h1 : |(∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im| ≤ Real.pi := Zeta23.RvM.vertical_two T₁ T₂
  have h2 : |(∫ t in T₁..T₂, logDeriv Gw (2 + t * I) * I).im| ≤ Real.pi := by
    refine abs_im_integral_logDeriv_vertical_le_pi (σ := 2) h12 (fun t ht => ?_) (fun t ht => ?_)
    · obtain ⟨-, hs, -, -, -⟩ := hfacts t ht
      have := Gw_analyticAt hs (zeta_two_line_ne_zero t)
      simpa using this
    · obtain ⟨-, -, hre, -, -⟩ := hfacts t ht
      have : ((2 : ℝ) : ℂ) + t * I = 2 + t * I := by push_cast; ring
      rw [this]; linarith
  calc |(∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im + (∫ t in T₁..T₂, logDeriv Gw (2 + t * I) * I).im|
      ≤ |(∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im|
        + |(∫ t in T₁..T₂, logDeriv Gw (2 + t * I) * I).im| := abs_add_le _ _
    _ ≤ 2 * Real.pi := by linarith

/-! ### the Generic two-line machine at f := W -/

/-- the packaged Generic hypotheses for W (t₁ from the two-line lower bound). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914d33c50b2fa2dc9431a58ebc899c28af675d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
