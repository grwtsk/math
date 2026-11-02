/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueOrthogonality
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexGramClosure
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Parseval for the original Möbius causal waveform over all characters

The maintained pinned Mathlib Dirichlet-character orthogonality and
the previous source-exact residue projection yield the following
finite Fourier identity, with NO averaging/integral approximation:
  sum_(chi mod q) |sum_(a mod q)chi(a)*f(a)|² =
    phi(q)*sum_(a mod q, a a unit)|f(a)|².
Here f is ANY complex coefficient vector; nonunit residue entries
never appear on the right, since the authentic Dirichlet
characters vanish on nonunits.

Specialize f(a)=sum_(n<=N,n=a mod q)mu(n)r_n(u), where r_n is
the ORIGINAL birth-gated physical response. This yields an exact
pointwise parseval for the authentic character-twisted
Möbius familyFiniteResponse, then by finite integral linearity
an exact identity for sum of nonnegative character energies:
  sum_(chi mod q) familyFiniteResponseEnergy(chi,T)
    = phi(q)*sum_(a unit) integral_0^T |residueWave(a,u)|²du.

No fixed chi is controlled by the average alone; q may vary,
and this identity includes principal and imprimitive chi. There
is no GRH or original RH claim and no unproved spectral
assumption. Pinned compilation, fresh kernel and axiom checks
are still NOT_RUN. All Lean declarations remain CANDIDATES.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletResidueParseval

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality

variable (q : ℕ) [NeZero q]
classical

/-- Exact algebraic character Parseval in ℂ: left and right are
complex representations of nonnegative real sums. -/
theorem finite_character_parseval_complex (f : ZMod q → ℂ) :
    (∑ χ : DirichletCharacter ℂ q,
      finiteCharacterFourier q χ f *
        star (finiteCharacterFourier q χ f)) =
      (q.totient : ℂ) *
        (∑ a : ZMod q,
          if IsUnit a then f a * star (f a) else 0) := by
  have hexpand (χ : DirichletCharacter ℂ q) :
      finiteCharacterFourier q χ f *
          star (finiteCharacterFourier q χ f) =
        ∑ a : ZMod q, ∑ b : ZMod q,
          (χ a * star (χ b)) * (f a * star (f b)) := by
    unfold finiteCharacterFourier
    rw [star_sum, Finset.sum_mul_sum]
    simp_rw [star_mul]
    apply Finset.sum_congr rfl
    intro a ha
    apply Finset.sum_congr rfl
    intro b hb
    ring
  have hrow (a : ZMod q) :
      (∑ b : ZMod q,
        if IsUnit b ∧ a = b
        then (q.totient : ℂ) * (f a * star (f b))
        else 0) =
      if IsUnit a then
        (q.totient : ℂ) * (f a * star (f a)) else 0 := by
    by_cases ha : IsUnit a
    · have hi :
          (∑ b : ZMod q,
            if IsUnit b ∧ a = b then
              (q.totient : ℂ) * (f a * star (f b)) else 0) =
          ∑ b : ZMod q,
            if b = a then
              (q.totient : ℂ) * (f a * star (f b)) else 0 := by
        apply Finset.sum_congr rfl
        intro b hb
        by_cases heq : b = a
        · subst b
          simp [ha]
        · have hne : a ≠ b := Ne.symm heq
          simp [hne, heq]
      rw [hi]
      simp [ha]
    · have hfalse (b : ZMod q) :
          ¬(IsUnit b ∧ a = b) := by
        rintro ⟨hu, eq⟩
        exact ha (eq.symm ▸ hu)
      simp [ha, hfalse]
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        ∑ a : ZMod q, ∑ b : ZMod q,
          (χ a * star (χ b)) * (f a * star (f b)) := by
      apply Finset.sum_congr rfl
      intro χ hχ
      exact hexpand χ
    _ = ∑ a : ZMod q, ∑ χ : DirichletCharacter ℂ q,
        ∑ b : ZMod q,
          (χ a * star (χ b)) * (f a * star (f b)) := by
      exact Finset.sum_comm
    _ = ∑ a : ZMod q, ∑ b : ZMod q,
        ∑ χ : DirichletCharacter ℂ q,
          (χ a * star (χ b)) * (f a * star (f b)) := by
      apply Finset.sum_congr rfl
      intro a ha
      exact Finset.sum_comm
    _ = ∑ a : ZMod q, ∑ b : ZMod q,
        (∑ χ : DirichletCharacter ℂ q,
          χ a * star (χ b)) * (f a * star (f b)) := by
      apply Finset.sum_congr rfl
      intro a ha
      apply Finset.sum_congr rfl
      intro b hb
      rw [Finset.sum_mul]
    _ = ∑ a : ZMod q, ∑ b : ZMod q,
        if IsUnit b ∧ a = b
        then (q.totient : ℂ) * (f a * star (f b))
        else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      apply Finset.sum_congr rfl
      intro b hb
      rw [character_pair_orthogonality q a b]
      split_ifs <;> ring
    _ = ∑ a : ZMod q,
        if IsUnit a then
          (q.totient : ℂ) * (f a * star (f a))
        else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      exact hrow a
    _ = (q.totient : ℂ) *
        (∑ a : ZMod q,
          if IsUnit a then f a * star (f a) else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a ha
      split_ifs <;> ring

/-- Standard finite-dimensional REAL Parseval energy identity.
The proof projects the exact complex identity to its true real
norm-square values; all character basis functions are included. -/
theorem finite_character_parseval (f : ZMod q → ℂ) :
    (∑ χ : DirichletCharacter ℂ q,
      ‖finiteCharacterFourier q χ f‖ ^ 2) =
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then ‖f a‖ ^ 2 else 0) := by
  have h := finite_character_parseval_complex q f
  have hleft (χ : DirichletCharacter ℂ q) :
      finiteCharacterFourier q χ f *
          star (finiteCharacterFourier q χ f) =
        ((‖finiteCharacterFourier q χ f‖^2 : ℝ) : ℂ) := by
    rw [Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq]
  have hright (a : ZMod q) :
      f a * star (f a) = ((‖f a‖^2 : ℝ) : ℂ) := by
    rw [Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq]
  have hcast :
      (∑ χ : DirichletCharacter ℂ q,
        ((‖finiteCharacterFourier q χ f‖^2 : ℝ) : ℂ)) =
        (((q.totient : ℝ) *
          (∑ a : ZMod q,
            if IsUnit a then ‖f a‖^2 else 0) : ℝ) : ℂ) := by
    calc
      _ = ∑ χ : DirichletCharacter ℂ q,
          finiteCharacterFourier q χ f *
            star (finiteCharacterFourier q χ f) := by
        apply Finset.sum_congr rfl
        intro χ hχ
        exact (hleft χ).symm
      _ = (q.totient : ℂ) *
          (∑ a : ZMod q,
            if IsUnit a then f a * star (f a) else 0) := h
      _ = (((q.totient : ℝ) *
            (∑ a : ZMod q,
              if IsUnit a then ‖f a‖^2 else 0) : ℝ) : ℂ) := by
        simp_rw [hright]
        norm_cast
  exact_mod_cast hcast

/-- The genuine original Möbius physical response is the
character transform of the residue-class waves from the prior
module; apply exact FINITE Parseval at every physical time. -/
theorem original_character_wave_parseval (T u : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      ‖familyFiniteResponse
        (dirichletCharacterCoefficients χ) T u‖^2) =
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a
          then ‖originalResidueWave q a T u‖^2 else 0) := by
  have hp := finite_character_parseval q
    (fun a => originalResidueWave q a T u)
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        ‖finiteCharacterFourier q χ
          (fun a => originalResidueWave q a T u)‖^2 := by
      apply Finset.sum_congr rfl
      intro χ hχ
      rw [← originalCharacterWave_eq_familyResponse q χ T u,
        originalCharacterWave_eq_residueFourier q χ T u]
    _ = _ := hp

