# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PP.Variant1c461fa2c52bc393ac2e6afb712dd62adb40d53c949f30785b64f999b6226b20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc984741e5ee19bd29db4d56de2e8a959d67a045` · SHA-256 `bca2ee8c20c5d9986c82c59aff3712caa7bd35ef41856892056efeb13ebe684f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SumA2gCoprimeClose.Variantea1fbcc0f8d8a1a5e36b37f679ef0ab7db8d9518c8014a95e04629b92ce2e738","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea1fbcc0f8d8a1a5e36b37f679ef0ab7db8d9518c8014a95e04629b92ce2e738","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SumA2gCoprimeClose.Variantea1fbcc0f8d8a1a5e36b37f679ef0ab7db8d9518c8014a95e04629b92ce2e738","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ea1fbcc0f8d8a1a5e36b37f679ef0ab7db8d9518c8014a95e04629b92ce2e738","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmDE/PP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmDE/PP.lean.  The §7.1 partial-summation step for a
Dirichlet character: [thm:E] proof (iii) "Σ_{(n,q)=1} Λ(n)²/n = (log²x)/2 + O_q(log x)"
([eq:cheb2a] for n coprime to q, Zeta23.ThmE.ChebyshevMertensCoprime.cheb2a) fed into the abstract
Abel-summation lemma Zeta23.ThmD.abel_sum_close:
  Σ_{n≤X,(n,q)=1} Λ(n)²/n · g(log n) = ∫_0^L g(y)·y dy + O_q(L²)   (g C¹, |g'| ≤ 2, g ≡ 0 on [L,∞)).
-/
import Zeta23.ThmD.PP
import Zeta23.ThmE.PPChi


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SumA2gCoprimeClose.Variantea1fbcc0f8d8a1a5e36b37f679ef0ab7db8d9518c8014a95e04629b92ce2e738

noncomputable section

open Real Finset
open scoped ArithmeticFunction

namespace Zeta23
namespace ThmDE

/-- the coprime partial-summation step (χ-version of Zeta23.ThmD.sumA2g_close). -/
theorem sumA2gCoprime_close {q : ℕ} (hchebq : ThmE.ChebyshevMertensCoprime q) :
    ∃ C : ℝ, 0 < C ∧ ∀ (L X : ℝ) (g : ℝ → ℝ), 8 ≤ L → X = Real.exp L →
      Differentiable ℝ g → Continuous (deriv g) → (∀ y : ℝ, |deriv g y| ≤ 2) →
      (∀ y : ℝ, L ≤ y → g y = 0) →
      |ThmE.sumA2gCoprime q X g - ∫ y in (0:ℝ)..L, g y * y| ≤ C * L ^ 2 := by
  classical
  obtain ⟨C₀, hC₀⟩ := hchebq.cheb2a
  set c : ℕ → ℝ := fun n => if Nat.Coprime n q then (Λ n : ℝ) ^ 2 / n else 0 with hcdef
  have hC₀' : ∀ t : ℝ, 2 ≤ t →
      |(∑ k ∈ Finset.Ioc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2| ≤ C₀ * Real.log t := by
    intro t ht
    have := hC₀ t ht
    rwa [Finset.sum_filter] at this
  refine ⟨2 * |C₀| + 10, by positivity, fun L X g hL hX hgd hg'c hg'le hgsupp => ?_⟩
  have h := ThmD.abel_sum_close (c := c) (by simp [hcdef]) (by simp [hcdef]) hC₀' L X g hL hX
    hgd hg'c hg'le hgsupp
  have e : ThmE.sumA2gCoprime q X g = ∑ n ∈ PrimeSide.primeRange X, c n * g (Real.log n) := by
    unfold ThmE.sumA2gCoprime PrimeSide.primeRange
    rw [Finset.sum_filter]
    refine Finset.sum_congr rfl fun n _ => ?_
    simp only [hcdef]
    split_ifs <;> simp
  rw [e]
  exact h

end ThmDE
end Zeta23

end
```
