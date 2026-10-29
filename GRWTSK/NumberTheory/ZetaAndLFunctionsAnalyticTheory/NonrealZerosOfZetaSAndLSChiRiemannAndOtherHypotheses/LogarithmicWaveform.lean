/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib identities retain their upstream authorship and Apache-2.0 license;
in particular Mathlib/NumberTheory/LSeries/{Basic,Dirichlet,DirichletContinuation}. -/
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import GRWTSK.MeasureAndIntegration.TranslatedWaveform
import Mathlib.Tactic

/-!
# The common logarithmic spectral waveform of arithmetic coefficients

The zero index has Mathlib's explicit zero term. All infinite reconstructions
below require actual absolute summability. The four classical specializations
are imported from the pinned Mathlib, only on Re(s)>1. Finite spectra at critical
damping are NOT identified with a convergent infinite series there. Tail mass
retains its damping parameter; no uniform estimate as sigma approaches 1 is claimed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.LSeries.LogarithmicWaveform

def point (σ t : ℝ) : ℂ := (σ : ℂ) + Complex.I * (t : ℂ)

def term (a : ℕ → ℂ) (σ t : ℝ) (n : ℕ) : ℂ :=
  _root_.LSeries.term a (point σ t) n

def waveform (a : ℕ → ℂ) (σ t : ℝ) : ℂ := _root_.LSeries a (point σ t)

def finiteWaveform (S : Finset ℕ) (a : ℕ → ℂ) (σ t : ℝ) : ℂ :=
  ∑ n ∈ S, term a σ t n

def tail (S : Finset ℕ) (a : ℕ → ℂ) (σ t : ℝ) : ℂ :=
  ∑' n : {n : ℕ // n ∉ S}, term a σ t n

def absoluteTail (S : Finset ℕ) (a : ℕ → ℂ) (σ : ℝ) : ℝ :=
  ∑' n : {n : ℕ // n ∉ S}, ‖_root_.LSeries.term a (σ : ℂ) n‖

@[simp] theorem point_re (σ t : ℝ) : (point σ t).re = σ := by
  simp [point, Complex.mul_re]

/-- Literal logarithmic frequencies, with damping and phase sign aligned. -/
theorem term_eq_log_phase (a : ℕ → ℂ) (σ t : ℝ) {n : ℕ} (hn : 0 < n) :
    term a σ t n = a n * (Real.exp (-σ * Real.log (n : ℝ)) : ℂ) *
      Complex.exp (-Complex.I * (t : ℂ) * (Real.log (n : ℝ) : ℂ)) := by
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn.ne'
  have hlog : Complex.log (n : ℂ) = (Real.log (n : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_natCast] using
      (Complex.ofReal_log (show (0 : ℝ) ≤ n by positivity)).symm
  unfold term
  rw [_root_.LSeries.term_of_ne_zero hn.ne', Complex.cpow_def_of_ne_zero hnC,
    div_eq_mul_inv, ← Complex.exp_neg, hlog]
  have he : -((Real.log (n : ℝ) : ℂ) * point σ t) =
      ((-σ * Real.log (n : ℝ) : ℝ) : ℂ) +
        -Complex.I * (t : ℂ) * (Real.log (n : ℝ) : ℂ) := by
    unfold point
    push_cast
    ring
  rw [he, Complex.exp_add, ← Complex.ofReal_exp]
  ring

/-- Equivalent inverse-real-power damping, with positivity of the index supplied. -/
theorem term_eq_damped_phase (a : ℕ → ℂ) (σ t : ℝ) {n : ℕ} (hn : 0 < n) :
    term a σ t n = (a n / (((n : ℝ) ^ σ : ℝ) : ℂ)) *
      Complex.exp (-Complex.I * (t : ℂ) * (Real.log (n : ℝ) : ℂ)) := by
  rw [term_eq_log_phase a σ t hn]
  have hd : Real.exp (-σ * Real.log (n : ℝ)) = ((n : ℝ) ^ σ)⁻¹ := by
    rw [Real.rpow_def_of_pos (by exact_mod_cast hn)]
    rw [show -σ * Real.log (n : ℝ) = -(Real.log (n : ℝ) * σ) by ring,
      Real.exp_neg]
  rw [hd, Complex.ofReal_inv, div_eq_mul_inv]

theorem norm_term_eq_real (a : ℕ → ℂ) (σ t : ℝ) (n : ℕ) :
    ‖term a σ t n‖ = ‖_root_.LSeries.term a (σ : ℂ) n‖ := by
  simp [term, _root_.LSeries.norm_term_eq]

/-- Absolute convergence is independent of t at fixed damping, not of sigma. -/
theorem summable_iff_real (a : ℕ → ℂ) (σ t : ℝ) :
    Summable (term a σ t) ↔ LSeriesSummable a (σ : ℂ) := by
  change Summable (term a σ t) ↔ Summable (_root_.LSeries.term a (σ : ℂ))
  constructor
  · intro h
    apply summable_norm_iff.mp
    simpa only [norm_term_eq_real] using h.norm
  · intro h
    apply summable_norm_iff.mp
    simpa only [norm_term_eq_real] using h.norm

/-- Exact finite core and infinite arithmetic remainder; no divergent-series fallback. -/
theorem waveform_eq_finite_add_tail (S : Finset ℕ) (a : ℕ → ℂ) (σ t : ℝ)
    (hs : LSeriesSummable a (σ : ℂ)) :
    waveform a σ t = finiteWaveform S a σ t + tail S a σ t := by
  have h := (summable_iff_real a σ t).mpr hs
  simpa only [waveform, _root_.LSeries, finiteWaveform, tail, term] using
    (h.sum_add_tsum_subtype_compl S).symm

/-- Uniform in frequency at the chosen damping; the full sigma-dependent mass is kept. -/
theorem norm_tail_le (S : Finset ℕ) (a : ℕ → ℂ) (σ t : ℝ)
    (hs : LSeriesSummable a (σ : ℂ)) : ‖tail S a σ t‖ ≤ absoluteTail S a σ := by
  have h := (summable_iff_real a σ t).mpr hs
  have hsub : Summable (fun n : {n : ℕ // n ∉ S} => term a σ t n) :=
    h.subtype {n | n ∉ S}
  have hb := norm_tsum_le_tsum_norm hsub.norm
  simpa only [tail, absoluteTail, norm_term_eq_real] using hb

/-- An arbitrary finite geometric spectrum and a convergent arithmetic waveform
share an extracted finite core. Both unmatched/mismatched modes and the infinite
tail are retained explicitly; no equality of coefficients on the overlap is assumed. -/
theorem waveform_sub_geometry (S T : Finset ℕ) (g a : ℕ → ℂ) (σ t : ℝ)
    (hs : LSeriesSummable a (σ : ℂ)) :
    waveform a σ t - finiteWaveform S g σ t =
      GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.arithmeticRemainder
        S T (term g σ t) (term a σ t) -
      GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.geometryRemainder
        S T (term g σ t) + tail T a σ t := by
  rw [waveform_eq_finite_add_tail T a σ t hs]
  have he := GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.difference_eq_remainders
    S T (term g σ t) (term a σ t)
  unfold finiteWaveform
  rw [show (∑ n ∈ T, term a σ t n) + tail T a σ t - (∑ n ∈ S, term g σ t n) =
    ((∑ n ∈ T, term a σ t n) - (∑ n ∈ S, term g σ t n)) + tail T a σ t by ring]
  rw [he]

/-- Preserve cancellation between the two finite remainders before pricing the tail. -/
theorem waveform_geometry_comparison (S T : Finset ℕ) (g a : ℕ → ℂ) (σ t : ℝ)
    (hs : LSeriesSummable a (σ : ℂ)) :
    ‖waveform a σ t - finiteWaveform S g σ t‖ ≤
      ‖GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.arithmeticRemainder
          S T (term g σ t) (term a σ t) -
        GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap.geometryRemainder
          S T (term g σ t)‖ + absoluteTail T a σ := by
  rw [waveform_sub_geometry S T g a σ t hs]
  exact (norm_add_le _ _).trans (add_le_add_left (norm_tail_le T a σ t hs) _)

/-- The geometric transform has opposite frequency sign because its source
convention uses +i*xi*x while the Dirichlet kernel uses -i*t*log(n). -/
theorem sourceFourier_log_synthesis {q : ℝ → ℝ} (hq : MeasureTheory.Integrable q)
    (S : Finset ℕ) (a : ℕ → ℝ) (σ ξ : ℝ)
    (hS : ∀ n ∈ S, 0 < n) :
    GRWTSK.RiemannHypothesis.SourcePairing.sourceFourier
      (GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform.synthesis q S
        (fun n => Real.log (n : ℝ)) (fun n => a n / (n : ℝ) ^ σ)) ξ =
      GRWTSK.RiemannHypothesis.SourcePairing.sourceFourier q ξ *
        finiteWaveform S (fun n => (a n : ℂ)) σ (-ξ) := by
  rw [GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform.sourceFourier_synthesis hq]
  congr 1
  unfold finiteWaveform
  apply Finset.sum_congr rfl
  intro n hn
  rw [term_eq_damped_phase _ _ _ (hS n hn), Complex.ofReal_div]
  congr 1
  congr 1
  push_cast
  ring

/-- Zeta: actual summability and imported evaluation at the same point. -/
theorem zeta_specialization {σ : ℝ} (hσ : 1 < σ) (t : ℝ) :
    Summable (term (1 : ℕ → ℂ) σ t) ∧
      waveform 1 σ t = riemannZeta (point σ t) := by
  have hs : 1 < (point σ t).re := by simpa using hσ
  exact ⟨LSeriesSummable_one_iff.mpr hs, LSeries_one_eq_riemannZeta hs⟩

theorem moebius_specialization {σ : ℝ} (hσ : 1 < σ) (t : ℝ) :
    Summable (term (fun n => (ArithmeticFunction.moebius n : ℂ)) σ t) ∧
      waveform (fun n => (ArithmeticFunction.moebius n : ℂ)) σ t =
        1 / riemannZeta (point σ t) := by
  have hs : 1 < (point σ t).re := by simpa using hσ
  refine ⟨ArithmeticFunction.LSeriesSummable_moebius_iff.mpr hs, ?_⟩
  have hm := LSeries_one_mul_Lseries_moebius hs
  rw [LSeries_one_eq_riemannZeta hs] at hm
  apply (eq_div_iff (riemannZeta_ne_zero_of_one_lt_re hs)).mpr
  simpa only [waveform, mul_comm] using hm

theorem vonMangoldt_specialization {σ : ℝ} (hσ : 1 < σ) (t : ℝ) :
    Summable (term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) σ t) ∧
      waveform (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) σ t =
        -deriv riemannZeta (point σ t) / riemannZeta (point σ t) := by
  have hs : 1 < (point σ t).re := by simpa using hσ
  exact ⟨ArithmeticFunction.LSeriesSummable_vonMangoldt hs,
    ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs⟩

/-- This is the character's own L-function, not an assertion of GRH. -/
theorem character_vonMangoldt_specialization {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) {σ : ℝ} (hσ : 1 < σ) (t : ℝ) :
    Summable (term (fun n => χ n * (ArithmeticFunction.vonMangoldt n : ℂ)) σ t) ∧
      waveform (fun n => χ n * (ArithmeticFunction.vonMangoldt n : ℂ)) σ t =
        -deriv (DirichletCharacter.LFunction χ) (point σ t) /
          DirichletCharacter.LFunction χ (point σ t) := by
  have hs : 1 < (point σ t).re := by simpa using hσ
  refine ⟨χ.LSeriesSummable_twist_vonMangoldt hs, ?_⟩
  rw [DirichletCharacter.deriv_LFunction_eq_deriv_LSeries χ hs,
    DirichletCharacter.LFunction_eq_LSeries χ hs]
  exact χ.LSeries_twist_vonMangoldt_eq hs

end GRWTSK.NumberTheory.LSeries.LogarithmicWaveform
