# prime_term_chi

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
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fd41dee-b75a-8220-ba52-e7d987b9e383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3c07b07-0cbb-bad2-d542-d85421602974",
  "kind": "theorem",
  "lexical_name": "prime_term_chi",
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
  "slug": "prime-term-chi--96e2f0f716e7cbcaee74c1cf",
  "source": {
    "blob": "d205e0cebae5970e1f9ff2b11c203999f6b75b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e2f0f716e7cbcaee74c1cf34e7a41266efc8b949a4321cc3c2334f2c7d7fa2",
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

Occurrence: `result:a3c07b07-0cbb-bad2-d542-d85421602974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_term_chi {q : ℕ} {c : ℕ → ℂ} {k : ℝ → ℂ} {L : ℝ} (hk : Continuous k)
    (hks : tsupport k ⊆ Icc (-L) L) (hFk : Integrable (FourierTransform.fourier k)) :
    -(∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ)
        * (c n * k (Real.log n) + (starRingEnd ℂ) (c n) * k (-Real.log n)))
      = ∫ τ : ℝ, paperFT k τ * (PXc c (Real.exp L) τ : ℂ) := by
  have hki : Integrable k :=
    hk.integrable_of_hasCompactSupport (Zeta23.EF.hasCompactSupport_of_tsupport_subset hks)
  set S := Finset.Ioc 0 ⌊Real.exp L⌋₊ with hS
  rw [tsum_eq_sum (s := S) (fun n hn => prime_summand_chi_eq_zero hks hn)]
  have step1 : ∑ n ∈ S, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ)
        * (c n * k (Real.log n) + (starRingEnd ℂ) (c n) * k (-Real.log n))
      = ∑ n ∈ S, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ)
        * ((1 / π : ℂ) * ∫ τ : ℝ, paperFT k τ
            * (((c n).re * Real.cos (τ * Real.log n)
              + (c n).im * Real.sin (τ * Real.log n) : ℝ) : ℂ)) := by
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [ck_add_conj_k_neg hk hki hFk (c n) (Real.log n)]
  rw [step1]
  have hint : ∀ n : ℕ, Integrable (fun τ : ℝ => paperFT k τ
      * (((c n).re * Real.cos (τ * Real.log n)
        + (c n).im * Real.sin (τ * Real.log n) : ℝ) : ℂ)) := by
    intro n
    have h1 := (Zeta23.EF.integrable_paperFT_mul_cos hFk (Real.log n)).const_mul
      (((c n).re : ℂ))
    have h2 := (integrable_paperFT_mul_sin hFk (Real.log n)).const_mul (((c n).im : ℂ))
    refine (h1.add h2).congr (Filter.Eventually.of_forall fun τ => ?_)
    simp only [Pi.add_apply]
    push_cast [-Complex.ofReal_cos, -Complex.ofReal_sin]
    ring
  have step2 : (fun τ : ℝ => paperFT k τ * (PXc c (Real.exp L) τ : ℂ))
      = fun τ : ℝ => ∑ n ∈ S, (-(1 / π) * ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ))
          * (paperFT k τ * (((c n).re * Real.cos (τ * Real.log n)
            + (c n).im * Real.sin (τ * Real.log n) : ℝ) : ℂ)) := by
    ext τ
    rw [PXc_eq_sum_cos_sin, ← hS]
    push_cast
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun n hn => ?_
    have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
    have hn0' : (0:ℝ) < (n:ℝ) := by exact_mod_cast hn0
    have hpow : ((n:ℝ) ^ (-(1/2 : ℝ)) : ℝ) = 1 / Real.sqrt n := by
      rw [Real.rpow_neg hn0'.le, Real.sqrt_eq_rpow]
      exact (one_div _).symm
    rw [hpow]
    push_cast
    ring
  rw [step2, integral_finsetSum _ (fun n _ => (hint n).const_mul _)]
  rw [← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun n _ => ?_
  rw [Zeta23.EF.cintegral_const_mul]
  ring

/-- κ-shifted archimedean term (mirror of Zeta23.EF.gamma_term): pointwise-rearrangement of the
bracket into μ_χ (muq's definition is (1/2π)(log(q/π) + Re ψ(1/4+κ/2+iτ/2))). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d205e0cebae5970e1f9ff2b11c203999f6b75b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
