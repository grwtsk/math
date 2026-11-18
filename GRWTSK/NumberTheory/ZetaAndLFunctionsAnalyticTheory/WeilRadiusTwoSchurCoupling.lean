/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoModes65And66
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail

/-!
# Signed sine coefficients of the radius-two Schur coupling

Polarized Parseval pairs the original shifted mode output with the receiving
function. Above the receiving cutoff an eliminated column contributes its
literal signed entry, including the full gamma term and prime-power sum.
This supplies the two couplings in `RadiusTwoModes65And66.schurPayment`
as convergent series for a weighted receiving-tail estimate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66

open OddConcreteResidual OddModeDependentTail OddResidualSourceComparison OddSineParseval
open OddHighComplement OddRootProjection OddWrapEnergy

private theorem highCoefficient_eq {N n : ℕ} (hn : n ≤ N) (j : ℕ) :
    sineCoefficient 2 (modeOutput n) (N + 1 + j) =
      literalCoreEntry 2 (N + 1 + j) n := by
  change sineCoefficient 2 (coreSineOutput 2 (-3 / 10) n) (N + 1 + j) = _
  rw [show N + 1 + j = (N + j) + 1 by omega,
    sineCoefficient_coreSineOutput 2 (by norm_num), ite_eq_right (by omega), sub_zero]

/-- The signed pairing in the Schur payment is the entire literal column
paired with the receiving sine coefficients. When the trial index is
within the removed head, the diagonal shift contributes no term. -/
theorem hasSum_coupling_high {N n : ℕ} (hn : n ≤ N) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hhead : ∀ j < N, sineCoefficient 2 g (j + 1) = 0) :
    HasSum (fun j : ℕ => sineCoefficient 2 g (N + 1 + j) *
      literalCoreEntry 2 (N + 1 + j) n) (coupling n g) := by
  have hs := highSine_pair_hasSum 2 (by norm_num) (N := N) (f := modeOutput n)
    (coreSineOutput_memLp 2 (by norm_num) (-3 / 10) n) hg
    (coreSineOutput_odd 2 (-3 / 10) n) hgo
    (Filter.Eventually.of_forall (fun _ ht => coreSineOutput_support 2 (-3 / 10) n ht))
    hgs hhead
  have hpair : (∫ t : ℝ, modeOutput n t * g t) = coupling n g := by
    unfold coupling
    simp only [mul_comm]
  rw [hpair] at hs
  apply hs.congr_fun
  intro j
  rw [highCoefficient_eq hn j, mul_comm]

private theorem summable_highColumn_sq {N n : ℕ} (hn : n ≤ N) :
    Summable (fun j : ℕ => literalCoreEntry 2 (N + 1 + j) n ^ 2) := by
  have h := hasSum_source_sineCoefficient_sq_ae (f := modeOutput n) 2 (by norm_num)
    (coreSineOutput_memLp 2 (by norm_num) (-3 / 10) n)
    (Filter.Eventually.of_forall (coreSineOutput_odd 2 (-3 / 10) n))
    (Filter.Eventually.of_forall (fun _ ht => coreSineOutput_support 2 (-3 / 10) n ht))
  have htail := (summable_nat_add_iff N).2 h.summable
  refine htail.congr (fun j => ?_)
  rw [show j + N + 1 = N + 1 + j by omega, highCoefficient_eq hn j]

/-- The second receiving column after eliminating the first pivot. -/
def pivotReceivingColumn (m : ℕ) : ℝ :=
  literalCoreEntry 2 m 66 - (mixedEntry / diagonal65) * literalCoreEntry 2 m 65

/-- Weighted Gram quadratic of the signed receiving columns in pivot coordinates. -/
def weightedReceivingGram (N : ℕ) (a b : ℝ) : ℝ :=
  ∑' j : ℕ, (a * literalCoreEntry 2 (N + 1 + j) 65 +
    b * pivotReceivingColumn (N + 1 + j)) ^ 2 / radiusTwoMiddleWeight (N + 1 + j)

private theorem summable_receivingCombination_sq {N : ℕ} (hN : 66 ≤ N) (a b : ℝ) :
    Summable (fun j : ℕ => (a * literalCoreEntry 2 (N + 1 + j) 65 +
      b * pivotReceivingColumn (N + 1 + j)) ^ 2) := by
  let c := a - b * (mixedEntry / diagonal65)
  have h65 := (summable_highColumn_sq (n := 65) (show 65 ≤ N by omega)).mul_left (c ^ 2)
  have h66 := (summable_highColumn_sq (n := 66) hN).mul_left (b ^ 2)
  refine Summable.of_nonneg_of_le (fun _ => sq_nonneg _) ?_ ((h65.add h66).mul_left 2)
  intro j
  let r := literalCoreEntry 2 (N + 1 + j) 65
  let s := literalCoreEntry 2 (N + 1 + j) 66
  change (a * r + b * pivotReceivingColumn (N + 1 + j)) ^ 2 ≤ 2 * (c ^ 2 * r ^ 2 + b ^ 2 * s ^ 2)
  have h : a * r + b * pivotReceivingColumn (N + 1 + j) = c * r + b * s := by
    unfold c pivotReceivingColumn r s
    ring
  rw [h]
  nlinarith only [sq_nonneg (c * r - b * s)]

/-- Domination of the signed weighted Gram quadratic by the two pivot
energies bounds the exact Schur payment against the original receiving core.
The positivity cutoff is that of the checked radius-two weights. -/
theorem schurPayment_le_mul_core_of_gram_bound {N : ℕ} (hN : 344064 ≤ N)
    {κ : ℝ} (hκ : 0 < κ)
    (hgram : ∀ a b : ℝ, weightedReceivingGram N a b ≤
      κ * (diagonal65 * a ^ 2 + secondPivot * b ^ 2))
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hhead : ∀ j < N, sineCoefficient 2 g (j + 1) = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    schurPayment g ≤ κ * shiftedOddCoreEnergy 2 (-3 / 10) g := by
  let u := coupling 65 g
  let v := coupling 66 g - mixedEntry * u / diagonal65
  let coeff := fun j : ℕ => sineCoefficient 2 g (N + 1 + j)
  let weight := fun j : ℕ => radiusTwoMiddleWeight (N + 1 + j)
  have hs65 := hasSum_coupling_high (n := 65) (show 65 ≤ N by omega) hg hgo hgs hhead
  have hs66 := hasSum_coupling_high (n := 66) (show 66 ≤ N by omega) hg hgo hgs hhead
  obtain ⟨hsEnergy, hEnergy⟩ :=
    shiftedOddCoreEnergy_two_ge_weightedTail (-3 / 10) hgm hg hgo hgs hhead henergy
  have hcost (a b : ℝ) :
      2 * (a * u + b * v) ≤ shiftedOddCoreEnergy 2 (-3 / 10) g + weightedReceivingGram N a b := by
    let c := a - b * (mixedEntry / diagonal65)
    let row := fun j : ℕ => a * literalCoreEntry 2 (N + 1 + j) 65 +
      b * pivotReceivingColumn (N + 1 + j)
    have hval : -(c * coupling 65 g + b * coupling 66 g) = -(a * u + b * v) := by
      unfold c u v
      simp only [div_eq_mul_inv]
      ring
    have hpair : HasSum (fun j => -(row j) * coeff j) (-(a * u + b * v)) := by
      have h := ((hs65.mul_left c).add (hs66.mul_left b)).neg
      rw [hval] at h
      refine h.congr_fun (fun j => ?_)
      dsimp [row, coeff, c, pivotReceivingColumn]
      ring
    have hsq : Summable (fun j : ℕ => (-(row j)) ^ 2) := by
      simpa only [neg_sq, row] using summable_receivingCombination_sq (show 66 ≤ N by omega) a b
    have hweight (j : ℕ) : (1 / 5 : ℝ) ≤ weight j :=
      modeWeight_two_threeTenths_bounds.1 _ (by omega)
    have hsE : Summable (fun j => weight j * coeff j ^ 2) := hsEnergy
    obtain ⟨_, h⟩ := weightedCompletion_tsum (floor := 1 / 5)
      (by norm_num) hweight hsE hpair.summable hsq
    rw [hpair.tsum_eq] at h
    simp only [neg_sq] at h
    change -weightedReceivingGram N a b ≤ (∑' j, weight j * coeff j ^ 2) +
      2 * -(a * u + b * v) at h
    change (∑' j, weight j * coeff j ^ 2) ≤ _ at hEnergy
    linarith only [h, hEnergy]
  let a := u / (κ * diagonal65)
  let b := v / (κ * secondPivot)
  have hcharge : a * u + b * v = schurPayment g / κ := by
    unfold a b v u schurPayment
    field_simp [hκ.ne', diagonal65_pos.ne', secondPivot_pos.ne']
  have hpivot : κ * (diagonal65 * a ^ 2 + secondPivot * b ^ 2) = schurPayment g / κ := by
    unfold a b v u schurPayment
    field_simp [hκ.ne', diagonal65_pos.ne', secondPivot_pos.ne']
  have h := hcost a b
  have hb := hgram a b
  rw [hcharge] at h
  rw [hpivot] at hb
  rw [mul_comm κ]
  exact (div_le_iff₀ hκ).1 (by linarith only [h, hb])

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66
