/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Analysis.Analytic.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Ring

/-!
# Signed local principal parts of logarithmic derivatives

MSC2020: 30D30, 30E20. A punctured factorization with integer exponent n
has logarithmic principal part n/(s-a), with an analytic remainder. Negative
orders are poles, not natural-number multiplicities. The value assigned to
the original function at a is irrelevant. Every division is performed only
after its nonzero hypothesis has been established.

Consumer: the original Dirichlet zero multiplicities and the two completed
zeta poles in DirichletLogarithmicResidues. The weighted limit supplies local
coefficients for a future contour formula; it is not that global formula.
Primary inputs: Chris Birkbeck's logarithmic derivative API and Mathlib's
analytic germ API at the repository pin. Individual provenance is adjacent.
SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
-/

set_option autoImplicit false
noncomputable section

open Filter Set
open scoped Topology

namespace GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart

/-- The exact principal part follows from a punctured factorization. The
analytic unit, not the original possibly singular function, is evaluated at a. -/
theorem logDeriv_of_factorization {f g : ℂ → ℂ} {a : ℂ} (n : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfg : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ n * g s) :
    logDeriv f =ᶠ[𝓝[≠] a] fun s => (n : ℂ) / (s - a) + logDeriv g s := by
  have hgn : ∀ᶠ s in 𝓝 a, g s ≠ 0 :=
    (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0
  filter_upwards [logDeriv_congr_nhdsNE hfg,
    hg.eventually_analyticAt.filter_mono nhdsWithin_le_nhds,
    hgn.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin]
    with s hlog hga hgs hsa
  have hsub : s - a ≠ 0 := sub_ne_zero.mpr hsa
  have hpow : AnalyticAt ℂ (fun w : ℂ => (w - a) ^ n) s :=
    (analyticAt_id.sub analyticAt_const).zpow hsub
  have hlinear : logDeriv (fun w : ℂ => w - a) s = 1 / (s - a) := by
    simp [logDeriv_apply]
  rw [hlog, logDeriv_fun_mul s (zpow_ne_zero n hsub) hgs
    hpow.differentiableAt hga.differentiableAt,
    logDeriv_fun_zpow (differentiableAt_id.sub_const a), hlinear, mul_one_div]

/-- Local analytic remainder, with the signed order retained rather than an
unsigned pole count. This is a punctured equality, not a value at the pole. -/
theorem exists_analytic_remainder {f g : ℂ → ℂ} {a : ℂ} (n : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfg : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ n * g s) :
    ∃ R : ℂ → ℂ, AnalyticAt ℂ R a ∧
      logDeriv f =ᶠ[𝓝[≠] a] fun s => (n : ℂ) / (s - a) + R s := by
  refine ⟨logDeriv g, ?_, logDeriv_of_factorization n hg hg0 hfg⟩
  exact hg.deriv.div hg hg0

/-- Multiplication by s-a isolates the integer order. This applies to zeros,
poles, and nonzero regular points, without inspecting f(a). -/
theorem tendsto_mul_logDeriv {f g : ℂ → ℂ} {a : ℂ} (n : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfg : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ n * g s) :
    Tendsto (fun s => (s - a) * logDeriv f s) (𝓝[≠] a) (𝓝 (n : ℂ)) := by
  obtain ⟨R, hR, heq⟩ := exists_analytic_remainder n hg hg0 hfg
  have hc : ContinuousAt (fun s : ℂ => (n : ℂ) + (s - a) * R s) a :=
    continuousAt_const.add ((continuousAt_id.sub continuousAt_const).mul hR.continuousAt)
  have ht : Tendsto (fun s : ℂ => (n : ℂ) + (s - a) * R s)
      (𝓝[≠] a) (𝓝 (n : ℂ)) := by
    simpa only [sub_self, zero_mul, add_zero] using
      hc.tendsto.mono_left nhdsWithin_le_nhds
  apply ht.congr'
  filter_upwards [heq, self_mem_nhdsWithin] with s hs hsa
  rw [hs]
  field_simp [sub_ne_zero.mpr hsa]
  <;> ring

/-- Every continuous complex weight keeps its actual value at the singularity.
The limit is a local residue coefficient, not a contour-shifting theorem. -/
theorem tendsto_mul_weighted_logDeriv {f g W : ℂ → ℂ} {a : ℂ} (n : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfg : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ n * g s)
    (hW : ContinuousAt W a) :
    Tendsto (fun s => (s - a) * (W s * logDeriv f s))
      (𝓝[≠] a) (𝓝 ((n : ℂ) * W a)) := by
  have ht := (tendsto_mul_logDeriv n hg hg0 hfg).mul
    (hW.tendsto.mono_left nhdsWithin_le_nhds)
  convert ht using 1 <;> ext s <;> ring

end GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart
