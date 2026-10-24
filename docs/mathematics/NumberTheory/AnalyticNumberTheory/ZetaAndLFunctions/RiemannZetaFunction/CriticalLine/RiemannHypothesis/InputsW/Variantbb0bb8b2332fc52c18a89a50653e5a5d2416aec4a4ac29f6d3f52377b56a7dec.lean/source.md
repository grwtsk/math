# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InputsW.Variantbb0bb8b2332fc52c18a89a50653e5a5d2416aec4a4ac29f6d3f52377b56a7dec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f571d3a8802b71084eebf1511ff4fb14c6d7ec6e` · SHA-256 `f27525f71cb61feb97fe8202971ecb9c380bc6e9f6cab1f0417252c25f31b907`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReexpansionW.Variant0e6ef907d0dbf7666d2272ec93b8fa45992246303b0b16c18efe2d4110066951","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e6ef907d0dbf7666d2272ec93b8fa45992246303b0b16c18efe2d4110066951","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ReexpansionW.Variant0e6ef907d0dbf7666d2272ec93b8fa45992246303b0b16c18efe2d4110066951","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0e6ef907d0dbf7666d2272ec93b8fa45992246303b0b16c18efe2d4110066951","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/Transfer/InputsW.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Part of the Zeta23 formalization.

Z′ (Hardy W) analogue, TRACE TRANSFER: the coefficient INPUT proposition of
the W analogue of [XF′ Lemma 6.1] (produced by theorem wReexpansion).

`Reexpansion` with ONE change, in the field `expand`: the base point is the REAL
parameter ½ l(T) (= Defs.L2star at τ⋆ = T; [XF′ §9.3(ii)]: "C(N; ½ l) (REAL parameter, no phase)") instead of
L_T = ½l + iπ/4.  With L_{2⋆}(τ⋆_{kl}) = ½ log(τ⋆/2π) = ½ l + δ_{kl}, δ_{kl} = ½ log(τ⋆_{kl}/T) ∈ [0, ½ log 2] ⊆ [0, 1/2]
exactly as for ξ′, the expansion is on δ ∈ Icc 0 (1/2).  This is the right
sentence for F = wCoeffFamily (F.c T N = xiCoeff ((l T / 2 : ℝ) : ℂ) N by rfl).
-/
import Zeta23.XiPrime.Transfer.Inputs


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReexpansionW.Variant0e6ef907d0dbf7666d2272ec93b8fa45992246303b0b16c18efe2d4110066951

noncomputable section

open Finset Filter Real
open scoped BigOperators

namespace Zeta23
namespace XiPrime

/-- **The re-expansion input for the Z′ coefficients** [XF′ §6 at the real base ½l; §9.3(ii)].
Provided by the theorem `wReexpansion : ∃ e ρ₀ A T₀, 0 ≤ ρ₀ ∧ ReexpansionW wCoeffFamily e ρ₀ A T₀`,
with e T r N = Σ_{j<Ω(N)} binom(−(j+1), r) (½l)^{−(j+1)−r} [(Λ·log)∗Λ^{∗j}](N).  Constants are T-uniform; sums over
N ∈ Finset.Ioc 0 ⌊x⌋₊ for 2 ≤ x ≤ e^{l(T)}; 0 ≤ A is not carried (derivable from H3). -/
structure ReexpansionW (F : CoeffFamily) (e : ℝ → ℕ → ℕ → ℂ) (ρ₀ A T₀ : ℝ) : Prop where
  /-- C(N; ½l + δ) − c^{(T)}_N = Σ_{r≥1} e_r(N) δ^r  on δ ∈ [0, 1/2]  (absolutely convergent: |δ| < ½l once l > 1). -/
  expand : ∀ T : ℝ, T₀ ≤ T → ∀ δ : ℝ, δ ∈ Set.Icc (0:ℝ) (1 / 2) → ∀ N : ℕ,
    HasSum (fun r : ℕ => e T (r + 1) N * (δ : ℂ) ^ (r + 1))
      (xiCoeff (((l T / 2 : ℝ) : ℂ) + δ) N - F.c T N)
  /-- e_r(1) = 0. -/
  e_one : ∀ T : ℝ, ∀ r : ℕ, e T r 1 = 0
  /-- (H1)_r: Σ_{N≤x} |e_r(N)| N^{−1/2} ≤ A (ρ₀/l)^r √x · l. -/
  H1 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ / Real.sqrt N) ≤ A * (ρ₀ / l T) ^ r * Real.sqrt x * l T
  /-- (H2)_r: Σ_{N≤x} |e_r(N)|² ≤ A (ρ₀/l)^{2r} x l². -/
  H2 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ ^ 2) ≤ A * (ρ₀ / l T) ^ (2 * r) * x * l T ^ 2
  /-- (H3)_r: Σ_{N≤x} |e_r(N)|²/N ≤ A (ρ₀/l)^{2r} l² (1 + log x). -/
  H3 : ∀ T : ℝ, T₀ ≤ T → ∀ r : ℕ, 1 ≤ r → ∀ x : ℝ, 2 ≤ x → x ≤ Real.exp (l T) →
    (∑ N ∈ Finset.Ioc 0 ⌊x⌋₊, ‖e T r N‖ ^ 2 / N) ≤ A * (ρ₀ / l T) ^ (2 * r) * l T ^ 2 * (1 + Real.log x)

end XiPrime
end Zeta23
```
