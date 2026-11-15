/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAnchorActualTail

/-!
# Exact zero and order transport from zeta to the pole-cleared source

This is the source-order input for math#1805. The completed function is
the original `CompletedQuotientSource.xi`. At each point of the open
critical strip, multiplying ξ by reciprocal Gamma and multiplying ζ by
the pole-clearing polynomial give equal germs. Both multipliers are
analytic and nonvanishing there. The orders therefore agree before
conversion to natural multiplicities. The equality of actual zero
predicates then transports the strict positive-height weighted sum at
unchanged complex locations. A zeta count or summability proof and the
full Hadamard anchor identity remain separate inputs.
-/

set_option autoImplicit false

noncomputable section

open Filter
open scoped Topology

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.RiemannHypothesis (NontrivialZetaZero)

private def xiPoleClearingFactor (z : ℂ) : ℂ := (1 / 2 : ℂ) * z * (z - 1)

private theorem xiPoleClearingFactor_ne_zero {z : ℂ} (h0 : z ≠ 0) (h1 : z ≠ 1) :
    xiPoleClearingFactor z ≠ 0 :=
  mul_ne_zero (mul_ne_zero (by norm_num) h0) (sub_ne_zero.mpr h1)

private theorem xi_mul_invGamma_eq_zeta_mul_poleFactor {z : ℂ}
    (h0 : z ≠ 0) (h1 : z ≠ 1) :
    xi z * (Complex.Gammaℝ z)⁻¹ = riemannZeta z * xiPoleClearingFactor z := by
  rw [xi_eq_completed z h0 h1, riemannZeta_def_of_ne_zero h0, div_eq_mul_inv]
  unfold xiPoleClearingFactor
  ring

private theorem riemannZeta_eq_zero_of_xi_eq_zero {z : ℂ} (hz : xi z = 0) :
    riemannZeta z = 0 := by
  have h0 : z ≠ 0 := by
    rintro rfl
    rw [xi_zero] at hz
    norm_num at hz
  have h1 : z ≠ 1 := by
    rintro rfl
    rw [xi_one] at hz
    norm_num at hz
  have hprod := xi_mul_invGamma_eq_zeta_mul_poleFactor h0 h1
  rw [hz, zero_mul] at hprod
  exact (mul_eq_zero.mp hprod.symm).resolve_right (xiPoleClearingFactor_ne_zero h0 h1)

/-- The pole-cleared ξ has precisely the maintained nontrivial zeta divisor support. -/
theorem xi_eq_zero_iff_nontrivialZetaZero (z : ℂ) : xi z = 0 ↔ NontrivialZetaZero z := by
  constructor
  · intro hz
    refine ⟨riemannZeta_eq_zero_of_xi_eq_zero hz, ?_, ?_⟩
    · rintro ⟨n, rfl⟩
      have hright : 1 ≤ (1 - (-2 * ((n : ℂ) + 1))).re := by
        norm_num [Complex.sub_re, Complex.mul_re, Complex.add_re]
        linarith [Nat.cast_nonneg (α := ℝ) n]
      have hreflect : xi (1 - (-2 * ((n : ℂ) + 1))) = 0 :=
        (xi_one_sub _).trans hz
      exact riemannZeta_ne_zero_of_one_le_re hright (riemannZeta_eq_zero_of_xi_eq_zero hreflect)
    · rintro rfl
      rw [xi_one] at hz
      norm_num at hz
  · intro hz
    have hΓ := Complex.Gammaℝ_ne_zero_of_re_pos hz.mem_critical_strip.1
    have hprod := xi_mul_invGamma_eq_zeta_mul_poleFactor hz.ne_zero hz.2.2
    rw [hz.1, zero_mul] at hprod
    exact (mul_eq_zero.mp hprod).resolve_right (inv_ne_zero hΓ)

