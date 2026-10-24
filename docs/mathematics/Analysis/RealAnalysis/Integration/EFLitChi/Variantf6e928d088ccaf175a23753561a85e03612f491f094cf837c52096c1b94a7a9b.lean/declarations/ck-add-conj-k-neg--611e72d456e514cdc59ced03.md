# ck_add_conj_k_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d205e0cebae5970e1f9ff2b11c203999f6b75b9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:540e9032-75f5-7558-6e96-26125bb29de4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:908af72a-5cfe-48f3-2951-fdd1342d9387",
  "kind": "theorem",
  "lexical_name": "ck_add_conj_k_neg",
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
  "slug": "ck-add-conj-k-neg--611e72d456e514cdc59ced03",
  "source": {
    "blob": "d205e0cebae5970e1f9ff2b11c203999f6b75b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:611e72d456e514cdc59ced03e8540b4b3e45e30e4205d3fb0116ab054864772c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908af72a-5cfe-48f3-2951-fdd1342d9387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ck_add_conj_k_neg {k : ℝ → ℂ} (hk : Continuous k) (hki : Integrable k)
    (hFk : Integrable (FourierTransform.fourier k)) (cc : ℂ) (y : ℝ) :
    cc * k y + (starRingEnd ℂ) cc * k (-y)
      = (1 / π : ℂ) * ∫ τ : ℝ, paperFT k τ
          * ((cc.re * Real.cos (τ * y) + cc.im * Real.sin (τ * y) : ℝ) : ℂ) := by
  rw [Zeta23.EF.paper_inversion hk hki hFk y, Zeta23.EF.paper_inversion hk hki hFk (-y),
    mul_left_comm cc, mul_left_comm ((starRingEnd ℂ) cc), ← mul_add,
    ← Zeta23.EF.cintegral_const_mul cc, ← Zeta23.EF.cintegral_const_mul ((starRingEnd ℂ) cc),
    ← integral_add ((Zeta23.EF.integrable_paperFT_mul_cexp hFk y).const_mul cc)
      ((Zeta23.EF.integrable_paperFT_mul_cexp hFk (-y)).const_mul _)]
  have hconj : (starRingEnd ℂ) cc = (cc.re : ℂ) - (cc.im : ℂ) * I := by
    apply Complex.ext <;> simp
  have hcc : cc = (cc.re : ℂ) + (cc.im : ℂ) * I := (Complex.re_add_im cc).symm
  have h2 : ∀ τ : ℝ, cc * (paperFT k τ * cexp (-I * τ * y))
      + (starRingEnd ℂ) cc * (paperFT k τ * cexp (-I * τ * ↑(-y)))
      = 2 * (paperFT k τ * ((cc.re * Real.cos (τ * y) + cc.im * Real.sin (τ * y) : ℝ) : ℂ)) := by
    intro τ
    have he1 : cexp (-I * τ * y) = Real.cos (τ * y) - Real.sin (τ * y) * I := by
      rw [show (-I * τ * y : ℂ) = ((-(τ * y) : ℝ) : ℂ) * I by push_cast; ring,
        Complex.exp_mul_I]
      push_cast
      simp
      ring
    have he2 : cexp (-I * τ * ((-y : ℝ) : ℂ)) = Real.cos (τ * y) + Real.sin (τ * y) * I := by
      rw [show (-I * τ * ((-y : ℝ) : ℂ) : ℂ) = (((τ * y) : ℝ) : ℂ) * I by push_cast; ring,
        Complex.exp_mul_I]
      push_cast
      ring
    rw [he1, he2]
    nth_rewrite 1 [hcc]
    rw [hconj]
    push_cast
    ring_nf
    rw [Complex.I_sq]
    ring
  simp_rw [h2]
  rw [Zeta23.EF.cintegral_const_mul, ← mul_assoc]
  congr 1
  field_simp

/-- Support step, twisted: the summand vanishes for n outside (0, floor(e^L)]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d205e0cebae5970e1f9ff2b11c203999f6b75b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
