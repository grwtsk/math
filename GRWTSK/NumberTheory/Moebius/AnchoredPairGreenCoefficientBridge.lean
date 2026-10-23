/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib and GRWTSK results retain their original credit and licenses.
Issue: #942; parent obstruction #956, drafts merged as PRs #1046/#1047.
Evidence: SOURCE_DRAFT / NOT_ELABORATED / NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.AdditiveMultiplicativeBridgeObstruction
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierBridge
import Mathlib.Tactic

/-!
# Anchored additive-pair coefficients and the actual dyadic Green input

Construct a specific source-coupled, finite coefficient map, rather than the
refuted all-finite-packets kernel premise of issue #956.

For each a > 0, choose a pair with left endpoint 1 when a is odd and left
endpoint 2 when a is even; the right endpoint is exactly a. Its Möbius-pair
coefficient recovers μ(a), with an additional minus sign in the even case
because μ(2) = -1. At scale X, use source indices 1 <= a <= 2X and target
n in the *existing* Green half-open interval X < n <= 2X. Every divisor
a of a target n lies in the source set. Hence one concrete finite linear
divisor transform of these actual additive-pair coefficients reproduces the
literal von Mangoldt coefficient on the target support, and the original
Green arithmetic and Fourier coordinates pointwise.

This is an exact *coefficient identity*, not an energy comparison.
The anchor sources are NOT proved to belong to the regular centered
zero-winding/positive-shift admissible packet. In fact the a=1 and a=2
anchor pairs have shift h=0. No lower frame, upper bound, asymptotic
cancellation, zeta zero exclusion, or RH is claimed.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.RiemannHypothesis

/-- The real sign that corrects the fixed anchor μ(1)=1 versus μ(2)=-1. -/
def anchoredPairSign (a : ℕ) : ℝ :=
  if a % 2 = 0 then -1 else 1

/-- A source-bound centered-pair index with right endpoint a.
For odd a the source pair is (1,a); for even positive a it is (2,a).
Only the positive-a regime is used in the arithmetic theorem. -/
def anchoredMobiusPair (a : ℕ) : CenteredAdditiveMobiusPair :=
  if a % 2 = 0 then
    { m := 1, h := a / 2 - 1, r := 0 }
  else
    { m := 0, h := a / 2, r := 1 }

/-- Exact left anchor in the already-defined centered-pair carrier. -/
theorem anchoredMobiusPair_left (a : ℕ) :
    (anchoredMobiusPair a).left =
      if a % 2 = 0 then 2 else 1 := by
  by_cases he : a % 2 = 0
  · simp [anchoredMobiusPair, CenteredAdditiveMobiusPair.left, he]
  · simp [anchoredMobiusPair, CenteredAdditiveMobiusPair.left, he]

/-- The pair's right endpoint is the original positive factor. -/
theorem anchoredMobiusPair_right
    {a : ℕ} (ha : 0 < a) :
    (anchoredMobiusPair a).right = a := by
  by_cases he : a % 2 = 0
  · simp only [anchoredMobiusPair, if_pos he,
      CenteredAdditiveMobiusPair.right]
    omega
  · simp only [anchoredMobiusPair, if_neg he,
      CenteredAdditiveMobiusPair.right]
    omega

private theorem anchoredMoebius_one : moebiusReal 1 = 1 := by
  change ((ArithmeticFunction.moebius 1 : ℤ) : ℝ) = 1
  rw [ArithmeticFunction.moebius_apply_one]
  norm_num

private theorem anchoredMoebius_two : moebiusReal 2 = -1 := by
  change ((ArithmeticFunction.moebius 2 : ℤ) : ℝ) = -1
  rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2)]
  norm_num

/-- The key source-coefficient identity. The original arithmetic Möbius
coefficient is recovered from the actual centered-pair coefficient, not
from an existential kernel or from the desired analytic estimate. -/
theorem anchoredPair_signedCoefficient_eq_moebius
    {a : ℕ} (ha : 0 < a) :
    anchoredPairSign a * (anchoredMobiusPair a).coefficient =
      (ArithmeticFunction.moebius a : ℝ) := by
  have hr := anchoredMobiusPair_right ha
  by_cases he : a % 2 = 0
  · have hl : (anchoredMobiusPair a).left = 2 := by
      rw [anchoredMobiusPair_left]
      simp [he]
    calc
      anchoredPairSign a * (anchoredMobiusPair a).coefficient =
          (-1 : ℝ) * (moebiusReal 2 * moebiusReal a) := by
            simp [anchoredPairSign, he,
              CenteredAdditiveMobiusPair.coefficient, hl, hr]
      _ = moebiusReal a := by
        rw [anchoredMoebius_two]
        ring
      _ = (ArithmeticFunction.moebius a : ℝ) := rfl
  · have hl : (anchoredMobiusPair a).left = 1 := by
      rw [anchoredMobiusPair_left]
      simp [he]
    calc
      anchoredPairSign a * (anchoredMobiusPair a).coefficient =
          (1 : ℝ) * (moebiusReal 1 * moebiusReal a) := by
            simp [anchoredPairSign, he,
              CenteredAdditiveMobiusPair.coefficient, hl, hr]
      _ = moebiusReal a := by
        rw [anchoredMoebius_one]
        ring
      _ = (ArithmeticFunction.moebius a : ℝ) := rfl

/-- Genuine finite source indices and the exact previously defined dyadic
Green target support. -/
def anchoredDyadicSourceIndices (X : ℕ) : Finset ℕ :=
  Finset.Icc 1 (2 * X)

/-- Every divisor factor in a Green target atom is inside the one fixed
source packet at the same scale X. This fixes the quantifier failure of
the old forall-finite-source-packets interface without claiming a frame. -/
theorem anchoredFactor_mem_source
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    {p : ℕ × ℕ} (hp : p ∈ n.divisorsAntidiagonal) :
    p.1 ∈ anchoredDyadicSourceIndices X := by
  have hp0 : p.1 ≠ 0 :=
    Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
  have hp1 : 0 < p.1 := by omega
  have hnwin := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  have hprod : p.1 * p.2 = n :=
    (Nat.mem_divisorsAntidiagonal.mp hp).1
  have hdiv : p.1 ∣ n := ⟨p.2, hprod.symm⟩
  have hle : p.1 ≤ n := Nat.le_of_dvd hnpos hdiv
  exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩

/-- The real linear finite transform, defined for an arbitrary source packet f.
It retains each factorization antidiagonal, actual sign, logarithm, and fixed
dyadic support; in particular it is not the impossible "all P" kernel. -/
def anchoredFiniteGreenDivisorTransform
    (X n : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X then
      (anchoredPairSign p.1 * f p.1) *
        (ArithmeticFunction.log p.2 : ℝ)
    else 0

/-- The single source-bound finite arithmetic comparison theorem.
With the actual additive-pair source coefficients, its output agrees with
the repository's von Mangoldt coefficient on every target n in (X,2X]. -/
theorem anchoredFiniteGreenDivisorTransform_actual
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    anchoredFiniteGreenDivisorTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      ArithmeticFunction.vonMangoldt n := by
  unfold anchoredFiniteGreenDivisorTransform
  rw [vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log n]
  apply Finset.sum_congr rfl
  intro p hp
  rw [if_pos (anchoredFactor_mem_source hn hp)]
  have hpos : 0 < p.1 := by
    have hne := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
    omega
  rw [anchoredPair_signedCoefficient_eq_moebius hpos]

/-- The same one finite transform inserted into the existing literal weighted
prime coordinate, preserving X<n<=2X, n^-1 and the source location. -/
def anchoredDyadicGreenPrimeCoordinate
    (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (((anchoredFiniteGreenDivisorTransform X n
        (fun a => (anchoredMobiusPair a).coefficient)) /
          (n : ℝ) : ℝ) : ℂ) *
      φ (centeredGreenLocation X n)

/-- Pointwise source-to-existing-Green-coordinate equality.
No limit, truncation tail, or positivity transport is used. -/
theorem anchoredDyadicGreenPrimeCoordinate_eq
    (X : ℕ) (φ : ℝ → ℂ) :
    anchoredDyadicGreenPrimeCoordinate X φ =
      centeredGreenPrimeCoordinate X φ := by
  unfold anchoredDyadicGreenPrimeCoordinate centeredGreenPrimeCoordinate
  apply Finset.sum_congr rfl
  intro n hn
  rw [anchoredFiniteGreenDivisorTransform_actual hn]
  rfl

/-- The affine continuum background is retained separately, never
silently identified with an arithmetic source coefficient. -/
theorem anchoredGreen_withBackground_eq
    (X : ℕ) (φ : ℝ → ℂ) (background : ℂ) :
    background - anchoredDyadicGreenPrimeCoordinate X φ =
      centeredGreenCoordinateWithBackground X φ background := by
  rw [anchoredDyadicGreenPrimeCoordinate_eq]
  rfl

/-- The already-declared historical thin Fourier intermediate consumes this
exact pointwise Green coefficient equality. No Fourier norm estimate follows. -/
theorem anchoredGreenFourierCoordinate_eq_thin
    (X : ℕ) (k : ℤ) :
    greenFourierBackgroundCoordinate k -
      anchoredDyadicGreenPrimeCoordinate X (fourierModeValue k) =
        thinGreenArithmeticFourierCoordinate X k := by
  rw [anchoredDyadicGreenPrimeCoordinate_eq]
  rfl

/-- Hostile boundary control: the sources for factors 1 and 2 have h=0.
They are not automatically admissible in a positive-shift centered energy. -/
theorem anchoredMobiusPair_one_two_zero_shift :
    (anchoredMobiusPair 1).h = 0 ∧
      (anchoredMobiusPair 2).h = 0 := by
  norm_num [anchoredMobiusPair]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredPair_signedCoefficient_eq_moebius
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredFiniteGreenDivisorTransform_actual
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredGreenFourierCoordinate_eq_thin
