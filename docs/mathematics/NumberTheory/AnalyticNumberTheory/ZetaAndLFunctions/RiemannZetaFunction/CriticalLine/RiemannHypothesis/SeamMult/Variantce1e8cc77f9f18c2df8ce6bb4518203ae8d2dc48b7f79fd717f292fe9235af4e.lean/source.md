# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeamMult.Variantce1e8cc77f9f18c2df8ce6bb4518203ae8d2dc48b7f79fd717f292fe9235af4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea878713b90813849d71a90f5ca0b6d026c65295` · SHA-256 `af8db8a4afa098c7f4fc30a3d8703ea8295141cc1618140b16eb5954e92deab3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CtrSubFrobSqPerturb.Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CtrSubFrobSqPerturb.Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Assembly/SeamMult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Assembly/SeamMult.lean — seams A for the multiplicity-aware rank–trace variants.  Decorates `hatAz_mult2/3` (Zeta23/ZeroSide/Mult.lean) with the
seamA pattern: Â → Ĝ = Â + Ê (tail perturbation, c-generic) and I′ → (T,2T] windows.  Conclusions:
  seamA_mult2 : 4trĜ − ‖Ĝ‖² − 2N − 3·NII − B(4 + 2√‖Ĝ‖² + B) ≤ N₀ˢ(T,2T)      [c = 2]
  seamA_mult3 : 6trĜ − ‖Ĝ‖² − 3N − 5·NII − B(6 + 2√‖Ĝ‖² + B) ≤ 2·N_d(T,2T)   [c = 3]
feeding Assembly/Certificate's count_certificate (c=2) and count_certificate_c3.
-/
import Zeta23.Assembly
import Zeta23.ZeroSide.Mult


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CtrSubFrobSqPerturb.Variant578d12241b3d0de69905c59f29130d55148d55b33c5b8796659433f8225aaf8f

open RHLinalg

noncomputable section

namespace Zeta23
namespace Assembly

variable {n : Type*} [Fintype n] [DecidableEq n] {𝕜 : Type*} [RCLike 𝕜]

/-- c-generic version of `four_tr_sub_frobSq_perturb`. -/
theorem ctr_sub_frobSq_perturb {Ghat Ahat Ehat : Matrix n n 𝕜} (c : ℝ) (hc : 0 ≤ c)
    (hGAE : Ghat = Ahat + Ehat) {B : ℝ} (hB : 0 ≤ B)
    (htrE : |rtrace Ehat| ≤ B) (hfrE : frobSq Ehat ≤ B ^ 2) :
    c * rtrace Ghat - frobSq Ghat - B * (c + 2 * Real.sqrt (frobSq Ghat) + B)
      ≤ c * rtrace Ahat - frobSq Ahat := by
  have hA : Ahat = Ghat - Ehat := by rw [hGAE]; abel
  have htr : rtrace Ahat = rtrace Ghat - rtrace Ehat := by rw [hA, rtrace_sub]
  have hsqE : Real.sqrt (frobSq Ehat) ≤ B := Real.sqrt_le_iff.mpr ⟨hB, hfrE⟩
  have hsqG : 0 ≤ Real.sqrt (frobSq Ghat) := Real.sqrt_nonneg _
  have hfrA : frobSq Ahat ≤ (Real.sqrt (frobSq Ghat) + B) ^ 2 := by
    rw [hA]
    refine (frobSq_sub_le Ghat Ehat).trans ?_
    gcongr
  have habs := abs_le.mp htrE
  have hGsq : Real.sqrt (frobSq Ghat) ^ 2 = frobSq Ghat := Real.sq_sqrt (frobSq_nonneg _)
  nlinarith [mul_le_mul_of_nonneg_left habs.1 hc, sq_nonneg (Real.sqrt (frobSq Ghat) + B)]

variable {Z : ZeroConfig} {P : Params} {T : ℝ}

/-- **Seam A, multiplicity-aware, c = 2**: the seamA shape with conclusion N₀ˢ. -/
theorem seamA_mult2 (hT : 0 ≤ T) (hconj : ZeroSide.PhiHatConj T P)
    (hreal : ZeroSide.PhiHatReal T P) (hPois : ZeroSide.PoissonSq T P)
    {θ₀ : ℝ} (hTl : TailInputs Z P T θ₀) (ha : 0 < P.a T) (hL : 0 < P.L T) :
    4 * rtrace (P.hat T (Z.Gz P T)) - frobSq (P.hat T (Z.Gz P T)) - 2 * (Z.N T (2 * T) : ℝ)
      - 3 * (NII Z T : ℝ)
      - θ₀ / (P.a T * P.L T)
          * (4 + 2 * Real.sqrt (frobSq (P.hat T (Z.Gz P T))) + θ₀ / (P.a T * P.L T))
      ≤ Z.N0s T (2 * T) := by
  obtain ⟨Bc, hB0, htrE, hfrE, hBle⟩ := hTl.hat
  have hGAE : P.hat T (Z.Gz P T) = P.hat T (Z.Az P T) + P.hat T (Z.Ez P T) := by
    rw [← hat_add]; congr 1; simp [ZeroConfig.Ez]
  have hB₀ : 0 ≤ θ₀ / (P.a T * P.L T) := div_nonneg hTl.theta_nonneg (mul_pos ha hL).le
  have hcore := ZeroSide.hatAz_mult2 Z T P hconj hreal hPois (by positivity)
  have hpert := ctr_sub_frobSq_perturb 4 (by norm_num) hGAE hB₀ (htrE.trans hBle)
    (hfrE.trans (pow_le_pow_left₀ hB0 hBle 2))
  have hs1 : (Z.s1 T : ℝ) ≤ (Z.N0s T (2 * T) : ℝ) + (NII Z T : ℝ) := by
    exact_mod_cast s1_le Z hT
  have hNI : (Z.NIprime T : ℝ) = (Z.N T (2 * T) : ℝ) + (NII Z T : ℝ) := by
    exact_mod_cast NIprime_eq Z hT
  rw [hNI] at hcore
  linarith [hcore, hpert, hs1]

/-- **Seam A, multiplicity-aware, c = 3**: 6trĜ − ‖Ĝ‖² − 3N − 5NII − B(6+2√+B) ≤ 2·N_d. -/
theorem seamA_mult3 (hT : 0 ≤ T) (hconj : ZeroSide.PhiHatConj T P)
    (hreal : ZeroSide.PhiHatReal T P) (hPois : ZeroSide.PoissonSq T P)
    {θ₀ : ℝ} (hTl : TailInputs Z P T θ₀) (ha : 0 < P.a T) (hL : 0 < P.L T) :
    6 * rtrace (P.hat T (Z.Gz P T)) - frobSq (P.hat T (Z.Gz P T)) - 3 * (Z.N T (2 * T) : ℝ)
      - 5 * (NII Z T : ℝ)
      - θ₀ / (P.a T * P.L T)
          * (6 + 2 * Real.sqrt (frobSq (P.hat T (Z.Gz P T))) + θ₀ / (P.a T * P.L T))
      ≤ 2 * (Z.Nd T (2 * T) : ℝ) := by
  obtain ⟨Bc, hB0, htrE, hfrE, hBle⟩ := hTl.hat
  have hGAE : P.hat T (Z.Gz P T) = P.hat T (Z.Az P T) + P.hat T (Z.Ez P T) := by
    rw [← hat_add]; congr 1; simp [ZeroConfig.Ez]
  have hB₀ : 0 ≤ θ₀ / (P.a T * P.L T) := div_nonneg hTl.theta_nonneg (mul_pos ha hL).le
  have hcore := ZeroSide.hatAz_mult3 Z T P hconj hreal hPois (by positivity)
  have hpert := ctr_sub_frobSq_perturb 6 (by norm_num) hGAE hB₀ (htrE.trans hBle)
    (hfrE.trans (pow_le_pow_left₀ hB0 hBle 2))
  have hZd : ((Z.ZIprime T).ncard : ℝ) ≤ (Z.Nd T (2 * T) : ℝ) + (NII Z T : ℝ) := by
    exact_mod_cast card_ZIprime_le Z hT
  have hNI : (Z.NIprime T : ℝ) = (Z.N T (2 * T) : ℝ) + (NII Z T : ℝ) := by
    exact_mod_cast NIprime_eq Z hT
  rw [hNI] at hcore
  linarith [hcore, hpert, hZd]

end Assembly
end Zeta23
```
