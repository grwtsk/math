# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FlatAdm.Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a594819b5b0c0056d0a4c92a4bca3d39cfd2805` · SHA-256 `6bb61eff80b33a312e064c57328f3b018b31acf9fc420ab3b24e7b5cbabcb0c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdmWindowTaperPhi.Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AdmWindowTaperPhi.Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/Window/FlatAdm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/Window/FlatAdm.lean — the tree's own ramp taper P.phi is an admissible window
(Zeta23.AdmWindow, Zeta23/ThmD/WindowCore.lean) with c = c_ϱ.

WindowCore's header asserts this ("so is the flat window with c = cRho ϱ"); since the
coefficient-generalised prime side is stated over AdmWindow uniformly (one code path for the flat and the
quartic windows), we record it as a lemma.  Every field is a Taper/ fact: [eq:phinorms] ‖φ′‖₁ = ‖(φ²)′‖₁ = 2,
‖φ″‖₁ = 2‖ϱ″‖₁/w ≤ c_ϱ/w, ‖(φ²)″‖₁ ≤ c_ϱ/w (Zeta23/Taper/Norms.lean).
Also: 1/2 ≤ bv (indeed 3/4 ≤ b, Zeta23/Taper/Params.lean three_quarters_le_b); the rfl-bridge
AdmWindow.localFun (P.phi T) (P.L T) = P.localFun T is Zeta23/ThmD/ParamsD.lean's localFun_eq_admWindow.
-/
import Zeta23.ThmD.WindowCore
import Zeta23.Taper
import Zeta23.Assembly


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdmWindowTaperPhi.Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b

open Set Filter

noncomputable section

namespace Zeta23
namespace XiPrime

/-- the ramp taper φ = ϱ((L/2 − |u|)/w) is an AdmWindow with constant c_ϱ (generic parameters). -/
theorem admWindow_taperPhi {ϱ : ℝ → ℝ} {L w : ℝ} (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    AdmWindow (Taper.phi ϱ L w) L w (Taper.cRho ϱ) where
  one_le_w := hw
  w8 := hwL
  four_le_c := Taper.four_le_cRho hϱ
  even := Taper.phi_even
  nonneg := Taper.phi_nonneg hϱ
  le_one := Taper.phi_le_one hϱ
  contDiff := (Taper.phi_contDiff hϱ (by linarith) (by linarith)).of_le (by norm_num)
  support := fun _ hu => Taper.phi_eq_zero hϱ (by linarith) hu
  l1_deriv := (Taper.integral_abs_deriv_phi hϱ (by linarith) (by linarith)).le
  l1_deriv_sq := (Taper.integral_abs_deriv_phi_sq hϱ (by linarith) (by linarith)).le
  l1_deriv2 := by
    rw [Taper.integral_abs_deriv2_phi hϱ (by linarith) (by linarith)]
    exact div_le_div_of_nonneg_right (Taper.two_mul_l1Deriv2_le_cRho hϱ) (by linarith)
  l1_deriv2_sq := Taper.integral_abs_deriv2_phi_sq_le hϱ hw (by linarith)

/-- **the flat taper of a valid parameter set is an admissible window** (eventually 8w ≤ L). -/
theorem admWindow_taper {P : Params} (hP : P.Valid) {T : ℝ} (hwL : 8 * P.w ≤ P.L T) :
    AdmWindow (P.phi T) (P.L T) P.w P.crho := by
  rw [Params.crho_eq]
  exact admWindow_taperPhi hP.taper hP.one_le_w hwL

/- the abstract local data of the taper ARE P's, field by field: Zeta23/ThmD/ParamsD.lean
`localFun_eq_admWindow (Q : Params) (T) : Q.localFun T = AdmWindow.localFun (Q.phi T) (Q.L T) := rfl`. -/

theorem av_taper (P : Params) (T : ℝ) : AdmWindow.av (P.phi T) (P.L T) = P.a T := rfl
theorem bv_taper (P : Params) (T : ℝ) : AdmWindow.bv (P.phi T) (P.L T) = P.b T := rfl
theorem gv_taper (P : Params) (T : ℝ) : AdmWindow.gv (P.phi T) = P.g T := rfl

/-- 1/2 ≤ bv for the taper (in fact 3/4 ≤ b). -/
theorem half_le_bv_taper {P : Params} (hP : P.Valid) {T : ℝ} (hwL : 8 * P.w ≤ P.L T) :
    1 / 2 ≤ AdmWindow.bv (P.phi T) (P.L T) := by
  rw [bv_taper]; linarith [Params.three_quarters_le_b hP hwL]

/-- **The flat admissible family**, in the `AdmFamily` shape:
∃ T₀, ∀ T ≥ T₀, AdmWindow (P.phi T) (P.L T) P.w c_ϱ ∧ 1/2 ≤ bv. -/
theorem admFamily_taper {P : Params} (hP : P.Valid) :
    ∃ T₀ : ℝ, ∀ T ≥ T₀, AdmWindow (P.phi T) (P.L T) P.w P.crho ∧
      1 / 2 ≤ AdmWindow.bv (P.phi T) (P.L T) := by
  have hev : ∀ᶠ T in atTop, 8 * P.w ≤ P.L T :=
    (Assembly.tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop _
  obtain ⟨T₀, hT₀⟩ := Filter.eventually_atTop.mp hev
  exact ⟨T₀, fun T hT => ⟨admWindow_taper hP (hT₀ T hT), half_le_bv_taper hP (hT₀ T hT)⟩⟩

end XiPrime
end Zeta23
```
