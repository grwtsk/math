/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

set_option autoImplicit false

/-!
# Source-determined logarithmic residues of the actual zeta function

The nontrivial-zero contribution is derived from the existing analytic
multiplicity and local factorization. The pole at one reuses Mathlib's
riemannZeta₁ and its proved local identity. No zero is assumed simple. These
are local principal parts and punctured scaled limits, not a contour shift,
zero-count estimate, global explicit formula, or prime-distribution result.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalLogarithmicResidues

open Filter Set
open scoped Topology
open GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

noncomputable section

/-- The coefficient of the actual logarithmic principal part is the canonical
analytic multiplicity, with an analytic regular part derived from the unit. -/
theorem canonical_zero_principal_part (z : ZeroPoint) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A z.1 ∧
      logDeriv riemannZeta =ᶠ[𝓝[≠] z.1]
        fun s => (multiplicity z : ℂ) / (s - z.1) + A s := by
  obtain ⟨g, hg, hg0, hfactor⟩ := multiplicity_factorization z
  have hfactor' : riemannZeta =ᶠ[𝓝[≠] z.1]
      fun s => (s - z.1) ^ (multiplicity z : ℤ) * g s := by
    filter_upwards [hfactor.filter_mono nhdsWithin_le_nhds] with s hs
    simpa only [zpow_natCast, smul_eq_mul] using hs
  have hp := logDeriv_principal_part riemannZeta g z.1 (multiplicity z : ℤ)
    hg hg0 hfactor'
  exact ⟨logDeriv g, hp.1, by simpa only [Int.cast_natCast] using hp.2⟩

/-- The sign consumed by Perron integrands is negative at a zero. -/
theorem canonical_zero_scaled_limit (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ))) := by
  obtain ⟨A, hA, hpart⟩ := canonical_zero_principal_part z
  exact tendsto_scaled_neg_logDeriv_of_principal_part riemannZeta A z.1
    (multiplicity z : ℂ) hA.continuousAt hpart

/-- Any continuous multiplier retains the actual point and analytic weight. -/
theorem canonical_zero_weighted_limit (z : ZeroPoint) (F : ℂ → ℂ)
    (hF : ContinuousAt F z.1) :
    Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s * F s))
      (𝓝[≠] z.1) (𝓝 (-(multiplicity z : ℂ) * F z.1)) :=
  tendsto_scaled_weighted_neg_logDeriv riemannZeta F z.1
    (-(multiplicity z : ℂ)) (canonical_zero_scaled_limit z) hF

/-- Reuse the upstream pole-normalized function and pole expansion verbatim.
The coefficient of logDeriv is -1, as distinct from the zero coefficient. -/
theorem zeta_pole_principal_part :
    AnalyticAt ℂ (logDeriv riemannZeta₁) 1 ∧
      logDeriv riemannZeta =ᶠ[𝓝[≠] (1 : ℂ)]
        fun s => (-1 : ℂ) / (s - 1) + logDeriv riemannZeta₁ s := by
  have hunit : AnalyticAt ℂ riemannZeta₁ 1 := differentiable_riemannZeta₁.analyticAt 1
  refine ⟨hunit.deriv.div hunit (by simp), ?_⟩
  filter_upwards [log_deriv_riemannZeta_eq_neg_inv_sub_add] with s hs
  simpa only [logDeriv_apply, neg_div, one_div] using hs

/-- The negative logarithmic derivative has coefficient +1 at the pole. -/
theorem zeta_pole_scaled_limit :
    Tendsto (fun s => (s - 1) * (-logDeriv riemannZeta s))
      (𝓝[≠] (1 : ℂ)) (𝓝 1) := by
  have hp := zeta_pole_principal_part
  simpa using tendsto_scaled_neg_logDeriv_of_principal_part riemannZeta
    (logDeriv riemannZeta₁) 1 (-1) hp.1.continuousAt hp.2

/-- The pole's weighted coefficient is exactly the multiplier's value at one. -/
theorem zeta_pole_weighted_limit (F : ℂ → ℂ) (hF : ContinuousAt F 1) :
    Tendsto (fun s => (s - 1) * (-logDeriv riemannZeta s * F s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (F 1)) := by
  simpa using tendsto_scaled_weighted_neg_logDeriv riemannZeta F 1 1
    zeta_pole_scaled_limit hF

/-- Mathlib's totalized quotient is zero at the zero itself. This is not its
logarithmic residue and is not used in the punctured-limit proofs. -/
theorem logDeriv_at_zero_totalized (z : ZeroPoint) : logDeriv riemannZeta z.1 = 0 := by
  simp [logDeriv_apply, z.2.1]

/-- Substitution at the center would lose the positive analytic multiplicity. -/
theorem scaled_logDeriv_not_continuous_at_zero (z : ZeroPoint) :
    ¬ ContinuousAt (fun s => (s - z.1) * (-logDeriv riemannZeta s)) z.1 := by
  intro hc
  have hzero : Tendsto (fun s => (s - z.1) * (-logDeriv riemannZeta s))
      (𝓝[≠] z.1) (𝓝 0) := by
    simpa using hc.tendsto.mono_left nhdsWithin_le_nhds
  have he := tendsto_nhds_unique hzero (canonical_zero_scaled_limit z)
  have hm : (multiplicity z : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (multiplicity_pos z))
  exact hm (neg_eq_zero.mp he.symm)

end
end GRWTSK.RiemannHypothesis.CanonicalLogarithmicResidues
