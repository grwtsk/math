/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Algebra.Ring.GeomSum
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignBiasedLanes
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePackedIntegerProducts
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedOscillatorTransitions

/-!
# Direct packed residual checks for radius-two oscillator lanes

The raw
integers carry biased base digits. A quotient pass certifies their
magnitudes. The raw packed equalities give both exact residuals by
the signed no-carry bound. The weighted-row check uses the same
argument and the exact finite matrix product identity.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/
set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDirectOscillator

open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open PackedOscillatorTransitions RadiusTwoOscillatorAnalytic
open GRWTSK.Analysis.Complex.FixedPointOscillator

def limits (limit : ℕ) : ℕ → ℕ → Bool
  | 0, _ => true
  | n+1, raw => decide (raw % packBase ≤ limit) && limits limit n (raw / packBase)

private theorem raw_succ (raw i : ℕ) :
    rawLaneDigit packBase raw (i+1) = rawLaneDigit packBase (raw/packBase) i := by
  simp [rawLaneDigit, pow_succ', Nat.div_div_eq_div_mul]

private theorem limits_sound {limit n raw : ℕ} (h : limits limit n raw = true)
    {i : ℕ} (hi : i<n) : rawLaneDigit packBase raw i ≤ (limit:ℤ) := by
  induction n generalizing raw i with
  | zero => omega
  | succ n ih =>
    obtain ⟨h₁,h₂⟩ := Bool.and_eq_true_iff.mp h
    cases i with
    | zero =>
      have h₀ := of_decide_eq_true h₁
      change Int.ofNat (raw / packBase^0 % packBase) ≤ (limit:ℤ)
      simp only [pow_zero, Nat.div_one]
      exact Int.ofNat_le.mpr h₀
    | succ i =>
      rw [raw_succ]
      exact ih h₂ (by omega)

private theorem digit_bound {n raw bias i : ℕ} (h : limits (2*bias) n raw = true)
    (hi : i<n) : |biasedLaneDigit packBase raw (bias:ℤ) i| ≤ (bias:ℤ) := by
  have h1 := limits_sound h hi
  have h0 : 0 ≤ rawLaneDigit packBase raw i := Int.natCast_nonneg _
  push_cast at h1
  rw [biasedLaneDigit, abs_le]
  omega

def stateBias : ℕ := 2^81
def residualBias : ℕ := 2^80

structure Lane where
  x : ℕ
  y : ℕ
  re : ℕ
  im : ℕ
  deriving Inhabited

def Lane.X (a : Lane) (i : ℕ) : ℤ := biasedLaneDigit packBase a.x stateBias i
def Lane.Y (a : Lane) (i : ℕ) : ℤ := biasedLaneDigit packBase a.y stateBias i
def Lane.Re (a : Lane) (i : ℕ) : ℤ := biasedLaneDigit packBase a.re residualBias i
def Lane.Im (a : Lane) (i : ℕ) : ℤ := biasedLaneDigit packBase a.im residualBias i

def geometry (n : ℕ) : ℤ := ((packBase:ℤ)^n-1)/((packBase:ℤ)-1)

private theorem geometry_eq (n : ℕ) :
    geometry n = packDigits packBase (fun _ : Fin n => 1) := by
  rw [geometry, packDigits_eq_sum]
  simp only [one_mul]
  rw [Fin.sum_univ_eq_sum_range]
  exact Int.ediv_eq_of_eq_mul_left (by norm_num [packBase]) (geom_sum_mul (packBase:ℤ) n).symm

def packed (n raw bias : ℕ) : ℤ :=
  Int.ofNat (raw % packBase^n)-(bias:ℤ)*geometry n

private theorem packed_eq (n raw bias : ℕ) :
    packed n raw bias = packDigits packBase (fun j : Fin n =>
      biasedLaneDigit packBase raw bias j.val) := by
  rw [packed, geometry_eq]
  exact (pack_biasedLaneDigit packBase raw n (bias:ℤ)).symm

private theorem packed_succ (n raw bias : ℕ) :
    packed n (raw/packBase) bias = packDigits packBase (fun j : Fin n =>
      biasedLaneDigit packBase raw bias (j.val+1)) := by
  rw [packed_eq]
  congr 1
  funext j
  unfold biasedLaneDigit
  rw [raw_succ]

/-- Two packed residual equalities and one magnitude traversal per tape. -/
def Check (n : ℕ) (c s : ℤ) (a : Lane) : Prop :=
  (|c| ≤ 2*scale80 ∧ |s| ≤ 2*scale80) ∧
  (limits (2*stateBias) (n+1) a.x = true ∧ limits (2*stateBias) (n+1) a.y = true ∧
    limits (2*residualBias) n a.re = true ∧ limits (2*residualBias) n a.im = true) ∧
  (packed n a.re residualBias = scale80*packed n (a.x/packBase) stateBias +
      (-c)*packed n a.x stateBias+s*packed n a.y stateBias) ∧
  (packed n a.im residualBias = scale80*packed n (a.y/packBase) stateBias +
      (-s)*packed n a.x stateBias+(-c)*packed n a.y stateBias)

instance (n : ℕ) (c s : ℤ) (a : Lane) : Decidable (Check n c s a) := by
  unfold Check
  infer_instance

private theorem stateBias_eq : (stateBias:ℤ) = 2*scale80 := by norm_num [stateBias, scale80]
private theorem residualBias_eq : (residualBias:ℤ) = scale80 := by norm_num [residualBias, scale80]

theorem transition_bounds {n : ℕ} {c s : ℤ} {a : Lane}
    (h : Check n c s a) {j : ℕ} (hj : j<n) :
    (|a.X j| ≤ 2*scale80 ∧ |a.Y j| ≤ 2*scale80) ∧
      |residualRe scale80 c s (a.X j) (a.Y j) (a.X (j+1))| ≤ scale80 ∧
      |residualIm scale80 c s (a.X j) (a.Y j) (a.Y (j+1))| ≤ scale80 := by
  obtain ⟨⟨hc,hs⟩, ⟨hx,hy,hr,hi⟩, hRe, hIm⟩ := h
  have hs₀ : |scale80| ≤ 2*scale80 := by norm_num [scale80]
  have ax {j : ℕ} (hj : j<n+1) : |a.X j| ≤ 2*scale80 := stateBias_eq ▸ digit_bound hx hj
  have ay {j : ℕ} (hj : j<n+1) : |a.Y j| ≤ 2*scale80 := stateBias_eq ▸ digit_bound hy hj
  have ar {j : ℕ} (hj : j<n) : |a.Re j| ≤ scale80 := residualBias_eq ▸ digit_bound hr hj
  have ai {j : ℕ} (hj : j<n) : |a.Im j| ≤ scale80 := residualBias_eq ▸ digit_bound hi hj
  rw [packed_eq n a.re, packed_succ, packed_eq n a.x, packed_eq n a.y] at hRe
  rw [packed_eq n a.im, packed_succ, packed_eq n a.x, packed_eq n a.y] at hIm
  have hRowRe : RowOK scale80 (-c) s (fun i : Fin n => a.X (i.val+1))
      (fun i => a.X i.val) (fun i => a.Y i.val) (fun i => a.Re i.val) :=
    ⟨⟨hs₀, abs_neg c ▸ hc, hs⟩, fun i => ⟨ax (by omega), ax (by omega), ay (by omega), ar i.isLt⟩,
      hRe⟩
  have hRowIm : RowOK scale80 (-s) (-c) (fun i : Fin n => a.Y (i.val+1))
      (fun i => a.X i.val) (fun i => a.Y i.val) (fun i => a.Im i.val) :=
    ⟨⟨hs₀, abs_neg s ▸ hs, abs_neg c ▸ hc⟩,
      fun i => ⟨ay (by omega), ax (by omega), ay (by omega), ai i.isLt⟩, hIm⟩
  let i : Fin n := ⟨j,hj⟩
  have hR := row_entry hRowRe i
  have hI := row_entry hRowIm i
  change scale80*a.X (j+1)+(-c)*a.X j+s*a.Y j = a.Re j at hR
  change scale80*a.Y (j+1)+(-s)*a.X j+(-c)*a.Y j = a.Im j at hI
  refine ⟨⟨ax (by omega),ay (by omega)⟩,?_,?_⟩
  · rw [show residualRe scale80 c s (a.X j) (a.Y j) (a.X (j+1)) =
      scale80*a.X (j+1)+(-c)*a.X j+s*a.Y j by unfold residualRe; ring, hR]
    exact ar hj
  · rw [show residualIm scale80 c s (a.X j) (a.Y j) (a.Y (j+1)) =
      scale80*a.Y (j+1)+(-s)*a.X j+(-c)*a.Y j by unfold residualIm; ring, hI]
    exact ai hj

theorem state_bounds {n : ℕ} {c s : ℤ} {a : Lane} (h : Check n c s a)
    {i : ℕ} (hi : i<n+1) : |a.X i| ≤ (stateBias:ℤ) ∧ |a.Y i| ≤ (stateBias:ℤ) :=
  ⟨digit_bound h.2.1.1 hi, digit_bound h.2.1.2.1 hi⟩

theorem zero_state_bound (i : ℕ) : |biasedLaneDigit packBase 0 stateBias i| ≤ (stateBias:ℤ) := by
  simp [biasedLaneDigit, rawLaneDigit, abs_of_nonneg]

def weightedBias : ℕ := 2^150
def weightedDigit (out i : ℕ) : ℤ := biasedLaneDigit packBase out weightedBias i

def WeightedCheck (n : ℕ) (w : Fin 53 → ℤ) (raw : Fin 53 → ℕ) (out : ℕ) : Prop :=
  limits (2*weightedBias) n out = true ∧
  packed n out weightedBias =
    (List.ofFn fun q => w q * packed n (raw q) stateBias).sum

instance (n : ℕ) (w : Fin 53 → ℤ) (raw : Fin 53 → ℕ) (out : ℕ) :
    Decidable (WeightedCheck n w raw out) := by
  unfold WeightedCheck
  infer_instance

open GRWTSK.Algebra.LinearAlgebra.FinitePackedIntegerProducts in
theorem weighted_entry {n out : ℕ} {w : Fin 53 → ℤ} {raw : Fin 53 → ℕ}
    (h : WeightedCheck n w raw out)
    (hw : ∀ q, |w q| ≤ (2^60:ℤ))
    (hr : ∀ q (i : Fin n), |biasedLaneDigit packBase (raw q) stateBias i.val| ≤ (stateBias:ℤ))
    (i : Fin n) :
    weightedDigit out i.val = ∑ q, w q*biasedLaneDigit packBase (raw q) stateBias i.val := by
  let target (j : Fin n) := weightedDigit out j.val
  let source (j : Fin n) := ∑ q, w q*biasedLaneDigit packBase (raw q) stateBias j.val
  have hpSource := pack_mul_row packBase (fun j : Fin n => j)
    (fun (_ : Unit) (q : Fin 53) => w q)
    (fun (q : Fin 53) (j : Fin n) => biasedLaneDigit packBase (raw q) stateBias j.val) ()
  have hp : packDigits packBase target = packDigits packBase source := by
    have hrow := h.2
    rw [packed_eq, List.sum_ofFn] at hrow
    simp only [packed_eq] at hrow
    exact hrow.trans hpSource.symm
  have hb (j : Fin n) : (target j-source j).natAbs < packBase := by
    have ht : |target j| ≤ (weightedBias:ℤ) := digit_bound h.1 j.isLt
    have hs : |source j| ≤ (53:ℤ)*(2^60)*(stateBias:ℤ) := by
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      calc
        _ ≤ ∑ _ : Fin 53, (2^60:ℤ)*(stateBias:ℤ) := by
          refine Finset.sum_le_sum fun q _ => ?_
          rw [abs_mul]
          exact mul_le_mul (hw q) (hr q j) (abs_nonneg _) (by positivity)
        _ = _ := by simp; ring
    have hbound := (abs_sub (target j) (source j)).trans (add_le_add ht hs)
    have hh : |target j-source j| < (packBase:ℤ) := hbound.trans_lt
      (by norm_num [weightedBias, stateBias, packBase])
    rw [Int.abs_eq_natAbs] at hh
    exact_mod_cast hh
  exact congrFun (eq_of_packDigits_eq packBase (by norm_num [packBase]) target source hb hp) i

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDirectOscillator
