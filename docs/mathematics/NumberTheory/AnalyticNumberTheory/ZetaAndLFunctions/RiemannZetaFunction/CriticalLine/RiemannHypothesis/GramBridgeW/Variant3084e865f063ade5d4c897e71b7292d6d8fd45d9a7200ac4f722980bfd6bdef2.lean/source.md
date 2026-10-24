# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GramBridgeW.Variant3084e865f063ade5d4c897e71b7292d6d8fd45d9a7200ac4f722980bfd6bdef2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53f8fd2e0a2f7b17a090ed27ede2725c0d1e2fac` · SHA-256 `bff4b79d95fdf66418d551fd7a8305b792c5e0ba8c4108e99beb212b4f03d36d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LiteratureRHSW.Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LiteratureRHSW.Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/Hardy/GramBridgeW.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/Hardy/GramBridgeW.lean — the pole-weight-2 Gram bridge for the W (= Z′) explicit formula
(adaptation of ExplicitFormula/GramBridge.lean (S2)/(S3) with ν ↦ nucW 2 = μ + 2·Π_X + P_c
[XF′ Prop 9.1 / Thm 9.2(a): the pole weight doubles]).

  literatureRHSW k := 2·(ĥ(i/2) + ĥ(−i/2)) − Σ_n Λ(n)n^{-1/2}(k(log n) + k(−log n)) + (1/2π)∫ ĥ·γ-bracket
                   = literatureRHS k + (ĥ(i/2) + ĥ(−i/2))                                  (literatureRHSW_eq)
  literatureRHSW (kfun) = ∫ ĥ(τ)·nucW 2 X (−Λ) (τ) dτ                                       (literatureRHSW_eq_integral_nucW)
  nucW ϖ X (C(·;Λ⋆)) = nucW ϖ X (−Λ) + P_{C+Λ}(X)                                            (nucW_xiCoeff_eq')
  M^𝒵_{kl} = GentryW1 = literatureRHSW (kfun) + ∫ ĥ·P_{cJ}  given the density split         (GentryW1_eq)
-/
import Zeta23.XiPrime.ExplicitFormula.GramBridge
import Zeta23.XiPrime.ExplicitFormula.PrimeTermJ
import Zeta23.XiPrime.StatementW
import Zeta23.ExplicitFormula.Bridge


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LiteratureRHSW.Variant1900d4e76c9025783bb06fff07230c398a03a1fba41474bf9ef73074b4f47604

open scoped ComplexConjugate FourierTransform ArithmeticFunction
open Complex MeasureTheory Set Filter Topology

noncomputable section

namespace Zeta23
namespace XiPrime

open Zeta23.EF

/-- the literature right-hand side with POLE WEIGHT 2 (the W / Z′ explicit formula). -/
def literatureRHSW (k : ℝ → ℂ) : ℂ :=
  2 * (paperFT k (I / 2) + paperFT k (-I / 2))
    - (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (k (Real.log n) + k (-Real.log n)))
    + (1 / (2 * Real.pi) : ℂ) * ∫ r : ℝ, paperFT k r * ((gammaBracket r : ℝ) : ℂ)

theorem literatureRHSW_eq (k : ℝ → ℂ) :
    literatureRHSW k = literatureRHS k + (paperFT k (I / 2) + paperFT k (-I / 2)) := by
  unfold literatureRHSW literatureRHS
  ring

/-- ν with pole weight ϖ for the ξ′/W coefficients splits off the ζ density:
nucW ϖ X (C(·;Λ⋆)) = nucW ϖ X (−Λ) + P_{C+Λ}(X). -/
theorem nucW_xiCoeff_eq' (cPi X : ℝ) (Λs : ℂ) (τ : ℝ) :
    nucW cPi X (xiCoeff Λs) τ
      = nucW cPi X (fun N => -((Λ N : ℝ) : ℂ)) τ + Pc X (fun N => xiCoeff Λs N + ((Λ N : ℝ) : ℂ)) τ := by
  have hsplit : Pc X (xiCoeff Λs) τ
      = Pc X (fun N => -((Λ N : ℝ) : ℂ)) τ + Pc X (fun N => xiCoeff Λs N + ((Λ N : ℝ) : ℂ)) τ := by
    rw [← Pc_add]
    exact Pc_congr (fun N _ => by ring) τ
  simp only [nucW]
  rw [hsplit]
  ring

/-- nucW 2 X (−Λ) = ν_X + Π_X pointwise. -/
theorem nucW_two_neg_vonMangoldt (X τ : ℝ) :
    nucW 2 X (fun N => -((Λ N : ℝ) : ℂ)) τ = nuX X τ + PiX X τ := by
  simp only [nucW, nuX, Pc_neg_vonMangoldt]
  ring

section Pair
variable (P : Params) (T : ℝ)

/-- **literatureRHSW (f_k ⋆ f̃_l) = ∫ ĥ(τ)·[μ + 2Π_X + P_X](τ) dτ**, X = e^L. -/
theorem literatureRHSW_eq_integral_nucW (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T) (k l : ℤ) :
    literatureRHSW (kfun P T k l)
      = ∫ τ : ℝ, paperFT (kfun P T k l) τ * ((nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ : ℝ) : ℂ) := by
  have hkd := pairTest_contDiff P T hφC2 hφsupp k l
  have hkc := pairTest_hasCompactSupport P T hφsupp k l
  have hks := tsupport_pairTest P T hφsupp k l
  have hFk := Zeta23.EF.integrable_fourier_of_contDiff_two hkd hkc
  have hμ := Zeta23.EF.integrable_paperFT_mul_mu hkd hkc Zeta23.gammaFacts
  have hnu : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ)) :=
    integrable_paperFT_pairTest_mul_nuX P T hφC2 hφsupp hL k l
  have hPi : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (PiX (P.X T) τ : ℂ)) :=
    Zeta23.EF.integrable_paperFT_mul_PiX hL hFk
  rw [literatureRHSW_eq, Zeta23.EF.literatureRHS_eq_integral_nu hL hkd.continuous hks hFk hμ,
    Zeta23.EF.pole_term hL hkd.continuous hks hFk]
  change (∫ τ : ℝ, paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ))
      + (∫ τ : ℝ, paperFT (kfun P T k l) τ * (PiX (P.X T) τ : ℂ)) = _
  rw [← integral_add hnu hPi]
  refine integral_congr_ae (ae_of_all _ fun τ => ?_)
  dsimp only
  rw [nucW_two_neg_vonMangoldt]
  push_cast
  ring

/-- integrability of ĥ·nucW 2 X (−Λ). -/
theorem integrable_paperFT_pairTest_mul_nucW2 (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T) (k l : ℤ) :
    Integrable (fun τ : ℝ =>
      paperFT (kfun P T k l) τ * ((nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ : ℝ) : ℂ)) := by
  have hkd := pairTest_contDiff P T hφC2 hφsupp k l
  have hkc := pairTest_hasCompactSupport P T hφsupp k l
  have hFk := Zeta23.EF.integrable_fourier_of_contDiff_two hkd hkc
  have hnu : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ)) :=
    integrable_paperFT_pairTest_mul_nuX P T hφC2 hφsupp hL k l
  have hPi : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (PiX (P.X T) τ : ℂ)) :=
    Zeta23.EF.integrable_paperFT_mul_PiX hL hFk
  refine (hnu.add hPi).congr (ae_of_all _ fun τ => ?_)
  simp only [Pi.add_apply]
  rw [nucW_two_neg_vonMangoldt]
  push_cast
  ring

/-- **M^𝒵_{kl} = literatureRHSW + J-term**: the entry-dependent W main term splits as the pole-weight-2 literature
RHS plus ∫ ĥ·P_{cJ}, given the density decomposition nucW 2 X (C(·; L_{2⋆})) = nucW 2 X (−Λ) + P_{cJ}(X). -/
theorem GentryW1_eq (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T)
    (k l : Fin (P.d T)) (cJ : ℕ → ℂ)
    (hnuc : ∀ τ : ℝ, nucW 2 (P.X T) (xiCoeff (((L2star (P.tauStar T k l)) : ℝ) : ℂ)) τ
      = nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ + Pc (P.X T) cJ τ)
    (hint : Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ))) :
    (((P.GentryW1 T k l : ℝ)) : ℂ)
      = literatureRHSW (kfun P T k l) + ∫ τ : ℝ, paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ) := by
  have hW : ∀ τ : ℝ, ((P.phiHatR T (τ - P.tau T k) : ℝ) : ℂ) * ((P.phiHatR T (τ - P.tau T l) : ℝ) : ℂ)
      = paperFT (kfun P T k l) τ := fun τ => by
    rw [← Complex.ofReal_mul, paperFT_pairTest_ofReal P T hφC2 hφsupp k l τ]
  have hmain := integrable_paperFT_pairTest_mul_nucW2 P T hφC2 hφsupp hL k l
  rw [literatureRHSW_eq_integral_nucW P T hφC2 hφsupp hL]
  unfold Params.GentryW1 Params.GentryCW
  rw [← integral_complex_ofReal]
  have h1 : ∀ τ : ℝ,
      ((P.phiHatR T (τ - P.tau T k) * P.phiHatR T (τ - P.tau T l)
          * nucW 2 (P.X T) (xiCoeff (((L2star (P.tauStar T k l)) : ℝ) : ℂ)) τ : ℝ) : ℂ)
        = paperFT (kfun P T k l) τ * ((nucW 2 (P.X T) (fun N => -((Λ N : ℝ) : ℂ)) τ : ℝ) : ℂ)
          + paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ) := by
    intro τ
    rw [hnuc τ]; push_cast; rw [hW τ]; ring
  simp_rw [h1]
  rw [integral_add hmain hint]

end Pair

end XiPrime
end Zeta23
```
