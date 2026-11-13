/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSmoothWindowPoleReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSignedDeficitNegativeIndex
import Mathlib.Analysis.InnerProductSpace.Orthonormal
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

/-!
# Actual supported complex Fourier–Bessel inequality for the Weil test window

MSC2020: 11M26 (primary), 42A38, 46E35.
The angular Fourier transform here is the literal minus-sign whole-line
Lebesgue integral of the ORIGINAL complex source. Its reproducing L² vector
is the unimodular exponential truncated to the SAME support interval [-A,A].
Its squared L² norm is exactly 2A, with no periodic or ordinate replacement.
Mathlib's Orthonormal.sum_inner_products_le then supplies the missing finite
Bessel family bound used in the signed-deficit negative-index theorem.

The consumer is SignedDeficitNegativeIndex.finite_family_weighted_trace_bound
using u_i(xi)=|F_{f_i}(xi)|² and w=(eta-m_chi,A)_+. The separate Fourier
multiplier/Plancherel source return and sign remain independent obligations.
No pole term is moved: conductor-one retains both original signed orientations.

SOURCE_PROOF_CANDIDATE. Lean elaboration, complete dependency build, fresh
kernel replay, axiom audit, independent analytic review NOT_RUN. Novelty
UNASSESSED. No new research axioms, sorry/admit, RH or GRH claims.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SupportedFourierBessel

open SourcePrimeCorrelation

/-- The actual angular Fourier phase with the plus sign, used as the
first vector in the antilinear-first inner product. -/
def windowPhase (A ξ : ℝ) : ℝ → ℂ :=
  (Icc (-A) A).indicator
    (fun t : ℝ => Complex.exp (Complex.I * ((ξ * t : ℝ) : ℂ)))

/-- The original minus-sign angular Fourier transform, with no surrogate
frequency coordinate or sampled ordinate projection. -/
def angularFourier (f : ℝ → ℂ) (ξ : ℝ) : ℂ :=
  ∫ t : ℝ, f t * Complex.exp (-Complex.I * ((ξ * t : ℝ) : ℂ))

private theorem norm_angular_phase (ξ t : ℝ) :
    ‖Complex.exp (Complex.I * ((ξ * t : ℝ) : ℂ))‖ = 1 := by
  rw [Complex.norm_exp]
  simp [Complex.mul_re]

private theorem angular_phase_conj (ξ t : ℝ) :
    conj (Complex.exp (Complex.I * ((ξ * t : ℝ) : ℂ))) =
      Complex.exp (-Complex.I * ((ξ * t : ℝ) : ℂ)) := by
  rw [← Complex.exp_conj]
  simp

/-- The real finite window gives a GENUINE L² vector despite the global
Fourier phase having no decay. Both support endpoints are retained. -/
theorem windowPhase_memLp (A ξ : ℝ) :
    MemLp (windowPhase A ξ) 2 volume := by
  let s : Set ℝ := Icc (-A) A
  have hfinite : volume s ≠ ∞ := (isCompact_Icc.measure_lt_top).ne
  letI : IsFiniteMeasure (volume.restrict s) :=
    isFiniteMeasure_restrict.mpr hfinite
  have hc : Continuous (fun t : ℝ =>
      Complex.exp (Complex.I * ((ξ * t : ℝ) : ℂ))) := by fun_prop
  have hloc : MemLp
      (fun t : ℝ => Complex.exp (Complex.I * ((ξ * t : ℝ) : ℂ)))
      2 (volume.restrict s) := by
    apply MemLp.of_bound hc.aestronglyMeasurable 1
    exact Filter.Eventually.of_forall (fun t => by
      rw [norm_angular_phase]
      norm_num)
  exact (memLp_indicator_iff_restrict (s := s) measurableSet_Icc).2 hloc

/-- The physical window phase has squared norm EXACTLY the length 2A.
No artificial angular normalization is inserted in the Hilbert vector. -/
theorem windowPhase_energy (A ξ : ℝ) (hA : 0 ≤ A) :
    energy (windowPhase A ξ) = 2 * A := by
  have hp (t : ℝ) :
      ‖windowPhase A ξ t‖ ^ 2 =
        (Icc (-A) A).indicator (fun _ : ℝ => (1 : ℝ)) t := by
    by_cases ht : t ∈ Icc (-A) A
    · simp [windowPhase, Set.indicator_of_mem ht, norm_angular_phase]
    · simp [windowPhase, Set.indicator_of_notMem ht]
  calc
    energy (windowPhase A ξ) =
        ∫ t : ℝ, (Icc (-A) A).indicator (fun _ : ℝ => (1 : ℝ)) t := by
      unfold energy
      exact integral_congr_ae (Filter.Eventually.of_forall hp)
    _ = ∫ t in Icc (-A) A, (1 : ℝ) := by
      rw [integral_indicator measurableSet_Icc]
    _ = 2 * A := by
      rw [integral_const]
      simp only [smul_eq_mul, mul_one, measureReal_def,
        Measure.restrict_apply_univ, Real.volume_Icc]
      rw [ENNReal.toReal_ofReal (by linarith : 0 ≤ A - -A)]
      ring

/-- Direct identification of the real Fourier point evaluation with the
ACTUAL L² inner product against the supported exponential kernel. -/
theorem angularFourier_eq_window_inner (A ξ : ℝ) (f : ℝ → ℂ)
    (hf : MemLp f 2 volume)
    (hs : ∀ t : ℝ, t ∉ Icc (-A) A → f t = 0) :
    angularFourier f ξ =
      inner ℂ
        ((windowPhase_memLp A ξ).toLp (windowPhase A ξ))
        (hf.toLp f) := by
  rw [L2.inner_def]
  unfold angularFourier
  apply integral_congr_ae
  filter_upwards [(windowPhase_memLp A ξ).coeFn_toLp,
    hf.coeFn_toLp] with t hwindow hsource
  rw [hwindow, hsource]
  simp only [RCLike.inner_apply]
  by_cases ht : t ∈ Icc (-A) A
  · rw [windowPhase, Set.indicator_of_mem ht, angular_phase_conj]
    ring
  · rw [hs t ht, windowPhase, Set.indicator_of_notMem ht]
    simp

/-- The ACTUAL complex smooth supported Weil test class is L², not merely
L¹. This reuses the canonical smoothness/compact-support proof. -/
theorem smoothWindow_memLp (A : ℝ)
    (f : SmoothWindowPoleReturn.smoothWindow A) :
    MemLp (f : ℝ → ℂ) 2 volume :=
  f.property.1.continuous.memLp_of_hasCompactSupport
    (SmoothWindowPoleReturn.smoothWindow_hasCompactSupport A f)

/-- Bessel for arbitrary complex orthonormal ORIGINAL smooth supported
source tests. The EXACT 2A comes from the supported exponential's
squared L² norm; no unproved Bessel hypothesis is imported. -/
theorem smoothWindow_angularFourier_bessel
    {ι : Type*} (s : Finset ι) (A ξ : ℝ) (hA : 0 ≤ A)
    (f : ι → SmoothWindowPoleReturn.smoothWindow A)
    (horth : Orthonormal ℂ
      (fun i => (smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ))) :
    (∑ i ∈ s, ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) ≤ 2 * A := by
  let w : Lp ℂ 2 volume := (windowPhase_memLp A ξ).toLp (windowPhase A ξ)
  have hB := horth.sum_inner_products_le w (s := s)
  have heq (i : ι) :
      ‖angularFourier (f i : ℝ → ℂ) ξ‖ =
        ‖inner ℂ
          ((smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ)) w‖ := by
    have hs : ∀ t : ℝ, t ∉ Icc (-A) A → (f i : ℝ → ℂ) t = 0 := by
      intro t ht
      apply (f i).property.2 t
      exact lt_of_not_ge (fun h => ht (abs_le.mp h))
    have h := angularFourier_eq_window_inner A ξ (f i : ℝ → ℂ)
      (smoothWindow_memLp A (f i)) hs
    rw [h]
    exact norm_inner_symm _ _
  calc
    (∑ i ∈ s, ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) =
      ∑ i ∈ s, ‖inner ℂ
          ((smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ)) w‖ ^ 2 := by
            apply Finset.sum_congr rfl
            intro i hi
            rw [heq i]
    _ ≤ ‖w‖ ^ 2 := hB
    _ = 2 * A := by
      simpa only [w] using
        (SourcePrimeCorrelation.energy_eq_norm_toLp_sq
          (windowPhase_memLp A ξ)).symm.trans
            (windowPhase_energy A ξ hA)

/-- A direct source-bound trace estimate for any NONNEGATIVE frequency
weight, in particular the complete original signed deficit
SignedDeficitNegativeIndex.frequencyDeficit χ A η. There is no per-test
negativity hypothesis in this theorem; the separate Plancherel return
supplies that premise when this theorem is used to bound negative index. -/
theorem smoothWindow_weighted_fourier_trace
    {ι : Type*} (s : Finset ι) (A : ℝ) (hA : 0 ≤ A)
    (f : ι → SmoothWindowPoleReturn.smoothWindow A)
    (horth : Orthonormal ℂ
      (fun i => (smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ)))
    (w : ℝ → ℝ)
    (hw : Integrable w volume)
    (hwu : ∀ i ∈ s, Integrable
      (fun ξ : ℝ => w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) volume)
    (hw0 : ∀ᵐ ξ : ℝ ∂volume, 0 ≤ w ξ) :
    (∑ i ∈ s, ∫ ξ : ℝ,
        w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) ≤
      (2 * A) * (∫ ξ : ℝ, w ξ) := by
  have hsumint : Integrable (fun ξ : ℝ =>
      ∑ i ∈ s, w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) volume :=
    integrable_finsetSum s hwu
  have hpoint : ∀ᵐ ξ : ℝ ∂volume,
      (∑ i ∈ s, w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) ≤
        (2 * A) * w ξ := by
    filter_upwards [hw0] with ξ hwξ
    calc
      (∑ i ∈ s, w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) =
          w ξ * (∑ i ∈ s, ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) := by
            rw [Finset.mul_sum]
      _ ≤ w ξ * (2 * A) :=
          mul_le_mul_of_nonneg_left
            (smoothWindow_angularFourier_bessel s A ξ hA f horth) hwξ
      _ = (2 * A) * w ξ := by ring
  calc
    (∑ i ∈ s, ∫ ξ : ℝ,
        w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) =
        ∫ ξ : ℝ, ∑ i ∈ s,
          w ξ * ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2 :=
      (integral_finsetSum s hwu).symm
    _ ≤ ∫ ξ : ℝ, (2 * A) * w ξ :=
      integral_mono_ae hsumint (hw.const_mul _) hpoint
    _ = (2 * A) * (∫ ξ : ℝ, w ξ) := integral_const_mul _ _

/-- Specialization to the EXACT positive deficit of the complete signed
Dirichlet Weil Fourier symbol (all character phases and prime powers).
This establishes the trace UPPER bound, not the per-test negative-sign
lower bound, which requires the original Plancherel source return. -/
theorem original_signed_deficit_fourier_trace
    {ι : Type*} {q : ℕ} [NeZero q]
    (s : Finset ι) (A η : ℝ) (hA : 0 ≤ A)
    (χ : DirichletCharacter ℂ q)
    (f : ι → SmoothWindowPoleReturn.smoothWindow A)
    (horth : Orthonormal ℂ
      (fun i => (smoothWindow_memLp A (f i)).toLp (f i : ℝ → ℂ)))
    (hw : Integrable
      (SignedDeficitNegativeIndex.frequencyDeficit χ A η) volume)
    (hwu : ∀ i ∈ s, Integrable
      (fun ξ : ℝ =>
        SignedDeficitNegativeIndex.frequencyDeficit χ A η ξ *
          ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) volume) :
    (∑ i ∈ s, ∫ ξ : ℝ,
        SignedDeficitNegativeIndex.frequencyDeficit χ A η ξ *
          ‖angularFourier (f i : ℝ → ℂ) ξ‖ ^ 2) ≤
      (2 * A) * (∫ ξ : ℝ,
        SignedDeficitNegativeIndex.frequencyDeficit χ A η ξ) := by
  exact smoothWindow_weighted_fourier_trace s A hA f horth
    (SignedDeficitNegativeIndex.frequencyDeficit χ A η) hw hwu
    (Filter.Eventually.of_forall (fun ξ =>
      SignedDeficitNegativeIndex.frequencyDeficit_nonneg χ A η ξ))

end GRWTSK.NumberTheory.WeilQuadraticForm.SupportedFourierBessel
