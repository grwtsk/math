# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Package.Variant3e278edfc87868cc49a2e2eba792ac0b9fa967fd63a60c2fdc21a0f72080185b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5641d30740f29910306865b988dc254b1c921c20` · SHA-256 `1ab266cabf77ab1895ee5cc4132be3485b6ea1021ea7d8f29d84217fcc506f0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.C1Nonneg.Variantd295a377c91b90aaf71d447d0361e089bca8005b2b7fc5ee229a302a83029efb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d295a377c91b90aaf71d447d0361e089bca8005b2b7fc5ee229a302a83029efb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.C1Nonneg.Variantd295a377c91b90aaf71d447d0361e089bca8005b2b7fc5ee229a302a83029efb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d295a377c91b90aaf71d447d0361e089bca8005b2b7fc5ee229a302a83029efb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Tail/Package.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Tail/Package.lean — [prop:tail] with all its analytic inputs discharged from the
repository's other files, in the exact shape Zeta23/Main.lean consumes ("hTailPkg").

Inputs discharged here: A₀ and the local count from PaperInputs.RvM.local_count
(Hypotheses.lean); [eq:hfbound] for φ = Zeta23.Params.norm_phiHat_sub_I_mul_le, a ≥ 1/2 =
Zeta23.Params.half_le_a, C₁ ≤ 2‖ϱ″‖₁ = Zeta23.Params.C1_le (Taper.lean);
conj φ̂(z̄) = φ̂(z) = Zeta23.GzGp.phiHat_conj (hypothesis-free). The side condition 8w ≤ L
[eq:wrange] holds eventually since L = λ log(T/2π) → ∞ (Zeta23.Tail.tendsto_L_atTop).
-/
import Zeta23.Tail
import Zeta23.Taper
import Zeta23.Hypotheses.GzGp


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.C1Nonneg.Variantd295a377c91b90aaf71d447d0361e089bca8005b2b7fc5ee229a302a83029efb

noncomputable section

open Filter Complex

namespace Zeta23
namespace Tail

/-- C₁ = ‖φ″‖₁ ≥ 0. -/
lemma C1_nonneg (P : Params) (T : ℝ) : 0 ≤ P.C1 T :=
  MeasureTheory.integral_nonneg fun _ => abs_nonneg _

/-- **[prop:tail] package for Main.lean**: for an abstract zero configuration Z satisfying the
paper's inputs and valid parameters P, there is θ₀ : ℝ → ℝ (namely
θ₀(T) = 4A₀C₁²X^{1/2}log(4T)/D₀² = theta0 A₀ (e^{L/4}·C₁) T) such that eventually in T
Assembly.TailInputs Z P T (θ₀ T) holds ("‖Ẽ‖ ≤ θ₀", "‖Ê‖₁ ≤ θ₀/(aL)"), and
θ₀(T) ≤ C · l(T) · T^{λ/2−1} eventually ("θ₀ ≤ 32A₀‖ϱ″‖₁² l T^{λ/2−1}"). -/
theorem eventually_tailPackage (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid) :
    ∃ θ₀ : ℝ → ℝ, (∀ᶠ T in atTop, Assembly.TailInputs Z P T (θ₀ T)) ∧
      ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1) := by
  obtain ⟨A₀, hA₀, hloc⟩ := H.RvM.local_count
  have hwL : ∀ᶠ T in atTop, 8 * P.w ≤ P.L T := (tendsto_L_atTop P hP).eventually_ge_atTop _
  refine ⟨fun T => theta0 A₀ (Real.exp (P.L T / 4) * P.C1 T) T, ?_, ?_⟩
  · refine eventually_tailInputs Z P hP hA₀ hloc (fun T => P.C1 T) (fun T => C1_nonneg P T)
      ?_ ?_ ?_
    · filter_upwards [hwL] with T hwL
      exact fun r y hy hz => Params.norm_phiHat_sub_I_mul_le hP hwL r y hy hz
    · filter_upwards [hwL] with T hwL
      linarith [Params.half_le_a hP hwL]
    · exact Eventually.of_forall fun T z => GzGp.phiHat_conj P T z
  · exact eventually_theta0_le P hP hA₀ (fun T => P.C1 T) (fun T => C1_nonneg P T)
      (hwL.mono fun T hwL => Params.C1_le hP hwL)

end Tail
end Zeta23
```
