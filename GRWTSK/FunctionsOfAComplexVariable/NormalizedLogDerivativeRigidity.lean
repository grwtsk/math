/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Analytic.IsolatedZeros

/-!
# Source identification from an anchored logarithmic derivative

Equality of logarithmic derivatives determines a nonvanishing holomorphic
function only up to a nonzero constant. Equality at one nonzero anchor removes
that ambiguity. For entire functions, identification on a nonempty open
connected comparison region then extends to the whole plane.

The limit theorem below consumes actual locally uniform convergence and
pointwise logarithmic-derivative convergence. It does not infer compactness,
locally uniform convergence, nonvanishing of the limit on the comparison
region, or an arithmetic explicit formula from finite numerical observations.

These are local consequences of the pinned mathlib logarithmic-derivative
rigidity, Weierstrass convergence, and identity-principle declarations, used
for RP-OC-08. They are not a new proof of GRH. See math issue #1805 and the
adjacent source-local provenance. All Lean execution checks: NOT_RUN.
-/

set_option autoImplicit false

noncomputable section

open Filter Set
open scoped Topology

namespace GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative

/-- Equal logarithmic derivatives and one common nonzero anchor determine a
function on an open preconnected region. Nonvanishing is an explicit premise. -/
theorem eqOn_of_logDeriv_eqOn_of_anchor
    {f g : ℂ → ℂ} {U : Set ℂ} {a : ℂ}
    (hU : IsOpen U) (hconn : IsPreconnected U)
    (hf : DifferentiableOn ℂ f U) (hg : DifferentiableOn ℂ g U)
    (hfn : ∀ z ∈ U, f z ≠ 0) (hgn : ∀ z ∈ U, g z ≠ 0)
    (ha : a ∈ U) (hanchor : f a = g a)
    (hlog : EqOn (logDeriv f) (logDeriv g) U) : EqOn f g U := by
  obtain ⟨c, _, hc⟩ := (logDeriv_eqOn_iff hf hg hU hconn hgn hfn).mp hlog
  have hca : c * g a = g a := by
    calc
      c * g a = f a := by
        simpa only [Pi.smul_apply, smul_eq_mul] using (hc ha).symm
      _ = g a := hanchor
  have hc1 : c = 1 :=
    mul_right_cancel₀ (hgn a ha) (by simpa only [one_mul] using hca)
  subst c
  simpa only [one_smul] using hc

/-- An anchored source identity on one comparison region identifies entire functions
on the whole plane. Zeros outside the comparison region are allowed. -/
theorem eq_of_logDeriv_eqOn_of_anchor
    {f g : ℂ → ℂ} {U : Set ℂ} {a : ℂ}
    (hf : AnalyticOnNhd ℂ f univ) (hg : AnalyticOnNhd ℂ g univ)
    (hU : IsOpen U) (hconn : IsPreconnected U)
    (hfn : ∀ z ∈ U, f z ≠ 0) (hgn : ∀ z ∈ U, g z ≠ 0)
    (ha : a ∈ U) (hanchor : f a = g a)
    (hlog : EqOn (logDeriv f) (logDeriv g) U) : f = g := by
  have hlocal := eqOn_of_logDeriv_eqOn_of_anchor hU hconn
    (hf.differentiableOn.mono (subset_univ U))
    (hg.differentiableOn.mono (subset_univ U)) hfn hgn ha hanchor hlog
  have hnear : f =ᶠ[𝓝 a] g :=
    Filter.mem_of_superset (hU.mem_nhds ha) fun z hz => hlocal hz
  have hglobal := hf.eqOn_of_preconnected_of_eventuallyEq hg
    isPreconnected_univ (mem_univ a) hnear
  exact funext fun z => hglobal (mem_univ z)

/-- Identify an actual locally uniform limit from its arithmetic comparison data.

This is the source-identification step for each convergent subsequence of a
normal-family reconstruction argument. Normal-family compactness and the
nonvanishing premises below must be proved separately; they are not certificates
or hidden fields of an opaque reconstruction predicate. -/
theorem eq_of_locallyUniform_of_logDeriv_tendsto
    {F : ℕ → ℂ → ℂ} {f g : ℂ → ℂ} {U : Set ℂ} {a : ℂ}
    (hconv : TendstoLocallyUniformlyOn F f atTop univ)
    (hF : ∀ n, Differentiable ℂ (F n))
    (hg : AnalyticOnNhd ℂ g univ)
    (hU : IsOpen U) (hconn : IsPreconnected U)
    (hfn : ∀ z ∈ U, f z ≠ 0) (hgn : ∀ z ∈ U, g z ≠ 0)
    (ha : a ∈ U) (hanchor : ∀ n, F n a = g a)
    (hsource : ∀ z ∈ U,
      Tendsto (fun n => logDeriv (F n) z) atTop (𝓝 (logDeriv g z))) : f = g := by
  have hdiff : DifferentiableOn ℂ f univ :=
    hconv.differentiableOn
      (Filter.Eventually.of_forall fun n => (hF n).differentiableOn) isOpen_univ
  have hf : AnalyticOnNhd ℂ f univ := hdiff.analyticOnNhd isOpen_univ
  have hval : f a = g a := by
    have hpoint := hconv.tendsto_at (mem_univ a)
    have heq : (fun n => F n a) = (fun _ : ℕ => g a) := funext hanchor
    rw [heq] at hpoint
    exact tendsto_nhds_unique hpoint tendsto_const_nhds
  have hlog : EqOn (logDeriv f) (logDeriv g) U := by
    intro z hz
    have hleft := Complex.logDeriv_tendsto isOpen_univ (mem_univ z) hconv
      (Filter.Eventually.of_forall fun n => (hF n).differentiableOn) (hfn z hz)
    exact tendsto_nhds_unique hleft (hsource z hz)
  exact eq_of_logDeriv_eqOn_of_anchor hf hg hU hconn hfn hgn ha hval hlog

end GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative
