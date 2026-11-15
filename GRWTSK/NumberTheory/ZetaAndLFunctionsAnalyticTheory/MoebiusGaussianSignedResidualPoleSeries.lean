/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLocalizedPairings
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualSupplier
import Mathlib.Order.Filter.AtTopBot.Finset
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# The pole series forced by a genuine linear residual supplier

The index type is the set of actual positive critical-line zeros. A fixed
affine-frequent linear supplier forces each such zero to be simple. The
bound on all finite projections then controls the sum of their squared
Laurent coefficients, after paying the stationary coefficient once.
-/

set_option autoImplicit false

noncomputable section

open Filter Set
open scoped Topology BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleSeries

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLocalizedPairings
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualSupplier
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

/-- An actual critical-line zero with positive ordinate. -/
abbrev PositiveCriticalLineZero :=
  {ρ : ZeroPoint // ρ.val.re = 1 / 2 ∧ 0 < ρ.val.im}

/-- The squared norm of the Laurent coefficient at the indicated zero. -/
def positiveCriticalPoleSquare (ρ : PositiveCriticalLineZero) : ℝ :=
  ‖zetaPoleCoefficient ρ.1‖ ^ 2

/-- The squared residue for a simple positive critical-line zero includes the
actual derivative of zeta and both factors of the pickup denominator. -/
theorem positiveCriticalPoleSquare_eq_of_simple (ρ : PositiveCriticalLineZero)
    (hm : multiplicity ρ.1 = 1) :
    positiveCriticalPoleSquare ρ =
      1 / (ρ.1.val.im ^ 2 * (1 / 4 + ρ.1.val.im ^ 2) *
        ‖deriv riemannZeta ρ.1.val‖ ^ 2) := by
  have hhalf : (1 / 2 : ℂ).re = (1 / 2 : ℝ) ∧ (1 / 2 : ℂ).im = 0 := by
    norm_num [Complex.div_re, Complex.div_im, Complex.normSq_apply]
  have hshift : ‖ρ.1.val - (1 / 2 : ℂ)‖ ^ 2 = ρ.1.val.im ^ 2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
      hhalf.1, hhalf.2, ρ.2.1, sub_self, sub_zero, zero_mul, zero_add, pow_two]
  have hpoint : ‖ρ.1.val‖ ^ 2 = 1 / 4 + ρ.1.val.im ^ 2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, ρ.2.1, pow_two]
    norm_num
  simp only [positiveCriticalPoleSquare, zetaPoleCoefficient, hm, Nat.factorial_one,
    Nat.cast_one, iteratedDeriv_one, norm_div, norm_one, norm_mul, div_pow, mul_pow,
    one_pow, hshift, hpoint]

private theorem positiveCritical_ordinate_injective :
    Function.Injective (fun ρ : PositiveCriticalLineZero => ρ.1.val.im) := by
  intro ρ τ h
  apply Subtype.ext
  apply Subtype.ext
  exact Complex.ext (ρ.property.1.trans τ.property.1.symm) h

private theorem positiveCritical_simple_of_linear_supplier
    {s A : ℝ} (hs : 0 < s) (hA : 0 ≤ A) {G : Set ℝ} {U : ℝ → ℝ}
    (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (ρ : PositiveCriticalLineZero) : multiplicity ρ.val = 1 := by
  obtain ⟨a, b, T₀, ha, _, _, hcover⟩ := hG
  have hbudget' : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T ^ (1 : ℝ) := by
    simpa only [Real.rpow_one] using hbudget
  have hl := (supplier_power_envelope_necessary hs ρ.val ρ.property.1 ρ.property.2.ne'
    ha hA hcover hmajorant hbudget').1
  have hn : 2 * multiplicity ρ.val - 1 ≤ (1 : ℕ) := by exact_mod_cast hl
  have hp := multiplicity_pos ρ.val
  omega

private theorem poleSeries_of_finite_bounds (B A : ℝ)
    (hfin : ∀ J : Finset PositiveCriticalLineZero,
      2 * (∑ ρ ∈ J, positiveCriticalPoleSquare ρ) + B ≤ A) :
    Summable positiveCriticalPoleSquare ∧
      2 * (∑' ρ, positiveCriticalPoleSquare ρ) + B ≤ A := by
  have hsum (J : Finset PositiveCriticalLineZero) :
      (∑ ρ ∈ J, positiveCriticalPoleSquare ρ) ≤ (A - B) / 2 := by
    linarith [hfin J]
  have h : Summable positiveCriticalPoleSquare :=
    summable_of_sum_le (fun _ => sq_nonneg _) hsum
  have ht : (∑' ρ, positiveCriticalPoleSquare ρ) ≤ (A - B) / 2 :=
    h.tsum_le_of_sum_le hsum
  exact ⟨h, by linarith⟩

/-- The fixed affine-frequent linear supplier forces simplicity and summability
of the actual positive critical-line coefficients. The complete series plus
the stationary term bounds the global normalized energy and the allowance. -/
theorem linear_supplier_poleSeries_bound {s A : ℝ}
    (hs : 0 < s) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T) :
    (∀ ρ : PositiveCriticalLineZero, multiplicity ρ.val = 1) ∧
      Summable positiveCriticalPoleSquare ∧
      let Q : ℝ := 2 * (∑' ρ, positiveCriticalPoleSquare ρ) + ‖stationaryCoefficient s‖ ^ 2
      (Q : EReal) ≤ liminf (fun T : ℝ => ((residualEnergy s T / T : ℝ) : EReal)) atTop ∧
        Q ≤ A := by
  have hm := positiveCritical_simple_of_linear_supplier hs hA hG hmajorant hbudget
  have hfin (J : Finset PositiveCriticalLineZero) :
      let Q : ℝ := 2 * (∑ ρ ∈ J, positiveCriticalPoleSquare ρ) + ‖stationaryCoefficient s‖ ^ 2
      (Q : EReal) ≤ liminf (fun T : ℝ => ((residualEnergy s T / T : ℝ) : EReal)) atTop ∧
        Q ≤ A :=
    finite_criticalZero_linear_supplier_bound_with_stationary hs hζ hA J Subtype.val
      (fun ρ _ => ρ.property.1) (fun ρ _ => ρ.property.2)
      positiveCritical_ordinate_injective.injOn (fun ρ _ => hm ρ) hG hmajorant hbudget
  obtain ⟨hSum, hUpper⟩ := poleSeries_of_finite_bounds _ _ (fun J => (hfin J).2)
  refine ⟨hm, hSum, ?_, hUpper⟩
  have hlim : Tendsto (fun J : Finset PositiveCriticalLineZero => ∑ ρ ∈ J, positiveCriticalPoleSquare ρ)
      atTop (𝓝 (∑' ρ, positiveCriticalPoleSquare ρ)) := hSum.hasSum
  have hlim' := continuous_coe_real_ereal.continuousAt.tendsto.comp
    ((hlim.const_mul 2).add_const (‖stationaryCoefficient s‖ ^ 2))
  exact le_of_tendsto' hlim' (fun J => (hfin J).1)

/-- The complete canonical height head restricted to actual positive
critical-line zeros. -/
def positiveCriticalLineHead (T : ℝ) : Finset PositiveCriticalLineZero := by
  classical
  exact (heightHead T).subtype (fun ρ : ZeroPoint => ρ.val.re = 1 / 2 ∧ 0 < ρ.val.im)

@[simp]
theorem mem_positiveCriticalLineHead (T : ℝ) (ρ : PositiveCriticalLineZero) :
    ρ ∈ positiveCriticalLineHead T ↔ height ρ.1 ≤ T := by
  classical
  rw [positiveCriticalLineHead, Finset.mem_subtype, mem_heightHead]

theorem monotone_positiveCriticalLineHead : Monotone positiveCriticalLineHead := by
  intro T V hTV ρ hρ
  exact (mem_positiveCriticalLineHead V ρ).2
    (((mem_positiveCriticalLineHead T ρ).1 hρ).trans hTV)

theorem tendsto_positiveCriticalLineHead_atTop :
    Tendsto positiveCriticalLineHead atTop atTop :=
  monotone_positiveCriticalLineHead.tendsto_atTop_finset
    (fun ρ => ⟨height ρ.1, (mem_positiveCriticalLineHead _ ρ).2 le_rfl⟩)

/-- Canonical closed-height heads converge to the full squared coefficient mass
whenever this mass is summable. -/
theorem tendsto_sum_positiveCriticalLineHead
    (h : Summable positiveCriticalPoleSquare) :
    Tendsto (fun T => ∑ ρ ∈ positiveCriticalLineHead T, positiveCriticalPoleSquare ρ)
      atTop (𝓝 (∑' ρ, positiveCriticalPoleSquare ρ)) := by
  have ht : Tendsto
      (fun J : Finset PositiveCriticalLineZero => ∑ ρ ∈ J, positiveCriticalPoleSquare ρ)
      atTop (𝓝 (∑' ρ, positiveCriticalPoleSquare ρ)) := h.hasSum
  exact ht.comp tendsto_positiveCriticalLineHead_atTop

/-- A proposed allowance fails the finite pole test at some complete height
head beyond any prescribed cutoff exactly when the coefficient mass diverges
or its total cost exceeds the allowance. The separate divergence alternative
retains the distinction between a real total and a nonsummable family. -/
theorem exists_heightHead_overrun_iff (s A R : ℝ) :
    (∃ T : ℝ, R ≤ T ∧
      A < 2 * (∑ ρ ∈ positiveCriticalLineHead T, positiveCriticalPoleSquare ρ) +
        ‖stationaryCoefficient s‖ ^ 2) ↔
    ¬ Summable positiveCriticalPoleSquare ∨
      A < 2 * (∑' ρ, positiveCriticalPoleSquare ρ) + ‖stationaryCoefficient s‖ ^ 2 := by
  classical
  constructor
  · rintro ⟨T, _, hT⟩
    by_cases hs : Summable positiveCriticalPoleSquare
    · right
      have hmass : (∑ ρ ∈ positiveCriticalLineHead T, positiveCriticalPoleSquare ρ) ≤
          ∑' ρ, positiveCriticalPoleSquare ρ :=
        hs.sum_le_tsum (positiveCriticalLineHead T) (fun _ _ => sq_nonneg _)
      exact hT.trans_le (add_le_add
        (mul_le_mul_of_nonneg_left hmass (by norm_num : (0 : ℝ) ≤ 2)) le_rfl)
    · exact Or.inl hs
  · intro hFail
    by_contra! hNo
    have hfin (J : Finset PositiveCriticalLineZero) :
        2 * (∑ ρ ∈ J, positiveCriticalPoleSquare ρ) + ‖stationaryCoefficient s‖ ^ 2 ≤ A := by
      have hJ : ∀ᶠ T in atTop, J ≤ positiveCriticalLineHead T :=
        (tendsto_atTop.1 tendsto_positiveCriticalLineHead_atTop) J
      obtain ⟨T, hJT, hRT⟩ := (hJ.and (eventually_ge_atTop R)).exists
      have hsum : (∑ ρ ∈ J, positiveCriticalPoleSquare ρ) ≤
          ∑ ρ ∈ positiveCriticalLineHead T, positiveCriticalPoleSquare ρ :=
        Finset.sum_le_sum_of_subset_of_nonneg hJT (fun _ _ _ => sq_nonneg _)
      linarith [hNo T hRT]
    obtain ⟨hs, ht⟩ := poleSeries_of_finite_bounds _ _ hfin
    exact hFail.elim (fun h => h hs) (fun h => h.not_ge ht)

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleSeries
