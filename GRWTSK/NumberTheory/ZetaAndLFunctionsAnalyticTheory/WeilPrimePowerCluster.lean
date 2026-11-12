/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTwistedPrimeEnergyReturn
import Mathlib.Tactic

/-!
# Sharp simultaneous prime-and-prime-square three-site comparison

MSC2020: 11M26 (primary), 15A18, 47A12.
After the common character phase of p and p² is removed, the
exact signed finite response is
  2t Re(conj(x)y+conj(y)z)+2t² Re(conj(x)z), t=p^(-1/2).
Its largest Rayleigh coefficient is (t²+t*sqrt(t²+8))/2.
The sum-of-squares retains all arbitrary complex cross terms.

Consumer: companion WeilPrimePowerCluster.md identifies the original
SourcePrimeCorrelation, every von Mangoldt power, the conductor/parity
constant, signed prime response and two zeta pole orientations.
The physical Lebesgue-fiber identification and the full-N Toeplitz
comparison remain WRITTEN, not new Lean declarations.

Prior art: Kac--Murdock--Szego Toeplitz matrix and
Haagerup--de la Harpe 1992 nilpotent numerical radius.
No novelty claim. SOURCE_PROOF_CANDIDATE: elaboration, full build,
fresh kernel replay, transitive axiom audit, independent review and
certified numerical evaluation NOT_RUN. No RH or primitive GRH claim.
-/

set_option autoImplicit false
noncomputable section

open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimePowerCluster

/-- Three consecutive source-site masses. -/
def tripleMass (x y z : ℂ) : ℝ :=
  ‖x‖ ^ 2 + ‖y‖ ^ 2 + ‖z‖ ^ 2

/-- Original p/p² Hermitian response after a coherent character gauge. -/
def tripleResponse (t : ℝ) (x y z : ℂ) : ℝ :=
  2 * t * ((conj x * y).re + (conj z * y).re) +
    2 * t ^ 2 * (conj x * z).re

private theorem norm_real_mul_sub_sq (b : ℝ) (u v : ℂ) :
    ‖(b : ℂ) * u - v‖ ^ 2 =
      b ^ 2 * ‖u‖ ^ 2 + ‖v‖ ^ 2 -
        2 * b * (conj u * v).re := by
  simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
    Complex.sub_re, Complex.sub_im, Complex.mul_re, Complex.mul_im,
    Complex.conj_re, Complex.conj_im, Complex.ofReal_re, Complex.ofReal_im]
  ring

private theorem norm_sub_sq (u v : ℂ) :
    ‖u - v‖ ^ 2 =
      ‖u‖ ^ 2 + ‖v‖ ^ 2 - 2 * (conj u * v).re := by
  simpa using norm_real_mul_sub_sq 1 u v

/-- Exact complex sum-of-squares identity for the three-site matrix. -/
theorem threeSite_square_identity (t lam beta : ℝ)
    (hlam : lam = t * beta + t ^ 2)
    (hbeta : lam * beta = 2 * t) (x y z : ℂ) :
    lam * tripleMass x y z - tripleResponse t x y z =
      (lam / 2) *
        (‖(beta : ℂ) * x - y‖ ^ 2 +
         ‖(beta : ℂ) * z - y‖ ^ 2) +
        t ^ 2 * ‖x - z‖ ^ 2 := by
  have hcoef : (lam / 2) * beta ^ 2 + t ^ 2 = lam := by
    calc
      (lam / 2) * beta ^ 2 + t ^ 2 =
          ((lam * beta) / 2) * beta + t ^ 2 := by ring
      _ = t * beta + t ^ 2 := by rw [hbeta]; ring
      _ = lam := hlam.symm
  have hx := norm_real_mul_sub_sq beta x y
  have hz := norm_real_mul_sub_sq beta z y
  have hxz := norm_sub_sq x z
  unfold tripleMass tripleResponse
  calc
    lam * (‖x‖ ^ 2 + ‖y‖ ^ 2 + ‖z‖ ^ 2) -
      (2 * t * ((conj x * y).re + (conj z * y).re) +
       2 * t ^ 2 * (conj x * z).re) =
        ((lam / 2) * beta ^ 2 + t ^ 2) * (‖x‖ ^ 2 + ‖z‖ ^ 2) +
        lam * ‖y‖ ^ 2 -
        (lam * beta) * ((conj x * y).re + (conj z * y).re) -
        2 * t ^ 2 * (conj x * z).re := by
          rw [hcoef, hbeta]
          ring
    _ = (lam / 2) *
          (‖(beta : ℂ) * x - y‖ ^ 2 +
           ‖(beta : ℂ) * z - y‖ ^ 2) +
          t ^ 2 * ‖x - z‖ ^ 2 := by
          rw [hx, hz, hxz]
          ring

/-- All complex phases and cross terms are included. -/
theorem threeSite_response_le (t lam beta : ℝ)
    (hlam : lam = t * beta + t ^ 2)
    (hbeta : lam * beta = 2 * t)
    (hlam0 : 0 ≤ lam) (x y z : ℂ) :
    tripleResponse t x y z ≤ lam * tripleMass x y z := by
  have h := threeSite_square_identity t lam beta hlam hbeta x y z
  have hright : 0 ≤
      (lam / 2) *
        (‖(beta : ℂ) * x - y‖ ^ 2 +
         ‖(beta : ℂ) * z - y‖ ^ 2) +
      t ^ 2 * ‖x - z‖ ^ 2 := by
    apply add_nonneg
    · exact mul_nonneg (div_nonneg hlam0 (by norm_num))
        (add_nonneg (sq_nonneg _) (sq_nonneg _))
    · exact mul_nonneg (sq_nonneg _) (sq_nonneg _)
  linarith

/-- Exact largest three-site prime/p² response coefficient. -/
def tripleTop (t : ℝ) : ℝ :=
  (t ^ 2 + t * Real.sqrt (t ^ 2 + 8)) / 2

/-- Positive eigenvector profile ratio, avoiding division by t. -/
def tripleRatio (t : ℝ) : ℝ :=
  (Real.sqrt (t ^ 2 + 8) - t) / 2

theorem tripleTop_relations (t : ℝ) :
    tripleTop t = t * tripleRatio t + t ^ 2 ∧
      tripleTop t * tripleRatio t = 2 * t := by
  have hs : (Real.sqrt (t ^ 2 + 8)) ^ 2 = t ^ 2 + 8 :=
    Real.sq_sqrt (by positivity)
  constructor
  · unfold tripleTop tripleRatio
    ring
  · unfold tripleTop tripleRatio
    calc
      ((t ^ 2 + t * Real.sqrt (t ^ 2 + 8)) / 2) *
          ((Real.sqrt (t ^ 2 + 8) - t) / 2) =
          t * ((Real.sqrt (t ^ 2 + 8)) ^ 2 - t ^ 2) / 4 := by ring
      _ = 2 * t := by rw [hs]; ring

/-- Exact three-site upper coefficient for every complex vector. -/
theorem tripleResponse_le_top (t : ℝ) (ht : 0 ≤ t) (x y z : ℂ) :
    tripleResponse t x y z ≤ tripleTop t * tripleMass x y z := by
  obtain ⟨hl, hb⟩ := tripleTop_relations t
  have htop : 0 ≤ tripleTop t := by
    unfold tripleTop
    positivity
  exact threeSite_response_le t (tripleTop t) (tripleRatio t)
    hl hb htop x y z

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimePowerCluster
