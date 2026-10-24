import FormalResearch.RiemannHypothesis.XiToeplitz
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.Analysis.Complex.TaylorSeries
import Mathlib.Analysis.Analytic.OfScalars
import Mathlib.Analysis.Analytic.ChangeOrigin
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.Calculus.Deriv.Star

/-!
# Exact Taylor descent for the existing entire xi source

The coefficients are the existing unnormalized real parts of complex even
Taylor derivatives, not a newly selected positive sequence. Reality is proved
from the actual zeta/gamma source and analytic continuation. Odd terms vanish
by the existing functional equation. Infinite radius is proved from convergence
at every complex argument, before any use of the totalized `tsum`.

Authored candidate: pinned Lean elaboration and axiom audit are still required.
No PF classification, growth bound, arithmetic positivity, or RH is assumed.
-/

namespace FormalResearch.RiemannHypothesis.XiToeplitz

open Complex Filter Set
open scoped Topology ComplexConjugate

noncomputable section

/-- Conjugation of the actual archimedean factor uses the positive real base pi. -/
theorem gammaReal_conjugation (s : ℂ) : Gammaℝ (conj s) = conj (Gammaℝ s) := by
  have hp : (Real.pi : ℂ).arg ≠ Real.pi := by
    simpa [arg_ofReal_of_nonneg Real.pi_pos.le] using Real.pi_ne_zero.symm
  have hc := cpow_conj (Real.pi : ℂ) (-s / 2) hp
  have hpow : (Real.pi : ℂ) ^ (-conj s / 2) =
      conj ((Real.pi : ℂ) ^ (-s / 2)) := by
    simpa using hc
  rw [Gammaℝ_def, Gammaℝ_def, map_mul, hpow]
  congr 1
  simpa using Gamma_conj (s / 2)

/-- Recover the familiar product on an open half-plane using a nonzero gamma factor. -/
theorem xi_product_on_right (s : ℂ) (hs : 1 < s.re) :
    xi s = s * (s - 1) * (riemannZeta s * Gammaℝ s) / 2 := by
  have h0 : s ≠ 0 := by intro h; subst s; norm_num at hs
  have h1 : s ≠ 1 := by intro h; subst s; norm_num at hs
  have hg : Gammaℝ s ≠ 0 := Gammaℝ_ne_zero_of_re_pos (by linarith)
  have he : completedRiemannZeta s = riemannZeta s * Gammaℝ s :=
    ((eq_div_iff hg).mp (riemannZeta_def_of_ne_zero h0)).symm
  rw [xi_eq_completed h0 h1, he]

/-- The entire source is real under conjugation, including its restored endpoints. -/
theorem xi_conjugation (s : ℂ) : xi (conj s) = conj (xi s) := by
  have hf : AnalyticOnNhd ℂ xi univ :=
    differentiable_xi.differentiableOn.analyticOnNhd isOpen_univ
  have hg : AnalyticOnNhd ℂ (fun z => conj (xi (conj z))) univ := by
    apply DifferentiableOn.analyticOnNhd _ isOpen_univ
    intro z _hz
    exact (differentiableAt_conj_conj_iff.mpr
      (differentiable_xi (conj z))).differentiableWithinAt
  have hright (z : ℂ) (hz : 1 < z.re) : conj (xi (conj z)) = xi z := by
    rw [xi_product_on_right (conj z) (by simpa using hz), xi_product_on_right z hz]
    simp [riemannZeta_conj, gammaReal_conjugation]
  have heq : EqOn (fun z => conj (xi (conj z))) xi univ :=
    hg.eqOn_of_preconnected_of_eventuallyEq hf isPreconnected_univ
      (mem_univ (2 : ℂ))
      (eventuallyEq_of_mem
        ((isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)) hright)
  simpa using congrArg (starRingEnd ℂ) (heq (mem_univ s))

/-- Iterated derivatives commute with conjugating both the input and output. -/
theorem iteratedDeriv_conjugate_function (f : ℂ → ℂ) (n : ℕ) :
    iteratedDeriv n (conj ∘ f ∘ conj) = conj ∘ iteratedDeriv n f ∘ conj := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp only [iteratedDeriv_succ, ih, deriv_conj_conj]

/-- Every derivative of xi at its real center has vanishing imaginary part. -/
theorem xi_derivative_center_real (n : ℕ) : (iteratedDeriv n xi (1 / 2)).im = 0 := by
  have hf : conj ∘ xi ∘ conj = xi := by
    funext z
    simp [Function.comp_apply, xi_conjugation]
  have he := congrFun (iteratedDeriv_conjugate_function xi n) (1 / 2)
  rw [hf] at he
  have hi := congrArg Complex.im he
  simp [Function.comp_apply] at hi
  linarith

/-- Odd Taylor derivatives vanish by the functional equation, not by definition. -/
theorem xi_odd_derivative_center (k : ℕ) :
    iteratedDeriv (2 * k + 1) xi (1 / 2) = 0 := by
  have hf : (fun z : ℂ => xi (1 - z)) = xi := funext xi_one_sub
  have he := congrFun (iteratedDeriv_comp_const_sub (2 * k + 1) xi 1) (1 / 2)
  rw [hf] at he
  have hh : (1 : ℂ) - 1 / 2 = 1 / 2 := by norm_num
  rw [hh] at he
  have hsign : (-1 : ℂ) ^ (2 * k + 1) = -1 := by
    rw [pow_add, pow_mul]
    norm_num
  rw [hsign] at he
  change iteratedDeriv (2 * k + 1) xi (1 / 2) =
    (-1 : ℂ) * iteratedDeriv (2 * k + 1) xi (1 / 2) at he
  linear_combination (1 / 2 : ℂ) * he

/-- The existing real coefficient is exactly the complex Taylor coefficient. -/
theorem coefficient_as_complex (k : ℕ) :
    (coefficient k : ℂ) = iteratedDeriv (2 * k) xi (1 / 2) / ((2 * k).factorial : ℂ) := by
  have hr : ((iteratedDeriv (2 * k) xi (1 / 2)).re : ℂ) =
      iteratedDeriv (2 * k) xi (1 / 2) := by
    apply Complex.ext
    · simp
    · simp [xi_derivative_center_real]
  simp only [coefficient, Complex.ofReal_div, Complex.ofReal_natCast, hr]

/-- Full centered Taylor series of the actual entire xi function. -/
theorem hasSum_full_centered_taylor (u : ℂ) :
    HasSum (fun n : ℕ => iteratedDeriv n xi (1 / 2) / (n.factorial : ℂ) * u ^ n)
      (xi (1 / 2 + u)) := by
  have h := Complex.hasSum_taylorSeries_of_entire differentiable_xi
    (1 / 2) (1 / 2 + u)
  apply h.congr_fun
  intro n
  simp only [add_sub_cancel_left, smul_eq_mul, div_eq_mul_inv]
  ring

/-- The even-index embedding, whose complement consists exactly of zero Taylor terms. -/
theorem even_index_injective : Function.Injective (fun n : ℕ => 2 * n) := by
  intro m n h
  omega

/-- A non-even Taylor index contributes zero; this justifies removing the odd terms. -/
theorem taylor_term_zero_off_even (u : ℂ) (n : ℕ)
    (hn : n ∉ Set.range (fun k : ℕ => 2 * k)) :
    iteratedDeriv n xi (1 / 2) / (n.factorial : ℂ) * u ^ n = 0 := by
  rcases n.even_or_odd with ⟨k, hk⟩ | ⟨k, hk⟩
  · exact False.elim (hn ⟨k, by omega⟩)
  · have he : n = 2 * k + 1 := by omega
    rw [he, xi_odd_derivative_center]
    simp