/-- The nonzero analytic factors preserve the full order throughout the open strip. -/
theorem xiAnalyticOrderAt_eq_riemannZeta {z : ℂ} (hleft : 0 < z.re) (hright : z.re < 1) :
    analyticOrderAt xi z = analyticOrderAt riemannZeta z := by
  let strip : Set ℂ := {s | 0 < s.re ∧ s.re < 1}
  have hopen : IsOpen strip :=
    (isOpen_lt continuous_const Complex.continuous_re).inter
      (isOpen_lt Complex.continuous_re continuous_const)
  have hs : z ∈ strip := ⟨hleft, hright⟩
  have hEqOn : Set.EqOn (xi * (fun s => (Complex.Gammaℝ s)⁻¹))
      (riemannZeta * xiPoleClearingFactor) strip := by
    intro s hs
    have h0 : s ≠ 0 := by
      rintro rfl
      exact (lt_irrefl (0 : ℝ)) hs.1
    have h1 : s ≠ 1 := by
      rintro rfl
      exact (lt_irrefl (1 : ℝ)) hs.2
    exact xi_mul_invGamma_eq_zeta_mul_poleFactor h0 h1
  have h0 : z ≠ 0 := by
    rintro rfl
    exact (lt_irrefl (0 : ℝ)) hleft
  have h1 : z ≠ 1 := by
    rintro rfl
    exact (lt_irrefl (1 : ℝ)) hright
  have hpoly : AnalyticAt ℂ xiPoleClearingFactor z := by
    unfold xiPoleClearingFactor
    fun_prop
  have hΓat := Complex.differentiable_Gammaℝ_inv.analyticAt z
  have hΓ0 := inv_ne_zero (Complex.Gammaℝ_ne_zero_of_re_pos hleft)
  calc
    analyticOrderAt xi z =
        analyticOrderAt (xi * (fun s => (Complex.Gammaℝ s)⁻¹)) z := by
      rw [analyticOrderAt_mul (differentiable_xi.analyticAt z) hΓat,
        hΓat.analyticOrderAt_eq_zero.mpr hΓ0, add_zero]
    _ = analyticOrderAt (riemannZeta * xiPoleClearingFactor) z :=
      analyticOrderAt_congr (hEqOn.eventuallyEq_of_mem (hopen.mem_nhds hs))
    _ = analyticOrderAt riemannZeta z := by
      rw [analyticOrderAt_mul (analyticOn_riemannZeta z h1) hpoly,
        hpoly.analyticOrderAt_eq_zero.mpr (xiPoleClearingFactor_ne_zero h0 h1), add_zero]

/-- The exact positive tail on the nontrivial zeta zero predicate. -/
def nontrivialZetaPositiveTail (T : ℝ) : Set ℂ :=
  {ρ | NontrivialZetaZero ρ ∧ T < ρ.im}

/-- Reindexing leaves locations, strict height and the actual order-weighted
inverse-square terms intact. This transports any supplied zeta HasSum. -/
theorem xiPositiveTail_inverseSquare_hasSum_iff_zeta (T total : ℝ) :
    HasSum (xiInverseSquareTailTerm (xiPositiveTailOrder T)) total ↔
      HasSum (fun ρ : nontrivialZetaPositiveTail T =>
        (analyticOrderNatAt riemannZeta ρ.val : ℝ) / ρ.val.im ^ 2) total := by
  let e : xiPositiveZeroTail T ≃ nontrivialZetaPositiveTail T :=
    Equiv.subtypeEquivRight (fun z => and_congr (xi_eq_zero_iff_nontrivialZetaZero z) Iff.rfl)
  let term : nontrivialZetaPositiveTail T → ℝ :=
    fun ρ => (analyticOrderNatAt riemannZeta ρ.val : ℝ) / ρ.val.im ^ 2
  have hterm : term ∘ e = xiInverseSquareTailTerm (xiPositiveTailOrder T) := by
    funext ρ
    have hz : NontrivialZetaZero ρ.val := (xi_eq_zero_iff_nontrivialZetaZero ρ.val).mp ρ.property.1
    obtain ⟨hleft, hright⟩ := hz.mem_critical_strip
    have horder := congrArg ENat.toNat (xiAnalyticOrderAt_eq_riemannZeta hleft hright)
    change analyticOrderNatAt xi ρ.val = analyticOrderNatAt riemannZeta ρ.val at horder
    change (analyticOrderNatAt riemannZeta ρ.val : ℝ) / ρ.val.im ^ 2 =
      (analyticOrderNatAt xi ρ.val : ℝ) / ρ.val.im ^ 2
    rw [horder]
  rw [← hterm]
  exact e.hasSum_iff

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
