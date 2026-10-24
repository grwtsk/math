# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Unconditional.Variante722e9b5e75233da12fe3802f2fc08da174eb1b10864cbd82d8acdabe3015b96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05bc1a31cab23dfb4d0344bd41c0bfed0a3ddfe1` · SHA-256 `c4337f9ad778c4bb808a70636900c8c05630fe7123bc12799c51cf8e64c44845`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwoThirdsOnCriticalLine.Variantfb4cd9af8e3ed2409cfbbcb69d9a802054fd826699e1d55fdbf7054196fd3ceb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb4cd9af8e3ed2409cfbbcb69d9a802054fd826699e1d55fdbf7054196fd3ceb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TwoThirdsOnCriticalLine.Variantfb4cd9af8e3ed2409cfbbcb69d9a802054fd826699e1d55fdbf7054196fd3ceb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fb4cd9af8e3ed2409cfbbcb69d9a802054fd826699e1d55fdbf7054196fd3ceb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Unconditional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Unconditional.lean — auditor's entry point.

ONE theorem, NO hypotheses: at least two thirds of the nontrivial zeros of the Riemann zeta
function lie on the critical line (asymptotic proportion, dyadic and cumulative ε-forms), together
with Theorems B (half are simple and on the line) and C (three quarters are distinct).

To audit: (1) #print axioms Zeta23.thmA₀ — expect [propext, Classical.choice, Quot.sound];
(2) read the definitions below — everything the statement mentions is defined in
Zeta23/Statement.lean from Mathlib's riemannZeta and analyticOrderAt alone:
  * IsNontrivialZero ρ  ↔  riemannZeta ρ = 0 ∧ 0 < ρ.re ∧ ρ.re < 1
  * zeroMult ρ = (analyticOrderAt riemannZeta ρ).toNat   (the multiplicity)
  * Ncount T₁ T₂  = Σ_{ρ : IsNontrivialZero, T₁ < ρ.im ≤ T₂} zeroMult ρ   (finite sum, proved)
  * N0star T₁ T₂  = #{ρ in that window : ρ.re = 1/2}                       (distinct, on-line)
  * N0simple, Ndist, N0, Nsimple — the simple/distinct/multiplicity variants ([eq:trivialchain]).
The proof formalizes the paper "More than two thirds of the zeros of the Riemann zeta function lie
on the critical line", including proofs of all its analytic inputs:
Weil's explicit formula, the Riemann–von Mangoldt counts, the Montgomery–Vaughan weighted Hilbert
inequality, Stirling for Γ'/Γ, and the Chebyshev–Mertens prime bounds.
-/
import Zeta23.Final


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwoThirdsOnCriticalLine.Variantfb4cd9af8e3ed2409cfbbcb69d9a802054fd826699e1d55fdbf7054196fd3ceb

namespace Zeta23

/-- **≥ 2/3 of ζ's nontrivial zeros are on the critical line** (dyadic windows (T, 2T]). -/
theorem two_thirds_on_critical_line :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 / 3 - ε) * (Ncount T (2 * T) : ℝ) ≤ N0star T (2 * T) :=
  thmA₀

/-- cumulative form: liminf_{T→∞} N₀*(T)/N(T) ≥ 2/3. -/
theorem two_thirds_on_critical_line_cumulative :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 / 3 - ε) * (Ncount 0 T : ℝ) ≤ N0star 0 T :=
  thmA₀_cumulative

/-- **≥ 1/2 of the zeros are simple and on the critical line.** -/
theorem half_simple_on_critical_line :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (1 / 2 - ε) * (Ncount T (2 * T) : ℝ) ≤ N0simple T (2 * T) :=
  thmB₀

/-- **≥ 3/4 of the zeros are distinct.** -/
theorem three_quarters_distinct :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3 / 4 - ε) * (Ncount T (2 * T) : ℝ) ≤ Ndist T (2 * T) :=
  thmC₀

end Zeta23
```