private theorem continuous_originalResidueWave
    (a : ZMod q) (T : ℝ) :
    Continuous (fun u : ℝ => originalResidueWave q a T u) := by
  unfold originalResidueWave
  apply continuous_finsetSum
  intro n hn
  by_cases hres : (n : ZMod q) = a
  · simp only [if_pos hres]
    have hn1 : 0 < n := (Finset.mem_Icc.mp hn).1
    have hr : Continuous (fun u : ℝ =>
      (pickupResponse n u : ℂ)) :=
      Complex.continuous_ofReal.comp
        (pickupResponse_continuous hn1)
    exact continuous_const.mul hr
  · simp [hres]

private theorem continuous_familyFiniteResponse
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    Continuous (fun u : ℝ =>
      familyFiniteResponse (dirichletCharacterCoefficients χ) T u) := by
  unfold familyFiniteResponse
  apply continuous_finsetSum
  intro n hn
  have hn1 : 0 < n := (Finset.mem_Icc.mp hn).1
  have hr : Continuous (fun u : ℝ =>
    (pickupResponse n u : ℂ)) :=
    Complex.continuous_ofReal.comp
      (pickupResponse_continuous hn1)
  exact continuous_const.mul hr

/-- True nonnegative source-energy for ONE residue, with the
same original interval and birth-gated response inventory. -/
def originalResidueEnergy (a : ZMod q) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, ‖originalResidueWave q a T u‖^2

/-- Integration of finite pointwise Parseval is exact because
the original finite response sums are continuous. No completion,
analytic zero theorem or Mertens cancellation enters. -/
theorem all_character_energy_parseval (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      familyFiniteResponseEnergy
        (dirichletCharacterCoefficients χ) T) =
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then originalResidueEnergy q a T else 0) := by
  have hχ (χ : DirichletCharacter ℂ q) :
      IntervalIntegrable
        (fun u : ℝ =>
          ‖familyFiniteResponse
            (dirichletCharacterCoefficients χ) T u‖^2)
        volume 0 T := by
    exact ((continuous_familyFiniteResponse q χ T).norm.pow 2).intervalIntegrable _ _
  have ha (a : ZMod q) :
      IntervalIntegrable
        (fun u : ℝ =>
          if IsUnit a then ‖originalResidueWave q a T u‖^2 else 0)
        volume 0 T := by
    by_cases hu : IsUnit a
    · simpa only [if_pos hu] using
        ((continuous_originalResidueWave q a T).norm.pow 2).intervalIntegrable 0 T
    · simpa only [if_neg hu] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ))).intervalIntegrable 0 T
  unfold familyFiniteResponseEnergy
  calc
    _ = ∫ u in (0 : ℝ)..T,
        ∑ χ : DirichletCharacter ℂ q,
          ‖familyFiniteResponse
            (dirichletCharacterCoefficients χ) T u‖^2 := by
      exact (intervalIntegral.integral_finsetSum
        (fun χ hχ' => hχ χ)).symm
    _ = ∫ u in (0 : ℝ)..T,
        (q.totient : ℝ) *
          (∑ a : ZMod q,
            if IsUnit a
            then ‖originalResidueWave q a T u‖^2 else 0) := by
      apply intervalIntegral.integral_congr
      intro u hu
      exact original_character_wave_parseval q T u
    _ = (q.totient : ℝ) *
        (∫ u in (0 : ℝ)..T,
          ∑ a : ZMod q,
            if IsUnit a
            then ‖originalResidueWave q a T u‖^2 else 0) := by
      rw [intervalIntegral.integral_const_mul]
    _ = (q.totient : ℝ) *
        (∑ a : ZMod q,
          ∫ u in (0 : ℝ)..T,
            if IsUnit a
            then ‖originalResidueWave q a T u‖^2 else 0) := by
      rw [intervalIntegral.integral_finsetSum
        (fun a ha' => ha a)]
    _ = (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then originalResidueEnergy q a T else 0) := by
      congr 1
      apply Finset.sum_congr rfl
      intro a ha'
      by_cases hu : IsUnit a
      · simp [originalResidueEnergy, hu]
      · simp [hu]

end GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
