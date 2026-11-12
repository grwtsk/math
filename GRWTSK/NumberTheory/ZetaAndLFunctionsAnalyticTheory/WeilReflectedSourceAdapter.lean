/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FULL_DEPENDENCY_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilContourWeight
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletWeilIntegrand
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRectangleResidues

/-!
# Reflection returns the contour convention to the same arithmetic character

MSC2020: 11M06, 11M26, 11M41, 42A38.
For Rf(t)=f(-t), the native correlation satisfies C_Rf(r)=C_f(-r)=conj(C_f(r)).
Energy and every physical shift energy are invariant under R. Consequently
Q_(chi inverse)(Rf)=Q_chi(f) for the UNCHANGED primitive nonprincipal value.
This is not an inverse-character renaming: the actual source test is reflected.

The reflected contour weight is W-(s)=integral C_f(-r) exp((s-1/2)r) dr.
Its zero coefficient is the actual signed complex product
F-(gamma_rho)*conj(F-(conj gamma_rho)), with F-(z)=integral f(t)exp(-I*z*t)dt.
Both zeta pole coefficients are evaluated as oppositely weighted cross products.
The final consumer substitutes these identities into the existing finite rectangle
formula for the SAME chi, zeros, multiplicities, completion and height window.

The native Fourier factorization and zeta pole theorem already exist. This file
reuses them; it does not duplicate an external explicit-formula development.
It does not evaluate the infinite arithmetic line, prove a full infinite Weil
formula, prove test-class density, or prove the all-test arithmetic inequality.
No zero-free-strip result, RH, GRH, or simplicity assumption is used.

Source pin: grwtsk/math@af9b7a05afbf79d4def070fa96f9091b2f177160.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Individual records in WeilReflectedSourceAdapter.provenance give literal types,
complete written arguments, native consumers and external convention comparisons.
Novelty UNASSESSED. Coordination: #1801, scope comment 6828157075.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Topology ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter

open SourcePrimeCorrelation CharacterWindow OddRootProjection LowSchur
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral

private theorem correlation_neg (f : ℝ → ℂ) (r : ℝ) :
    correlation f (-r) = conj (correlation f r) := by
  calc
    _ = ∫ t : ℝ, conj (f (t + r)) * f t := by
      simpa only [correlation, add_neg_cancel_right] using
        (integral_add_right_eq_self
          (fun t : ℝ => conj (f t) * f (t + -r)) r).symm
    _ = ∫ t : ℝ, conj (conj (f t) * f (t + r)) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by simp [mul_comm])
    _ = _ := integral_conj

private theorem correlation_reflect (f : ℝ → ℂ) (r : ℝ) :
    correlation (fun t => f (-t)) r = correlation f (-r) := by
  calc
    _ = ∫ t : ℝ, conj (f t) * f (-(-t + r)) := by
      simpa only [correlation, neg_neg] using
        (integral_neg_eq_self
          (fun t : ℝ => conj (f (-t)) * f (-(t + r))) volume).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by
        rw [show -(-t + r) = t + -r by ring])

private theorem energy_reflect (f : ℝ → ℂ) :
    energy (fun t => f (-t)) = energy f :=
  integral_neg_eq_self (fun t : ℝ => ‖f t‖ ^ 2) volume

private theorem shiftEnergy_reflect (f : ℝ → ℂ) (r : ℝ) :
    energy (fun t => f (-(t + r)) - f (-t)) =
      energy (fun t => f (t + r) - f t) := by
  calc
    _ = ∫ t : ℝ, ‖f (t + -r) - f t‖ ^ 2 := by
      have h := (integral_neg_eq_self
        (fun t : ℝ => ‖f (-(t + r)) - f (-t)‖ ^ 2) volume).symm
      simpa only [energy, neg_neg, neg_add_rev, add_comm] using h
    _ = ∫ t : ℝ, ‖f t - f (t + r)‖ ^ 2 := by
      simpa only [add_neg_cancel_right] using
        (integral_add_right_eq_self
          (fun t : ℝ => ‖f (t + -r) - f t‖ ^ 2) r).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by rw [norm_sub_rev])

private theorem gammaDensity_reflect (a : ℕ) (f : ℝ → ℂ) (r : ℝ) :
    gammaCorrectionDensity a (fun t => f (-t)) r = gammaCorrectionDensity a f r := by
  unfold gammaCorrectionDensity
  rw [shiftEnergy_reflect]

private theorem prime_inverse_reflect {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    twistedPrime A chi⁻¹ (fun n => correlation (fun t => f (-t)) (Real.log (n : ℝ))) =
      twistedPrime A chi (fun n => correlation f (Real.log (n : ℝ))) := by
  unfold twistedPrime
  congr 1
  apply Finset.sum_congr rfl
  intro n _
  rw [conj_inverse_character_apply, correlation_reflect, correlation_neg]
  congr 1
  simp only [Complex.mul_re, Complex.conj_re, Complex.conj_im]
  ring

/-- Exact same-source return of reflection plus character inversion.
No positivity of either side is assumed. The identity holds for totalized values;
its intended form-domain use retains the original integrability hypotheses. -/
theorem primitiveArithmeticValue_inverse_reflect {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive) (hnon : chi ≠ 1)
    (A : ℝ) (f : ℝ → ℂ) :
    primitiveArithmeticValue chi⁻¹
      (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
            using hprim)
      (by simpa only [ne_eq, inv_eq_one] using hnon) A (fun t => f (-t)) =
      primitiveArithmeticValue chi hprim hnon A f := by
  simp only [primitiveArithmeticValue, gammaParity_inverse, energy_reflect,
    gammaDensity_reflect, prime_inverse_reflect]

/-- The two literature prime legs are exactly the original signed finite sum,
as a complex equality, not just an inequality after dropping the phases. -/
theorem reflected_prime_legs_eq_twistedPrime {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    (∑ n ∈ activePrimePowers A, (primeWeight n : ℂ) *
      (chi n * correlation f (-Real.log (n : ℝ)) +
        conj (chi n) * correlation f (Real.log (n : ℝ)))) =
      (twistedPrime A chi (fun n => correlation f (Real.log (n : ℝ))) : ℂ) := by
  have hleg (n : ℕ) :
      chi n * correlation f (-Real.log (n : ℝ)) +
        conj (chi n) * correlation f (Real.log (n : ℝ)) =
      (2 : ℂ) * ((conj (chi n) * correlation f (Real.log (n : ℝ))).re : ℂ) := by
    rw [correlation_neg]
    apply Complex.ext <;>
      simp [Complex.mul_re, Complex.mul_im] <;> ring
  simp_rw [hleg]
  unfold twistedPrime
  push_cast
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

private theorem reflected_weight (f : ℝ → ℂ) (s : ℂ) :
    (∫ r : ℝ, correlation f (-r) * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      ∫ r : ℝ, correlation f r * Complex.exp (((1 - s) - 1 / 2) * (r : ℂ)) := by
  calc
    _ = ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * ((-r : ℝ) : ℂ)) := by
      simpa only [neg_neg] using
        (integral_neg_eq_self (fun r : ℝ => correlation f (-r) *
          Complex.exp ((s - 1 / 2) * (r : ℂ))) volume).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun r => by
        rw [Complex.ofReal_neg]
        congr 1
        congr 1
        ring)

private theorem minus_fourier (f : ℝ → ℂ) (z : ℂ) :
    (∫ t : ℝ, f (-t) * Complex.exp (Complex.I * z * (t : ℂ))) =
      ∫ t : ℝ, f t * Complex.exp (-Complex.I * z * (t : ℂ)) := by
  calc
    _ = ∫ t : ℝ, f t * Complex.exp (Complex.I * z * ((-t : ℝ) : ℂ)) := by
      simpa only [neg_neg] using
        (integral_neg_eq_self (fun t : ℝ => f (-t) *
          Complex.exp (Complex.I * z * (t : ℂ))) volume).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by
        rw [Complex.ofReal_neg]
        congr 1
        congr 1
        ring)

/-- The actual reflected weight at EVERY complex source point. Its second
Fourier factor is evaluated at the conjugated coordinate, never an ordinate. -/
theorem reflected_weight_eq_minus_pair (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (s : ℂ) :
    (∫ r : ℝ, correlation f (-r) * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      (∫ t : ℝ, f t * Complex.exp (-Complex.I * spectralCoordinate s * (t : ℂ))) *
        conj (∫ t : ℝ, f t *
          Complex.exp (-Complex.I * conj (spectralCoordinate s) * (t : ℂ))) := by
  have hsR : ∀ t, A < |t| → f (-t) = 0 :=
    fun t ht => hs (-t) (by simpa only [abs_neg] using ht)
  have h := correlation_contour_weight_eq_reflected_product
    (fun t => f (-t)) A hf.comp_neg hsR s
  simpa only [correlation_reflect, minus_fourier] using h

private theorem reflected_weight_real (f : ℝ → ℂ) (b : ℝ) :
    (∫ r : ℝ, correlation f (-r) * Complex.exp (((b : ℂ) - 1 / 2) * (r : ℂ))) =
      ∫ r : ℝ, correlation f r * (Real.exp ((1 / 2 - b) * r) : ℂ) := by
  rw [reflected_weight]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun r => by
    have he : (((1 : ℂ) - (b : ℂ)) - 1 / 2) * (r : ℂ) =
        (((1 / 2 - b) * r : ℝ) : ℂ) := by push_cast; ring
    rw [he, ← Complex.ofReal_exp])

/-- Both pole orientations of the reflected weight, expressed through the
existing zeta pole integral. Neither cross term is made into a norm square. -/
theorem reflected_weight_poles_eq (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    W 0 + W 1 =
      (∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)) +
      (∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)) := by
  intro W
  have h0 : W 0 = ∫ r : ℝ, correlation f r * (Real.exp (r / 2) : ℂ) := by
    simpa only [W, Complex.ofReal_zero, sub_zero,
      show ∀ r : ℝ, (1 / 2 : ℝ) * r = r / 2 by intro r; ring] using
        reflected_weight_real f 0
  have h1 : W 1 = ∫ r : ℝ, correlation f r * (Real.exp (-r / 2) : ℂ) := by
    have hr (r : ℝ) : ((1 / 2 : ℝ) - 1) * r = -r / 2 := by ring
    simpa only [W, Complex.ofReal_one, hr] using reflected_weight_real f 1
  have hp : Integrable (fun r : ℝ => correlation f r * (Real.exp (r / 2) : ℂ)) := by
    have hr (r : ℝ) : -(-(1 / 2 : ℝ)) * r = r / 2 := by ring
    simpa only [hr] using integrable_correlation_laplace_integrand f A hf hs (-(1 / 2))
  have hm : Integrable (fun r : ℝ => correlation f r * (Real.exp (-r / 2) : ℂ)) := by
    have hr (r : ℝ) : -(1 / 2 : ℝ) * r = -r / 2 := by ring
    simpa only [hr] using integrable_correlation_laplace_integrand f A hf hs (1 / 2)
  rw [h0, h1, ← integral_add hp hm]
  calc
    _ = ∫ r : ℝ, correlation f r *
        ((Real.exp (r / 2) + Real.exp (-r / 2) : ℝ) : ℂ) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun r => by push_cast; ring)
    _ = _ := (zeta_pole_correlation f A hf hs).2

private theorem admissible_reflect_same_window (f : ℝ → ℂ) (A : ℝ)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    Admissible (fun t => f (-t)) ∧ tsupport (fun t => f (-t)) ⊆ Icc (-A) A := by
  refine ⟨⟨hf.1.comp contDiff_neg, hf.2.comp_homeomorph (Homeomorph.neg ℝ)⟩, ?_⟩
  apply closure_minimal _ isClosed_Icc
  intro t ht
  have hn : f (-t) ≠ 0 := ht
  have hb := hs (subset_tsupport f hn)
  constructor <;> linarith [hb.1, hb.2]

/-- Finite, source-indexed Weil rectangle with the SAME character as the
canonical prime expression. All heights and every multiplicity are retained.
The displayed height-avoidance condition is the existing rectangle supplier's
condition, not an arithmetic-positivity assumption or a universal certificate. -/
theorem reflected_rectangle_residue_identity {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive)
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    let F := fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (-Complex.I * z * (t : ℂ))
    let Mp := ∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)
    let Mm := ∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T
        (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s) =
      (∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) *
          (F (spectralCoordinate rho.1) * conj (F (conj (spectralCoordinate rho.1))))) -
        (if q = 1 then Mp * conj Mm + Mm * conj Mp else 0) := by
  intro W F Mp Mm
  have hfi : Integrable f volume := hf.1.continuous.integrable_of_hasCompactSupport hf.2
  have hfs : ∀ t, A < |t| → f t = 0 := by
    intro t ht
    by_contra hn
    have hmem := hs (subset_tsupport f hn)
    exact (not_le_of_gt ht) (abs_le.mpr hmem)
  have hsR : ∀ t, A < |t| → f (-t) = 0 :=
    fun t ht => hfs (-t) (by simpa only [abs_neg] using ht)
  obtain ⟨hRf, _hsRf⟩ := admissible_reflect_same_window f A hf hs
  have hRfi : Integrable (fun t => f (-t)) volume :=
    hRf.1.continuous.integrable_of_hasCompactSupport hRf.2
  have hW : AnalyticOnNhd ℂ W univ := by
    simpa only [W, correlation_reflect] using
      analyticOnNhd_correlation_contour_weight (fun t => f (-t)) A hA hRfi hsR
  have hzero (s : ℂ) : W s = F (spectralCoordinate s) * conj (F (conj (spectralCoordinate s))) :=
    reflected_weight_eq_minus_pair f A hfi hfs s
  have hpole : W 0 + W 1 = Mp * conj Mm + Mm * conj Mp :=
    reflected_weight_poles_eq f A hfi hfs
  calc
    _ = (∑ rho ∈ heightWindow chi hprim T, (zeroMultiplicity chi rho : ℂ) * W rho.1) -
        (if q = 1 then W 0 + W 1 else 0) :=
      weil_rectangle_residue_identity chi hprim T hT hheight W hW
    _ = _ := by simp_rw [hpole, hzero]

/-- Literal conductor-one zeta consumer. Both signed pole products survive;
this is not an instantiation of a nonprincipal-only arithmetic theorem. -/
theorem completedZeta_reflected_rectangle_residue_identity
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → completedRiemannZeta s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    let F := fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (-Complex.I * z * (t : ℂ))
    let Mp := ∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)
    let Mm := ∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T (fun s => W s * logDeriv completedRiemannZeta s) =
      (∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) *
          (F (spectralCoordinate rho.1) * conj (F (conj (spectralCoordinate rho.1))))) -
        (Mp * conj Mm + Mm * conj Mp) := by
  intro chi hprim W F Mp Mm
  have hh : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0 := by
    simpa only [DirichletCharacter.completedLFunction_modOne_eq] using hheight
  simpa only [DirichletCharacter.completedLFunction_modOne_eq, if_true] using
    reflected_rectangle_residue_identity chi hprim T hT hh f A hA hf hs

end GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter
