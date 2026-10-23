/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachFejerKernel
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

def symmetricTriangularWeight (N : ℕ) (k : ℤ) : ℝ :=
  if Int.natAbs k < N then
    ((N - Int.natAbs k : ℕ) : ℝ) / (N : ℝ)
  else
    0

def symmetricTriangularKernel
    (N : ℕ) (t : AddCircle (1 : ℝ)) : ℂ :=
  ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
    (symmetricTriangularWeight N k : ℂ) * fourier k t

def signedSampledTriangularKernelAtPeriod
    (L N : ℕ) (r : ℤ) : ℝ :=
  (1 / (L : ℝ)) *
    (symmetricTriangularKernel N
      ((((r : ℝ) / (L : ℝ))) : AddCircle (1 : ℝ))).re

def fejerOctavePeriod (X : ℕ) : ℕ := 4 * X

def nonAliasingFejerPrefixWeight
    (X N m p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Ioc (2 * X) m,
    signedSampledTriangularKernelAtPeriod
      (fejerOctavePeriod X) N
      ((p : ℤ) - (q : ℤ))

def NonAliasingFejerCutoffRegime
    (X N : ℕ) : Prop :=
  0 < X ∧ 0 < N ∧ N < fejerOctavePeriod X

theorem symmetricTriangularWeight_neg
    (N : ℕ) (k : ℤ) :
    symmetricTriangularWeight N (-k) =
      symmetricTriangularWeight N k := by
  simp [symmetricTriangularWeight]

theorem symmetricTriangularKernel_endpoint_weights_zero
    (N : ℕ) :
    symmetricTriangularWeight N (N : ℤ) = 0 ∧
      symmetricTriangularWeight N (-(N : ℤ)) = 0 := by
  constructor <;> simp [symmetricTriangularWeight]

@[simp]
theorem symmetricTriangularWeight_zero
    {N : ℕ} (hN : 0 < N) :
    symmetricTriangularWeight N 0 = 1 := by
  unfold symmetricTriangularWeight
  simp [hN]

end GRWTSK.RiemannHypothesis
