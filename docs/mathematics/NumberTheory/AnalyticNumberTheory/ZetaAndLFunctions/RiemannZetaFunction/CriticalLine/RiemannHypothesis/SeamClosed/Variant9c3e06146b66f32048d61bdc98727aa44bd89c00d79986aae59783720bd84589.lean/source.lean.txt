-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZetaSeam.Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ZetaSeam.Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Statement/SeamClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Statement/SeamClosed.lean — the ζ-seam is closed.
All four fields of Zeta23.ZetaSeam are theorems of Mathlib:
  one_le_mult, finite_window  — Zeta23/Statement/Seam.lean ;
  reflect_zero, mult_reflect  — Zeta23/ZetaReflect.lean (Schwarz reflection
                                 riemannZeta_conj + functional equation at the analyticOrderAt level).
Hence the abstract ZeroConfig of ζ's nontrivial zeros and [eq:trivialchain] are hypothesis-free.
-/
import Zeta23.Statement.Seam
import Zeta23.ZetaReflect


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZetaSeam.Variantb2b03190fb3cf4520d273f8bdb9fc7a89939381c8aaff360e5845108b4d8b88d

noncomputable section

namespace Zeta23

/-- The ζ-seam, fully discharged: no hypotheses. -/
theorem zetaSeam : ZetaSeam := ZetaSeam.of_reflect zeta_reflect_zero zeta_mult_reflect

/-- The nontrivial zeros of ζ with multiplicities, as an abstract Zeta23.ZeroConfig — hypothesis-free.
carrier = {ρ | IsNontrivialZero ρ}, mult = zeroMult (both rfl). -/
def zetaZeroConfig : ZeroConfig := zetaZeros zetaSeam

@[simp] lemma zetaZeroConfig_carrier : zetaZeroConfig.carrier = {ρ | IsNontrivialZero ρ} := rfl
@[simp] lemma zetaZeroConfig_mult : zetaZeroConfig.mult = zeroMult := rfl

@[simp] lemma zetaZeroConfig_N (T₁ T₂ : ℝ) : zetaZeroConfig.N T₁ T₂ = Ncount T₁ T₂ :=
  zetaZeros_N _ _ _
@[simp] lemma zetaZeroConfig_N0star (T₁ T₂ : ℝ) : zetaZeroConfig.N0star T₁ T₂ = N0star T₁ T₂ :=
  zetaZeros_N0star _ _ _
@[simp] lemma zetaZeroConfig_N0s (T₁ T₂ : ℝ) : zetaZeroConfig.N0s T₁ T₂ = N0simple T₁ T₂ :=
  zetaZeros_N0s _ _ _
@[simp] lemma zetaZeroConfig_Nd (T₁ T₂ : ℝ) : zetaZeroConfig.Nd T₁ T₂ = Ndist T₁ T₂ :=
  zetaZeros_Nd _ _ _

/-- [eq:trivialchain] for ζ, hypothesis-free: N₀ˢ ≤ N₀* ≤ N₀ ≤ N and N₀ˢ ≤ Nˢ ≤ N_d ≤ N. -/
theorem trivial_chain₀ (T₁ T₂ : ℝ) :
    N0simple T₁ T₂ ≤ N0star T₁ T₂ ∧ N0star T₁ T₂ ≤ N0 T₁ T₂ ∧ N0 T₁ T₂ ≤ Ncount T₁ T₂ ∧
    N0simple T₁ T₂ ≤ Nsimple T₁ T₂ ∧ Nsimple T₁ T₂ ≤ Ndist T₁ T₂ ∧ Ndist T₁ T₂ ≤ Ncount T₁ T₂ :=
  trivial_chain zetaSeam T₁ T₂

/-- Finiteness of every ordinate window of nontrivial zeros, hypothesis-free. -/
theorem zerosIn_finite (T₁ T₂ : ℝ) : (zerosIn T₁ T₂).Finite := by
  simpa [zetaZeros_window] using (zetaZeros zetaSeam).window_finite T₁ T₂

end Zeta23
