/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDeterminantCircleCount

/-!
# Exhaustive certified approximations of the canonical completed zeta source

A growing disk radius and a vanishing certified error imply locally uniform
convergence. The bound is on EVERY complex point in each disk, not a sampled
mesh or a finite list of zeros. It is sufficient that the bound hold eventually;
finite initial computations are neither required nor promoted into tail control.

The consumers reuse the established source-level contour/multiplicity return in
`XiDeterminantCircleCount`. Their target is Mathlib's original `RiemannHypothesis`;
the limit is `CompletedQuotientSource.spectralSource`, with the canonical entire
pole-regularized xi normalization and the existing minus-I spectral coordinate.

No HS-specific exhaustive bound or convergence rate is constructed here. Those
are the unresolved arithmetic/analytic inputs, not fields populated by RH.
This is not a zero-counting asymptotic, a certified prime reconstruction budget,
or a primitive Dirichlet GRH theorem. See grwtsk/math#124 and the accompanying
provenance record. New-source elaboration, kernel replay, and axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open Filter Metric
open scoped Topology

namespace GRWTSK.NumberTheory.Zeta.CertifiedSpectralExhaustion

/-- Certified uniform error on an exhausting sequence of disks gives locally
uniform convergence. There is no monotonicity assumption on the radii or errors:
their respective limits, plus the eventual all-point bound, are sufficient. -/
theorem locallyUniform_of_exhausting_disk_bounds
    {F : ℕ → ℂ → ℂ} {f : ℂ → ℂ} {radius error : ℕ → ℝ}
    (hradius : Tendsto radius atTop atTop)
    (herror : Tendsto error atTop (𝓝 0))
    (hbound : ∀ᶠ n in atTop, ∀ z : ℂ, ‖z‖ ≤ radius n → ‖F n z - f z‖ ≤ error n) :
    TendstoLocallyUniformlyOn F f atTop Set.univ := by
  apply (tendstoLocallyUniformlyOn_iff_forall_isCompact isOpen_univ).mpr
  intro K _ hK
  rw [Metric.tendstoUniformlyOn_iff]
  intro δ hδ
  by_cases hne : K.Nonempty
  · obtain ⟨z₀, _, hmax⟩ := hK.exists_isMaxOn hne continuous_norm.continuousOn
    have hlarge : ∀ᶠ n in atTop, ‖z₀‖ ≤ radius n :=
      hradius.eventually (eventually_ge_atTop ‖z₀‖)
    have hsmall : ∀ᶠ n in atTop, error n < δ :=
      herror.eventually (gt_mem_nhds hδ)
    filter_upwards [hlarge, hsmall, hbound] with n hnlarge hnsmall hnbound
    intro z hz
    have hnorm : ‖F n z - f z‖ < δ :=
      (hnbound z ((hmax hz).trans hnlarge)).trans_lt hnsmall
    simpa only [dist_eq_norm, norm_sub_rev] using hnorm
  · exact Eventually.of_forall fun _ z hz => (hne ⟨z, hz⟩).elim

open CompletedQuotientSource in
/-- An explicit all-scale error contract feeds the existing real-rooted
entire-function return to the original RH. The contract is not proved for HS. -/
theorem riemannHypothesis_of_exhaustive_real_rooted
    {D : ℕ → ℂ → ℂ} {radius error : ℕ → ℝ}
    (hentire : ∀ n, Differentiable ℂ (D n))
    (hreal : ∀ n z, D n z = 0 → z.im = 0)
    (hradius : Tendsto radius atTop atTop)
    (herror : Tendsto error atTop (𝓝 0))
    (hbound : ∀ᶠ n in atTop, ∀ z : ℂ, ‖z‖ ≤ radius n →
      ‖D n z - spectralSource z‖ ≤ error n) : RiemannHypothesis :=
  XiDeterminantCircleCount.riemannHypothesis_of_locallyUniform_real_rooted
    hentire hreal (locallyUniform_of_exhausting_disk_bounds hradius herror hbound)

open CompletedQuotientSource in
/-- The matrix consumer keeps dimensions, normalization, and all complex
spectral arguments explicit. Hermiticity supplies real roots; it does not
supply the source-identification error or any exhaustive arithmetic certificate. -/
theorem riemannHypothesis_of_exhaustive_normalized_hermitian
    {d : ℕ → ℕ} {radius error : ℕ → ℝ}
    (A : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (hA : ∀ n, (A n).IsHermitian)
    (u : ℕ → ℂ → ℂ) (hu : ∀ n, Differentiable ℂ (u n))
    (hunit : ∀ n z, u n z ≠ 0)
    (hradius : Tendsto radius atTop atTop)
    (herror : Tendsto error atTop (𝓝 0))
    (hbound : ∀ᶠ n in atTop, ∀ z : ℂ, ‖z‖ ≤ radius n →
      ‖u n z * (A n).charpoly.eval z - spectralSource z‖ ≤ error n) :
    RiemannHypothesis :=
  XiDeterminantCircleCount.riemannHypothesis_of_normalized_hermitian_limit
    A hA u hu hunit (locallyUniform_of_exhausting_disk_bounds hradius herror hbound)

end GRWTSK.NumberTheory.Zeta.CertifiedSpectralExhaustion
