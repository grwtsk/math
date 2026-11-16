/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiZetaDivisorAlignment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalZeroFree

/-!
# Zeta nonvanishing margins and the actual ξ spectral zeros

The arithmetic input is `Conditional.ZetaZeroFreeAbove θ`, the same
nonvanishing predicate as the output of the original signed Möbius
single-rate return. In spectral coordinates `s = 1/2 - I*z`,
`s.re = 1/2 + z.im`. A zero above the proposed spectral bound is therefore
excluded by the arithmetic input. A zero below the reflected bound would
give a zero above it by ξ reflection. Conversely the inverse coordinate
`z = I*(s-1/2)` would send a forbidden zeta zero to a forbidden spectral zero.
The zero identity uses the pole-cleared ξ, retaining the nontrivial-zero
predicate at the same point. The result is a statement of zero locations
and leaves multiplicity and spectral realization questions separate.

The source identity is `xi_eq_zero_iff_nontrivialZetaZero`
(`6d57a533c0a963250e95da51364f3bd843e5370a`). Specializing to
`θ = (1+r)/2` matches `zero_free_of_original_grid_energy_rate`
(`37e9fcbe6d944295e29093deaee01b873146d0d5`) at width `r/2`.
For a fixed `r > 0`, the bound still allows imaginary part `r/4`,
so zero confinement at one rate leaves the critical-line premise open.
The zero-width case supplies the half-plane input to
`DirichletStageChain.dirichletGRH_of_cofinal_zeta_margins_and_source_stages`
by monotonicity, with its nonprincipal hypotheses still required.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.NumberTheory.Conditional

/-- Arithmetic half-plane exclusion is equivalent to a closed band for the
zeros of the existing, entire spectral source, at the same real margin. -/
theorem zetaZeroFreeAbove_iff_spectralSource_zero_band {θ : ℝ} (hθ : 1 / 2 ≤ θ) :
    ZetaZeroFreeAbove θ ↔ ∀ z : ℂ, spectralSource z = 0 → |z.im| ≤ θ - 1 / 2 := by
  constructor
  · intro hzeta z hz
    let s : ℂ := 1 / 2 - Complex.I * z
    have hs : s.re = 1 / 2 + z.im := by
      simp [s, Complex.sub_re, Complex.mul_re]
    have hzero := (xi_eq_zero_iff_nontrivialZetaZero s).mp hz
    have hreflect := hzero.reflect
    have hu : s.re ≤ θ := le_of_not_gt fun h => hzeta s h hzero.2.2 hzero.1
    have hl : (1 - s).re ≤ θ :=
      le_of_not_gt fun h => hzeta (1 - s) h hreflect.2.2 hreflect.1
    rw [Complex.sub_re, Complex.one_re] at hl
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  · intro hband s hs hne hzero
    let z : ℂ := Complex.I * (s - 1 / 2)
    have hcoord : (1 / 2 : ℂ) - Complex.I * z = s := by
      rw [show Complex.I * z = -(s - 1 / 2) by
        dsimp only [z]
        rw [← mul_assoc, Complex.I_mul_I, neg_one_mul]]
      ring
    have him : z.im = s.re - 1 / 2 := by
      simp [z, Complex.mul_im, Complex.sub_re]
    have hxi : spectralSource z = 0 := by
      unfold spectralSource
      rw [hcoord]
      exact (xi_eq_zero_iff_nontrivialZetaZero s).mpr
        ⟨hzero, not_trivial_zero_of_pos_re (by linarith), hne⟩
    have hbound := (le_abs_self z.im).trans (hband z hxi)
    linarith

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
