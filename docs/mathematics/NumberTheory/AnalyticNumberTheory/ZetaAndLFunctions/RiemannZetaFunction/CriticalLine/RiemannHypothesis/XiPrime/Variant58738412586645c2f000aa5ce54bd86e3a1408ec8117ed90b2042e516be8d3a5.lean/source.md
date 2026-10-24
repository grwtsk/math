# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiPrime.Variant58738412586645c2f000aa5ce54bd86e3a1408ec8117ed90b2042e516be8d3a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8685efb594e7c635f31f90f7c2ad5a98b83b23ad` · SHA-256 `17068c9b404a916e8ce4a2fe4b8e2ac434a39b1169b76e4d383329bf736c4c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiPrimeZerosInOpenCriticalStrip.Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.XiPrimeZerosInOpenCriticalStrip.Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Solution/XiPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
import ChallengeDeps.XiPrime
import Zeta23.XiPrime.ExplicitFormula.ZeroFree
import Zeta23.XiPrime.Final


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiPrimeZerosInOpenCriticalStrip.Variant0192f2cb65d19c23fbdfbe0906444be66acc114cf9bd87fb8b482aaf0b537137

noncomputable section

/-- **Every zero of ξ′ lies in the open critical strip 0 < Re s < 1** (ξ(s) = ½s(s−1)π^{−s/2}Γ(s/2)ζ(s)). -/
theorem xiPrime_zeros_in_open_critical_strip :
    ∀ ρ : ℂ, XiPrime.xiDeriv ρ = 0 → 0 < ρ.re ∧ ρ.re < 1 :=
  Zeta23.XiPrime.xiDerivZerosInStrip_holds

/-- **Re ξ′/ξ(s) > 0 whenever Re s ≥ 1.** -/
theorem xiPrime_over_xi_re_pos :
    ∀ s : ℂ, 1 ≤ s.re → 0 < (XiPrime.xiDeriv s / XiPrime.xi s).re :=
  fun _ hs => Zeta23.XiPrime.re_logDeriv_xi_pos hs

/-- **At least 85.838% of the zeros of ξ′ are simple and on the critical line; at least 92.919% are
distinct** — for all large T, counting the zeros ρ of ξ′ with T < Im ρ ≤ 2T (ANY real part) with
multiplicity in the denominator. -/
theorem xiPrime_simple_zeros_on_critical_line :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.85838 : ℝ) * (XiPrime.Ncount T (2 * T) : ℝ) ≤ (XiPrime.N0simple T (2 * T) : ℝ) ∧
      (0.92919 : ℝ) * (XiPrime.Ncount T (2 * T) : ℝ) ≤ (XiPrime.Ndist T (2 * T) : ℝ) :=
  Zeta23.XiPrime.xiDeriv_simple_on_line

/-- the same for the windows 0 < Im ρ ≤ T (cumulative counts). -/
theorem xiPrime_simple_zeros_on_critical_line_cumulative :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.85838 : ℝ) * (XiPrime.Ncount 0 T : ℝ) ≤ (XiPrime.N0simple 0 T : ℝ) ∧
      (0.92919 : ℝ) * (XiPrime.Ncount 0 T : ℝ) ≤ (XiPrime.Ndist 0 T : ℝ) :=
  Zeta23.XiPrime.xiDeriv_simple_on_line_cumulative

/-- the same with the near-optimal quartic window: **at least 86.864% simple and on the critical line, at least 93.432%
distinct**, for all large T, zeros of ξ′ with T < Im ρ ≤ 2T counted with multiplicity in the denominator. -/
theorem xiPrime_simple_zeros_on_critical_line_quartic :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.86864 : ℝ) * (XiPrime.Ncount T (2 * T) : ℝ) ≤ (XiPrime.N0simple T (2 * T) : ℝ) ∧
      (0.93432 : ℝ) * (XiPrime.Ncount T (2 * T) : ℝ) ≤ (XiPrime.Ndist T (2 * T) : ℝ) :=
  Zeta23.XiPrime.xiDeriv_simple_on_line_quartic_std

/-- the quartic-window percentages for the cumulative windows 0 < Im ρ ≤ T: **at least 86.864% simple and on the
critical line, at least 93.432% distinct**, for all large T. -/
theorem xiPrime_simple_zeros_on_critical_line_quartic_cumulative :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.86864 : ℝ) * (XiPrime.Ncount 0 T : ℝ) ≤ (XiPrime.N0simple 0 T : ℝ) ∧
      (0.93432 : ℝ) * (XiPrime.Ncount 0 T : ℝ) ≤ (XiPrime.Ndist 0 T : ℝ) :=
  Zeta23.XiPrime.xiDeriv_simple_on_line_quartic_cumulative_std
```
