# pole_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 557,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff3b03e5-ebd0-6ef1-4ad5-2bc3d2c97f46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e84ccf0-d7c0-ee6d-6ea2-f4928247fb78",
  "kind": "theorem",
  "lexical_name": "pole_term",
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
  "slug": "pole-term--c382d4a01892cfa9a8bad30e",
  "source": {
    "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 557,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c382d4a01892cfa9a8bad30ec1cf8b8f464baeaa4ae51c5acde4a9603ddac892",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e84ccf0-d7c0-ee6d-6ea2-f4928247fb78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_term {k : ℝ → ℂ} {L : ℝ} (hL : 0 < L) (hk : Continuous k)
    (hks : tsupport k ⊆ Icc (-L) L) (hFk : Integrable (𝓕 k)) :
    paperFT k (I / 2) + paperFT k (-I / 2)
      = ∫ τ : ℝ, paperFT k τ * (PiX (Real.exp L) τ : ℂ) := by
  have hkc : HasCompactSupport k := hasCompactSupport_of_tsupport_subset hks
  have hki : Integrable k := hk.integrable_of_hasCompactSupport hkc
  have hA_int : Integrable (fun u : ℝ => k u * (Real.exp (-|u| / 2) : ℂ)) :=
    (hk.mul (by fun_prop)).integrable_of_hasCompactSupport hkc.mul_right
  have hB_int : Integrable (fun u : ℝ => k u * (Real.exp (|u| / 2) : ℂ)) :=
    (hk.mul (by fun_prop)).integrable_of_hasCompactSupport hkc.mul_right
  have hI1 : Integrable (fun u : ℝ => k u * cexp (I * (I / 2) * u)) :=
    (hk.mul (by fun_prop)).integrable_of_hasCompactSupport hkc.mul_right
  have hI2 : Integrable (fun u : ℝ => k u * cexp (I * (-I / 2) * u)) :=
    (hk.mul (by fun_prop)).integrable_of_hasCompactSupport hkc.mul_right
  -- Step 1: h(i/2) + h(−i/2) = ∫ k(u)(e^{−u/2} + e^{u/2}) du = ∫ k e^{−|u|/2} + ∫ k e^{|u|/2}
  have step1 : paperFT k (I / 2) + paperFT k (-I / 2)
      = (∫ u : ℝ, k u * (Real.exp (-|u| / 2) : ℂ)) + ∫ u : ℝ, k u * (Real.exp (|u| / 2) : ℂ) := by
    rw [← integral_add hA_int hB_int]
    unfold paperFT
    rw [← integral_add hI1 hI2]
    congr 1; ext u
    rw [← mul_add, ← mul_add]
    congr 1
    have ha : I * (I / 2) * (u : ℂ) = ((-u / 2 : ℝ) : ℂ) := by
      push_cast; ring_nf; rw [Complex.I_sq]; ring
    have hb : I * (-I / 2) * (u : ℂ) = ((u / 2 : ℝ) : ℂ) := by
      push_cast; ring_nf; rw [Complex.I_sq]; ring
    rw [ha, hb, ← Complex.ofReal_exp, ← Complex.ofReal_exp, ← Complex.ofReal_add,
      ← Complex.ofReal_add]
    congr 1
    rcases le_total 0 u with hu | hu
    · rw [abs_of_nonneg hu, neg_div]
    · rw [abs_of_nonpos hu, neg_neg, add_comm, neg_div]
  -- Step 2 (decaying half): ∫ k e^{−|u|/2} = (1/2π) ∫ h(τ) (1/4+τ²)^{-1} dτ
  have stepA : ∫ u : ℝ, k u * (Real.exp (-|u| / 2) : ℂ)
      = (1 / (2 * π) : ℂ) * ∫ τ : ℝ, paperFT k τ * (1 / ((1 / 4 : ℂ) + τ ^ 2)) := by
    rw [integral_k_mul_weight hk hki hFk integrable_exp_neg_abs_half]
    simp_rw [integral_exp_neg_abs_half]
  -- Step 2 (growing half, truncated by supp k ⊆ [−L,L]): ∫ k e^{|u|/2} = (1/2π) ∫ h(τ) 2Re((X^s−1)/s) dτ
  have hkEL : (fun u : ℝ => k u * (Real.exp (|u| / 2) : ℂ)) = fun u => k u * EL L u := by
    ext u
    by_cases hu : u ∈ Icc (-L) L
    · simp [EL, hu]
    · rw [image_eq_zero_of_notMem_tsupport (fun h => hu (hks h)), zero_mul, zero_mul]
  have stepB : ∫ u : ℝ, k u * (Real.exp (|u| / 2) : ℂ)
      = (1 / (2 * π) : ℂ) * ∫ τ : ℝ, paperFT k τ *
          ((2 * ((((Real.exp L : ℝ) : ℂ) ^ ((1 / 2 : ℂ) + I * τ) - 1) / ((1 / 2 : ℂ) + I * τ)).re : ℝ) : ℂ) := by
    rw [hkEL, integral_k_mul_weight hk hki hFk (integrable_EL L)]
    simp_rw [integral_EL_mul _ hL]
  -- integrability of the two τ-integrands (from Fubini)
  have hintA : Integrable (fun τ : ℝ => paperFT k τ * (1 / ((1 / 4 : ℂ) + τ ^ 2))) := by
    have := integrable_paperFT_mul_weightFT hFk integrable_exp_neg_abs_half
    simp_rw [integral_exp_neg_abs_half] at this
    exact this
  have hintB : Integrable (fun τ : ℝ => paperFT k τ *
      ((2 * ((((Real.exp L : ℝ) : ℂ) ^ ((1 / 2 : ℂ) + I * τ) - 1) / ((1 / 2 : ℂ) + I * τ)).re : ℝ) : ℂ)) := by
    have := integrable_paperFT_mul_weightFT hFk (integrable_EL L)
    simp_rw [integral_EL_mul _ hL] at this
    exact this
  -- assemble Π_X
  rw [step1, stepA, stepB, ← mul_add, ← integral_add hintA hintB, ← cintegral_const_mul]
  congr 1; ext τ
  have hπ : (π : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  have h3 : (1 / 4 : ℂ) + τ ^ 2 ≠ 0 := by
    rw [show (1 / 4 : ℂ) + τ ^ 2 = ((1 / 4 + τ ^ 2 : ℝ) : ℂ) by push_cast; ring]
    exact_mod_cast (by positivity : (1 / 4 + τ ^ 2 : ℝ) ≠ 0)
  simp only [PiX]
  push_cast
  field_simp

/-! ### Integrability of the three densities against h (from the computations above) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11119489556113fd419d7b6fb45ccbaa2e493e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
