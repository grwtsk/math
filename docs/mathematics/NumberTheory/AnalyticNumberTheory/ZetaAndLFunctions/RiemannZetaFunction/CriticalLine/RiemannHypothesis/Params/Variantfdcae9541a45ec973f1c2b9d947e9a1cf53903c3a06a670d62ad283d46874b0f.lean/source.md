# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Params.Variantfdcae9541a45ec973f1c2b9d947e9a1cf53903c3a06a670d62ad283d46874b0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7552b13b0ebe04b2e02fd5b28a9af2ecbcaef285` · SHA-256 `ce21d5c661569396054e75674bfed94036fdc1245e5c0a281e898590f23d1eea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhiVEq.Variant27712ed2468a9ec2bc0ac8e19894889575ab6a9b7ab2b09eb8f6698338d8296f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27712ed2468a9ec2bc0ac8e19894889575ab6a9b7ab2b09eb8f6698338d8296f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PhiVEq.Variant27712ed2468a9ec2bc0ac8e19894889575ab6a9b7ab2b09eb8f6698338d8296f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"27712ed2468a9ec2bc0ac8e19894889575ab6a9b7ab2b09eb8f6698338d8296f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/QuarticWindow/Params.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/QuarticWindow/Params.lean — the window-realizing parameter family `P.atV v T`
(mirror of Zeta23/ThmD/ParamsD.lean for the profile-v windows of Zeta23/XiPrime/Defs.lean).

`P.phiV v T u = √(max 0 (v(u/L))) · φ(u)` and `P.atV v T := ⟨x ↦ φ_v(L/2 − w·x), λ, w⟩` are those of
Zeta23/XiPrime/Defs.lean §4.  Here: λ, w — hence L, X, λ₁, d, τ_k, h, 𝓔_T, toSetting — of `P.atV v T` are P's
DEFINITIONALLY (rfl lemmas), and the window of `P.atV v T` AT HEIGHT T is φ_v (`atV_phi`, needs v even and
w ≠ 0), so its abstract local data / taper constants / prime-side traces are the AdmWindow data of φ_v.
-/
import Zeta23.XiPrime.Defs
import Zeta23.ThmD.ParamsD


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhiVEq.Variant27712ed2468a9ec2bc0ac8e19894889575ab6a9b7ab2b09eb8f6698338d8296f

noncomputable section

open Real

namespace Zeta23
namespace Params

variable (P : Params) (v : ℝ → ℝ) (T : ℝ)

@[simp] theorem atV_lam : (P.atV v T).lam = P.lam := rfl
@[simp] theorem atV_w : (P.atV v T).w = P.w := rfl
@[simp] theorem atV_L : (P.atV v T).L = P.L := rfl
@[simp] theorem atV_X : (P.atV v T).X = P.X := rfl
@[simp] theorem atV_lam1 : (P.atV v T).lam1 = P.lam1 := rfl
@[simp] theorem atV_hgrid : (P.atV v T).hgrid = P.hgrid := rfl
@[simp] theorem atV_d : (P.atV v T).d = P.d := rfl
@[simp] theorem atV_tau : (P.atV v T).tau = P.tau := rfl
@[simp] theorem atV_calE : (P.atV v T).calE = P.calE := rfl
@[simp] theorem atV_toSetting : (P.atV v T).toSetting = P.toSetting := rfl

/-- φ_v in closed form on the tree's taper: φ_v(u) = √(max 0 (v(u/L)))·Taper.phi ϱ L w u (rfl). -/
theorem phiV_eq (u : ℝ) :
    P.phiV v T u = Real.sqrt (max 0 (v (u / P.L T))) * Taper.phi P.ϱ (P.L T) P.w u := rfl

/-- φ_v is even when v is. -/
theorem phiV_even (hv : ∀ s, v (-s) = v s) (u : ℝ) : P.phiV v T (-u) = P.phiV v T u := by
  simp only [phiV_eq, neg_div, hv, Taper.phi_even]