/-- Exact even Taylor expansion, with `HasSum` rather than a bare totalized sum. -/
theorem hasSum_centered_square (u : ℂ) :
    HasSum (fun k : ℕ => (coefficient k : ℂ) * (u ^ 2) ^ k)
      (xi (1 / 2 + u)) := by
  let t : ℕ → ℂ := fun n =>
    iteratedDeriv n xi (1 / 2) / (n.factorial : ℂ) * u ^ n
  have ht : HasSum t (xi (1 / 2 + u)) := hasSum_full_centered_taylor u
  have hsum :
      HasSum (t ∘ fun k : ℕ => 2 * k) (xi (1 / 2 + u)) := by
    rw [even_index_injective.hasSum_iff
      (fun n hn => taylor_term_zero_off_even u n hn)]
    exact ht
  apply hsum.congr_fun
  intro k
  simp only [t, coefficient_as_complex, pow_mul]

/-- Squaring is surjective on C, including zero; no branch-dependent inverse is asserted. -/
theorem exists_complex_square (w : ℂ) : ∃ u : ℂ, u ^ 2 = w :=
  ⟨w ^ ((2 : ℂ)⁻¹), Complex.cpow_ofNat_inv_pow w 2⟩

/-- The unchanged squared-variable coefficient series is summable at every argument. -/
theorem centeredSeries_summable (w : ℂ) :
    Summable (fun k : ℕ => (coefficient k : ℂ) * w ^ k) := by
  obtain ⟨u, hu⟩ := exists_complex_square w
  simpa [hu] using (hasSum_centered_square u).summable

/-- Scalar multilinear series used only to prove analyticity of the already defined sum. -/
def centeredPowerSeries : FormalMultilinearSeries ℂ ℂ ℂ :=
  FormalMultilinearSeries.ofScalars ℂ (fun k => (coefficient k : ℂ))

/-- The scalar power series has infinite radius, obtained from actual convergence everywhere. -/
theorem centeredPowerSeries_radius : centeredPowerSeries.radius = ⊤ := by
  apply ENNReal.eq_top_of_forall_nnreal_le
  intro r
  apply centeredPowerSeries.le_radius_of_tendsto (l := 0)
  have h := (centeredSeries_summable (r : ℂ)).tendsto_atTop_zero.norm
  simpa [centeredPowerSeries, FormalMultilinearSeries.ofScalars_norm,
    norm_mul, norm_pow] using h

/-- The analytic-series sum is the existing source `centeredSeries`. -/
theorem centeredPowerSeries_sum : centeredPowerSeries.sum = centeredSeries := by
  funext w
  change FormalMultilinearSeries.ofScalarsSum
    (fun k => (coefficient k : ℂ)) w = centeredSeries w
  rw [FormalMultilinearSeries.ofScalars_sum_eq]
  simp only [smul_eq_mul, centeredSeries]

/-- The descended function is entire, including at the ramification point w=0. -/
theorem differentiable_centeredSeries : Differentiable ℂ centeredSeries := by
  intro w
  have hmem : w ∈ Metric.eball (0 : ℂ) centeredPowerSeries.radius := by
    rw [centeredPowerSeries_radius]
    exact Metric.mem_eball.mpr (edist_lt_top _ _)
  have h := (centeredPowerSeries.analyticOnNhd w hmem).differentiableAt
  rwa [centeredPowerSeries_sum] at h

/-- Exact source identity under u -> u^2. -/
theorem centeredSeries_square (u : ℂ) : centeredSeries (u ^ 2) = xi (1 / 2 + u) :=
  (hasSum_centered_square u).tsum_eq

/-- The existing TaylorDescent proposition is discharged without an analytic bridge premise. -/
theorem taylorDescent : TaylorDescent :=
  ⟨centeredSeries_summable, differentiable_centeredSeries, centeredSeries_square⟩

/-- The constant remains the actual source normalization, not silently one. -/
theorem centeredSeries_zero : centeredSeries 0 = xi (1 / 2) := by
  simpa using centeredSeries_square 0

end

end FormalResearch.RiemannHypothesis.XiToeplitz
