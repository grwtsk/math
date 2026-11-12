/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilFourierQuadrature
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.Calculus.ContDiff.Operations

/-!
# Support-relative error for the actual archimedean quadrature

MSC2020: 11M26 (primary), 65D32, 42A38.

For the unchanged complex admissible test supported in [-A,A], prove the
physical moment bounds L0^2 <= 2*A*M0 and Lx <= A*L0. They supply, rather
than assume, the dimension-free coefficient
  epsilon = 2*T^2/(pi*m) * (2*A^2*H_N + A*J_N).
The consumers are the existing actual-source midpoint and sample enclosures.
The last theorem applies to EVERY complex coefficient vector in a finite
family, including dependent families. No Euclidean coefficient norm, Gram
inverse, positive eigenvalue gap, or orthonormality is used.

The companion constructs the actual Hermitian matrices analytically and
proves the corresponding Loewner inequality. That matrix construction is
not a Lean declaration in this file. The fixed-support H1 extension and density are also written arguments, not
Lean declarations. Prime/pole evaluation, universal certificate existence
and the complete arithmetic sign inequality remain separate. The baseline is not assumed nonnegative.
The archimedean result includes q=1; it does not delete either zeta pole.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent review and numerical functional
certification NOT_RUN, including the imported local chain. No novelty
claimed. Source pin: math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c.
Lean v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: math#1801, scope comment 6817068740.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ContDiff

namespace GRWTSK.NumberTheory.WeilFourierSupportQuadrature

open WeilNegativeWitness WeilFourierMoments WeilFourierQuadrature
open GRWTSK.SpecialFunctions.CenteredDigamma
open GRWTSK.SpecialFunctions.ArchimedeanMomentBounds

/-- Mass-relative whole-cell error coefficient; meaningful consumers use m > 0. -/
def massGridCoefficient (sigma A T : ℝ) (N m : ℕ) : ℝ :=
  (2 * T ^ 2 / (Real.pi * (m : ℝ))) *
    (2 * A ^ 2 * reciprocalCap sigma N + A * slopeCap sigma N)

private theorem l1_integrable {f : ℝ → ℂ} (hf : Admissible f) :
    Integrable (fun x : ℝ => ‖f x‖) :=
  (hf.2.toSchwartzMap hf.1).integrable.norm

private theorem l1_nonneg (f : ℝ → ℂ) : 0 ≤ l1Mass f :=
  integral_nonneg fun x => norm_nonneg (f x)

