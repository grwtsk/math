# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSignedPortControls.Variant39faf7fe85a4482bcd6ccf2b4e934de5774be46e66f0320aff9ef8cd049dbd91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9f1e2929646a3d845c8a4cbdddfa1caa918d1d7` · SHA-256 `39faf7fe85a4482bcd6ccf2b4e934de5774be46e66f0320aff9ef8cd049dbd91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-!
# Literal signed-source controls for moving ports

The source coefficients are the actual all-natural `vonMangoldt n - 1`.
Their variation cannot be assigned the unit nonnegative mass budget of a
positive fluid detector. The shear and storage identities below preserve the
signed scalar, but assert no arithmetic cap. grwtsk contributors supplied the
originating fiber-port direction; OpenAI Codex supplied these controls,
7 October 2026.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSignedPortControls

open scoped BigOperators
open SourceKapitzaSourceStorage SourceKapitzaReconstruction SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The exact coefficient of the compensated cosine symbol, before observation
against the unchanged source correlation. -/
def compensatedCoefficient (n : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n

/-- Total variation of the literal finite atomic coefficient row. Distinct
`log n` locations give this sum as the signed measure's variation. -/
def coefficientVariation (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, |compensatedCoefficient n|

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem vonMangoldt_six_mul (k : ℕ) :
    ArithmeticFunction.vonMangoldt (6 * k) = 0 := by
  apply ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr
  intro hp
  have h6 : IsPrimePow (6 : ℕ) := hp.dvd (by exact ⟨k, rfl⟩) (by norm_num)
  norm_num [isPrimePow_nat_iff_bounded_log_minFac] at h6
  obtain ⟨j, hj, hjpos, he⟩ := h6
  interval_cases j <;> norm_num at *

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem coefficient_six_mul (k : ℕ) :
    compensatedCoefficient (6 * k) = -1 / Real.sqrt (6 * k) := by
  simp [compensatedCoefficient, vonMangoldt_six_mul]

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem coefficient_six_negative : compensatedCoefficient 6 < 0 := by
  have hs : 0 < Real.sqrt (6 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have he := coefficient_six_mul 1
  norm_num at he
  rw [he]
  exact div_neg_of_neg_of_pos (by norm_num) hs

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem not_nonnegative_coefficient_row (N : ℕ) (hN : 6 ≤ N) :
    ¬ ∀ n ∈ Finset.Icc 2 N, 0 ≤ compensatedCoefficient n := by
  intro h
  exact (not_le_of_gt coefficient_six_negative)
    (h 6 (Finset.mem_Icc.mpr ⟨by norm_num, hN⟩))

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem multiples_six_variation_le (M N : ℕ) (hMN : 6 * M ≤ N) :
    (∑ k ∈ Finset.Icc 1 M, 1 / Real.sqrt (6 * k)) ≤ coefficientVariation N := by
  let F := (Finset.Icc 1 M).image (fun k => 6 * k)
  have hsub : F ⊆ Finset.Icc 2 N := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    obtain ⟨h1, hM⟩ := Finset.mem_Icc.mp hk
    exact Finset.mem_Icc.mpr ⟨by omega, (Nat.mul_le_mul_left 6 hM).trans hMN⟩
  have hi : Function.Injective (fun k : ℕ => 6 * k) := by
    intro a b h
    dsimp only at h
    omega
  have hs : (∑ k ∈ Finset.Icc 1 M, 1 / Real.sqrt (6 * k)) =
      ∑ n ∈ F, |compensatedCoefficient n| := by
    rw [Finset.sum_image (fun a _ b _ h => hi h)]
    apply Finset.sum_congr rfl
    intro k _
    rw [coefficient_six_mul, abs_div, abs_neg, abs_one,
      abs_of_nonneg (Real.sqrt_nonneg _)]
  rw [hs]
  exact Finset.sum_le_sum_of_subset_of_nonneg hsub (fun n _ _ => abs_nonneg _)

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem coefficientVariation_lower (M N : ℕ) (hM : 1 ≤ M) (hMN : 6 * M ≤ N) :
    (M : ℝ) / Real.sqrt (6 * M) ≤ coefficientVariation N := by
  have hpos : 0 < (6 * M : ℝ) := by positivity
  have hl : (M : ℝ) / Real.sqrt (6 * M) ≤
      ∑ k ∈ Finset.Icc 1 M, 1 / Real.sqrt (6 * k) := by
    have he : (M : ℝ) / Real.sqrt (6 * M) =
        ∑ _k ∈ Finset.Icc 1 M, 1 / Real.sqrt (6 * M) := by
      simp [Nat.card_Icc, div_eq_mul_inv]
    rw [he]
    apply Finset.sum_le_sum
    intro k hk
    obtain ⟨hk1, hkM⟩ := Finset.mem_Icc.mp hk
    have hks : 0 < Real.sqrt (6 * k : ℝ) := Real.sqrt_pos.mpr (by positivity)
    exact one_div_le_one_div_of_le hks
      (Real.sqrt_le_sqrt (by exact_mod_cast Nat.mul_le_mul_left 6 hkM))
  exact hl.trans (multiples_six_variation_le M N hMN)

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
/-- Completing the actual raw storage square introduces this payment. A
uniform lower bound requires a separate uniform bound for that payment. -/
theorem completed_storage_square (w η z : ℝ) (hw : w ≠ 0) :
    w * z ^ 2 + η * z =
      w * (z + η / (2 * w)) ^ 2 - η ^ 2 / (4 * w) := by
  exact SourceKapitzaStorage.storage_complete_square hw z η

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem storage_lower (w η z : ℝ) (hw : 0 < w) :
    -(η ^ 2 / (4 * w)) ≤ w * z ^ 2 + η * z := by
  rw [completed_storage_square w η z hw.ne']
  have hs : 0 ≤ w * (z + η / (2 * w)) ^ 2 := mul_nonneg hw.le (sq_nonneg _)
  linarith

/-- The exact offset charged by completing the maintained source-storage
square. The raw terminal storage itself is already zero. -/
def squareShiftDebt (A s : ℝ) : ℝ :=
  sourceCorrector A s ^ 2 / (4 * Real.exp (s / 2))

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem squareShiftDebt_terminal (A : ℝ) (hA : 1 ≤ A) :
    squareShiftDebt A (2 * A) =
      4 * Real.exp A * (3 * endpointSlope A - 1 - endpointValue A) ^ 2 := by
  have hu := sourceCorrelation_upper_endpoint A (by linarith : 0 < A)
  have hw : Real.exp A ≠ 0 := (Real.exp_pos A).ne'
  unfold squareShiftDebt sourceCorrector sourceForcing affineTrend
  rw [hu]
  have ha : 2 * A / 2 = A := by ring
  rw [ha]
  field_simp
  ring

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
/-- Genuine endpoint sample bounds make the minimal square-completion debt
at least exponential. This is an obstruction to *uniformly paying that
offset*, not a counterexample to a signed arithmetic cap. -/
theorem squareShiftDebt_terminal_lower (A : ℝ) (hA : 1 ≤ A)
    (hp : |endpointValue A| ≤ 1 / 8) (hb : |endpointSlope A| ≤ 1 / 8) :
    Real.exp A ≤ squareShiftDebt A (2 * A) := by
  rw [squareShiftDebt_terminal A hA]
  obtain ⟨hp1, hp2⟩ := abs_le.mp hp
  obtain ⟨hb1, hb2⟩ := abs_le.mp hb
  have hx : 3 * endpointSlope A - 1 - endpointValue A ≤ -(1 / 2 : ℝ) := by
    linarith
  have hs : (1 / 4 : ℝ) ≤
      (3 * endpointSlope A - 1 - endpointValue A) ^ 2 := by nlinarith
  have hm := mul_nonneg (Real.exp_pos A).le (sub_nonneg.mpr hs)
  nlinarith

/-- The chronological signed shears applied to one coordinate pair. -/
def shearX (a : ℝ) (v : ℝ × ℝ) : ℝ × ℝ := (v.1 + a * v.2, v.2)
def shearY (a : ℝ) (v : ℝ × ℝ) : ℝ × ℝ := (v.1, v.2 + a * v.1)

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
theorem chronological_shears (a r s : ℝ) (ha : a ≠ 0) :
    shearX (a - 1) (shearY 1 (shearX (a⁻¹ - 1) (shearY (-a) (r, s)))) =
      (a * r, s / a) := by
  ext <;> dsimp [shearX, shearY] <;> field_simp <;> ring

set_option maxHeartbeats 80000 in
-- Preserve the original owner's bounded proof elaboration budget.
/-- Endpoint scaling preserves the *joint* reflected scalar. Separately
bounding the two factors is not the signed composition law. -/
theorem endpoint_bilinear_preserved (a r s : ℝ) (ha : a ≠ 0) :
    (a * r) * (s / a) = r * s := by
  field_simp

end FormalResearch.RiemannHypothesis.SourceSignedPortControls
```
