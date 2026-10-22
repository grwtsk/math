/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Analytic source ideas and selected proof structure adapted from the
Apache-2.0 PrimeNumberTheoremAnd proof by Alex Kontorovich, Terry Tao
and collaborators; upstream copyright and license remain upstream.
Maintained source: PrimeNumberTheoremAnd/Wiener.lean,
commit 127b50e33f6033e2147921167a117af96d9ba4ea.
Formalization assistance: OpenAI ChatGPT.
-/
import Mathlib.Analysis.Fourier.RiemannLebesgueLemma
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.NumberTheory.LSeries.PrimesInAP
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Actual q=1 Wiener--Ikehara boundary estimates, not a limit premise

The maintained PNTAnd proof derives its Schwartz limit by first proving
a compactly supported Fourier identity and a Riemann--Lebesgue decay
for its pole-subtracted boundary term. It then extends the result to
Schwartz tests by quantitative uniform tail bounds.

This module ports two SUBSTANTIVE analytical suppliers with no newly
postulated Fourier/Schwartz limit:

* A genuine q=1 von Mangoldt pole-subtracted auxiliary from pinned
  Mathlib, continuous on Re(s) >= 1.
* Integrability of G(1+it)*psi(t) for compactly supported continuous
  psi, and a true Riemann--Lebesgue proof that
      integral G(1+it)*psi(t)*T^(it) dt -> 0.
* The boundary integral at sigma=1 is actually the limit of the
  integrals at real sigma>1 by dominated convergence; a compact
  vertical-strip bound supplies its domination, not a made-up global
  Schwartz bound.
* A genuine pointwise 1/(1+u^2) Fourier decay estimate for every
  Schwartz function, using the PINNED Schwartz decay theorems, with the
  Fourier normalization u/(2*pi).

The exact still-open analytic supplier is the compact-test Fourier
identity which matches the weighted Lambda L-series and the pole
integral at sigma>1 and survives sigma↓1. The maintained full
limiting_cor_schwartz also requires uniformly bounding the tails
under compact Schwartz approximation by Chebyshev O(N), without
silently assuming global polynomial growth of G(1+it).

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
No PNT, RH, Chowla, Goldbach or accepted kernel theorem is claimed.
-/

namespace GRWTSK.RiemannHypothesis

open Real Complex Filter Set MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform Topology

/-- The ACTUAL local Mathlib q=1 von Mangoldt L-function auxiliary.
This is not an arbitrary analytic function fitted to the desired limit. -/
def wienerPinnedQOneAux (s : ℂ) : ℂ :=
  ArithmeticFunction.vonMangoldt.LFunctionResidueClassAux
    (1 : ZMod 1) s

/-- The actual von Mangoldt function, complexified only at its output.
The underlying coefficients are those in the Mathlib Chebyshev psi
and von Mangoldt L-series, not a fitted arithmetic sequence. -/
def wienerPinnedLambdaComplex (n : ℕ) : ℂ :=
  ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)

/-- At modulus one every natural number belongs to the unique residue
class. The indicator coefficient is EXACTLY the full von Mangoldt
coefficient, including n=0 and all prime powers. -/
theorem wienerPinnedQOne_residueClass_eq_lambda (n : ℕ) :
    ArithmeticFunction.vonMangoldt.residueClass (1 : ZMod 1) n =
      (ArithmeticFunction.vonMangoldt n : ℝ) := by
  have hn : (n : ZMod 1) = (1 : ZMod 1) :=
    Subsingleton.eq_one _
  simp [ArithmeticFunction.vonMangoldt.residueClass, hn]

/-- Exact complex L-series source, using the pinned L-series
congruence theorem and respecting the exceptional zero term. -/
theorem wienerPinnedQOne_residueLSeries_eq_lambda (s : ℂ) :
    LSeries
      (fun n : ℕ =>
        ((ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℝ) : ℂ)) s =
      LSeries wienerPinnedLambdaComplex s := by
  apply LSeries_congr (s := s)
  intro n _hn
  simpa [wienerPinnedLambdaComplex] using
    congrArg (fun r : ℝ => (r : ℂ))
      (wienerPinnedQOne_residueClass_eq_lambda n)

/-- No new summability premise is introduced: this is the actual
pinned LSeriesSummable_vonMangoldt theorem on Re(s)>1. -/
theorem wienerPinnedLambdaComplex_summable
    {s : ℂ} (hs : 1 < s.re) :
    LSeriesSummable wienerPinnedLambdaComplex s := by
  exact ArithmeticFunction.LSeriesSummable_vonMangoldt hs

/-- The pinned q=1 auxiliary agrees on Re(s)>1 with the genuine
von Mangoldt L-series minus a pole of residue EXACTLY 1 at s=1.
This is distinct from continuity at the closed boundary, proved below.
-/
theorem wienerPinnedQOneAux_poleIdentity
    {s : ℂ} (hs : 1 < s.re) :
    wienerPinnedQOneAux s =
      LSeries wienerPinnedLambdaComplex s - 1 / (s - 1) := by
  have hsource :=
    (ArithmeticFunction.vonMangoldt.eqOn_LFunctionResidueClassAux
      (q := 1) (a := (1 : ZMod 1))
      (isUnit_one : IsUnit (1 : ZMod 1)))
      (show s ∈ {z : ℂ | 1 < z.re} from hs)
  have hseries := wienerPinnedQOne_residueLSeries_eq_lambda s
  change wienerPinnedQOneAux s =
    LSeries
      (fun n : ℕ =>
        ((ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℝ) : ℂ)) s -
        (Nat.totient 1 : ℂ)⁻¹ / (s - 1) at hsource
  rw [hseries] at hsource
  simpa [Nat.totient_one] using hsource

/-- Reuse the pinned theorem about continuation through Re(s)=1. -/
theorem wienerPinnedQOneAux_continuousOn :
    ContinuousOn wienerPinnedQOneAux
      {s : ℂ | 1 ≤ s.re} := by
  exact ArithmeticFunction.vonMangoldt.continuousOn_LFunctionResidueClassAux
    (1 : ZMod 1)

/-- Continuity of the ACTUAL arithmetic auxiliary on the boundary
line, with the complex embedding s=1+it explicitly retained. -/
theorem wienerPinnedQOneAux_continuous_boundary :
    Continuous (fun t : ℝ =>
      wienerPinnedQOneAux (1 + (t : ℂ) * Complex.I)) := by
  exact wienerPinnedQOneAux_continuousOn.comp_continuous
    (by fun_prop) (by simp)

/-- For COMPACT tests the boundary integral is genuinely integrable.
Continuity alone would not establish this for every Schwartz test,
because the auxiliary has no declared global vertical growth bound. -/
theorem wienerPinnedQOne_boundary_integrable
    (ψ : ℝ → ℂ) (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ) :
    Integrable (fun t : ℝ =>
      wienerPinnedQOneAux (1 + (t : ℂ) * Complex.I) * ψ t) := by
  have hcontinuous :
      Continuous (fun t : ℝ =>
        wienerPinnedQOneAux (1 + (t : ℂ) * Complex.I) * ψ t) :=
    wienerPinnedQOneAux_continuous_boundary.mul hψ
  exact hcontinuous.integrable_of_hasCompactSupport hcompact.mul_left

/-- A parameter-normalized genuine Riemann--Lebesgue statement, for
integrable complex test f. The phase is T^(it), NOT T^(-it).

The exact pinned Fourier transform convention is exp(-2*pi*i*t*xi),
so the correct frequency is xi=-log(T)/(2*pi).
-/
theorem wiener_real_cpow_oscillation_tends_zero
    (f : ℝ → ℂ) (_hf : Integrable f) :
    Tendsto
      (fun T : ℝ =>
        ∫ t : ℝ, f t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      atTop (nhds (0 : ℂ)) := by
  have hphase :
      ∀ᶠ T : ℝ in atTop, ∀ t : ℝ,
        (T : ℂ) ^ ((t : ℂ) * Complex.I) =
          Complex.exp
            (Real.log T * (t : ℂ) * Complex.I) := by
    filter_upwards [eventually_ne_atTop (0 : ℝ),
      eventually_ge_atTop (0 : ℝ)] with T hT hTpos t
    rw [Complex.cpow_def_of_ne_zero (ofReal_ne_zero.mpr hT),
      ofReal_log hTpos]
    ring_nf
  have heq :
      ∀ᶠ T : ℝ in atTop,
        (∫ t : ℝ,
          f t * (T : ℂ) ^ ((t : ℂ) * Complex.I)) =
        (∫ t : ℝ,
          f t * Complex.exp
            (Real.log T * (t : ℂ) * Complex.I)) := by
    filter_upwards [hphase] with T hT
    apply integral_congr_ae
    exact Eventually.of_forall (fun t => by
      change f t * _ = f t * _
      rw [hT t])
  rw [tendsto_congr' heq]
  convert_to
    Tendsto (fun T : ℝ =>
      (𝓕 f) (-Real.log T / (2 * Real.pi)))
      atTop (nhds (0 : ℂ))
  · ext T
    simp only [Real.fourier_eq', smul_eq_mul,
      RCLike.inner_apply, conj_trivial, ofReal_neg,
      ofReal_mul, neg_mul]
    apply integral_congr_ae
    filter_upwards [] with t
    rw [mul_comm (f t)]
    congr 2
    push_cast
    field_simp [Real.pi_ne_zero]
  refine (Real.zero_at_infty_fourier f).comp <|
    Tendsto.mono_right ?_ atBot_le_cocompact
  exact (tendsto_neg_atBot_iff.mpr tendsto_log_atTop).atBot_mul_const
    (inv_pos.mpr two_pi_pos)

/-- In the actual q=1 von Mangoldt application, the closed-boundary
integral oscillates to zero for EVERY compactly supported continuous
test, by the proven local Riemann--Lebesgue lemma. -/
theorem wienerPinnedQOne_boundary_oscillation_vanishes
    (ψ : ℝ → ℂ)
    (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ) :
    Tendsto
      (fun T : ℝ =>
        ∫ t : ℝ,
          wienerPinnedQOneAux
              (1 + (t : ℂ) * Complex.I) *
            ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      atTop (nhds (0 : ℂ)) := by
  exact wiener_real_cpow_oscillation_tends_zero
    (fun t : ℝ =>
      wienerPinnedQOneAux
        (1 + (t : ℂ) * Complex.I) * ψ t)
    (wienerPinnedQOne_boundary_integrable ψ hψ hcompact)

/-- Genuine Schwartz Fourier decay for the PINNED Schwartz transform.
The constant is constructed from k=0 and k=2 Schwartz seminorm
witnesses: it does not depend on u, T, or an unproved boundary
theorem. This exact 1/(1+u^2) scale is the historical error kernel. -/
theorem wienerSchwartzFourier_decay
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ u : ℝ,
        ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤ C / (1 + u ^ 2) := by
  let H : 𝓢(ℝ, ℂ) := 𝓕 g
  obtain ⟨C₀, hC₀, h₀⟩ := H.decay 0 0
  obtain ⟨C₂, hC₂, h₂⟩ := H.decay 2 0
  refine ⟨C₀ + C₂, by positivity, ?_⟩
  intro u
  have hz : ‖H u‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul, norm_iteratedFDeriv_zero] using h₀ u
  have hsq : u ^ 2 * ‖H u‖ ≤ C₂ := by
    simpa only [norm_iteratedFDeriv_zero,
      Real.norm_eq_abs, sq_abs] using h₂ u
  have hbound :
      (1 + u ^ 2) * ‖H u‖ ≤ C₀ + C₂ := by
    nlinarith
  have hpositive : (0 : ℝ) < 1 + u ^ 2 := by positivity
  have hfinal : ‖H u‖ ≤ (C₀ + C₂) / (1 + u ^ 2) :=
    (le_div_iff₀ hpositive).2 (by
      simpa [mul_comm] using hbound)
  simpa only [H, SchwartzMap.fourier_coe] using hfinal

/-- The historical 2*pi frequency kernel inherits the SAME fixed
Schwartz bound, with no illegal rescaling of Fourier variables. -/
theorem wienerSchwartzFourier_decay_two_pi
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ u : ℝ,
        ‖(𝓕 (g : ℝ → ℂ))
          (u / (2 * Real.pi))‖ ≤
          C / (1 + (u / (2 * Real.pi)) ^ 2) := by
  obtain ⟨C, hC, h⟩ := wienerSchwartzFourier_decay g
  exact ⟨C, hC, fun u => h (u / (2 * Real.pi))⟩

/-- The scaled Fourier transform is actually Lebesgue integrable,
using the pinned Schwartz integrability theorem and the nonzero
2*pi change of variables, not an unjustified integral interchange. -/
theorem wienerSchwartzFourier_scaled_integrable
    (g : 𝓢(ℝ, ℂ)) :
    Integrable
      (fun u : ℝ =>
        (𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))) := by
  have hTwoPi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  have hSchwartz :
      Integrable (fun v : ℝ =>
        (𝓕 (g : ℝ → ℂ)) v) := by
    simpa only [SchwartzMap.fourier_coe] using
      (𝓕 g : 𝓢(ℝ, ℂ)).integrable
  exact hSchwartz.comp_div hTwoPi

/-- The boundary integral is not merely an assigned value at sigma=1:
it is the actual limit of the analytic integrals as sigma decreases
to 1 from the right. The compact support of psi gives a UNIFORM
bound of G on the compact vertical rectangle [1,2] x supp(psi).

A general Schwartz test has no such compact rectangle, hence must
be treated later by genuine approximation and uniform tail bounds.
-/
theorem wienerPinnedQOne_boundary_integral_from_right
    (ψ : ℝ → ℂ) (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ)
    (T : ℝ) (hT : 1 ≤ T) :
    Tendsto
      (fun sigma : ℝ =>
        ∫ t : ℝ,
          wienerPinnedQOneAux
              ((sigma : ℂ) + (t : ℂ) * Complex.I) *
            ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      (𝓝[>] (1 : ℝ))
      (nhds
        (∫ t : ℝ,
          wienerPinnedQOneAux
              (1 + (t : ℂ) * Complex.I) *
            ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))) := by
  by_cases hEmpty : tsupport ψ = ∅
  · simp [tsupport_eq_empty_iff.mp hEmpty]
  obtain ⟨t₀, ht₀⟩ := Set.nonempty_iff_ne_empty.mpr hEmpty
  let S : Set ℂ := reProdIm (Set.Icc 1 2) (tsupport ψ)
  have hCompactS : IsCompact S := by
    refine Metric.isCompact_iff_isClosed_bounded.mpr ⟨?_, ?_⟩
    · exact isClosed_Icc.reProdIm (isClosed_tsupport ψ)
    · exact (Metric.isBounded_Icc 1 2).reProdIm hcompact.isBounded
  have hSRight : S ⊆ {s : ℂ | 1 ≤ s.re} :=
    fun z hz => (mem_reProdIm.mp hz).1.1
  have hGContinuousOn :
      ContinuousOn (‖wienerPinnedQOneAux ·‖) S :=
    (wienerPinnedQOneAux_continuousOn.mono hSRight).norm
  have hSNonempty : S.Nonempty := by
    refine ⟨1 + (t₀ : ℂ) * Complex.I, ?_⟩
    simp [S, mem_reProdIm, ht₀]
  obtain ⟨z, -, hMax⟩ :=
    hCompactS.exists_isMaxOn hSNonempty hGContinuousOn
  let M : ℝ := ‖wienerPinnedQOneAux z‖
  let bound (t : ℝ) : ℝ := M * ‖ψ t‖
  apply tendsto_integral_filter_of_dominated_convergence
    (bound := bound)
  · apply eventually_of_mem (U := Set.Icc 1 2)
        (Icc_mem_nhdsGT_of_mem (by simp))
    intro sigma hSigma
    apply Continuous.aestronglyMeasurable
    apply Continuous.mul
    · exact
        ((wienerPinnedQOneAux_continuousOn.comp_continuous
          (by fun_prop) (by simp [hSigma.1])).mul hψ)
    · apply Continuous.const_cpow (by fun_prop)
      simp
      linarith
  · apply eventually_of_mem (U := Set.Icc 1 2)
        (Icc_mem_nhdsGT_of_mem (by simp))
    intro sigma hSigma
    apply Eventually.of_forall
    intro t
    by_cases ht : t ∈ tsupport ψ
    · have hst :
          (sigma : ℂ) + (t : ℂ) * Complex.I ∈ S := by
        simp [S, mem_reProdIm, hSigma.1, hSigma.2, ht]
      have hAux :=
        (isMaxOn_iff.mp hMax) _ hst
      have hTC : (T : ℂ) ≠ 0 := by
        simp
        linarith
      have hArg : Complex.arg (T : ℂ) = 0 := by
        simp [arg_eq_zero_iff]
        linarith
      have hPow :
          ‖(T : ℂ) ^ ((t : ℂ) * Complex.I)‖ = 1 := by
        simp [norm_cpow_of_ne_zero hTC, hArg]
      simp_rw [norm_mul, hPow, mul_one]
      exact mul_le_mul_of_nonneg_right hAux (norm_nonneg _)
    · have hzero : ψ t = 0 := by
        have hnot : t ∉ Function.support ψ :=
          fun ht' => ht (subset_tsupport ψ ht')
        simpa [Function.mem_support] using hnot
      simp [hzero, bound]
  · have hBoundContinuous : Continuous bound := by
      dsimp [bound]
      fun_prop
    exact hBoundContinuous.integrable_of_hasCompactSupport
      (hcompact.norm.mul_left)
  · apply Eventually.of_forall
    intro t
    apply Tendsto.mul_const
    apply Tendsto.mul_const
    refine (wienerPinnedQOneAux_continuousOn
      (1 + (t : ℂ) * Complex.I) (by simp)).tendsto.comp ?_
    refine tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩
    · exact ((continuous_ofReal.tendsto _).add
        tendsto_const_nhds).mono_left nhdsWithin_le_nhds
    · exact eventually_nhdsWithin_of_forall
        (fun sigma (hsigma : (1 : ℝ) < sigma) =>
          by simp [hsigma.le])

end GRWTSK.RiemannHypothesis
