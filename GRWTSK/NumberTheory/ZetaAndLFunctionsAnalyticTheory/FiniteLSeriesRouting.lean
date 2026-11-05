/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib LSeries code retains upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ComplexPolarizedModes
import Mathlib.NumberTheory.LSeries.Basic
import Mathlib.NumberTheory.Harmonic.Defs

/-!
# Source-preserving finite vector L-series routing

Reuse Mathlib's literal `LSeries.term`, including its zero-index convention.
Only the vector-valued finite synthesis is new. A common complex linear map
commutes with synthesis; label-dependent maps leave the complete signed
coefficient discrepancy. Its norm allowance is a finite sum over exactly the
same labels. Generic norm estimates use the stated NormedSpace norm; no Pi
supremum norm is silently identified with the complex Euclidean mode energy.

Infinite scalar return consumes actual `LSeriesSummable` and retains the entire
complementary sum. No divergent-tsum default is used as an analytic identity.
The finite kernel is exp(-s log n); at s=1 the constant-coefficient prefix is
exactly Mathlib's harmonic number. General transformed coefficients need not be
Dirichlet characters or coefficients of any classical arithmetic L-function.

Reuse comparison: the earlier scalar LogarithmicWaveform source was inspected
at c8707b59cb75a4f15ee7aa186381a8d87fd15fc0, but its relocated current path could
not be resolved. Rather than import a stale path or copy that module, this
adapter consumes its existing Mathlib LSeries dependency directly. It adds no
new scalar L-function, continuation, zeta-zero or RH definition.

Primary argument: linearity of a finite sum, norm triangle inequality, and the
existing absolutely summable finite/complement decomposition. Hostile controls:
zero index, empty support, variable filters, and unpaid infinite tails.
AI-assisted manual source candidate. Novelty/independent review UNASSESSED.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LSeriesRouting

universe u v w
variable {V : Type u} {W : Type v} {Mode : Type w}

section Algebra
variable [AddCommMonoid V] [Module ℂ V] [AddCommMonoid W] [Module ℂ W]

/-- Finite vector synthesis with the unchanged Mathlib arithmetic kernel. -/
def finite (S : Finset ℕ) (a : ℕ → V) (s : ℂ) : V :=
  ∑ n ∈ S, _root_.LSeries.term (fun _ => 1) s n • a n

theorem map_finite (F : V →ₗ[ℂ] W) (S : Finset ℕ) (a : ℕ → V) (s : ℂ) :
    F (finite S a s) = finite S (fun n => F (a n)) s := by
  simp only [finite, map_sum, map_smul]

@[simp] theorem finite_empty (a : ℕ → V) (s : ℂ) : finite ∅ a s = 0 := by
  simp [finite]

/-- The source index zero contributes no coefficient, including in the vector case. -/
@[simp] theorem finite_zero_index (a : ℕ → V) (s : ℂ) : finite {0} a s = 0 := by
  simp [finite]

end Algebra

section Signed
variable [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]

/-- Do not commute label-dependent operators through the entire source. -/
theorem varying_filter_defect (F : ℕ → V →ₗ[ℂ] W) (G : V →ₗ[ℂ] W)
    (S : Finset ℕ) (a : ℕ → V) (s : ℂ) :
    finite S (fun n => F n (a n)) s - G (finite S a s) =
      finite S (fun n => (F n - G) (a n)) s := by
  rw [map_finite]
  simp only [finite, LinearMap.sub_apply, smul_sub, Finset.sum_sub_distrib]

end Signed

/-- Recover the scalar source, not an independently normalized waveform. -/
theorem finite_scalar (S : Finset ℕ) (a : ℕ → ℂ) (s : ℂ) :
    finite S a s = ∑ n ∈ S, _root_.LSeries.term a s n := by
  unfold finite
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : n = 0
  · simp [hn]
  · simp [_root_.LSeries.term, hn, smul_eq_mul, div_eq_mul_inv, mul_comm]

theorem finite_component (S : Finset ℕ) (a : ℕ → Mode → ℂ) (s : ℂ) (i : Mode) :
    finite S a s i = ∑ n ∈ S, _root_.LSeries.term (fun m => a m i) s n := by
  rw [← finite_scalar S (fun n => a n i) s]
  simp only [finite, Finset.sum_apply, Pi.smul_apply]

/-- The positive integer label has the literal logarithmic spectral coordinate. -/
theorem kernel_log (s : ℂ) {n : ℕ} (hn : 0 < n) :
    _root_.LSeries.term (fun _ => 1) s n =
      Complex.exp (-(Real.log (n : ℝ) : ℂ) * s) := by
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn.ne'
  have hlog : Complex.log (n : ℂ) = (Real.log (n : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_natCast] using
      (Complex.ofReal_log (show (0 : ℝ) ≤ n by positivity)).symm
  rw [_root_.LSeries.term_of_ne_zero hn.ne', one_div,
    Complex.cpow_def_of_ne_zero hnC, ← Complex.exp_neg, hlog]
  congr 1
  ring

theorem kernel_damping_phase (σ t : ℝ) {n : ℕ} (hn : 0 < n) :
    _root_.LSeries.term (fun _ => 1) ((σ : ℂ) + Complex.I * t) n =
      (Real.exp (-σ * Real.log (n : ℝ)) : ℂ) *
        Complex.exp (-Complex.I * t * (Real.log (n : ℝ) : ℂ)) := by
  rw [kernel_log _ hn]
  have he : -(Real.log (n : ℝ) : ℂ) * ((σ : ℂ) + Complex.I * t) =
      ((-σ * Real.log (n : ℝ) : ℝ) : ℂ) +
        -Complex.I * t * (Real.log (n : ℝ) : ℂ) := by
    push_cast
    ring
  rw [he, Complex.exp_add, ← Complex.ofReal_exp]

/-- Harmonic growth is a finite source identity, not a convergent series at one. -/
theorem constant_prefix_at_one (N : ℕ) :
    finite (Finset.range (N + 1)) (fun _ => (1 : ℂ)) 1 = (harmonic N : ℂ) := by
  induction N with
  | zero => simp [finite, harmonic]
  | succ N ih =>
      rw [finite_scalar] at ih ⊢
      rw [Finset.sum_range_succ, ih, harmonic_succ]
      simp [_root_.LSeries.term, one_div]

section Norm
variable [NormedAddCommGroup V] [NormedSpace ℂ V]
variable [NormedAddCommGroup W] [NormedSpace ℂ W]

theorem norm_finite_le (S : Finset ℕ) (a : ℕ → V) (s : ℂ) :
    ‖finite S a s‖ ≤
      ∑ n ∈ S, ‖_root_.LSeries.term (fun _ => 1) s n‖ * ‖a n‖ := by
  unfold finite
  calc
    ‖∑ n ∈ S, _root_.LSeries.term (fun _ => 1) s n • a n‖ ≤
        ∑ n ∈ S, ‖_root_.LSeries.term (fun _ => 1) s n • a n‖ := norm_sum_le _ _
    _ = _ := by simp only [norm_smul]

/-- Each allowance bounds the actual original coefficient discrepancy. -/
theorem varying_filter_bound (F : ℕ → V →ₗ[ℂ] W) (G : V →ₗ[ℂ] W)
    (S : Finset ℕ) (a : ℕ → V) (s : ℂ) (η : ℕ → ℝ)
    (hη : ∀ n ∈ S, ‖(F n - G) (a n)‖ ≤ η n) :
    ‖finite S (fun n => F n (a n)) s - G (finite S a s)‖ ≤
      ∑ n ∈ S, ‖_root_.LSeries.term (fun _ => 1) s n‖ * η n := by
  rw [varying_filter_defect]
  exact (norm_finite_le S _ s).trans <|
    Finset.sum_le_sum fun n hn =>
      mul_le_mul_of_nonneg_left (hη n hn) (norm_nonneg _)

end Norm

/-- Actual infinite-source return requires convergence and retains every omitted term. -/
theorem scalar_source_return (S : Finset ℕ) (a : ℕ → ℂ) (s : ℂ)
    (hs : LSeriesSummable a s) :
    _root_.LSeries a s = finite S a s +
      ∑' n : {n : ℕ // n ∉ S}, _root_.LSeries.term a s n := by
  rw [finite_scalar]
  simpa only [_root_.LSeries] using (hs.sum_add_tsum_subtype_compl S).symm

theorem scalar_tail_bound (S : Finset ℕ) (a : ℕ → ℂ) (s : ℂ)
    (hs : LSeriesSummable a s) :
    ‖_root_.LSeries a s - finite S a s‖ ≤
      ∑' n : {n : ℕ // n ∉ S}, ‖_root_.LSeries.term a s n‖ := by
  rw [scalar_source_return S a s hs, add_sub_cancel_left]
  have ht : Summable (fun n : {n : ℕ // n ∉ S} => _root_.LSeries.term a s n) :=
    hs.subtype {n | n ∉ S}
  exact norm_tsum_le_tsum_norm ht.norm

/-- Concrete reuse: the two polarization outputs reconstruct the finite arithmetic packet. -/
theorem polarized_finite_return (c d : ℝ) (h : c ^ 2 + d ^ 2 = 1)
    (S : Finset ℕ) (a : ℕ → GRWTSK.LinearAlgebra.PolarizedModes.Jones) (s : ℂ) :
    finite S (fun n => GRWTSK.LinearAlgebra.PolarizedModes.project c d (a n)) s +
      finite S (fun n => GRWTSK.LinearAlgebra.PolarizedModes.project (-d) c (a n)) s =
        finite S a s := by
  rw [← map_finite, ← map_finite]
  exact GRWTSK.LinearAlgebra.PolarizedModes.reconstruct c d h _

end GRWTSK.NumberTheory.LSeriesRouting
