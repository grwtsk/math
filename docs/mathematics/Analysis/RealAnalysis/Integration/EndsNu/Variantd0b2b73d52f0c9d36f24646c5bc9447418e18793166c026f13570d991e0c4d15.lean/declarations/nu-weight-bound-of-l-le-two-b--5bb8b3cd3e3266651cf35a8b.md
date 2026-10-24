# nu_weight_bound_of_L_le_two_B

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f918ad9a-7d66-42be-909b-9204094d03ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:387f8497-4c3d-6c7c-ffd0-034277a23984",
  "kind": "theorem",
  "lexical_name": "nu_weight_bound_of_L_le_two_B",
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
  "slug": "nu-weight-bound-of-l-le-two-b--5bb8b3cd3e3266651cf35a8b",
  "source": {
    "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bb8b3cd3e3266651cf35a8ba6d92453e883cade16461ff0751b878f4911cca9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:387f8497-4c3d-6c7c-ffd0-034277a23984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_weight_bound_of_L_le_two_B (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hL2B : p.L ≤ 2 * B) (hB4 : 4 ≤ B)
    (hT : 1 ≤ p.T) {a : ℝ} (ha : a ∈ Icc p.T (2 * p.T)) :
    ∫ τ : ℝ, psiA cϱ p (τ - a) * |ν τ|
      ≤ (2 * (4 + 2 * Real.log (cϱ * p.L / (4 * p.w))) + 7 * cϱ) * B := by
  have hT0 : 0 < p.T := by linarith
  have hL := hF.L_pos
  have hw1 := hF.one_le_w
  have hw : 0 < p.w := by linarith
  have hc4 := hF.four_le_cϱ
  have hc : (0 : ℝ) ≤ cϱ := by linarith
  have hB1 : 1 ≤ B := by linarith
  have hB0 : 0 ≤ B := by linarith
  -- pointwise domination (same as in integrable_psiA_shift_mul_nu)
  have hpt : ∀ τ, psiA cϱ p (τ - a) * |ν τ|
      ≤ psiA cϱ p (τ - a) * (B + 2)
        + psiA cϱ p (τ - a) * Real.sqrt |τ - a| / Real.sqrt p.T := by
    intro τ
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
    have hs0 : 0 < Real.sqrt p.T := Real.sqrt_pos.mpr hT0
    have h2 : 2 * Real.sqrt (|τ - a| / (4 * p.T)) = Real.sqrt |τ - a| / Real.sqrt p.T := by
      rw [hsq]; field_simp
    have hbound : |ν τ| ≤ (B + 2) + Real.sqrt |τ - a| / Real.sqrt p.T := by
      calc |ν τ| ≤ B + 2 * Real.sqrt (|τ| / (4 * p.T)) := hν1
        _ ≤ B + 2 * (1 + Real.sqrt (|τ - a| / (4 * p.T))) := by gcongr
        _ = (B + 2) + 2 * Real.sqrt (|τ - a| / (4 * p.T)) := by ring
        _ = (B + 2) + Real.sqrt |τ - a| / Real.sqrt p.T := by rw [h2]
    calc psiA cϱ p (τ - a) * |ν τ|
        ≤ psiA cϱ p (τ - a) * ((B + 2) + Real.sqrt |τ - a| / Real.sqrt p.T) :=
          mul_le_mul_of_nonneg_left hbound (psiA_nonneg_of hF _)
      _ = _ := by ring
  have hI1 := integrable_psiA_shift_mul_nu hνc hF hν hB1 hT ha
  have hI2 : Integrable (fun τ => psiA cϱ p (τ - a) * (B + 2)) :=
    (psiA_shift_integrable hF a).mul_const _
  have hI3 : Integrable (fun τ => psiA cϱ p (τ - a) * Real.sqrt |τ - a| / Real.sqrt p.T) :=
    ((integrable_psiA_mul_sqrt hF).comp_sub_right a).div_const _
  have hΨ := integral_psiA_le hF
  have hS := integral_psiA_mul_sqrt_le hF
  have hmain : ∫ τ : ℝ, psiA cϱ p (τ - a) * |ν τ|
      ≤ (B + 2) * (2 * (4 + 2 * Real.log (cϱ * p.L / (4 * p.w))))
        + (2 * p.L + 4 * (cϱ / p.w)) / Real.sqrt p.T := by
    calc ∫ τ : ℝ, psiA cϱ p (τ - a) * |ν τ|
        ≤ ∫ τ : ℝ, (psiA cϱ p (τ - a) * (B + 2)
            + psiA cϱ p (τ - a) * Real.sqrt |τ - a| / Real.sqrt p.T) :=
          integral_mono hI1 (hI2.add hI3) hpt
      _ = ((B + 2) * ∫ r, psiA cϱ p r)
          + (∫ r, psiA cϱ p r * Real.sqrt |r|) / Real.sqrt p.T := by
          have hshift : ∫ τ : ℝ, psiA cϱ p (τ - a) * Real.sqrt |τ - a|
              = ∫ r : ℝ, psiA cϱ p r * Real.sqrt |r| :=
            integral_sub_right_eq_self (fun r => psiA cϱ p r * Real.sqrt |r|) a
          rw [integral_add hI2 hI3, integral_mul_const, integral_div, integral_psiA_shift,
            mul_comm, hshift]
      _ ≤ (B + 2) * (2 * (4 + 2 * Real.log (cϱ * p.L / (4 * p.w))))
          + (2 * p.L + 4 * (cϱ / p.w)) / Real.sqrt p.T :=
          add_le_add (mul_le_mul_of_nonneg_left hΨ (by positivity))
            (div_le_div_of_nonneg_right hS (Real.sqrt_nonneg _))
  -- the arithmetic:  4Ψ + (2L + 4c/w)/√T ≤ 5cB
  have hsT : 1 ≤ Real.sqrt p.T := by rw [← Real.sqrt_one]; exact Real.sqrt_le_sqrt hT
  have hcw : cϱ / p.w ≤ cϱ := div_le_self hc hw1
  have htail : (2 * p.L + 4 * (cϱ / p.w)) / Real.sqrt p.T ≤ 2 * p.L + 4 * cϱ := by
    calc (2 * p.L + 4 * (cϱ / p.w)) / Real.sqrt p.T ≤ 2 * p.L + 4 * (cϱ / p.w) :=
          div_le_self (by positivity) hsT
      _ ≤ 2 * p.L + 4 * cϱ := by linarith
  have harg : 0 < cϱ * p.L / (4 * p.w) := by positivity
  have hlog : Real.log (cϱ * p.L / (4 * p.w)) ≤ cϱ * p.L / 4 - 1 := by
    have h1 := Real.log_le_sub_one_of_pos harg
    have h2 : cϱ * p.L / (4 * p.w) ≤ cϱ * p.L / 4 := by
      apply div_le_div_of_nonneg_left (by positivity) (by norm_num) (by linarith)
    linarith
  -- endgame: 4Ψ + 2L + 4c ≤ 8 + 2cL + 2L + 4c ≤ 8 + 4c + 5cB ≤ 7cB  (Ψ ≤ 2 + cL/2, L ≤ 2B, 4 ≤ c, 4 ≤ B)
  have hcL : cϱ * p.L ≤ 2 * (cϱ * B) := by nlinarith
  have h2L : 2 * p.L ≤ cϱ * B := by nlinarith
  have h8c : 8 + 4 * cϱ ≤ 2 * (cϱ * B) := by nlinarith
  nlinarith [hmain, htail, hlog, hcL, h2L, h8c, hB0]

/-- **N1** (§5.3, "the second factor is ≤ 3Ψ₀B uniformly in k"): for a ∈ [T,2T],
  ∫_ℝ ψ(τ−a)|ν_X(τ)| dτ ≤ (2(4 + 2 log(c_ϱL/4w)) + 7c_ϱ)·B   (paper regime B ≥ l, L ≤ 2l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592d4fb46536da54f3f44c17fa380bb8f4c19d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