/-- The support bounds are proved for the original complex test and actual integrals.
The square estimate uses a nonnegative polynomial integral, not a Gram inverse. -/
theorem admissible_supported_moment_bounds {f : ℝ → ℂ} (hf : Admissible f)
    {A : ℝ} (hA : 0 < A)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) :
    l1Mass f ^ 2 ≤ 2 * A * (∫ x : ℝ, ‖f x‖ ^ 2) ∧
      firstMoment f ≤ A * l1Mass f := by
  have h0 := l1_integrable hf
  have h2 := (admissible_energy_integrable hf).1
  have hlocal0 : (∫ x in Icc (-A) A, ‖f x‖) = l1Mass f := by
    unfold l1Mass
    apply setIntegral_eq_integral_of_forall_compl_eq_zero
    intro x hx
    simp [hsupport x hx]
  have hlocal2 : (∫ x in Icc (-A) A, ‖f x‖ ^ 2) =
      ∫ x : ℝ, ‖f x‖ ^ 2 := by
    apply setIntegral_eq_integral_of_forall_compl_eq_zero
    intro x hx
    simp [hsupport x hx]
  constructor
  · have hc : IntegrableOn (fun _x : ℝ => l1Mass f ^ 2) (Icc (-A) A) :=
      continuous_const.integrableOn_Icc
    have hp : (∫ x in Icc (-A) A, (2 * A * ‖f x‖ - l1Mass f) ^ 2) =
        (2 * A) ^ 2 * (∫ x : ℝ, ‖f x‖ ^ 2) -
          (4 * A * l1Mass f) * l1Mass f + (2 * A) * l1Mass f ^ 2 := by
      have hpoint : (fun x : ℝ => (2 * A * ‖f x‖ - l1Mass f) ^ 2) =
          fun x : ℝ => (2 * A) ^ 2 * ‖f x‖ ^ 2 -
            (4 * A * l1Mass f) * ‖f x‖ + l1Mass f ^ 2 := by
        funext x
        ring
      rw [hpoint, integral_add
        ((h2.integrableOn.const_mul _).sub (h0.integrableOn.const_mul _)) hc,
        integral_sub (h2.integrableOn.const_mul _) (h0.integrableOn.const_mul _),
        integral_const_mul, integral_const_mul, hlocal2, hlocal0,
        setIntegral_const, Real.volume_real_Icc_of_le (by linarith), smul_eq_mul]
      ring
    have hn : 0 ≤ ∫ x in Icc (-A) A, (2 * A * ‖f x‖ - l1Mass f) ^ 2 :=
      integral_nonneg fun x => sq_nonneg _
    rw [hp] at hn
    have hmul : (2 * A) * l1Mass f ^ 2 ≤
        (2 * A) * (2 * A * (∫ x : ℝ, ‖f x‖ ^ 2)) := by nlinarith
    exact (mul_le_mul_left (show 0 < 2 * A by positivity)).mp hmul
  · have hpoint (x : ℝ) : |x| * ‖f x‖ ≤ A * ‖f x‖ := by
      by_cases hx : x ∈ Icc (-A) A
      · exact mul_le_mul_of_nonneg_right (abs_le.mpr hx) (norm_nonneg _)
      · simp [hsupport x hx]
    have hxint : Integrable (fun x : ℝ => |x| * ‖f x‖) := by
      apply (h0.const_mul A).mono'
        (continuous_id.abs.mul hf.1.continuous.norm).aestronglyMeasurable
      exact Filter.Eventually.of_forall fun x => by
        rw [Real.norm_eq_abs,
          abs_of_nonneg (mul_nonneg (abs_nonneg x) (norm_nonneg _))]
        exact hpoint x
    calc
      firstMoment f ≤ ∫ x : ℝ, A * ‖f x‖ :=
        integral_mono hxint (h0.const_mul A) hpoint
      _ = A * l1Mass f := by rw [integral_const_mul]; rfl

private theorem caps_nonneg {sigma : ℝ} (hsigma : 0 < sigma) (N : ℕ) :
    0 ≤ reciprocalCap sigma N ∧ 0 ≤ slopeCap sigma N := by
  constructor
  · unfold reciprocalCap
    apply Finset.sum_nonneg
    intro n _
    have hp : 0 < sigma + (n : ℝ) :=
      add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
    positivity
  · unfold slopeCap
    apply Finset.sum_nonneg
    intro n _
    positivity

/-- The actual core's existing Lipschitz budget is controlled by physical mass.
This bound holds for complex non-even tests without a supplied moment certificate. -/
theorem admissible_supported_coreSlope_le {sigma A : ℝ}
    (hsigma : 0 < sigma) (hA : 0 < A) (N : ℕ)
    {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) :
    coreSlope sigma N f ≤
      ((2 * A ^ 2 * reciprocalCap sigma N + A * slopeCap sigma N) / Real.pi) *
        (∫ x : ℝ, ‖f x‖ ^ 2) := by
  obtain ⟨h0, hx⟩ := admissible_supported_moment_bounds hf hA hsupport
  obtain ⟨hH, hJ⟩ := caps_nonneg hsigma N
  have hprod : l1Mass f * firstMoment f ≤
      2 * A ^ 2 * (∫ x : ℝ, ‖f x‖ ^ 2) := by
    calc
      _ ≤ l1Mass f * (A * l1Mass f) :=
        mul_le_mul_of_nonneg_left hx (l1_nonneg f)
      _ = A * l1Mass f ^ 2 := by ring
      _ ≤ A * (2 * A * (∫ x : ℝ, ‖f x‖ ^ 2)) :=
        mul_le_mul_of_nonneg_left h0 hA.le
      _ = _ := by ring
  unfold coreSlope
  calc
    _ ≤ reciprocalCap sigma N *
          ((2 * A ^ 2 * (∫ x : ℝ, ‖f x‖ ^ 2)) / Real.pi) +
        slopeCap sigma N *
          ((2 * A * (∫ x : ℝ, ‖f x‖ ^ 2)) / (2 * Real.pi)) :=
      add_le_add
        (mul_le_mul_of_nonneg_left
          (div_le_div_of_nonneg_right hprod Real.pi_pos.le) hH)
        (mul_le_mul_of_nonneg_left
          (div_le_div_of_nonneg_right h0 Real.two_pi_pos.le) hJ)
    _ = _ := by field_simp [Real.pi_ne_zero] <;> ring

private theorem gridBudget_le_mass {sigma A T : ℝ}
    (hsigma : 0 < sigma) (hA : 0 < A) (N : ℕ)
    {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) :
    gridBudget sigma N f T m ≤
      massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2) := by
  have hmR : 0 < (m : ℝ) := Nat.cast_pos.mpr hm
  have hs := admissible_supported_coreSlope_le hsigma hA N hf hsupport
  unfold gridBudget massGridCoefficient
  calc
    _ ≤ 2 *
        (((2 * A ^ 2 * reciprocalCap sigma N + A * slopeCap sigma N) / Real.pi) *
          (∫ x : ℝ, ‖f x‖ ^ 2)) * T ^ 2 / (m : ℝ) :=
      div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hs (by norm_num)) (sq_nonneg T)) hmR.le
    _ = _ := by field_simp [Real.pi_ne_zero, hmR.ne'] <;> ring

/-- Mass-relative two-sided enclosure of the actual uncentered archimedean source.
The complete one-sided derivative-energy tail is unchanged. -/
theorem admissible_supported_midpoint_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma A T : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hT : 0 < T)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) :
    let estimate := baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
      coreMidpoint sigma N f T m
    let error := massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T := by
  dsimp only
  have he := admissible_archimedean_midpoint_enclosure q hq hsigma hT N hf m hm
  have hg := gridBudget_le_mass (T := T) hsigma hA N hf hsupport m hm
  dsimp only at he
  constructor <;> linarith [he.1, he.2]

/-- Direct consumer of the existing source-bound sample theorem, with its genuine
sample and baseline obligations. Only the derived grid charge is enlarged. -/
theorem admissible_supported_sample_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma A T : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hT : 0 < T)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) (B eta : ℝ) (v e : ℕ → ℝ)
    (hbaseline : |baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) - B| ≤ eta)
    (hvalues : ∀ j < m,
      |core sigma N f (-T + (j : ℝ) * (2 * T / (m : ℝ)) + T / (m : ℝ)) - v j| ≤ e j) :
    let estimate := B + (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, v j)
    let error := eta +
      massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2) +
      (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, e j)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T := by
  dsimp only
  have he := admissible_archimedean_sample_enclosure q hq hsigma hT N hf m hm
    B eta v e hbaseline hvalues
  have hg := gridBudget_le_mass (T := T) hsigma hA N hf hsupport m hm
  dsimp only at he
  constructor <;> linarith [he.1, he.2]

/-- Every complex linear combination is covered, not just the basis vectors.
The integrals are its actual mass and derivative energy, so dependent families
and their null directions require no inverse or positive mass hypothesis. -/
theorem finite_family_midpoint_enclosure {ι : Type*} [Fintype ι]
    (phi : ι → ℝ → ℂ) (hphi : ∀ i, Admissible (phi i))
    {A : ℝ} (hA : 0 < A)
    (hsupport : ∀ i x, x ∉ Icc (-A) A → phi i x = 0)
    (q : ℕ) (hq : 1 ≤ q) {sigma T : ℝ} (hsigma : 0 < sigma) (hT : 0 < T)
    (N m : ℕ) (hm : 0 < m) (c : ι → ℂ) :
    let f : ℝ → ℂ := fun x => ∑ i, c i * phi i x
    let estimate := baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
      coreMidpoint sigma N f T m
    let error := massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T := by
  classical
  let f : ℝ → ℂ := fun x => ∑ i, c i * phi i x
  have hs : ∀ x, x ∉ Icc (-A) A → f x = 0 := by
    intro x hx
    apply Finset.sum_eq_zero
    intro i _
    rw [hsupport i x hx, mul_zero]
  have hf : Admissible f := by
    constructor
    · exact ContDiff.sum fun i _ => contDiff_const.mul (hphi i).1
    · exact HasCompactSupport.intro isCompact_Icc hs
  exact admissible_supported_midpoint_enclosure q hq hsigma hA hT N hf hs m hm

end GRWTSK.NumberTheory.WeilFourierSupportQuadrature
