import Mathlib.Analysis.Meromorphic.Order
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Infrastructure for the actual paired Hadamard product

Generic analytic lemmas needed by the source-bound `ActualPairedProduct` proof.
They contain no zeta, RH, PF, determinant, or Grassmannian assumptions.

The first theorem is the precise local-biholomorphic multiplicity transport
through the map `u ↦ u^2` away from its ramification point.  The remaining
lemmas transport all Taylor coefficients through locally uniform convergence of
entire functions.  These are the two reusable analytic mechanisms required by
issue #153 before the actual xi source is attached.
-/

namespace FormalResearch.RiemannHypothesis.ActualPairedProductInfrastructure

open Filter Set
open scoped Topology

noncomputable section

/-- The derivative of the squaring map. -/
theorem deriv_square (u : ℂ) : deriv (fun z : ℂ => z ^ 2) u = 2 * u := by
  simp [show deriv (fun z : ℂ => z ^ 2) u = 2 * u ^ (2 - 1) * 1 from
    ((hasDerivAt_id u).pow 2).deriv]

/-- Composition with `u ↦ u^2` preserves analytic/meromorphic multiplicity
away from the ramification point. -/
theorem meromorphicOrderAt_comp_square (f : ℂ → ℂ) (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt (f ∘ fun z : ℂ => z ^ 2) u =
      meromorphicOrderAt f (u ^ 2) := by
  apply meromorphicOrderAt_comp_of_deriv_ne_zero (f := f) (g := fun z : ℂ => z ^ 2)
  · fun_prop
  · rw [deriv_square]
    exact mul_ne_zero (by norm_num) hu

/-- Iterated derivatives of a locally-uniformly convergent family of entire
functions converge locally uniformly. -/
theorem tendstoLocallyUniformlyOn_iterate_deriv
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    TendstoLocallyUniformlyOn
      (fun i => (deriv^[n]) (F i)) ((deriv^[n]) f) φ Set.univ := by
  induction n with
  | zero => simpa using hlim
  | succ n ih =>
      have hdiff : ∀ᶠ i in φ, DifferentiableOn ℂ ((deriv^[n]) (F i)) Set.univ :=
        Eventually.of_forall fun i => (hF i).iterated_deriv n |>.differentiableOn
      have hd := ih.deriv hdiff isOpen_univ
      simpa only [Function.iterate_succ_apply', Function.comp_def] using hd

/-- Pointwise convergence of every iterated derivative at the origin. -/
theorem tendsto_iteratedDeriv_zero_of_locallyUniform
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    Tendsto (fun i => iteratedDeriv n (F i) 0) φ
      (𝓝 (iteratedDeriv n f 0)) := by
  have h := tendstoLocallyUniformlyOn_iterate_deriv hF hlim n
  have hp := h.tendsto_at (Set.mem_univ (0 : ℂ))
  simpa only [iteratedDeriv_eq_iterate] using hp

/-- Taylor coefficients at zero converge under locally uniform convergence of
entire functions. -/
theorem tendsto_taylorCoefficient_zero_of_locallyUniform
    {ι : Type*} {φ : Filter ι} [φ.NeBot]
    {F : ι → ℂ → ℂ} {f : ℂ → ℂ}
    (hF : ∀ i, AnalyticOnNhd ℂ (F i) Set.univ)
    (hlim : TendstoLocallyUniformlyOn F f φ Set.univ) (n : ℕ) :
    Tendsto
      (fun i => iteratedDeriv n (F i) 0 / (n.factorial : ℂ)) φ
      (𝓝 (iteratedDeriv n f 0 / (n.factorial : ℂ))) :=
  (tendsto_iteratedDeriv_zero_of_locallyUniform hF hlim n).div_const _

end

end FormalResearch.RiemannHypothesis.ActualPairedProductInfrastructure
