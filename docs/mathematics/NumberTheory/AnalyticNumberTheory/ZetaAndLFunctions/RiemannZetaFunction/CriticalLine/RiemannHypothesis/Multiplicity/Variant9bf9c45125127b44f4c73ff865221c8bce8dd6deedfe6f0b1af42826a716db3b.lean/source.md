# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Multiplicity.Variant9bf9c45125127b44f4c73ff865221c8bce8dd6deedfe6f0b1af42826a716db3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6ac41aa9422de61a13ccb2f343c83de0bd2d79c` · SHA-256 `74e1fd2021c84d8c6ab1cbc43a92d7cfff1ac303857aca72329b29690a5ae58b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwoThirdsSimpleOnCriticalLine.Variant8a2481fc5ddb8a5cf9ef842536aa1ecb237aaf118767db2e01e3665cfed36bb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a2481fc5ddb8a5cf9ef842536aa1ecb237aaf118767db2e01e3665cfed36bb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TwoThirdsSimpleOnCriticalLine.Variant8a2481fc5ddb8a5cf9ef842536aa1ecb237aaf118767db2e01e3665cfed36bb7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8a2481fc5ddb8a5cf9ef842536aa1ecb237aaf118767db2e01e3665cfed36bb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/.lake/packages/Zeta23/comparator/Solution/Multiplicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Solution/Multiplicity.lean — UNTRUSTED solution module for Challenge/Multiplicity.lean: the same twelve
statements, proved by delegating to Zeta23/FinalMult.lean (ζ: thmB₀_mult, thmC₀_mult + cumulative),
Zeta23/ThmD/Mult.lean (optimal window: thmD₀_simple_mult, thmD₀_dist_mult + cumulative; constants
HD 1 = 2 − 1/cStar 1 and GD 1 = 3/2 − (cStar 1)⁻¹/2), Zeta23/ThmE/Mult.lean and Zeta23/ThmDE/Mult.lean (χ).
Reuses `cStar_one_eq_cMT` from module Solution.
-/
import ChallengeDeps
import Solution
import Zeta23.FinalMult
import Zeta23.ThmD.Mult
import Zeta23.ThmE.Mult
import Zeta23.ThmDE.Mult


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwoThirdsSimpleOnCriticalLine.Variant8a2481fc5ddb8a5cf9ef842536aa1ecb237aaf118767db2e01e3665cfed36bb7

noncomputable section

theorem two_thirds_simple_on_critical_line :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 / 3 - ε) * (Ncount T (2 * T) : ℝ) ≤ N0simple T (2 * T) :=
  Zeta23.thmB₀_mult

theorem two_thirds_simple_on_critical_line_cumulative :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 / 3 - ε) * (Ncount 0 T : ℝ) ≤ N0simple 0 T :=
  Zeta23.thmB₀_mult_cumulative

theorem five_sixths_distinct :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (5 / 6 - ε) * (Ncount T (2 * T) : ℝ) ≤ Ndist T (2 * T) :=
  Zeta23.thmC₀_mult

theorem five_sixths_distinct_cumulative :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (5 / 6 - ε) * (Ncount 0 T : ℝ) ≤ Ndist 0 T :=
  Zeta23.thmC₀_mult_cumulative

theorem montgomery_taylor_simple_on_critical_line_mult :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 - 1 / cMT - ε) * (Ncount T (2 * T) : ℝ) ≤ N0simple T (2 * T) := by
  have h := @Zeta23.ThmD.thmD₀_simple_mult
  simp only [Zeta23.ThmD.HD, cStar_one_eq_cMT] at h
  exact h

theorem montgomery_taylor_simple_on_critical_line_mult_cumulative :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 - 1 / cMT - ε) * (Ncount 0 T : ℝ) ≤ N0simple 0 T := by
  have h := @Zeta23.ThmD.thmD₀_simple_mult_cumulative
  simp only [Zeta23.ThmD.HD, cStar_one_eq_cMT] at h
  exact h

theorem montgomery_taylor_distinct_mult :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3 / 2 - cMT⁻¹ / 2 - ε) * (Ncount T (2 * T) : ℝ) ≤ Ndist T (2 * T) := by
  have h := @Zeta23.ThmD.thmD₀_dist_mult
  simp only [Zeta23.ThmD.GD, cStar_one_eq_cMT] at h
  exact h

theorem montgomery_taylor_distinct_mult_cumulative :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3 / 2 - cMT⁻¹ / 2 - ε) * (Ncount 0 T : ℝ) ≤ Ndist 0 T := by
  have h := @Zeta23.ThmD.thmD₀_dist_mult_cumulative
  simp only [Zeta23.ThmD.GD, cStar_one_eq_cMT] at h
  exact h

theorem dirichlet_two_thirds_simple_on_critical_line
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hq : 1 < q) (hχ : χ.IsPrimitive) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 / 3 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ N0simpleL χ T (2 * T) :=
  Zeta23.ThmE.thmE_B₀_mult hq hχ

theorem dirichlet_five_sixths_distinct
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hq : 1 < q) (hχ : χ.IsPrimitive) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (5 / 6 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) :=
  Zeta23.ThmE.thmE_C₀_mult hq hχ

theorem dirichlet_montgomery_taylor_simple_on_critical_line_mult
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hq : 1 < q) (hχ : χ.IsPrimitive) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 - 1 / cMT - ε) * (NcountL χ T (2 * T) : ℝ) ≤ N0simpleL χ T (2 * T) := by
  have h := Zeta23.ThmDE.thmE_D₀_simple_mult (χ := χ) hq hχ
  simp only [Zeta23.ThmD.HD, cStar_one_eq_cMT] at h
  exact h

theorem dirichlet_montgomery_taylor_distinct_mult
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hq : 1 < q) (hχ : χ.IsPrimitive) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (3 / 2 - cMT⁻¹ / 2 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  have h := Zeta23.ThmDE.thmE_D₀_dist_mult (χ := χ) hq hχ
  simp only [Zeta23.ThmD.GD, cStar_one_eq_cMT] at h
  exact h

end
```
