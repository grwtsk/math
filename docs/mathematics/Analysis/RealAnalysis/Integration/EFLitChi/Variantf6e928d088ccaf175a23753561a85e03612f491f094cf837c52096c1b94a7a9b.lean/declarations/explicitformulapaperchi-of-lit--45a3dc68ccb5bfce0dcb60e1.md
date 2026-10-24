# explicitFormulaPaperChi_of_lit

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
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44769635-73b2-c285-f827-9da91912b09d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:357933a5-fa4c-aef7-efb7-e9eb8adc23e3",
  "kind": "theorem",
  "lexical_name": "explicitFormulaPaperChi_of_lit",
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
  "slug": "explicitformulapaperchi-of-lit--45a3dc68ccb5bfce0dcb60e1",
  "source": {
    "blob": "d205e0cebae5970e1f9ff2b11c203999f6b75b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 354,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45a3dc68ccb5bfce0dcb60e16f11dba985181590176a0601eae08faf0e2dce1a",
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

Occurrence: `result:357933a5-fa4c-aef7-efb7-e9eb8adc23e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicitFormulaPaperChi_of_lit {κ q : ℕ} {c : ℕ → ℂ} {Z : ZeroConfig}
    (hEF : EF_lit_chi κ q c Z) (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q)
    (_hc : CoeffOK q c) :
    ExplicitFormulaPaperChi κ q c Z := by
  intro L hL f g hf hg hfs hgs
  have hfc : HasCompactSupport f :=
    IsCompact.of_isClosed_subset isCompact_Icc (isClosed_tsupport f) hfs
  have hgc : HasCompactSupport g :=
    IsCompact.of_isClosed_subset isCompact_Icc (isClosed_tsupport g) hgs
  have hkd : ContDiff ℝ 2 (Zeta23.EF.weilTest f g) := Zeta23.EF.weilTest_contDiff hf hg.continuous hfc
  have hk : Continuous (Zeta23.EF.weilTest f g) := hkd.continuous
  have hks : tsupport (Zeta23.EF.weilTest f g) ⊆ Icc (-L) L :=
    Zeta23.EF.tsupport_weilTest_subset hfs hgs
  have hkcs : HasCompactSupport (Zeta23.EF.weilTest f g) :=
    Zeta23.EF.weilTest_hasCompactSupport hfc hgc
  have hFk : Integrable (FourierTransform.fourier (Zeta23.EF.weilTest f g)) :=
    Zeta23.EF.integrable_fourier_of_contDiff_two hkd hkcs
  have hμ : Integrable (fun τ : ℝ => paperFT (Zeta23.EF.weilTest f g) τ * (muq κ q τ : ℂ)) :=
    integrable_paperFT_mul_muq hkd hkcs hΓq hq
  obtain ⟨hsum, heq⟩ := hEF (Zeta23.EF.weilTest f g) hkd hkcs
  have hfac : ∀ z : ℂ, paperFT (Zeta23.EF.weilTest f g) z
      = paperFT f z * (starRingEnd ℂ) (paperFT g ((starRingEnd ℂ) z)) :=
    Zeta23.EF.paperFT_weilTest hf.continuous hg.continuous hfc hgc
  have hterm : (fun ρ : Z.carrier => (Z.mult ρ : ℂ) * paperFT (Zeta23.EF.weilTest f g) (gammaOf ρ))
      = fun ρ : Z.carrier => Z.Wsummand f g ρ := by
    ext ρ
    simp only [ZeroConfig.Wsummand, hfac, mul_assoc]
  have hreal : (fun τ : ℝ => paperFT (Zeta23.EF.weilTest f g) τ * (nuXc κ q c (Real.exp L) τ : ℂ))
      = fun τ : ℝ => paperFT f τ * (starRingEnd ℂ) (paperFT g τ) * (nuXc κ q c (Real.exp L) τ : ℂ) := by
    ext τ
    rw [hfac, Complex.conj_ofReal]
  have hnuint : Integrable (fun τ : ℝ => paperFT (Zeta23.EF.weilTest f g) τ
      * (nuXc κ q c (Real.exp L) τ : ℂ)) := by
    refine ((hμ.add (integrable_paperFT_mul_PXc (k := Zeta23.EF.weilTest f g) c L hFk)).congr
      (Filter.Eventually.of_forall fun τ => ?_))
    simp only [Pi.add_apply, nuXc]
    push_cast
    ring
  refine ⟨hterm ▸ hsum, hreal ▸ hnuint, ?_⟩
  rw [literatureRHSchi_eq_integral_nu hq hL hk hks hFk hμ, hreal] at heq
  rw [← heq, ZeroConfig.W, ← hterm]

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variantf6e928d088ccaf175a23753561a85e03612f491f094cf837c52096c1b94a7a9b.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d205e0cebae5970e1f9ff2b11c203999f6b75b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
