/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.

Independent analytical review: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeFullSignedShift
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# Original odd-support boundary reflections and signed prime pairings

The physical T=1 source has genuine odd real tests supported in [-1,1].
For 1<r<2 its whole-line signed correlation returns, after reflection,
to the positive-half interval [r-1,1]. The four local objects below are
literal restrictions of this same source, not a new Weil form.

The source-coupled integral proof of the exact full gamma decomposition
appears in the adjacent mathematical exposition. It is NOT a Lean
declaration here. Unconditional RH and primitive Dirichlet GRH remain open.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSupportBoundaryReflection

open SourcePrimeCorrelation DirichletStageChain OddRootProjection

/-- Literal positive-half mass of the original real source. -/
def boundaryMass (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ u in (r - 1)..1, (f u) ^ 2

/-- Signed, not absolute-valued, original reflected pairing. -/
def reflectedPair (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ u in (r - 1)..1, f u * f (r - u)

/-- Opposite modes of the true involution u ↦ r-u. -/
def reflectedDifferenceEnergy (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ u in (r - 1)..1, (f u - f (r - u)) ^ 2

def reflectedSumEnergy (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ u in (r - 1)..1, (f u + f (r - u)) ^ 2

/-- At the outgoing boundary, the original shifted difference equals
minus the original value; there is no periodic boundary convention. -/
theorem sourceShift_outgoing_eq
    {g : ℝ → ℂ}
    (hsupport : ∀ t, t ∉ Icc (-(1 : ℝ)) 1 → g t = 0)
    {s t : ℝ} (ht : 1 - s < t) :
    g (t + s) - g t = -g t := by
  have houtside : t + s ∉ Icc (-(1 : ℝ)) 1 := by
    intro hmem
    linarith [hmem.2]
  rw [hsupport (t + s) houtside]
  simp

/-- The incoming boundary supplies the other copy of the same mass. -/
theorem sourceShift_incoming_eq
    {g : ℝ → ℂ}
    (hsupport : ∀ t, t ∉ Icc (-(1 : ℝ)) 1 → g t = 0)
    {s t : ℝ} (ht : t < -1) :
    g (t + s) - g t = g (t + s) := by
  have houtside : t ∉ Icc (-(1 : ℝ)) 1 := by
    intro hmem
    linarith [hmem.1]
  rw [hsupport t houtside]
  simp

/-- Pointwise odd reflection of the original antilinear-first
complex correlation integrand, preserving conjugation and phases. -/
theorem sourceCorrelation_integrand_oddReflection
    {g : ℝ → ℂ} (hodd : Function.Odd g) (r u : ℝ) :
    conj (g (-u)) * g ((-u) + r) =
      -(conj (g u) * g (r - u)) := by
  have heq : (-u) + r = r - u := by ring
  rw [hodd u, heq]
  simp

/-- Reflection preserves the exact interval of positive-half mass. -/
private theorem reflectedSquareIntegral_eq (f : ℝ → ℝ) (r : ℝ) :
    (∫ u in (r - 1)..1, (f (r - u)) ^ 2) =
      ∫ u in (r - 1)..1, (f u) ^ 2 := by
  have href := intervalIntegral.integral_comp_sub_left
    (f := fun u : ℝ => (f u) ^ 2) (a := r - 1) (b := 1) r
  have hright : r - (r - 1) = (1 : ℝ) := by ring
  simpa only [hright] using href

/-- An exact source-local reflection-square polarization.
The sign of reflectedPair is not postulated or removed. -/
theorem reflectedDifferenceEnergy_eq
    {f : ℝ → ℝ} (hf : Continuous f) (r : ℝ) :
    reflectedDifferenceEnergy f r =
      2 * boundaryMass f r - 2 * reflectedPair f r := by
  have hsq1 : IntervalIntegrable (fun u : ℝ => (f u) ^ 2)
      volume (r - 1) 1 :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  have hsq2 : IntervalIntegrable (fun u : ℝ => (f (r - u)) ^ 2)
      volume (r - 1) 1 :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  have hpair : IntervalIntegrable (fun u : ℝ => f u * f (r - u))
      volume (r - 1) 1 :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  unfold reflectedDifferenceEnergy boundaryMass reflectedPair
  calc
    (∫ u in (r - 1)..1, (f u - f (r - u)) ^ 2) =
        ∫ u in (r - 1)..1,
          (f u) ^ 2 + (f (r - u)) ^ 2 - 2 * (f u * f (r - u)) := by
          apply intervalIntegral.integral_congr
          intro u hu
          ring
    _ = (∫ u in (r - 1)..1, (f u) ^ 2) +
        (∫ u in (r - 1)..1, (f (r - u)) ^ 2) -
        2 * (∫ u in (r - 1)..1, f u * f (r - u)) := by
          rw [intervalIntegral.integral_sub (hsq1.add hsq2) (hpair.const_mul 2),
            intervalIntegral.integral_add hsq1 hsq2,
            intervalIntegral.integral_const_mul]
    _ = _ := by
      rw [reflectedSquareIntegral_eq]
      ring

/-- The symmetric reflected square retains the opposite phase sign. -/
theorem reflectedSumEnergy_eq
    {f : ℝ → ℝ} (hf : Continuous f) (r : ℝ) :
    reflectedSumEnergy f r =
      2 * boundaryMass f r + 2 * reflectedPair f r := by
  have hsq1 : IntervalIntegrable (fun u : ℝ => (f u) ^ 2)
      volume (r - 1) 1 :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  have hsq2 : IntervalIntegrable (fun u : ℝ => (f (r - u)) ^ 2)
      volume (r - 1) 1 :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  have hpair : IntervalIntegrable (fun u : ℝ => f u * f (r - u))
      volume (r - 1) 1 :=
    Continuous.intervalIntegrable (by fun_prop) _ _
  unfold reflectedSumEnergy boundaryMass reflectedPair
  calc
    (∫ u in (r - 1)..1, (f u + f (r - u)) ^ 2) =
        ∫ u in (r - 1)..1,
          (f u) ^ 2 + (f (r - u)) ^ 2 + 2 * (f u * f (r - u)) := by
          apply intervalIntegral.integral_congr
          intro u hu
          ring
    _ = (∫ u in (r - 1)..1, (f u) ^ 2) +
        (∫ u in (r - 1)..1, (f (r - u)) ^ 2) +
        2 * (∫ u in (r - 1)..1, f u * f (r - u)) := by
          rw [intervalIntegral.integral_add (hsq1.add hsq2) (hpair.const_mul 2),
            intervalIntegral.integral_add hsq1 hsq2,
            intervalIntegral.integral_const_mul]
    _ = _ := by
      rw [reflectedSquareIntegral_eq]
      ring

theorem reflectedDifferenceEnergy_nonneg (f : ℝ → ℝ) {r : ℝ}
    (hr : r ≤ 2) : 0 ≤ reflectedDifferenceEnergy f r := by
  unfold reflectedDifferenceEnergy
  apply intervalIntegral.integral_nonneg (by linarith : r - 1 ≤ 1)
  intro u hu
  exact sq_nonneg _

theorem reflectedSumEnergy_nonneg (f : ℝ → ℝ) {r : ℝ}
    (hr : r ≤ 2) : 0 ≤ reflectedSumEnergy f r := by
  unfold reflectedSumEnergy
  apply intervalIntegral.integral_nonneg (by linarith : r - 1 ≤ 1)
  intro u hu
  exact sq_nonneg _

/-- Neither sign of the original signed pairing is universal. -/
theorem reflectedPair_between_boundaryMass
    {f : ℝ → ℝ} (hf : Continuous f) {r : ℝ} (hr : r ≤ 2) :
    -boundaryMass f r ≤ reflectedPair f r ∧
      reflectedPair f r ≤ boundaryMass f r := by
  have hminus := reflectedDifferenceEnergy_nonneg f hr
  have hplus := reflectedSumEnergy_nonneg f hr
  rw [reflectedDifferenceEnergy_eq hf r] at hminus
  rw [reflectedSumEnergy_eq hf r] at hplus
  constructor <;> linarith

/-- Direct consumer of the ORIGINAL signed native prime weights.
In particular n=4,5,7 have different signs, and this preserves them. -/
theorem nativePrimeWeight_reflectedPair_eq
    (chi : DirichletCharacter ℂ 3) (n : ℕ)
    {f : ℝ → ℝ} (hf : Continuous f) :
    pairedPrimeWeight chi n * reflectedPair f (Real.log (n : ℝ)) =
      pairedPrimeWeight chi n * boundaryMass f (Real.log (n : ℝ)) -
        (pairedPrimeWeight chi n / 2) *
          reflectedDifferenceEnergy f (Real.log (n : ℝ)) := by
  rw [reflectedDifferenceEnergy_eq hf (Real.log (n : ℝ))]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSupportBoundaryReflection
