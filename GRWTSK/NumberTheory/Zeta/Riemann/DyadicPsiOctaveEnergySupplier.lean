/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction
import GRWTSK.NumberTheory.Zeta.DyadicGreenReturn
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# RH-strength psi octave error supplies the complete dyadic energy bound

A uniform cumulative bound |cumulative_X(t)| <= B on [0,1] controls:

* raw cumulative L2 energy by B^2;
* centered Green energy by B^2;
* mass0 by B;
* the center by B;
* mass1 by 2B.

Therefore augmentedEnergy(X) <= 6 B^2.

Combine this with the Abel reconstruction

  |cumulative_X(t)| <= (3A+1)/X

from an octave envelope |psi(u)-u|<=A.

The all-scale supplier is stated in a normalization that absorbs the floor
correction:

  |psi(u)-u| + 1
    <= C X sqrt(X^(-1+eta))

uniformly on [X,2X].

Since X sqrt(X^(-1+eta)) = X^((1+eta)/2), this is the classical
square-root-plus-epsilon strength. It implies AllDyadicEnergyBound and
therefore the repository's existing conditional RH return.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PSI_OCTAVE_SQRT_BOUND_IMPLIES_RH_CONDITIONALLY.
-/

namespace GRWTSK.RiemannHypothesis

open MeasureTheory Set
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence

theorem cumulative_one_eq_mass0
    {X : ℕ} (hX : 0 < X) :
    cumulative X 1 = mass0 X := by
  unfold cumulative mass0
  have hsum :
      (∑ n ∈ window X,
          coefficient n * step (location X n) 1) =
        ∑ n ∈ window X, coefficient n := by
    apply Finset.sum_congr rfl
    intro n hn
    have hloc := (location_mem hX hn).2
    have hs : step (location X n) 1 = 1 := by
      simp [step, Set.indicator, hloc]
    rw [hs]
    ring
  rw [hsum]
  simp [logarithm]

/-- A uniform pointwise cumulative bound controls the complete finite energy
packet. -/
theorem augmentedEnergy_le_of_cumulative_uniform
    {X : ℕ} (hX : 0 < X)
    {B : ℝ} (hB : 0 ≤ B)
    (hC : ∀ t ∈ Set.Icc (0 : ℝ) 1,
      |cumulative X t| ≤ B) :
    augmentedEnergy X ≤ 6 * B^2 := by
  have hraw :
      (∫ t, cumulative X t^2 ∂unitVolume) ≤ B^2 := by
    change (∫ t in Set.Icc (0 : ℝ) 1, cumulative X t^2) ≤ B^2
    calc
      (∫ t in Set.Icc (0 : ℝ) 1, cumulative X t^2)
          ≤ ∫ _t in Set.Icc (0 : ℝ) 1, B^2 := by
        apply setIntegral_mono_on
        · exact cumulative_square_integrable X
        · exact integrableOn_const
        · exact measurableSet_Icc
        · intro t ht
          have habs := hC t ht
          rw [sq_le_sq]
          simpa [abs_of_nonneg hB] using habs
      _ = B^2 := by
        simp [Real.volume_Icc]
  have hgreen :
      greenEnergy X ≤ B^2 := by
    have hid := raw_cumulative_energy hX
    nlinarith [sq_nonneg (center X)]
  have hm0abs :
      |mass0 X| ≤ B := by
    rw [← cumulative_one_eq_mass0 hX]
    exact hC 1 (by norm_num)
  have hm0sq :
      (mass0 X)^2 ≤ B^2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hB] using hm0abs
  have hcenterabs :
      |center X| ≤ B := by
    rw [← integral_cumulative hX]
    have hnorm0 :
        ‖∫ t, cumulative X t ∂unitVolume‖ ≤
          B * unitVolume.real Set.univ := by
      apply norm_integral_le_of_norm_le_const
      change ∀ᵐ t ∂volume.restrict (Set.Icc (0 : ℝ) 1),
        ‖cumulative X t‖ ≤ B
      filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
      simpa [Real.norm_eq_abs] using hC t ht
    have hnorm :
        ‖∫ t, cumulative X t ∂unitVolume‖ ≤ B := by
      simpa using hnorm0
    simpa [Real.norm_eq_abs] using hnorm
  have hm1abs :
      |mass1 X| ≤ 2 * B := by
    have hid : mass1 X = mass0 X - center X := by
      unfold center
      ring
    rw [hid]
    exact (abs_sub _ _).trans (by linarith)
  have hm1sq :
      (mass1 X)^2 ≤ 4 * B^2 := by
    have h2B : 0 ≤ 2 * B := by positivity
    have hs :
        (mass1 X)^2 ≤ (2 * B)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg h2B] using hm1abs
    nlinarith
  unfold augmentedEnergy
  nlinarith

theorem augmentedEnergy_le_of_psiEnvelope
    {X : ℕ} (hX : 2 ≤ X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A) :
    augmentedEnergy X ≤
      6 * (((3 * A + 1) / (X : ℝ))^2) := by
  have hXpos : 0 < X := lt_of_lt_of_le (by norm_num) hX
  have hB :
      0 ≤ (3 * A + 1) / (X : ℝ) := by
    have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hXpos
    positivity
  exact augmentedEnergy_le_of_cumulative_uniform
    hXpos hB
    (fun t ht => cumulative_abs_le_of_psiEnvelope hX hA ht)

/-- RH-strength octave control of the classical Chebyshev psi error.

The factor X*sqrt(X^(-1+eta)) is exactly X^((1+eta)/2), but this
normalization makes the energy calculation immediate. -/
def AllDyadicPsiOctaveSquareRootBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈
        Set.Icc ((dyadicScale j : ℕ) : ℝ)
          ((2 * dyadicScale j : ℕ) : ℝ),
        |psiError u| + 1 ≤
          C * (dyadicScale j : ℝ) *
            Real.sqrt
              (Real.rpow (dyadicScale j : ℝ) (-1 + η))

theorem psiOctaveSquareRootBound_to_allDyadicEnergyBound
    (hpsi : AllDyadicPsiOctaveSquareRootBound) :
    AllDyadicEnergyBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hbound⟩ := hpsi η hη
  let D : ℝ := 96 * C^2
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  let q : ℝ := Real.rpow (X : ℝ) (-1 + η)
  let A : ℝ := C * (X : ℝ) * Real.sqrt q
  have hX2 : 2 ≤ X := by
    dsimp [X, dyadicScale]
    omega
  have hXpos : 0 < X := lt_of_lt_of_le (by norm_num) hX2
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hXpos
  have hq : 0 ≤ q := by
    dsimp [q]
    exact Real.rpow_nonneg (Nat.cast_nonneg _) _
  have hA : 0 ≤ A := by
    dsimp [A]
    positivity
  have henv : PsiOctaveEnvelope X A := by
    refine ⟨hA, ?_⟩
    intro u hu
    have hb := hbound j hj u (by simpa [X] using hu)
    dsimp [A, q, X] at *
    linarith
  have hAone : 1 ≤ A := by
    have hb := hbound j hj (X : ℝ) (by
      constructor
      · exact le_rfl
      · exact_mod_cast (by omega : X ≤ 2 * X))
    dsimp [A, q, X] at *
    linarith
  have henergy := augmentedEnergy_le_of_psiEnvelope hX2 henv
  have hnumer : 3 * A + 1 ≤ 4 * A := by
    linarith
  have hratio :
      (3 * A + 1) / (X : ℝ) ≤
        4 * A / (X : ℝ) :=
    div_le_div_of_nonneg_right hnumer hXr.le
  have hsquare :
      ((3 * A + 1) / (X : ℝ))^2 ≤
        (4 * A / (X : ℝ))^2 := by
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 hratio
  have hcoarse :
      augmentedEnergy X ≤
        6 * (4 * A / (X : ℝ))^2 :=
    henergy.trans
      (mul_le_mul_of_nonneg_left hsquare (by norm_num))
  have hratioA :
      A / (X : ℝ) = C * Real.sqrt q := by
    dsimp [A]
    field_simp [hXr.ne']
    ring
  have hsqA :
      (A / (X : ℝ))^2 = C^2 * q := by
    rw [hratioA, mul_pow, Real.sq_sqrt hq]
  have hfinal :
      augmentedEnergy X ≤ D * q := by
    calc
      augmentedEnergy X
          ≤ 6 * (4 * A / (X : ℝ))^2 := hcoarse
      _ = 96 * (A / (X : ℝ))^2 := by ring
      _ = 96 * C^2 * q := by rw [hsqA]
      _ = D * q := by rfl
  simpa [X, q] using hfinal

theorem riemannHypothesis_of_psiOctaveSquareRootBound
    (hpsi : AllDyadicPsiOctaveSquareRootBound) :
    _root_.RiemannHypothesis :=
  GRWTSK.NumberTheory.Zeta.DyadicGreenReturn.riemannHypothesis_of_energy
    (psiOctaveSquareRootBound_to_allDyadicEnergyBound hpsi)

end GRWTSK.RiemannHypothesis
