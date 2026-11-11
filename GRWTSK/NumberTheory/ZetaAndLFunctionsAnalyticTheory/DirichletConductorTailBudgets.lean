/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorProfileBounds
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairing
import GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-!
# Effective conductor-uniform fourth-moment budgets

MSC2020: 11M26, 11M41, 65G30.
Local consequence of DCU-T1 and the exact `tailEnvelope`, combined with Program
10's original rational interval checker. Inspection pin: grwtsk/math
8d7c8b8084caa6ff3cf6b254da449042617519f8. Coordination: math#1804, #1807;
research#50. Individual provenance and the complete argument are adjacent.

For q >= 2 and T >= 4, U_4(q,T)/log(2q) <= 10/(9 T^2). The deliberately
coarse rational majorant trades the sharper logarithmic/cubic decay for an
exact finite error budget. At H_k = 4*2^k its value is (5/72)*4^(-k).
The same integer cutoff works for every q >= 2 and every larger integer height.

The envelope is NOT defined as an arithmetic zero sum. An actual count-to-tail
comparison, Fourier decay, multiplicities, and the full explicit-formula return
remain separate obligations. This file closes the fourth-moment ENVELOPE-decay
obligation, not those arithmetic obligations. The conductor-one source is not
included in the q >= 2 bound. Its pole-inclusive treatment remains separate.

The matrix adapter adds head-enclosure and tail errors, then uses the existing
row-penalty/Gram checker. It neither replaces the original form by a positive
majorant nor discards imaginary couplings: complex applications use the existing
`realification` and `splitVector` before applying the real matrix statements.
No all-window sign, universal certificate coverage, or GRH is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit
and independent analytical review: NOT_RUN. No root import or pin changes.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles

open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Rational budget; arithmetic use requires H >= 4, not its totalized value at zero. -/
def fourthTailBudget (H : ℕ) : ℚ := 10 / (9 * (H : ℚ) ^ 2)

/-- An explicit integer schedule, independent of the conductor. -/
def dyadicHeight (k : ℕ) : ℕ := 4 * 2 ^ k

private theorem fourthTailBudget_cast (H : ℕ) :
    (fourthTailBudget H : ℝ) = 10 / (9 * (H : ℝ) ^ 2) := by
  simp [fourthTailBudget]

private theorem fourthTailBudget_nonneg (H : ℕ) : 0 ≤ fourthTailBudget H := by
  unfold fourthTailBudget
  positivity

private theorem dyadicHeight_ge_four (k : ℕ) : 4 ≤ dyadicHeight k := by
  have hp : 1 ≤ (2 : ℕ) ^ k :=
    Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ (by decide))
  unfold dyadicHeight
  omega

private theorem one_le_log_four : (1 : ℝ) ≤ Real.log 4 := by
  have h := Real.log_le_log (Real.exp_pos 1)
    (Real.exp_one_lt_three.le.trans (by norm_num : (3 : ℝ) ≤ 4))
  simpa only [Real.log_exp] using h

/-- A rational majorant of the original normalized ceiling, without an implicit constant. -/
theorem normalizedTailCeiling_four_le_rational {T : ℝ} (hT : 4 ≤ T) :
    normalizedTailCeiling 4 T ≤ 10 / (9 * T ^ 2) := by
  have hTp : 0 < T := by linarith
  have hL : 0 < Real.log 4 := Real.log_pos (by norm_num)
  have hlog : Real.log ((T + 2) / 2) ≤ T / 2 := by
    have h := Real.log_le_sub_one_of_pos (show 0 < (T + 2) / 2 by positivity)
    linarith
  have hratio : Real.log ((T + 2) / 2) / Real.log 4 ≤ T / 2 := by
    apply (div_le_iff₀ hL).mpr
    exact hlog.trans (by
      simpa only [mul_one] using
        mul_le_mul_of_nonneg_left one_le_log_four (show 0 ≤ T / 2 by positivity))
  have hinv : 1 / (9 * Real.log 4) ≤ (1 / 9 : ℝ) := by
    apply (div_le_iff₀ (show 0 < 9 * Real.log 4 by positivity)).mpr
    linarith [one_le_log_four]
  have hpow : T ^ (1 - (4 : ℝ)) = (T ^ 3)⁻¹ := by
    rw [show 1 - (4 : ℝ) = -(3 : ℝ) by norm_num, Real.rpow_neg hTp.le]
    norm_cast
  have hrewrite : normalizedTailCeiling 4 T =
      (4 / T ^ 3) * ((1 + Real.log ((T + 2) / 2) / Real.log 4) / 3 +
        1 / (9 * Real.log 4)) := by
    unfold normalizedTailCeiling
    rw [hpow]
    norm_num <;> ring
  have hsmall : 16 / (9 * T) ≤ (4 / 9 : ℝ) := by
    apply (div_le_iff₀ (show 0 < 9 * T by positivity)).mpr
    nlinarith
  calc
    normalizedTailCeiling 4 T = _ := hrewrite
    _ ≤ (4 / T ^ 3) * ((1 + T / 2) / 3 + 1 / 9) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact add_le_add
        (div_le_div_of_nonneg_right (add_le_add_left hratio 1) (by norm_num)) hinv
    _ = ((2 / 3 : ℝ) + 16 / (9 * T)) / T ^ 2 := by
      field_simp [ne_of_gt hTp] <;> ring
    _ ≤ (10 / 9 : ℝ) / T ^ 2 :=
      div_le_div_of_nonneg_right (by linarith) (sq_nonneg T)
    _ = 10 / (9 * T ^ 2) := by rw [div_div]

/-- Uniformity is for the normalized envelope and every real q >= 2. -/
theorem tailEnvelope_four_normalized_le_budget {q : ℝ} (hq : 2 ≤ q)
    (H : ℕ) (hH : 4 ≤ H) :
    tailEnvelope 4 q (H : ℝ) / Real.log (2 * q) ≤ (fourthTailBudget H : ℝ) := by
  have hHR : (4 : ℝ) ≤ H := by exact_mod_cast hH
  exact (tailEnvelope_normalized_le (by norm_num) hq (by linarith : (0 : ℝ) < H)).trans
    ((normalizedTailCeiling_four_le_rational hHR).trans_eq (fourthTailBudget_cast H).symm)

/-- The budget decreases at every subsequent positive integer height. -/
theorem fourthTailBudget_antitone {H K : ℕ} (hH : 0 < H) (hHK : H ≤ K) :
    fourthTailBudget K ≤ fourthTailBudget H := by
  have hHp : (0 : ℚ) < H := by exact_mod_cast hH
  have hcast : (H : ℚ) ≤ K := by exact_mod_cast hHK
  unfold fourthTailBudget
  apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
  have hsq : (H : ℚ) ^ 2 ≤ (K : ℚ) ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hcast)
      (show 0 ≤ (K : ℚ) + H by positivity)]
  exact mul_le_mul_of_nonneg_left hsq (by norm_num)

/-- Exact geometric error, not an asymptotic formula. -/
theorem fourthTailBudget_dyadic (k : ℕ) :
    (fourthTailBudget (dyadicHeight k) : ℝ) = (5 / 72 : ℝ) * (1 / 4 : ℝ) ^ k := by
  have hp : ((2 : ℝ) ^ k) ^ 2 = (4 : ℝ) ^ k := by
    calc
      _ = (2 : ℝ) ^ (k * 2) := (pow_mul _ _ _).symm
      _ = (2 : ℝ) ^ (2 * k) := by rw [Nat.mul_comm k 2]
      _ = ((2 : ℝ) ^ 2) ^ k := pow_mul _ _ _
      _ = (4 : ℝ) ^ k := by norm_num
  rw [fourthTailBudget_cast]
  simp only [dyadicHeight, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat,
    mul_pow, hp, one_div_pow]
  field_simp [pow_ne_zero k (by norm_num : (4 : ℝ) ≠ 0)] <;> ring

/-- The explicit height schedule meets every dyadic scalar tolerance. -/
theorem fourthTailBudget_dyadic_le (k : ℕ) :
    (fourthTailBudget (dyadicHeight k) : ℝ) ≤ (1 / 2 : ℝ) ^ k := by
  rw [fourthTailBudget_dyadic]
  calc
    _ ≤ 1 * (1 / 4 : ℝ) ^ k :=
      mul_le_mul_of_nonneg_right (by norm_num) (by positivity)
    _ ≤ (1 / 2 : ℝ) ^ k := by
      simp only [one_mul]
      gcongr <;> norm_num

/-- A single cutoff works for all conductors and every later integer height.
This proves envelope decay, not a counting theorem about an arithmetic divisor. -/
theorem exists_uniform_fourth_tail_cutoff {epsilon : ℝ} (he : 0 < epsilon) :
    ∃ H : ℕ, 4 ≤ H ∧ ∀ K : ℕ, H ≤ K → ∀ q : ℝ, 2 ≤ q →
      tailEnvelope 4 q (K : ℝ) / Real.log (2 * q) < epsilon := by
  obtain ⟨k, hk⟩ := dyadic_errors_arbitrarily_small epsilon he
  refine ⟨dyadicHeight k, dyadicHeight_ge_four k, ?_⟩
  intro K hK q hq
  have hH := dyadicHeight_ge_four k
  have hb : (fourthTailBudget K : ℝ) ≤ (fourthTailBudget (dyadicHeight k) : ℝ) := by
    exact_mod_cast fourthTailBudget_antitone (by omega : 0 < dyadicHeight k) hK
  exact ((tailEnvelope_four_normalized_le_budget hq K (hH.trans hK)).trans
    (hb.trans (fourthTailBudget_dyadic_le k))).trans_lt hk

variable {ι ν : Type*} [Fintype ι] [DecidableEq ι] [Fintype ν]

/-- Add the omitted-tail price to the HEAD packet, without changing center,
metric or tolerance. Rational weights include the supplied test/support majorants. -/
def tailPacket (headPacket : Packet ι) (H : ℕ) (weight : ι → ℚ) : Packet ι :=
  { headPacket with radius := fun i j =>
      headPacket.radius i j + fourthTailBudget H * weight i * weight j }

/-- Algebraic guard preservation is distinct from arithmetic enclosure. -/
theorem tailPacket_guard (P : Packet ι) (H : ℕ) (weight : ι → ℚ)
    (hP : P.Guard) (hw : ∀ i, 0 ≤ weight i) : (tailPacket P H weight).Guard := by
  refine ⟨?_, ?_, hP.2.2⟩
  · intro i j
    exact add_nonneg (hP.1 i j)
      (mul_nonneg (mul_nonneg (fourthTailBudget_nonneg H) (hw i)) (hw j))
  · intro i j
    change P.radius i j + fourthTailBudget H * weight i * weight j =
      P.radius j i + fourthTailBudget H * weight j * weight i
    rw [hP.2.1 i j]
    ring

/-- Head enclosure plus the supplied ACTUAL tail comparison gives a full packet.
For complex matrices, apply to the complete realification, not just real parts. -/
theorem tailPacket_encloses {q : ℝ} (hq : 2 ≤ q) (H : ℕ) (hH : 4 ≤ H)
    (P : Packet ι) (weight : ι → ℚ) (hw : ∀ i, 0 ≤ weight i)
    (full head : Matrix ι ι ℝ) (hhead : Encloses P head)
    (htail : ∀ i j, |full i j - head i j| ≤
      ((weight i : ℝ) * (weight j : ℝ)) *
        (tailEnvelope 4 q (H : ℝ) / Real.log (2 * q))) :
    Encloses (tailPacket P H weight) full := by
  intro i j
  have hscale : 0 ≤ (weight i : ℝ) * (weight j : ℝ) := by
    exact mul_nonneg (by exact_mod_cast hw i) (by exact_mod_cast hw j)
  have hb := mul_le_mul_of_nonneg_left
    (tailEnvelope_four_normalized_le_budget hq H hH) hscale
  calc
    |full i j - (P.center i j : ℝ)| ≤
        |full i j - head i j| + |head i j - (P.center i j : ℝ)| := by
      simpa only [sub_add_sub_cancel] using
        abs_add_le (full i j - head i j) (head i j - (P.center i j : ℝ))
    _ ≤ ((weight i : ℝ) * (weight j : ℝ)) * (fourthTailBudget H : ℝ) +
        (P.radius i j : ℝ) := add_le_add ((htail i j).trans hb) (hhead i j)
    _ = ((tailPacket P H weight).radius i j : ℝ) := by
      dsimp [tailPacket]
      push_cast
      ring

/-- Return from a conductor-NORMALIZED matrix to the ORIGINAL source by a
positive multiplication, never by assuming the unknown sign of that source. -/
theorem checked_tailPacket_scaled_source_lower {q : ℝ} (hq : 2 ≤ q) (H : ℕ) (hH : 4 ≤ H)
    (P : Packet ι) (weight : ι → ℚ) (hw : ∀ i, 0 ≤ weight i)
    (full head : Matrix ι ι ℝ) (hhead : Encloses P head)
    (htail : ∀ i j, |full i j - head i j| ≤
      ((weight i : ℝ) * (weight j : ℝ)) *
        (tailEnvelope 4 q (H : ℝ) / Real.log (2 * q)))
    (C : Certificate ℚ ι Empty Empty ν)
    (hcheck : intervalCheck (tailPacket P H weight) C = true)
    (source : (ι → ℝ) → ℝ)
    (hsource : ∀ x, Real.log (2 * q) * quadratic full x ≤ source x) (x : ι → ℝ) :
    -(P.tolerance : ℝ) * Real.log (2 * q) *
      quadratic (fun i j => (P.metric i j : ℝ)) x ≤ source x := by
  have hchecked := checked_enclosure_lower (tailPacket P H weight) C full
    (tailPacket_encloses hq H hH P weight hw full head hhead htail) hcheck x
  have hL : 0 ≤ Real.log (2 * q) := Real.log_nonneg (by linarith)
  calc
    _ = Real.log (2 * q) *
        (-(P.tolerance : ℝ) * quadratic (fun i j => (P.metric i j : ℝ)) x) := by ring
    _ ≤ Real.log (2 * q) * quadratic full x :=
      mul_le_mul_of_nonneg_left hchecked hL
    _ ≤ source x := hsource x

/-- The same explicit budget supports a strict negative conclusion. A negative
finite head alone is insufficient; the remaining full error is charged. -/
theorem re_neg_of_fourth_tail_budget {q : ℝ} (hq : 2 ≤ q) (H : ℕ) (hH : 4 ≤ H)
    (value head : ℂ) (weight eta : ℝ) (hw : 0 ≤ weight)
    (hhead : head.re ≤ -eta)
    (htail : ‖value - head‖ ≤ weight *
      (tailEnvelope 4 q (H : ℝ) / Real.log (2 * q)))
    (hbudget : weight * (fourthTailBudget H : ℝ) < eta) : value.re < 0 := by
  exact GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.re_neg_of_error_budget
    value head eta (weight * (fourthTailBudget H : ℝ)) hhead
    (htail.trans (mul_le_mul_of_nonneg_left
      (tailEnvelope_four_normalized_le_budget hq H hH) hw)) hbudget

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles
