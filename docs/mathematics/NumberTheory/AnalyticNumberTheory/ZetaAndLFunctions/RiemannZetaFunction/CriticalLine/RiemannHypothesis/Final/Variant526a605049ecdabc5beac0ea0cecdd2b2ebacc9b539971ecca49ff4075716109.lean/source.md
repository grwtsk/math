# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Final.Variant526a605049ecdabc5beac0ea0cecdd2b2ebacc9b539971ecca49ff4075716109

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `129215358bfaa9e62ffa1a5bff606c7b56610861` · SHA-256 `0db8ebbc83966baf64a935df72f03a2d3813424e58d026bbf3c6426e3af50f4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoeffMomentsFlatCWin.Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CoeffMomentsFlatCWin.Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/PrimeSide/Final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Part of the Zeta23 formalization.

Zeta23/XiPrime/PrimeSide/Final.lean — ξ′ prime side: discharge of the named input
PPInput by Zeta23/XiPrime/PrimeSide/PP.lean (prop_PP_c', KPP), and the input-free
forms of the producer theorems; also the flat-window wiring to XiPrime/Window.
-/
import Zeta23.XiPrime.PrimeSide.PP
import Zeta23.XiPrime.PrimeSide.Moments
import Zeta23.XiPrime.Window
import Zeta23.XiPrime.Window.FlatAdm
import Zeta23.XiPrime.PrimeSide.PPUpper
import Zeta23.XiPrime.Window.Quartic
import Zeta23.XiPrime.QuarticWindow.Family


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoeffMomentsFlatCWin.Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac

noncomputable section

open Real Filter Topology MeasureTheory Set

namespace Zeta23
namespace XiPrime

open PrimeSide

/-- **CoeffMoments for the flat window, instantiated**: for every coefficient family with
(H1)–(H3), `CoeffMoments Z (fun _ => P) Fam (cWin Fam.D P.lam vFlat)⁻¹`. -/
theorem coeffMoments_flat_cWin {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hPP : PPInput) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (fun _ => P) Fam (cWin Fam.D P.lam vFlat)⁻¹ := by
  obtain ⟨T₀, hT₀⟩ := admFamily_taper hP
  have hwin : AdmFamily P (fun T => P.phi T) P.crho := ⟨T₀, fun T hT => hT₀ T hT⟩
  have hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ Fam.D x := hF.D_nonneg
  exact coeffMoments_flat hP hlam1 hwin hF hΓ hMV hPP hRvM
    (cWin_vFlat_pos hD0 hP.lam_pos hP.lam_le_one)
    (tendsto_cRatio_flat hP hF.D_cont.continuousOn hD0)

/-- the same with the `1 / cWin` spelling (`kappaXi`-shape). -/
theorem coeffMoments_flat_one_div {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hPP : PPInput) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (fun _ => P) Fam (1 / cWin Fam.D P.lam vFlat) := by
  rw [one_div]; exact coeffMoments_flat_cWin hP hlam1 hF hΓ hMV hPP hRvM

/-- **[prop:PP] for P_c holds** (Zeta23/XiPrime/PrimeSide/PP.lean). -/
theorem ppInput_of_PP : PPInput := fun C cϱ hMV hC =>
  ⟨KPP C cϱ, fun p F c hF hT hc1 => by
    unfold sumW2g sumSqDivW sumSqW S1
    exact prop_PP_c' hMV hC.le hF hT c hc1⟩

/-- **CoeffMoments, flat window — no prime-side input left.**  Visible hypotheses: P.Valid, λ < 1,
the coefficient family's (H1)–(H3), H-Γ, H-MV, H-RvM for Z. -/
theorem coeffMoments_flat_final {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (fun _ => P) Fam (cWin Fam.D P.lam vFlat)⁻¹ :=
  coeffMoments_flat_cWin hP hlam1 hF hΓ hMV ppInput_of_PP hRvM

/-- the same with the `1 / cWin` spelling. -/
theorem coeffMoments_flat_final' {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (fun _ => P) Fam (1 / cWin Fam.D P.lam vFlat) := by
  rw [one_div]; exact coeffMoments_flat_final hP hlam1 hF hΓ hMV hRvM

/-- **MomentsW for any admissible family, input-free in PP** (general pole weight; for Assembly's
profile and Z′ instances). -/
theorem momentsW_of_family_final {P : Params} {Pf : ℝ → Params} {Fam : CoeffFamily} {cW : ℝ}
    {Z : ZeroConfig} (cPi : ℝ) (hP : P.Valid) (hlam1 : P.lam < 1)
    (hset : ∀ T, (Pf T).toSetting T = P.toSetting T)
    (hloc : ∀ T, (Pf T).localFun T = AdmWindow.localFun ((Pf T).phi T) (P.L T))
    (haL : ∀ T, (Pf T).a T * (Pf T).L T = AdmWindow.av ((Pf T).phi T) (P.L T) * P.L T)
    (hwin : AdmFamily P (fun T => (Pf T).phi T) cW)
    (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts) (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C)
    (hRvM : RiemannVonMangoldt Z) {cinf : ℝ} (hc0 : 0 < cinf)
    (hc : Tendsto (fun T => ThmD.cRatio (P.lam1 T) (AdmWindow.av ((Pf T).phi T) (P.L T))
        (AdmWindow.bv ((Pf T).phi T) (P.L T))
        (JD Fam.D (AdmWindow.gv ((Pf T).phi T)) (P.L T) (l T))) atTop (𝓝 cinf)) :
    MomentsW Z Pf Fam cPi cinf⁻¹ :=
  momentsW_of_family cPi hP hlam1 hset hloc haL hwin hF hΓ hMV ppInput_of_PP hRvM hc0 hc

/-- **CoeffMoments, QUARTIC window v(s) = 1 − (7/100)(2s)² − (51/200)(2s)⁴ — no prime-side input left.**
Window admissibility: admFamily_atV_quartic (Zeta23.XiPrime.QuarticWindow.Family); window
limit: tendsto_cRatio_quartic + cWin_vQuartic_pos (Zeta23.XiPrime.Window.Quartic). -/
theorem coeffMoments_quartic_final {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (P.atV vQuartic) Fam (cWin Fam.D P.lam vQuartic)⁻¹ := by
  have hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ Fam.D x := hF.D_nonneg
  exact coeffMoments_atV hP hlam1 (admFamily_atV_quartic hP) hF hΓ hMV ppInput_of_PP hRvM
    (cWin_vQuartic_pos hD0 hP.lam_pos hP.lam_le_one)
    (tendsto_cRatio_quartic hP hF.D_cont.continuousOn hD0)

/-- the same with the `1 / cWin` spelling. -/
theorem coeffMoments_quartic_final' {P : Params} {Fam : CoeffFamily} {Z : ZeroConfig}
    (hP : P.Valid) (hlam1 : P.lam < 1) (hF : Fam.Hyps) (hΓ : Zeta23.GammaFacts)
    (hMV : ∃ C : ℝ, 0 < C ∧ Zeta23.MVHilbert C) (hRvM : RiemannVonMangoldt Z) :
    CoeffMoments Z (P.atV vQuartic) Fam (1 / cWin Fam.D P.lam vQuartic) := by
  rw [one_div]; exact coeffMoments_quartic_final hP hlam1 hF hΓ hMV hRvM

/-- **PPUpper engine, input-free.** -/
theorem frobSq_Ppart_le_final {C : ℝ} (hMV : Zeta23.MVHilbert C) (hC : 0 < C)
    (cϱ lam : ℝ) (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ K T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (e : ℕ → ℂ), p.lam = lam → T₀ ≤ p.T →
      LocalHypsCore cϱ p F → e 1 = 0 →
      ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2
        ≤ K * p.L ^ 2 * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X
            + p.L * S1 e p.X ^ 2 + p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) :=
  frobSq_Ppart_le ppInput_of_PP hMV hC cϱ lam hlam

end XiPrime
end Zeta23
```
