/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.FinitePoleSubtraction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletWeilIntegrand
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilHorizontalEdges
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# The complete finite principal part of the actual Weil rectangle

MSC2020: 11M41, 11M06, 30E20. Closed-half-plane nonvanishing and the genuine
inverse-character functional equation exclude every completed-source zero
outside the open critical strip, apart from the two separately treated points.
The existing finite height window therefore gives a COMPLETE singularity set.
At level one both logarithmic pole coefficients are -1; at other primitive
levels the values at 0 and 1 are analytic nonzero values, with coefficient zero.

The existing finite subtraction theorem constructs one analytic remainder on
the whole closed rectangle. Its four actual integrals have zero oriented sum.
This is a finite contour subresult, not the fully evaluated residue identity:
the integral of 1/(s-a) on a general rectangle still requires its own theorem,
followed by boundary linearity and the exact source integral assembly.

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Refs math#1801.
No RH/GRH hypothesis, simplicity hypothesis, pole-neutral restriction or new
source completion is introduced. Imported candidates retain their status.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.FinitePoleSubtraction
open GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

variable {N : ℕ} [NeZero N]

/-- Unlike an open Euler half-plane bound, this includes the entire line Re(s)=1.
At its exceptional point the nonprincipal alternative is essential. -/
theorem completed_source_ne_zero_closed_right (chi : DirichletCharacter ℂ N)
    {s : ℂ} (h : chi ≠ 1 ∨ s ≠ 1) (hs : 1 ≤ s.re) :
    DirichletCharacter.completedLFunction chi s ≠ 0 := by
  have hp : 0 < s.re := lt_of_lt_of_le (by norm_num) hs
  rw [completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hp]
  exact mul_ne_zero (chi.LFunction_ne_zero_of_one_le_re h hs)
    (gammaFactor_regular_of_re_pos chi hp).2

/-- Every genuine completed zero away from the two exceptional real points
is an original L-function zero in the OPEN strip. Heights remain complex data. -/
theorem completed_source_zero_in_open_strip (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hz : DirichletCharacter.completedLFunction chi s = 0) :
    DirichletCharacter.LFunction chi s = 0 ∧ 0 < s.re ∧ s.re < 1 := by
  have hu : s.re < 1 := by
    by_contra h
    exact completed_source_ne_zero_closed_right chi (.inr hs1) (le_of_not_gt h) hz
  have hl : 0 < s.re := by
    by_contra h
    have hr : 1 ≤ (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
    have hne : 1 - s ≠ 1 := by intro he; apply hs0; linear_combination -he
    have hdual := completed_source_ne_zero_closed_right chi⁻¹ (.inr hne) hr
    have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
    have hp : (N : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 :=
      Complex.cpow_ne_zero_iff.mpr (.inl hN)
    have he := hprim.completedLFunction_one_sub (1 - s)
    simp only [sub_sub_cancel] at he
    exact (mul_ne_zero (mul_ne_zero hp
      (rootNumber_ne_zero_from_completed_source chi hprim)) hdual) (he.symm.trans hz)
  have he := completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos chi hl
  have hL : DirichletCharacter.LFunction chi s = 0 :=
    (mul_eq_zero.mp (he.symm.trans hz)).resolve_right (gammaFactor_regular_of_re_pos chi hl).2
  exact ⟨hL, hl, hu⟩

private theorem primitive_ne_one_of_level_ne_one (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (hN : N ≠ 1) : chi ≠ 1 := by
  intro he
  change chi.conductor = N at hprim
  rw [he, DirichletCharacter.conductor_one] at hprim
  exact hN hprim.symm

/-- At both real exceptional points a primitive non-zeta completion is a
nonzero analytic function. A central zero at s=1/2 is NOT excluded. -/
theorem completed_source_regular_at_endpoints (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (hN : N ≠ 1) :
    (AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) 0 ∧
      DirichletCharacter.completedLFunction chi 0 ≠ 0) ∧
    (AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) 1 ∧
      DirichletCharacter.completedLFunction chi 1 ≠ 0) := by
  have hc := primitive_ne_one_of_level_ne_one chi hprim hN
  have hi : chi⁻¹ ≠ 1 := by simpa only [inv_eq_one] using hc
  have ha : AnalyticOnNhd ℂ (DirichletCharacter.completedLFunction chi) univ :=
    (DirichletCharacter.differentiable_completedLFunction hc).differentiableOn.analyticOnNhd
      isOpen_univ
  have hn1 := completed_source_ne_zero_closed_right chi (.inl hc)
    (s := (1 : ℂ)) (by norm_num)
  have hdual := completed_source_ne_zero_closed_right chi⁻¹ (.inl hi)
    (s := (1 : ℂ)) (by norm_num)
  have hN0 : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have he := hprim.completedLFunction_one_sub (1 : ℂ)
  simp only [sub_self] at he
  have hn0 : DirichletCharacter.completedLFunction chi 0 ≠ 0 := by
    rw [he]
    exact mul_ne_zero (mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (.inl hN0))
      (rootNumber_ne_zero_from_completed_source chi hprim)) hdual
  exact ⟨⟨ha 0 (mem_univ _), hn0⟩, ⟨ha 1 (mem_univ _), hn1⟩⟩

private theorem analyticAt_completed_source_off_endpoints
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) s := by
  let U : Set ℂ := {z | z ≠ 0 ∧ z ≠ 1}
  have hU : IsOpen U :=
    (isOpen_ne continuous_id continuous_const).inter
      (isOpen_ne continuous_id continuous_const)
  have hd : DifferentiableOn ℂ (DirichletCharacter.completedLFunction chi) U := by
    intro z hz
    exact (chi.differentiableAt_completedLFunction z (.inl hz.1) (.inl hz.2)).differentiableWithinAt
  exact (hd.analyticOnNhd hU) s ⟨hs0, hs1⟩

/-- The literal closed domain of the prospective contour. -/
def weilRectangle (T : ℝ) : Set ℂ := Icc (-1 : ℝ) 2 ×ℂ Icc (-T) T

/-- The two endpoint slots are retained at every level. Their coefficients are
zero away from level one; they are never counted as additional source zeros. -/
def weilSingularSet (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (T : ℝ) : Finset ℂ := by
  classical
  exact insert 0 (insert 1 ((heightWindow chi hprim T).image Subtype.val))

/-- The signed coefficient at both zeta poles is negative. At all other
locations the existing analytic order is used, never a distinct-zero count. -/
def weilLocalCoefficient (chi : DirichletCharacter ℂ N) (W : ℂ → ℂ) (a : ℂ) : ℂ := by
  classical
  exact if a = 0 ∨ a = 1 then (if N = 1 then -W a else 0)
    else (analyticOrderNatAt (DirichletCharacter.LFunction chi) a : ℂ) * W a

private theorem stripZero_ne_zero (chi : DirichletCharacter ℂ N)
    (rho : CriticalStripZero chi) : rho.1 ≠ 0 := by
  intro h
  have hp := rho.2.2.1
  simpa only [h, Complex.zero_re, lt_self_iff_false] using hp

/-- The constructed finite set misses no singularity of the actual logarithmic
derivative on the closed rectangle. Horizontal zero avoidance is supplied, not
inferred from a totalized logarithmic derivative. -/
theorem completed_source_regular_off_weilSingularSet (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    {s : ℂ} (hs : s ∈ weilRectangle T) (hout : s ∉ weilSingularSet chi hprim T) :
    AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) s ∧
      DirichletCharacter.completedLFunction chi s ≠ 0 := by
  classical
  have hs0 : s ≠ 0 := by intro h; subst s; exact hout (by simp [weilSingularSet])
  have hs1 : s ≠ 1 := by intro h; subst s; exact hout (by simp [weilSingularSet])
  refine ⟨analyticAt_completed_source_off_endpoints chi hs0 hs1, ?_⟩
  intro hz
  let rho : CriticalStripZero chi :=
    ⟨s, completed_source_zero_in_open_strip chi hprim hs0 hs1 hz⟩
  have hbound : |s.im| ≤ T := abs_le.mpr hs.2
  have hstrict : |s.im| < T := by
    rcases lt_or_eq_of_le hbound with hlt | heq
    · exact hlt
    · exact False.elim (hheight s heq hz)
  have hw : rho ∈ heightWindow chi hprim T := (mem_heightWindow chi hprim T rho).mpr hstrict
  apply hout
  apply Finset.mem_insert_of_mem
  apply Finset.mem_insert_of_mem
  exact Finset.mem_image.mpr ⟨rho, hw, rfl⟩

private theorem completed_log_principal_at_endpoint (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (a : ℂ) (ha : a = 0 ∨ a = 1) :
    ∃ R : ℂ → ℂ, AnalyticAt ℂ R a ∧
      logDeriv (DirichletCharacter.completedLFunction chi) =ᶠ[𝓝[≠] a]
        fun s => (if N = 1 then (-1 : ℂ) else 0) / (s - a) + R s := by
  classical
  by_cases hN : N = 1
  · subst N
    simp only [DirichletCharacter.completedLFunction_modOne_eq, if_true]
    rcases ha with rfl | rfl
    · obtain ⟨g, hg, hg0, he⟩ := completedZeta_factorization_at_zero
      have hn : g 0 ≠ 0 := by rw [hg0]; norm_num
      simpa using exists_analytic_remainder (-1) hg hn he
    · obtain ⟨g, hg, hg1, he⟩ := completedZeta_factorization_at_one
      have hn : g 1 ≠ 0 := by rw [hg1]; norm_num
      simpa using exists_analytic_remainder (-1) hg hn he
  · have hr := completed_source_regular_at_endpoints chi hprim hN
    have hreg : AnalyticAt ℂ (DirichletCharacter.completedLFunction chi) a ∧
        DirichletCharacter.completedLFunction chi a ≠ 0 := by
      rcases ha with rfl | rfl
      · exact hr.1
      · exact hr.2
    refine ⟨logDeriv (DirichletCharacter.completedLFunction chi),
      hreg.1.deriv.div hreg.1 hreg.2, ?_⟩
    exact Eventually.of_forall (fun s => by simp [hN])

/-- The actual source supplies analytic weighted principal parts at EVERY
member of the complete finite set. A scaled residue limit is not substituted
for this stronger local analytic equality. -/
theorem weighted_completed_source_principal_parts (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ) (W : ℂ → ℂ)
    (hW : AnalyticOnNhd ℂ W univ) :
    ∀ a ∈ weilSingularSet chi hprim T, ∃ B : ℂ → ℂ, AnalyticAt ℂ B a ∧
      (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s)
        =ᶠ[𝓝[≠] a] fun s => weilLocalCoefficient chi W a / (s - a) + B s := by
  classical
  intro a ha
  by_cases he : a = 0 ∨ a = 1
  · obtain ⟨R, hR, hp⟩ := completed_log_principal_at_endpoint chi hprim a he
    obtain ⟨B, hB, hb⟩ := principal_part_mul
      (logDeriv (DirichletCharacter.completedLFunction chi)) R W a
      (if N = 1 then -1 else 0) hR (hW a (mem_univ _)) hp
    refine ⟨B, hB, ?_⟩
    by_cases hN : N = 1 <;>
      simpa only [weilLocalCoefficient, he, if_true, hN, if_false,
        neg_one_mul, zero_mul, mul_comm] using hb
  · have ha0 : a ≠ 0 := fun h => he (.inl h)
    have ha1 : a ≠ 1 := fun h => he (.inr h)
    have himage : a ∈ (heightWindow chi hprim T).image Subtype.val := by
      simpa only [weilSingularSet, Finset.mem_insert, ha0, ha1, false_or] using ha
    obtain ⟨rho, _, hrho⟩ := Finset.mem_image.mp himage
    subst a
    obtain ⟨R, hR, hp⟩ := completedLFunction_logDeriv_principal_part chi rho
    obtain ⟨B, hB, hb⟩ := principal_part_mul
      (logDeriv (DirichletCharacter.completedLFunction chi)) R W rho.1
      (zeroMultiplicity chi rho : ℂ) hR (hW rho.1 (mem_univ _)) hp
    refine ⟨B, hB, ?_⟩
    simpa only [weilLocalCoefficient, he, if_false, zeroMultiplicity, mul_comm] using hb

/-- The finite sum has exactly the original zero multiplicities and BOTH
applicable pole orientations. Extra zero-coefficient slots disappear algebraically. -/
theorem weil_principal_sum_eq (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ) (W : ℂ → ℂ) (s : ℂ) :
    (∑ a ∈ weilSingularSet chi hprim T, weilLocalCoefficient chi W a / (s - a)) =
      (∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
      (if N = 1 then W 0 / s + W 1 / (s - 1) else 0) := by
  classical
  let Z := (heightWindow chi hprim T).image Subtype.val
  have h0 : (0 : ℂ) ∉ Z := by
    rintro hm
    obtain ⟨rho, _, hrho⟩ := Finset.mem_image.mp hm
    exact stripZero_ne_zero chi rho hrho
  have h1 : (1 : ℂ) ∉ Z := by
    rintro hm
    obtain ⟨rho, _, hrho⟩ := Finset.mem_image.mp hm
    exact CriticalStripZero.ne_one rho hrho
  have hsum : (∑ a ∈ Z, weilLocalCoefficient chi W a / (s - a)) =
      ∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1) := by
    dsimp [Z]
    rw [Finset.sum_image (fun _ _ _ _ h => Subtype.val_injective h)]
    apply Finset.sum_congr rfl
    intro rho _
    simp only [weilLocalCoefficient, stripZero_ne_zero chi rho,
      CriticalStripZero.ne_one rho, or_self, if_false, zeroMultiplicity]
  change (∑ a ∈ insert 0 (insert 1 Z), _) = _
  rw [Finset.sum_insert (by simp [h0]), Finset.sum_insert h1, hsum]
  by_cases hN : N = 1 <;> simp [weilLocalCoefficient, hN, sub_zero] <;> ring

/-- Construct the regular remainder on the WHOLE closed rectangle. No growth
hypothesis, zero inventory oracle or analytic remainder supplier is assumed. -/
theorem exists_weil_rectangle_regularization (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    (W : ℂ → ℂ) (hW : AnalyticOnNhd ℂ W univ) :
    ∃ G : ℂ → ℂ, AnalyticOnNhd ℂ G (weilRectangle T) ∧
      ∀ s : ℂ, s ∉ weilSingularSet chi hprim T →
        W s * logDeriv (DirichletCharacter.completedLFunction chi) s = G s +
          (∑ rho ∈ heightWindow chi hprim T,
            (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
          (if N = 1 then W 0 / s + W 1 / (s - 1) else 0) := by
  obtain ⟨G, hG, he⟩ := finite_pole_subtraction (weilSingularSet chi hprim T)
    (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s)
    (weilLocalCoefficient chi W) (weilRectangle T)
    (fun s hs hout => by
      have hreg := completed_source_regular_off_weilSingularSet chi hprim T hheight hs hout
      exact (hW s (mem_univ _)).mul (hreg.1.deriv.div hreg.1 hreg.2))
    (weighted_completed_source_principal_parts chi hprim T W hW)
  refine ⟨G, hG, ?_⟩
  intro s hs
  rw [he s hs, weil_principal_sum_eq]
  ring

/-- The constructed remainder has a genuinely zero four-edge contour integral.
The vertical velocities are I, while both horizontal velocities are 1.
This is the Cauchy-Goursat remainder term, not the still-unevaluated pole sum. -/
theorem weil_rectangle_regular_remainder_integral_zero (G : ℂ → ℂ) (T : ℝ)
    (hT : 0 ≤ T) (hG : AnalyticOnNhd ℂ G (weilRectangle T)) :
    (∫ x in (-1 : ℝ)..2, G ((x : ℂ) + (-T : ℝ) * Complex.I)) -
      (∫ x in (-1 : ℝ)..2, G ((x : ℂ) + (T : ℂ) * Complex.I)) +
      Complex.I * (∫ y in (-T)..T, G (2 + (y : ℂ) * Complex.I)) -
      Complex.I * (∫ y in (-T)..T, G (-1 + (y : ℂ) * Complex.I)) = 0 := by
  have hd : DifferentiableOn ℂ G (weilRectangle T) :=
    fun s hs => (hG s hs).differentiableAt.differentiableWithinAt
  have hrect : DifferentiableOn ℂ G
      (uIcc (-1 : ℝ) 2 ×ℂ uIcc (-T) T) := by
    simpa only [uIcc_of_le (by norm_num : (-1 : ℝ) ≤ 2),
      uIcc_of_le (by linarith : -T ≤ T), weilRectangle] using hd
  simpa only [Complex.ofReal_neg, Complex.ofReal_one, Complex.ofReal_ofNat, smul_eq_mul] using
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn G
      (⟨-1, -T⟩ : ℂ) (⟨2, T⟩ : ℂ) hrect

/-- Every slot of the complete finite set is STRICTLY inside the rectangle.
Thus every point of all four edges is covered by the nonsingular identity. -/
theorem weil_boundary_not_mem_singularSet (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (T : ℝ) (hT : 0 < T) {s : ℂ}
    (hb : s.re = -1 ∨ s.re = 2 ∨ |s.im| = T) :
    s ∉ weilSingularSet chi hprim T := by
  classical
  intro hs
  have hi : -1 < s.re ∧ s.re < 2 ∧ |s.im| < T := by
    simp only [weilSingularSet, Finset.mem_insert, Finset.mem_image] at hs
    rcases hs with rfl | rfl | ⟨rho, hrho, rfl⟩
    · norm_num
      exact hT
    · norm_num
      exact hT
    · exact ⟨by linarith [rho.2.2.1], by linarith [rho.2.2.2],
        (mem_heightWindow chi hprim T rho).mp hrho⟩
  rcases hb with h | h | h <;> linarith [hi.1, hi.2.1, hi.2.2]

/-- One source-derived height sequence supplies every whole-rectangle analytic
remainder for the unchanged admissible correlation weight. Selection precedes
ALL tests. The identity holds at every nonsingular point, hence on every edge. -/
theorem exists_primitive_weil_rectangle_regularizations {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        ∀ n, ∃ G : ℂ → ℂ, AnalyticOnNhd ℂ G (weilRectangle (T n)) ∧
          (∀ s : ℂ, s ∉ weilSingularSet chi hprim (T n) →
            W s * logDeriv (DirichletCharacter.completedLFunction chi) s = G s +
              (∑ rho ∈ heightWindow chi hprim (T n),
                (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
              (if N = 1 then W 0 / s + W 1 / (s - 1) else 0)) ∧
          (∫ x in (-1 : ℝ)..2, G ((x : ℂ) + ((-T n : ℝ) : ℂ) * Complex.I)) -
            (∫ x in (-1 : ℝ)..2, G ((x : ℂ) + (T n : ℂ) * Complex.I)) +
            Complex.I * (∫ y in (-T n)..T n, G (2 + (y : ℂ) * Complex.I)) -
            Complex.I * (∫ y in (-T n)..T n, G (-1 + (y : ℂ) * Complex.I)) = 0 := by
  obtain ⟨T, hT, hn, _⟩ := exists_horizontal_completedLFunction_logDeriv_bound chi hprim
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W n
  have hheight : ∀ s : ℂ, |s.im| = T n →
      DirichletCharacter.completedLFunction chi s ≠ 0 := by
    intro s hi
    have hcoord : (s.re : ℂ) + Complex.I * (s.im : ℂ) = s := by
      simpa only [mul_comm] using Complex.re_add_im s
    rcases le_total 0 s.im with hp | hm
    · rw [abs_of_nonneg hp] at hi
      simpa only [one_mul, ← hi, hcoord] using hn n s.re 1 (Or.inr rfl)
    · rw [abs_of_nonpos hm] at hi
      have him : s.im = -T n := by linarith
      simpa only [neg_one_mul, ← him, hcoord] using hn n s.re (-1) (Or.inl rfl)
  have hW : AnalyticOnNhd ℂ W univ :=
    analyticOnNhd_correlation_contour_weight f A hA
      (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)
  obtain ⟨G, hG, he⟩ := exists_weil_rectangle_regularization chi hprim (T n) hheight W hW
  exact ⟨G, hG, he, weil_rectangle_regular_remainder_integral_zero G (T n)
    (by linarith [(hT n).1, Nat.cast_nonneg (α := ℝ) n]) hG⟩

/-- Literal zeta specialization with BOTH negative logarithmic pole terms.
No pole-neutral condition or removal of central/real strip zeros is imposed. -/
theorem completedZeta_weil_rectangle_regularization (T : ℝ)
    (hheight : ∀ s : ℂ, |s.im| = T → completedRiemannZeta s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ∃ G : ℂ → ℂ, AnalyticOnNhd ℂ G (weilRectangle T) ∧
      ∀ s : ℂ, s ∉ weilSingularSet chi hprim T →
        W s * logDeriv completedRiemannZeta s = G s +
          (∑ rho ∈ heightWindow chi hprim T,
            (zeroMultiplicity chi rho : ℂ) * W rho.1 / (s - rho.1)) -
          (W 0 / s + W 1 / (s - 1)) := by
  intro chi hprim W
  have hW : AnalyticOnNhd ℂ W univ :=
    analyticOnNhd_correlation_contour_weight f A hA
      (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)
  simpa only [DirichletCharacter.completedLFunction_modOne_eq, if_true] using
    exists_weil_rectangle_regularization chi hprim T
      (by simpa only [DirichletCharacter.completedLFunction_modOne_eq] using hheight) W hW

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
