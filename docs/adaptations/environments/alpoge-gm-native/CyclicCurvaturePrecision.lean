/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE_PROOF_CANDIDATE: Alpoge Lean v4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration / kernel / axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeCyclicPhase
import Mathlib.Tactic

/-!
# Stable integer curvature after removing the exact x log x term

The signed source curvature has no analytic L'/L constant: every
common affine correction vanishes under a second difference.
The earlier mathematical native-Level derivation proves
  Delta^2 (Level.Gm(x)+x log x) at k = Lambda(k)*phase(k)/k
for k>=2. That curvature identity still needs an isolated Lean
proof from the original Gm normalization. Here it remains an
EXPLICIT hSource parameter.

Given the source curvature and original nonexceptional Level.cyc
phase > 2/3, the inverse source map has Lipschitz amplification
strictly less than (3/2)*k. The following real/finite-index lemmas
do not import RH or any zeta-zero spectral information.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeNativeCyclicCurvaturePrecision
open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open GRWTSK.NumberTheory.AlpogeNativeCyclicPhase

/-- The exact integer second difference on the original sampling
grid. For k>=2 the three indices k-1,k,k+1 are positive. -/
def secondDifference (f : ℕ → ℝ) (k : ℕ) : ℝ :=
  f (k + 1) - 2 * f k + f (k - 1)

/-- Every common affine correction, including A_Level*x and any
numerical approximation with the SAME center at all three samples,
is annihilated by the curvature. -/
theorem affine_secondDifference_zero (a b : ℝ) (k : ℕ)
    (hk : 1 ≤ k) :
    secondDifference (fun n : ℕ => a * (n : ℝ) + b) k = 0 := by
  have hsub : (k - 1 : ℕ) + 1 = k := Nat.sub_add_cancel hk
  have hcast : ((k - 1 : ℕ) : ℝ) + 1 = (k : ℝ) := by
    exact_mod_cast hsub
  unfold secondDifference
  push_cast
  ring_nf
  linarith

/-- Three individually certified sample errors give the exact
second-difference error, with coefficient 2 on the central sample.
The k>=2 condition is carried by consumers to exclude the bad
zero-boundary interpretation. -/
theorem secondDifference_abs_error
    (f g : ℕ → ℝ) (k : ℕ)
    (eMinus eCenter ePlus : ℝ)
    (hMinus : |f (k - 1) - g (k - 1)| ≤ eMinus)
    (hCenter : |f k - g k| ≤ eCenter)
    (hPlus : |f (k + 1) - g (k + 1)| ≤ ePlus) :
    |secondDifference f k - secondDifference g k| ≤
      eMinus + 2 * eCenter + ePlus := by
  have he :
      secondDifference f k - secondDifference g k =
      (f (k - 1) - g (k - 1)) -
      2 * (f k - g k) +
      (f (k + 1) - g (k + 1)) := by
    unfold secondDifference
    ring
  rw [he]
  calc
    |(f (k - 1) - g (k - 1)) -
       2 * (f k - g k) +
      (f (k + 1) - g (k + 1))|
      ≤ |f (k - 1) - g (k - 1) - 2 * (f k - g k)| +
        |f (k + 1) - g (k + 1)| := abs_add_le _ _
    _ ≤ |f (k - 1) - g (k - 1)| +
        2 * |f k - g k| +
        |f (k + 1) - g (k + 1)| := by
      have h := abs_sub_le (f (k - 1) - g (k - 1))
        (2 * (f k - g k))
      rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)] at h
      linarith
    _ ≤ eMinus + 2 * eCenter + ePlus := by
      linarith

/-- The actual positive subgroup phase makes inversion stable.
This is a real algebra theorem: the proof is independent of the
still OPEN source integer-curvature identity. -/
theorem cyclic_curvature_inverse_lipschitz
    (ψ : PChar) (k : ℕ) (hk : 2 ≤ k)
    (actual observed eps : ℝ) (heps : 0 ≤ eps)
    (hApprox : |observed - actual| ≤ eps)
    (hSource : (k : ℝ) * actual =
      (ArithmeticFunction.vonMangoldt k : ℝ) *
        signedPhase (Level.cyc ψ) k) :
    |((k : ℝ) * observed) / signedPhase (Level.cyc ψ) k -
       (ArithmeticFunction.vonMangoldt k : ℝ)| ≤
      (3 * (k : ℝ) / 2) * eps := by
  have hc := cyclic_phase_gt_two_thirds ψ k
  have hc0 : 0 < signedPhase (Level.cyc ψ) k := by linarith
  have hkc : (0 : ℝ) ≤ k := by positivity
  have hexact :
      ((k : ℝ) * actual) / signedPhase (Level.cyc ψ) k =
        (ArithmeticFunction.vonMangoldt k : ℝ) := by
    apply (div_eq_iff (ne_of_gt hc0)).mpr
    exact hSource
  rw [← hexact, ← sub_div, ← mul_sub, abs_div, abs_mul,
      abs_of_nonneg hkc, abs_of_pos hc0]
  have hkbound : (k : ℝ) / signedPhase (Level.cyc ψ) k ≤
       3 * (k : ℝ) / 2 := by
    apply (div_le_iff₀ hc0).mpr
    nlinarith [hc]
  calc
    (k : ℝ) * |observed - actual| /
      signedPhase (Level.cyc ψ) k =
      ((k : ℝ) / signedPhase (Level.cyc ψ) k) *
        |observed - actual| := by ring
    _ ≤ ((k : ℝ) / signedPhase (Level.cyc ψ) k) * eps :=
      mul_le_mul_of_nonneg_left hApprox
        (div_nonneg hkc hc0.le)
    _ ≤ (3 * (k : ℝ) / 2) * eps :=
      mul_le_mul_of_nonneg_right hkbound heps

end GRWTSK.NumberTheory.AlpogeNativeCyclicCurvaturePrecision
