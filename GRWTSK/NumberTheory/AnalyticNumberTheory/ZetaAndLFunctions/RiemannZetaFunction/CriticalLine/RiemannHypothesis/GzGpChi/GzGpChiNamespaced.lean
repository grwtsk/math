-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EFrhsEqGpChi.Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EFrhsEqGpChi.Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmE/GzGpChi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmE/GzGpChi.lean — the H-EF(χ) bridge for L(s,χ).

[thm:E] proof (i): "Proposition [prop:EF] holds for W_χ(f,g) := Σ_ρ m_ρ h_f(γ_ρ) conj(h_g(conj γ_ρ))
(zeros of L(s,χ)) with ν_X replaced by ν_{X,χ} := μ_χ + P_{X,χ} … Since ν_{X,χ} is real, G is again
real symmetric."  Exactly as for ζ: instantiate the hypothesis ExplicitFormulaPaperChi κ q c Z at
(f_k, f_l); the zero side is Z.Gz verbatim (Zeta23.GzGp.Gz_eq_W, density-independent), the prime side is
GpChi (Zeta23/ThmE/AssemblyQ.lean) because φ̂ is real on ℝ (Zeta23.GzGp.phiHat_ofReal) and nuXc is
real-valued by construction.  Consumed by the thmE gates (hGzGp).
-/
import Zeta23.Hypotheses.GzGp
import Zeta23.ThmE.AssemblyQ


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EFrhsEqGpChi.Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef

open scoped ComplexConjugate
open Complex MeasureTheory Set

noncomputable section

namespace Zeta23

namespace GzGpChi

variable (P : Params) (κ q : ℕ) (c : ℕ → ℂ) (T : ℝ)

/-- Prime side: the [eq:EF]_χ right-hand side at (f_k, f_l) is literally (G^{prime}_χ)_{kl}. No hypotheses. -/
lemma EFrhs_eq_GpChi (k l : Fin (P.d T)) :
    (∫ τ : ℝ, paperFT (P.fk T k) τ * conj (paperFT (P.fk T l) τ) *
      (ThmE.nuXc κ q c (Real.exp (P.L T)) τ : ℂ)) = ThmE.GpChi P κ q c T k l := by
  unfold ThmE.GpChi ThmE.GentryChi Params.X
  rw [← integral_complex_ofReal]
  congr 1
  ext τ
  rw [GzGp.paperFT_fk, GzGp.paperFT_fk, ← Complex.ofReal_sub, ← Complex.ofReal_sub,
    GzGp.phiHat_ofReal, GzGp.phiHat_ofReal, Complex.conj_ofReal]
  push_cast
  ring

end GzGpChi

/-- **The H-EF(χ) bridge**: zero-side and prime-side matrices for L(s,χ) agree, given H-EF(χ), L > 0,
φ ∈ C² and supp φ ⊆ [−L/2, L/2]. -/
theorem ZeroConfig.Gz_eq_GpChi (Z : ZeroConfig) (P : Params) (κ q : ℕ) (c : ℕ → ℂ) (T : ℝ)
    (hEF : ThmE.ExplicitFormulaPaperChi κ q c Z) (hL : 0 < P.L T)
    (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) :
    Z.Gz P T = ThmE.GpChi P κ q c T := by
  ext k l
  obtain ⟨-, -, hW⟩ := hEF (P.L T) hL (P.fk T k) (P.fk T l) (GzGp.fk_contDiff P T hφC2 k)
    (GzGp.fk_contDiff P T hφC2 l) (GzGp.fk_tsupport P T hφsupp k) (GzGp.fk_tsupport P T hφsupp l)
  rw [GzGp.Gz_eq_W, hW, GzGpChi.EFrhs_eq_GpChi]

/-- Under H-EF(χ) the zero-side entries are absolutely summable (for the χ-tail file). -/
theorem ZeroConfig.summable_Gsummand_chi (Z : ZeroConfig) (P : Params) (κ q : ℕ) (c : ℕ → ℂ) (T : ℝ)
    (hEF : ThmE.ExplicitFormulaPaperChi κ q c Z) (hL : 0 < P.L T)
    (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (k l : Fin (P.d T)) :
    Summable (fun ρ : Z.carrier => Z.Gsummand P T k l ρ) := by
  obtain ⟨hS, -, -⟩ := hEF (P.L T) hL (P.fk T k) (P.fk T l) (GzGp.fk_contDiff P T hφC2 k)
    (GzGp.fk_contDiff P T hφC2 l) (GzGp.fk_tsupport P T hφsupp k) (GzGp.fk_tsupport P T hφsupp l)
  refine hS.congr fun ρ => ?_
  unfold ZeroConfig.Gsummand ZeroConfig.Wsummand
  rw [GzGp.paperFT_fk, GzGp.paperFT_fk, ← Complex.conj_ofReal (P.tau T l), ← map_sub,
    GzGp.phiHat_conj, Complex.conj_conj, Complex.conj_ofReal]

end Zeta23