variable {P v}

/-- **the window of `P.atV v T` at height T is φ_v** (v even, w ≠ 0). -/
theorem atV_phi (hw : P.w ≠ 0) (hv : ∀ s, v (-s) = v s) : (P.atV v T).phi T = P.phiV v T := by
  funext u
  show P.phiV v T (P.L T / 2 - P.w * ((P.lam * l T / 2 - |u|) / P.w)) = P.phiV v T u
  have e : P.L T / 2 - P.w * ((P.lam * l T / 2 - |u|) / P.w) = |u| := by
    simp only [Params.L]; field_simp; ring
  rw [e]
  rcases le_or_gt 0 u with hu | hu
  · rw [abs_of_nonneg hu]
  · rw [abs_of_neg hu]
    exact phiV_even P v T hv u

theorem atV_phi_valid (hP : P.Valid) (hv : ∀ s, v (-s) = v s) : (P.atV v T).phi T = P.phiV v T :=
  atV_phi T (by linarith [hP.one_le_w]) hv

/-- the abstract local data of `P.atV v T` at height T are the AdmWindow data of φ_v. -/
theorem atV_localFun (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).localFun T = AdmWindow.localFun (P.phiV v T) (P.L T) := by
  rw [localFun_eq_admWindow, atV_phi_valid T hP hv]; rfl

theorem atV_a (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).a T = AdmWindow.av (P.phiV v T) (P.L T) := by
  rw [show (P.atV v T).a T = ((P.atV v T).localFun T).a from rfl, atV_localFun T hP hv]; rfl

theorem atV_b (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).b T = AdmWindow.bv (P.phiV v T) (P.L T) := by
  rw [show (P.atV v T).b T = ((P.atV v T).localFun T).b from rfl, atV_localFun T hP hv]; rfl

theorem atV_phiHat (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).phiHat T = AdmWindow.vHat (P.phiV v T) := by
  show AdmWindow.vHat ((P.atV v T).phi T) = _
  rw [atV_phi_valid T hP hv]

theorem atV_phiHatR (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).phiHatR T = AdmWindow.vHatR (P.phiV v T) := by
  show AdmWindow.vHatR ((P.atV v T).phi T) = _
  rw [atV_phi_valid T hP hv]

/-- the prime-side traces of `P.atV v T` at height T are the abstract-layer traces of the φ_v data. -/
theorem atV_trGtilde (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).trGtilde T = PrimeSide.trGtA (P.toSetting T) (AdmWindow.localFun (P.phiV v T) (P.L T)) := by
  rw [← PrimeSide.trGtA_concrete (P.atV v T) T, atV_localFun T hP hv]; rfl

theorem atV_trGtildeSq (hP : P.Valid) (hv : ∀ s, v (-s) = v s) :
    (P.atV v T).trGtildeSq T = PrimeSide.trGt2A (P.toSetting T) (AdmWindow.localFun (P.phiV v T) (P.L T)) := by
  rw [← PrimeSide.trGt2A_concrete (P.atV v T) T, atV_localFun T hP hv]; rfl

/-! ### eventual side conditions shared by the QuarticWindow files -/

/-- L_T → ∞ (valid parameters). -/
theorem tendsto_L_of_valid (hP : P.Valid) : Filter.Tendsto P.L Filter.atTop Filter.atTop := by
  have h : Filter.Tendsto (fun T : ℝ => Real.log (T / (2 * Real.pi))) Filter.atTop Filter.atTop :=
    Real.tendsto_log_atTop.comp (Filter.tendsto_id.atTop_div_const (by positivity))
  exact (h.const_mul_atTop hP.lam_pos).congr fun T => by simp [Params.L, l]

/-- eventually 8w ≤ L_T. -/
theorem eventually_w8 (hP : P.Valid) : ∀ᶠ T in Filter.atTop, 8 * P.w ≤ P.L T :=
  (tendsto_L_of_valid hP).eventually_ge_atTop _

end Params
end Zeta23

end
```
