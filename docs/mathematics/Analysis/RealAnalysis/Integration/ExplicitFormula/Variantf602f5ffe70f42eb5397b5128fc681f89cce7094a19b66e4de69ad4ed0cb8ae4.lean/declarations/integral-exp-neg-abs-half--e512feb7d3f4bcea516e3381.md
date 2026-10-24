# integral_exp_neg_abs_half

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
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e166e25c-b6c2-2b68-e146-567c3c536c95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11e68717-b67c-354e-9a03-ade4e9ac2a92",
  "kind": "theorem",
  "lexical_name": "integral_exp_neg_abs_half",
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
  "slug": "integral-exp-neg-abs-half--e512feb7d3f4bcea516e3381",
  "source": {
    "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e512feb7d3f4bcea516e33816fd3d6f925010f76bb0c3016a6d7e455fe9d6d0e",
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

Occurrence: `result:11e68717-b67c-354e-9a03-ade4e9ac2a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_exp_neg_abs_half (τ : ℝ) :
    ∫ u : ℝ, (Real.exp (-|u| / 2) : ℂ) * cexp (-I * τ * u) = 1 / ((1 / 4 : ℂ) + τ ^ 2) := by
  have hIic : IntegrableOn (fun u : ℝ => cexp ((1 / 2 - I * τ) * u)) (Iic 0) :=
    integrableOn_exp_mul_complex_Iic (by simp) 0
  have hIoi : IntegrableOn (fun u : ℝ => cexp ((-(1 / 2) - I * τ) * u)) (Ioi 0) :=
    integrableOn_exp_mul_complex_Ioi (by norm_num) 0
  have eIic : EqOn (fun u : ℝ => (Real.exp (-|u| / 2) : ℂ) * cexp (-I * τ * u))
      (fun u : ℝ => cexp ((1 / 2 - I * τ) * u)) (Iic 0) := by
    intro u hu
    simp only [mem_Iic] at hu
    simp only [abs_of_nonpos hu, Complex.ofReal_exp, ← Complex.exp_add]
    congr 1; push_cast; ring
  have eIoi : EqOn (fun u : ℝ => (Real.exp (-|u| / 2) : ℂ) * cexp (-I * τ * u))
      (fun u : ℝ => cexp ((-(1 / 2) - I * τ) * u)) (Ioi 0) := by
    intro u hu
    simp only [mem_Ioi] at hu
    simp only [abs_of_pos hu, Complex.ofReal_exp, ← Complex.exp_add]
    congr 1; push_cast; ring
  rw [← intervalIntegral.integral_Iic_add_Ioi (b := 0) (hIic.congr_fun eIic.symm measurableSet_Iic)
    (hIoi.congr_fun eIoi.symm measurableSet_Ioi),
    setIntegral_congr_fun measurableSet_Iic eIic, setIntegral_congr_fun measurableSet_Ioi eIoi,
    integral_exp_mul_complex_Iic (by simp) 0, integral_exp_mul_complex_Ioi (by norm_num) 0]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  have h1 := half_sub_I_mul_ne_zero τ
  have h2 := neg_half_sub_I_mul_ne_zero τ
  have h3 : (1 / 4 : ℂ) + τ ^ 2 ≠ 0 := by
    rw [show (1 / 4 : ℂ) + τ ^ 2 = ((1 / 4 + τ ^ 2 : ℝ) : ℂ) by push_cast; ring]
    exact_mod_cast (by positivity : (1 / 4 + τ ^ 2 : ℝ) ≠ 0)
  rw [div_add_div _ _ h1 h2, div_eq_div_iff (mul_ne_zero h1 h2) h3]
  ring_nf
  rw [Complex.I_sq]
  ring

/-- The truncated growing weight `E_L(u) := 1_{[−L,L]}(u) e^{|u|/2}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11119489556113fd419d7b6fb45ccbaa2e493e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
