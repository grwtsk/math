-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsChi.Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TracesBoundsChi.Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmE/TracesHypChi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmE/TracesHypChi.lean — the thm:traces package for Dirichlet L-functions.
Mirror of Zeta23/PrimeSideTemp.lean ([thm:traces] as an explicit hypothesis)
with ζ's density ν_X replaced by ν_{X,χ} and ℓ₁ by ℓ_{1,χ} ([thm:E] proof (i),(iii)).
The hypothesis is discharged by the §5-χ generalization elsewhere in the repository; it is an
explicit hypothesis of the Theorem E assembly, never a Lean axiom.
-/
import Zeta23.ThmE.Hypotheses
import Zeta23.PrimeSideTemp


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsChi.Variant2d86d289a05e18c06e3bda23ee570819c9c64197f6b5871b82486ffb9b31ad19

open Real Filter

noncomputable section

namespace Zeta23
namespace ThmE

variable (P : Params) (κ q : ℕ) (c : ℕ → ℂ)

/-- `λ_{1,χ} := L/ℓ_{1,χ}`  ([thm:E] proof (iii): "λ₁ = L/ℓ_{1,χ} → λ as q is fixed"). -/
def lam1q (T : ℝ) : ℝ := P.L T / ell1q q T

/-- G_{kl} for L(s,χ) via the PRIME side: `∫ φ̂(τ−τ_k) φ̂(τ−τ_l) ν_{X,χ}(τ) dτ`
([eq:Gdef] second expression with ν_{X,χ}). -/
def GentryChi (T : ℝ) (k l : ℤ) : ℝ :=
  ∫ τ : ℝ, P.phiHatR T (τ - P.tau T k) * P.phiHatR T (τ - P.tau T l) * nuXc κ q c (P.X T) τ

/-- tr G̃ for L(s,χ) (prime side). -/
def trGtildeChi (T : ℝ) : ℝ := (P.L T)⁻¹ * ∑ k : Fin (P.d T), GentryChi P κ q c T k k

/-- tr G̃² for L(s,χ) (prime side). -/
def trGtildeSqChi (T : ℝ) : ℝ :=
  (P.L T)⁻¹ ^ 2 * ∑ k : Fin (P.d T), ∑ l : Fin (P.d T), GentryChi P κ q c T k l ^ 2

/-- The main term of [eq:tr2] for L(s,χ): `(TL/2π)(ℓ_{1,χ}² + L²/3)`. -/
def mainTr2Chi (T : ℝ) : ℝ :=
  T * P.L T / (2 * Real.pi) * (ell1q q T ^ 2 + P.L T ^ 2 / 3)

/-- **[thm:traces] for L(s,χ)** (the conclusions of the paper [thm:traces] with ℓ₁ → ℓ_{1,χ},
λ₁ → λ_{1,χ}, ν_X → ν_{X,χ}; [thm:E] proof (iii)).  Same EvBound shapes as `Zeta23.TracesBounds`;
all constants may additionally depend on q (q fixed in [thm:E]; recorded for the hybrid-range
question [rem:otherL](i)). -/
structure TracesBoundsChi (aT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T)
    (fun T => P.L T * Real.sqrt (P.X T))
  tr1' : EvBound (fun T => trG T - P.L T * Ncnt T) (fun T => P.calE T * (P.L T * Ncnt T))
  tr2 : EvBound (fun T => trG2 T - mainTr2Chi P q T) (fun T => P.calE T * mainTr2Chi P q T)
  ratio : EvBound (fun T => trG T ^ 2 / trG2 T - Ffun (lam1q P q T) * Ncnt T)
    (fun T => P.calE T * (Ffun (lam1q P q T) * Ncnt T))

/-- The Theorem E traces hypothesis at a zero configuration Z (the analogue of `Zeta23.ThmTracesHyp`). -/
def ThmTracesHypChi (Z : ZeroConfig) : Prop :=
  TracesBoundsChi P q P.a (trGtildeChi P κ q c) (trGtildeSqChi P κ q c)
    (fun T => (Z.N T (2 * T) : ℝ))

end ThmE
end Zeta23
