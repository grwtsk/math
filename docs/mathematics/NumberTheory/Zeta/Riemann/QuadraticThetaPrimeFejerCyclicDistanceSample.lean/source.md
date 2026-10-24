# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceSample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c69fddbea8830aa785c1e7b7f6ba27343f5d7f40` · SHA-256 `7bcbf0a52b52b90789c736043f05f924c3e2b7e06a5a517a080bd23877aa7d9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceFibers
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The length-N geometric block at -t is the complex conjugate of the block at t. -/
theorem triangularGeometricBlock_neg
    (N : ℕ) (t : ℝ) :
    triangularGeometricBlock N (-t) =
      Complex.conj (triangularGeometricBlock N t) := by
  rw [triangularGeometricBlock_eq_exp_sum,
    triangularGeometricBlock_eq_exp_sum]
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro j hj
  rw [← Complex.exp_conj]
  congr 1
  simp
  ring

/-- The symmetric triangular Fejer kernel is even. -/
theorem symmetricTriangularKernel_neg
    {N : ℕ}
    (hN : 0 < N)
    (t : ℝ) :
    symmetricTriangularKernel N ((-t : ℝ) : AddCircle (1 : ℝ)) =
      symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) := by
  rw [symmetricTriangularKernel_autocorrelation N hN (-t),
    symmetricTriangularKernel_autocorrelation N hN t,
    triangularGeometricBlock_neg]
  simp only [map_neg, Complex.conj_conj]
  ring

/-- The signed sample is bounded above by the corresponding norm sample at the
same nonnegative arithmetic distance. -/
theorem signedSample_le_normSample
    {L N d : ℕ}
    (hL : 0 < L) :
    signedSampledTriangularKernelAtPeriod L N d ≤
      sampledTriangularKernelAtPeriod L N d := by
  unfold signedSampledTriangularKernelAtPeriod
    sampledTriangularKernelAtPeriod
  have hscale : 0 ≤ (1 : ℝ) / (L : ℝ) := by
    positivity
  apply mul_le_mul_of_nonneg_left _ hscale
  exact (le_abs_self _).trans
    (Complex.abs_re_le_norm
      (symmetricTriangularKernel N
        ((((d : ℝ) / (L : ℝ))) : AddCircle (1 : ℝ))))

/-- Reflected lattice positions L-d have the same kernel norm as distance d. -/
theorem sampledKernel_reflected_eq
    {L N d : ℕ}
    (hL : 0 < L)
    (hN : 0 < N)
    (hd : d ≤ L) :
    (1 / (L : ℝ)) *
      ‖symmetricTriangularKernel N
        ((((L - d : ℕ) : ℝ) / (L : ℝ)) :
          AddCircle (1 : ℝ))‖
      =
    sampledTriangularKernelAtPeriod L N d := by
  unfold sampledTriangularKernelAtPeriod
  have hLr : (L : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hL)
  have harg :
      ((((L - d : ℕ) : ℝ) / (L : ℝ)) :
        AddCircle (1 : ℝ))
        =
      (((-(d : ℝ) / (L : ℝ)) : ℝ) :
        AddCircle (1 : ℝ)) := by
    rw [Nat.cast_sub hd]
    have hperiod :=
      AddCircle.coe_add_period (1 : ℝ) (-(d : ℝ) / (L : ℝ))
    convert hperiod.symm using 1
    field_simp [hLr]
    ring
  rw [harg, symmetricTriangularKernel_neg hN]

/-- Every nonnegative cyclic kernel sample is bounded by the norm sample at its
cyclic distance from zero. -/
theorem cyclicFejerKernel_le_distanceSample
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (r : ZMod (fejerOctavePeriod X)) :
    cyclicFejerKernel X N r ≤
      sampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N
        (cyclicFejerDistance X r) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  let d := cyclicFejerDistance X r
  have hdMax : d ≤ 2 * X :=
    cyclicFejerDistance_le_twoX hX r
  have hL : 0 < fejerOctavePeriod X := by
    unfold fejerOctavePeriod
    omega
  have hdL : d ≤ fejerOctavePeriod X := by
    unfold fejerOctavePeriod
    omega
  rcases cyclicFejerDistance_eq_imp_boundary_pair hX r rfl with hr | hr
  · subst r
    unfold cyclicFejerKernel
    have hdLt : d < fejerOctavePeriod X := by
      unfold fejerOctavePeriod
      omega
    simp only [ZMod.val_natCast, Nat.mod_eq_of_lt hdLt]
    exact signedSample_le_normSample hL
  · subst r
    unfold cyclicFejerKernel
    by_cases hd0 : d = 0
    · subst d
      simp [sampledTriangularKernelAtPeriod,
        signedSampledTriangularKernelAtPeriod,
        fejerOctavePeriod]
      exact le_rfl
    · have hLdLt : fejerOctavePeriod X - d < fejerOctavePeriod X := by
        omega
      rw [ZMod.val_natCast, Nat.mod_eq_of_lt hLdLt]
      unfold signedSampledTriangularKernelAtPeriod
      have hscale : 0 ≤ (1 : ℝ) / (fejerOctavePeriod X : ℝ) := by
        positivity
      calc
        (1 / (fejerOctavePeriod X : ℝ)) *
            (symmetricTriangularKernel N
              (((((fejerOctavePeriod X - d : ℕ) : ℝ) /
                (fejerOctavePeriod X : ℝ))) :
                AddCircle (1 : ℝ))).re
          ≤
        (1 / (fejerOctavePeriod X : ℝ)) *
            ‖symmetricTriangularKernel N
              (((((fejerOctavePeriod X - d : ℕ) : ℝ) /
                (fejerOctavePeriod X : ℝ))) :
                AddCircle (1 : ℝ))‖ := by
              apply mul_le_mul_of_nonneg_left _ hscale
              exact (le_abs_self _).trans
                (Complex.abs_re_le_norm _)
        _ =
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d :=
            sampledKernel_reflected_eq hL hN hdL

end GRWTSK.RiemannHypothesis
```
