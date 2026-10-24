# integrable_psiA_shift_mul_nu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c061160b-c965-8be6-e12c-bbf101174c23",
  "kind": "theorem",
  "lexical_name": "integrable_psiA_shift_mul_nu",
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
  "slug": "integrable-psia-shift-mul-nu--70a55803d1d19eb3cdc20e21",
  "source": {
    "blob": "3d7ed2e6b1126f6adbc503c70929d890d7cb9deb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a55803d1d19eb3cdc20e216c73e9459a9568da329cbde0bc6d34219f78ba5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c061160b-c965-8be6-e12c-bbf101174c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_psiA_shift_mul_nu (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F)
    (hν : NuBound p B ν) (hB1 : 1 ≤ B) (hT : 1 ≤ p.T) {a : ℝ} (ha : a ∈ Icc p.T (2 * p.T)) :
    Integrable (fun τ : ℝ => psiA cϱ p (τ - a) * |ν τ|) := by
  have hT0 : 0 < p.T := by linarith
  have hL := hF.L_pos
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hc : (0 : ℝ) ≤ cϱ := by linarith [hF.four_le_cϱ]
  have hB0 : 0 ≤ B := by linarith
  have hmeas : AEStronglyMeasurable (fun τ : ℝ => psiA cϱ p (τ - a) * |ν τ|) volume :=
    (psiA_shift_integrable hF a).aestronglyMeasurable.mul
      (hνc.abs.aestronglyMeasurable)
  have hdom : Integrable (fun τ : ℝ =>
      psiA cϱ p (τ - a) * (B + 2) + psiA cϱ p (τ - a) * Real.sqrt |τ - a| / Real.sqrt p.T) := by
    refine ((psiA_shift_integrable hF a).mul_const _).add ?_
    have := ((integrable_psiA_mul_sqrt hF).comp_sub_right a).div_const (Real.sqrt p.T)
    exact this
  refine hdom.mono' hmeas ?_
  filter_upwards with τ
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (psiA_nonneg hL.le hc hw _) (abs_nonneg _))]
  have hν1 : |ν τ| ≤ B + 2 * Real.sqrt (|τ| / (4 * p.T)) :=
    abs_nuX_le_B_add_sqrt hν hT0 τ
  have hsh : Real.sqrt (|τ| / (4 * p.T)) ≤ 1 + Real.sqrt (|τ - a| / (4 * p.T)) := by
    have := sqrt_shift_le (a := a) (r := τ - a) (T' := p.T) hT0 (by
      rw [abs_of_nonneg (by linarith [ha.1] : (0:ℝ) ≤ a)]
      linarith [ha.2])
    simpa using this
  have hsq : Real.sqrt (|τ - a| / (4 * p.T)) = Real.sqrt |τ - a| / (2 * Real.sqrt p.T) := by
    rw [Real.sqrt_div (abs_nonneg _), show (4 : ℝ) * p.T = 2 ^ 2 * p.T by norm_num,
      Real.sqrt_mul (by positivity), Real.sqrt_sq (by norm_num : (0:ℝ) ≤ 2)]
  have hbound : |ν τ| ≤ (B + 2) + Real.sqrt |τ - a| / Real.sqrt p.T := by
    have h2 : 2 * Real.sqrt (|τ - a| / (4 * p.T)) ≤ Real.sqrt |τ - a| / Real.sqrt p.T := by
      rw [hsq]
      have hs0 : 0 < Real.sqrt p.T := Real.sqrt_pos.mpr hT0
      refine le_of_eq ?_
      field_simp
    calc |ν τ| ≤ B + 2 * Real.sqrt (|τ| / (4 * p.T)) := hν1
      _ ≤ B + 2 * (1 + Real.sqrt (|τ - a| / (4 * p.T))) := by gcongr
      _ = (B + 2) + 2 * Real.sqrt (|τ - a| / (4 * p.T)) := by ring
      _ ≤ (B + 2) + Real.sqrt |τ - a| / Real.sqrt p.T := by linarith [h2]
  calc psiA cϱ p (τ - a) * |ν τ|
      ≤ psiA cϱ p (τ - a) * ((B + 2) + Real.sqrt |τ - a| / Real.sqrt p.T) := by
        gcongr
        exact psiA_nonneg hL.le hc hw _
    _ = psiA cϱ p (τ - a) * (B + 2) + psiA cϱ p (τ - a) * Real.sqrt |τ - a| / Real.sqrt p.T := by
        ring

end Weighted

section Grid

variable {cϱ : ℝ} {p : Setting} {F : LocalFun}

/-- Left grid domination: for τ ≤ T the distances to the grid points T + k·h are exactly
(T − τ) + k·h (evenness of ψ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7ed2e6b1126f6adbc503c70929d890d7cb9deb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
