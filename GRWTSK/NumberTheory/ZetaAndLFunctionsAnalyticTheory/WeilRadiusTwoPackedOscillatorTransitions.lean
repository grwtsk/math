/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoOscillatorAnalytic
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDLPacked

/-!
# Packed integer transition rows for a fixed-point oscillator

The three source rows and one residual row have checked signed digit
magnitudes. Their single packed equality recovers each exact local
identity. The two coordinate rows use the same transition scale and
retain the distinct signs of the complex multiplication.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PackedOscillatorTransitions

open GRWTSK.Analysis.Complex.FixedPointOscillator
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open RadiusTwoOscillatorAnalytic

def packBase : ℕ := 2^165

/-- The four integer tapes of one complex oscillator channel. -/
structure Tape where
  x : Array ℤ
  y : Array ℤ
  re : Array ℤ
  im : Array ℤ
  deriving Inhabited

def Tape.X (t : Tape) (i : ℕ) : ℤ := t.x[i]!
def Tape.Y (t : Tape) (i : ℕ) : ℤ := t.y[i]!

private theorem packed_linear {n : ℕ} (a b c : ℤ) (u v w : Fin n → ℤ) :
    packDigits packBase (fun j => a*u j+b*v j+c*w j) =
      a*packDigits packBase u+b*packDigits packBase v+c*packDigits packBase w := by
  simp only [packDigits_eq_sum, add_mul, Finset.sum_add_distrib, Finset.mul_sum, mul_assoc]

/-- One packed three-term identity with an explicit no-carry bound. -/
def RowOK {n : ℕ} (a b c : ℤ) (u v w residual : Fin n → ℤ) : Prop :=
  (|a| ≤ 2*scale80 ∧ |b| ≤ 2*scale80 ∧ |c| ≤ 2*scale80) ∧
  (∀ j, |u j| ≤ 2*scale80 ∧ |v j| ≤ 2*scale80 ∧ |w j| ≤ 2*scale80 ∧
    |residual j| ≤ scale80) ∧
  packDigits packBase residual =
    a*packDigits packBase u+b*packDigits packBase v+c*packDigits packBase w

instance {n : ℕ} (a b c : ℤ) (u v w residual : Fin n → ℤ) :
    Decidable (RowOK a b c u v w residual) := by
  unfold RowOK
  infer_instance

set_option maxHeartbeats 2000000 in
theorem row_entry {n : ℕ} {a b c : ℤ} {u v w residual : Fin n → ℤ}
    (h : RowOK a b c u v w residual) (j : Fin n) :
    a*u j+b*v j+c*w j = residual j := by
  obtain ⟨⟨ha,hb,hc⟩,hDigits,hPack⟩ := h
  have hs : (0:ℤ) ≤ 2*scale80 := by norm_num [scale80]
  have hp : packDigits packBase (fun i => a*u i+b*v i+c*w i) =
      packDigits packBase residual := by
    rw [packed_linear,hPack]
  have hbound (i : Fin n) : (a*u i+b*v i+c*w i-residual i).natAbs < packBase := by
    obtain ⟨hu,hv,hw,hr⟩ := hDigits i
    have hA : |a*u i| ≤ (2*scale80)*(2*scale80) := by
      rw [abs_mul]
      exact mul_le_mul ha hu (abs_nonneg _) hs
    have hB : |b*v i| ≤ (2*scale80)*(2*scale80) := by
      rw [abs_mul]
      exact mul_le_mul hb hv (abs_nonneg _) hs
    have hC : |c*w i| ≤ (2*scale80)*(2*scale80) := by
      rw [abs_mul]
      exact mul_le_mul hc hw (abs_nonneg _) hs
    have hsum : |a*u i+b*v i+c*w i| ≤ |a*u i|+|b*v i|+|c*w i| :=
      (abs_add_le (a*u i+b*v i) (c*w i)).trans
        (add_le_add (abs_add_le (a*u i) (b*v i)) le_rfl)
    have H : |a*u i+b*v i+c*w i-residual i| < (packBase:ℤ) := by
      calc
        _ ≤ |a*u i+b*v i+c*w i|+|residual i| := abs_sub _ _
        _ ≤ |a*u i|+|b*v i|+|c*w i|+|residual i| :=
          add_le_add hsum le_rfl
        _ ≤ (2*scale80)*(2*scale80)+(2*scale80)*(2*scale80)+(2*scale80)*(2*scale80)+scale80 :=
          add_le_add (add_le_add (add_le_add hA hB) hC) hr
        _ < _ := by norm_num [packBase,scale80]
    rw [Int.abs_eq_natAbs] at H
    exact Int.ofNat_lt.mp H
  exact congrFun (eq_of_packDigits_eq packBase (by norm_num [packBase]) _ _ hbound hp) j

/-- Real and imaginary packed transition checks on a complete finite block. -/
def Transitions (n : ℕ) (c s : ℤ) (t : Tape) : Prop :=
  RowOK scale80 (-c) s (fun j : Fin n => t.X (j.val+1))
    (fun j => t.X j.val) (fun j => t.Y j.val) (fun j => t.re[j.val]!) ∧
  RowOK scale80 (-s) (-c) (fun j : Fin n => t.Y (j.val+1))
    (fun j => t.X j.val) (fun j => t.Y j.val) (fun j => t.im[j.val]!)

instance (n : ℕ) (c s : ℤ) (t : Tape) : Decidable (Transitions n c s t) := by
  unfold Transitions
  infer_instance

theorem transition_bounds {n : ℕ} {c s : ℤ} {t : Tape}
    (h : Transitions n c s t) {j : ℕ} (hj : j < n) :
    (|t.X j| ≤ 2*scale80 ∧ |t.Y j| ≤ 2*scale80) ∧
      |residualRe scale80 c s (t.X j) (t.Y j) (t.X (j+1))| ≤ scale80 ∧
      |residualIm scale80 c s (t.X j) (t.Y j) (t.Y (j+1))| ≤ scale80 := by
  let i : Fin n := ⟨j,hj⟩
  have hRe := row_entry h.1 i
  have hIm := row_entry h.2 i
  have a := h.1.2.1 i
  have b := h.2.2.1 i
  refine ⟨⟨a.2.1,a.2.2.1⟩,?_,?_⟩
  · rw [show residualRe scale80 c s (t.X j) (t.Y j) (t.X (j+1)) =
        scale80*t.X (j+1)+(-c)*t.X j+s*t.Y j by unfold residualRe; ring]
    change scale80*t.X (j+1)+(-c)*t.X j+s*t.Y j = t.re[j]! at hRe
    rw [hRe]
    exact a.2.2.2
  · rw [show residualIm scale80 c s (t.X j) (t.Y j) (t.Y (j+1)) =
        scale80*t.Y (j+1)+(-s)*t.X j+(-c)*t.Y j by unfold residualIm; ring]
    change scale80*t.Y (j+1)+(-s)*t.X j+(-c)*t.Y j = t.im[j]! at hIm
    rw [hIm]
    exact b.2.2.2

end GRWTSK.NumberTheory.WeilQuadraticForm.PackedOscillatorTransitions
