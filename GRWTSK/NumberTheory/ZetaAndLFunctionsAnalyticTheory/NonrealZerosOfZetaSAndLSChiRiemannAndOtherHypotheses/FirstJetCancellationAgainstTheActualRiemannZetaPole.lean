import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Calculus.Deriv.Slope

/-!
# First-jet cancellation against the actual Riemann zeta pole

Batch 18's unit-jet direction is realized as a punctured analytic limit for
Mathlib's actual `riemannZeta`. A factor vanishing at one cancels its simple
pole; the derivative is the remaining scalar. The next consumer transports a
continuous source germ into the two children. Identifying that source germ
with a centered Mangoldt Dirichlet series remains a separate obligation.

Human unit-jet direction: grwtsk contributors. Local adapter: OpenAI Codex.
The zeta residue is David Loeffler's upstream Mathlib formalization; the
derivative-as-slope interface is Yury Kudryashov's. Both remain qualified
upstream dependencies at the repository's recorded Mathlib revision.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ZetaJetCancellation

open Filter
open scoped Topology

theorem actual_zeta_pole_cancellation {A : ℂ → ℂ} {kappa : ℂ}
    (hzero : A 1 = 0) (hjet : HasDerivAt A kappa 1) :
    Tendsto (fun s ↦ A s * riemannZeta s) (𝓝[≠] 1) (𝓝 kappa) := by
  have h := hjet.tendsto_slope.mul riemannZeta_residue_one
  simp only [mul_one] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  have hs1 : s - 1 ≠ 0 := sub_ne_zero.mpr hs
  rw [slope_def_field, hzero, sub_zero]
  field_simp

theorem low_child_limit {A C : ℂ → ℂ} {kappa : ℂ}
    (hzero : A 1 = 0) (hjet : HasDerivAt A kappa 1)
    (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (A s * riemannZeta s) * C s) (𝓝[≠] 1)
      (𝓝 (kappa * C 1)) :=
  (actual_zeta_pole_cancellation hzero hjet).mul
    (hC.tendsto.mono_left nhdsWithin_le_nhds)

theorem high_child_limit {A C : ℂ → ℂ} {kappa : ℂ}
    (hzero : A 1 = 0) (hjet : HasDerivAt A kappa 1)
    (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (1 - A s * riemannZeta s) * C s) (𝓝[≠] 1)
      (𝓝 ((1 - kappa) * C 1)) :=
  (tendsto_const_nhds.sub (actual_zeta_pole_cancellation hzero hjet)).mul
    (hC.tendsto.mono_left nhdsWithin_le_nhds)

theorem unit_jet_high_child_vanishes {A C : ℂ → ℂ}
    (hzero : A 1 = 0) (hjet : HasDerivAt A 1 1)
    (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (1 - A s * riemannZeta s) * C s) (𝓝[≠] 1) (𝓝 0) := by
  simpa using high_child_limit hzero hjet hC

theorem unit_jet_low_child_preserves_source {A C : ℂ → ℂ}
    (hzero : A 1 = 0) (hjet : HasDerivAt A 1 1)
    (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (A s * riemannZeta s) * C s) (𝓝[≠] 1) (𝓝 (C 1)) := by
  simpa using low_child_limit hzero hjet hC

theorem actual_children_conserve_source (A C : ℂ → ℂ) (s : ℂ) :
    (A s * riemannZeta s) * C s + (1 - A s * riemannZeta s) * C s = C s := by
  ring

end GRWTSK.RiemannHypothesis.Conversation.ZetaJetCancellation
