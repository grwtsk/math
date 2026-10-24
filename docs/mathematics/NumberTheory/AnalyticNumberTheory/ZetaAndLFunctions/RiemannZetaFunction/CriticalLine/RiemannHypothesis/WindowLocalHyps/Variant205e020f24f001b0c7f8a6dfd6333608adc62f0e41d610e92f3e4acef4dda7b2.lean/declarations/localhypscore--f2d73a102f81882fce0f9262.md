# localHypsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32cd11676436af642e4d7233d21364d70bcbb8c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/205e020f24f001b0c7f8a6dfd6333608adc62f0e41d610e92f3e4acef4dda7b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04043e84-9fa7-8490-193e-3efd701af8a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38e7e0b7-0c8a-f0a1-ecc6-9dd252012776",
  "kind": "theorem",
  "lexical_name": "localHypsCore",
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
  "slug": "localhypscore--f2d73a102f81882fce0f9262",
  "source": {
    "blob": "32cd11676436af642e4d7233d21364d70bcbb8c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WindowLocalHyps/Variant205e020f24f001b0c7f8a6dfd6333608adc62f0e41d610e92f3e4acef4dda7b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2d73a102f81882fce0f926219b3b33d4499ab4c5c8b3d6060cdce936d90751b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WindowLocalHyps/Variant205e020f24f001b0c7f8a6dfd6333608adc62f0e41d610e92f3e4acef4dda7b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38e7e0b7-0c8a-f0a1-ecc6-9dd252012776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localHypsCore {v : ℝ → ℝ} {c : ℝ} (p : PrimeSide.Setting) (hW : AdmWindow v p.L p.w c)
    (hlam : 0 < p.lam) (hlam1 : p.lam ≤ 1) (hl : 1 ≤ p.l) (hX : 1 ≤ p.X)
    (hb : 1 / 2 ≤ bv v p.L) :
    PrimeSide.LocalHypsCore c p (localFun v p.L) := by
  have hc := hW.four_le_c
  have hw := hW.one_le_w
  have hwL := hW.w8
  have hcw : 0 ≤ c / p.w := div_nonneg hW.c_nonneg hW.w_pos.le
  have hψ1 : ∀ r, |vHatR v r| ≤ PsiC.psiC c p.L p.w r := fun r => by
    rw [PsiC.psiC_eq_psiA]; exact hW.abs_vHatR_le_psiA p rfl rfl r
  have hψ2 : ∀ r, |VPhiR v r| ≤ PsiC.psiC c p.L p.w r := fun r => by
    rw [PsiC.psiC_eq_psiA]; exact hW.abs_VPhiR_le_psiA p rfl rfl r
  exact {
    four_le_cϱ := hc
    lam_pos := hlam
    lam_le_one := hlam1
    one_le_w := hw
    w_le := by linarith
    one_le_l := hl
    phiHat_cont := hW.vHatR_continuous
    phiHat_even := hW.vHatR_even
    phiHat_le_L := hW.abs_vHatR_le_L
    phiHat_le_inv := hW.abs_vHatR_mul_abs_le
    phiHat_le_sq := hW.abs_vHatR_mul_sq_le
    phiHat_sq_integrable := hW.integrable_vHatR_sq
    phiHat_sq_mul_abs_integrable := hW.integrable_vHatR_sq_mul_abs
    integral_phiHat_sq_mul_abs_le := PsiC.integral_sq_mul_abs_le_of_le_psi hc hw hwL hψ1
    phiHat_sq_mul_sq_integrable :=
      PsiC.integrable_sq_mul_sq_of_bounds hW.vHatR_continuous hcw hW.abs_vHatR_mul_abs_le
        hW.abs_vHatR_mul_sq_le
    integral_phiHat_sq_mul_sq_le :=
      PsiC.integral_sq_mul_sq_le_of_bounds hcw hW.abs_vHatR_mul_abs_le hW.abs_vHatR_mul_sq_le
    phiHat_sq_integral := hW.integral_vHatR_sq
    phiHat_sq_fourier := hW.integral_vHatR_sq_mul_cos
    g_nonneg := hW.gv_nonneg
    g_le_Aphi := hW.gv_le_Av
    Aphi_le := hW.Av_le
    Phi_contDiff := hW.VPhiR_contDiff_one
    Phi_even := hW.VPhiR_even
    Phi_le_L := hW.abs_VPhiR_le_L
    Phi_le_inv := hW.abs_VPhiR_mul_abs_le
    Phi_le_sq := hW.abs_VPhiR_mul_sq_le
    Phi_sq_integrable := hW.integrable_VPhiR_sq
    Phi_sq_mul_abs_integrable := hW.integrable_VPhiR_sq_mul_abs
    integral_Phi_sq_mul_abs_le := PsiC.integral_sq_mul_abs_le_of_le_psi hc hw hwL hψ2
    Phi_sq_mul_sq_integrable :=
      PsiC.integrable_sq_mul_sq_of_bounds hW.VPhiR_continuous hcw hW.abs_VPhiR_mul_abs_le
        hW.abs_VPhiR_mul_sq_le
    integral_Phi_sq_mul_sq_le :=
      PsiC.integral_sq_mul_sq_le_of_bounds hcw hW.abs_VPhiR_mul_abs_le hW.abs_VPhiR_mul_sq_le
    Phi_zero := hW.VPhiR_zero
    Phi_sq_integral := hW.integral_VPhiR_sq
    Phi_sq_fourier := hW.integral_VPhiR_sq_mul_cos
    poisson := fun τ τ' => hW.hasSum_vHatR_mul p.T τ τ'
    b_ge_half := hb
    b_le_a := hW.bv_le_av
    a_le_one := hW.av_le_one
    psi_integrable := by
      rw [← PsiC.psiC_eq_psiA]; exact PsiC.psi_integrable hc hw hwL
    psi_sq_integrable := by
      rw [← PsiC.psiC_eq_psiA]; exact PsiC.psi_sq_integrable hc hw hwL
    integral_psi_Ioi_le := by
      rw [← PsiC.psiC_eq_psiA]; exact PsiC.integral_psi_Ioi_le hc hw hwL
    integral_psi_sq_le := by
      rw [← PsiC.psiC_eq_psiA]; exact PsiC.integral_psi_sq_le hc hw hwL
    phiHat_le_psi := hW.abs_vHatR_le_psiA p rfl rfl
    Phi_le_psi := hW.abs_VPhiR_le_psiA p rfl rfl
    PiX_cont := PiX_continuous p.X_pos
    PiX_bound := PiX_abs_le hX }

end AdmWindow
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WindowLocalHyps/Variant205e020f24f001b0c7f8a6dfd6333608adc62f0e41d610e92f3e4acef4dda7b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WindowLocalHyps/Variant205e020f24f001b0c7f8a6dfd6333608adc62f0e41d610e92f3e4acef4dda7b2.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32cd11676436af642e4d7233d21364d70bcbb8c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
