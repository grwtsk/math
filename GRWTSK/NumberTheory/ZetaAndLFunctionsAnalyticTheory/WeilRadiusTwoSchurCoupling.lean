/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoModes65And66
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier

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
open OddResidualMajorant

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

/-- Trial coefficients representing the pivot rows in the original sine basis. -/
def receivingTrialCoefficients (a b : ℝ) (n : ℕ) : ℝ :=
  if n = 65 then a - b * (mixedEntry / diagonal65) else if n = 66 then b else 0

private theorem literalAugmentedRow_receivingTrial {m : ℕ} (hm : 66 < m) (a b : ℝ) :
    literalAugmentedRow 66 2 (receivingTrialCoefficients a b) 0 (-3 / 10) m =
      a * literalCoreEntry 2 m 65 + b * pivotReceivingColumn m := by
  let term (n : ℕ) := receivingTrialCoefficients a b n *
    (literalCoreEntry 2 m n - (if m = n then (-3 / 10 : ℝ) else 0))
  have hsubset : ({65, 66} : Finset ℕ) ⊆ Finset.Icc 1 66 := by decide
  have hsupport (n : ℕ) (_ : n ∈ Finset.Icc 1 66) (hn : n ∉ ({65, 66} : Finset ℕ)) :
      term n = 0 := by
    have hn65 : n ≠ 65 := fun h => hn (by simp [h])
    have hn66 : n ≠ 66 := fun h => hn (by simp [h])
    simp [term, receivingTrialCoefficients, hn65, hn66]
  unfold literalAugmentedRow
  simp only [mul_zero, add_zero]
  change (∑ n ∈ Finset.Icc 1 66, term n) = _
  rw [← Finset.sum_subset hsubset hsupport]
  have hm65 : m ≠ 65 := by omega
  have hm66 : m ≠ 66 := by omega
  simp [term, receivingTrialCoefficients, pivotReceivingColumn, hm65, hm66]
  ring

/-- Enclose the whole weighted receiving Gram quadratic by its exact signed
finite sum and the complete remote allowance. The denominator prices every
remote mode using the original weight at the first omitted index. -/
theorem weightedReceivingGram_le_finite_add_remote {N L J : ℕ} (hN : 344064 ≤ N)
    (hNL : N ≤ L) (hLJ : L ≤ J) (a b s : ℝ) (hs : 0 < s) :
    weightedReceivingGram N a b ≤
      (∑ j ∈ Finset.range (L - N),
        (a * literalCoreEntry 2 (N + 1 + j) 65 +
          b * pivotReceivingColumn (N + 1 + j)) ^ 2 / radiusTwoMiddleWeight (N + 1 + j)) +
      completeRemoteAllowance 66 L J 2 (receivingTrialCoefficients a b) 0 s /
        radiusTwoMiddleWeight (L + 1) := by
  have hrow (j : ℕ) :
      literalAugmentedRow 66 2 (receivingTrialCoefficients a b) 0 (-3 / 10) (N + 1 + j) =
        a * literalCoreEntry 2 (N + 1 + j) 65 + b * pivotReceivingColumn (N + 1 + j) :=
    literalAugmentedRow_receivingTrial (by omega) a b
  have hweight (m : ℕ) (hm : 344065 ≤ m) : (1 / 5 : ℝ) ≤ radiusTwoMiddleWeight m :=
    modeWeight_two_threeTenths_bounds.1 m hm
  have hmono : Monotone radiusTwoMiddleWeight :=
    modeWeight_mono 2 (by norm_num) (-3 / 10) (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2)
  have hfloor : 0 < radiusTwoMiddleWeight (L + 1) :=
    (by norm_num : (0 : ℝ) < 1 / 5).trans_le (hweight _ (by omega))
  have hsq := summable_receivingCombination_sq (N := N) (by omega) a b
  have hprice : Summable (fun j : ℕ =>
      (literalAugmentedRow 66 2 (receivingTrialCoefficients a b) 0 (-3 / 10) (N + 1 + j)) ^ 2 /
        radiusTwoMiddleWeight (N + 1 + j)) := by
    refine Summable.of_nonneg_of_le ?_ ?_ (hsq.div_const (1 / 5))
    · intro j
      exact div_nonneg (sq_nonneg _) ((by norm_num : (0 : ℝ) ≤ 1 / 5).trans (hweight _ (by omega)))
    · intro j
      rw [hrow]
      exact div_le_div_of_nonneg_left (sq_nonneg _) (by norm_num) (hweight _ (by omega))
  have h := weightedLiteralResidual_le_finite_add_remote hNL (by omega : 66 ≤ L) (by omega) hLJ
    2 (by norm_num) (receivingTrialCoefficients a b) 0 (-3 / 10) s hs
    radiusTwoMiddleWeight (radiusTwoMiddleWeight (L + 1)) hfloor
    (fun m hm => hmono (show L + 1 ≤ m by omega)) hprice
  simpa only [weightedReceivingGram, hrow] using h

open LowSchur OddBoundarySignalBounds OddOutputTrace OddResidualRows

private theorem radiusTwoPrimeRatio_le : primeMass 2 / Real.pi ≤ 43 := by
  have hm : primeMass 2 ≤ 128 := by
    have h := primeMass_le_three_pow 2
    norm_num at h
    exact h
  apply (div_le_iff₀ Real.pi_pos).2
  linarith only [hm, Real.pi_gt_three]

private theorem radiusTwoBoundaryEntry_le {n : ℕ} (hn : 0 < n) :
    (n : ℝ) * boundarySignal 2 n ≤ 1 := by
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := by positivity
  have hpi : (9 : ℝ) ≤ Real.pi ^ 2 := by nlinarith [Real.pi_gt_three]
  calc
    _ ≤ (n : ℝ) * (2 / (4 * (n : ℝ)) + 2 ^ 2 / (Real.pi ^ 2 * (n : ℝ) ^ 2)) :=
      mul_le_mul_of_nonneg_left (boundarySignal_le 2 (by norm_num) hn) hnpos.le
    _ = 1 / 2 + 4 / (Real.pi ^ 2 * (n : ℝ)) := by
      field_simp [Real.pi_ne_zero, hnpos.ne']; ring
    _ ≤ 1 / 2 + 4 / 9 := by
      gcongr
      calc
        (9 : ℝ) ≤ Real.pi ^ 2 := hpi
        _ = Real.pi ^ 2 * 1 := (mul_one _).symm
        _ ≤ Real.pi ^ 2 * (n : ℝ) := by gcongr
    _ ≤ _ := by norm_num

private theorem abs_radiusTwoFirstTraceEntry_le {n : ℕ} (hn : 0 < n) :
    |firstTraceEntry 2 n| ≤ 44 := by
  have hsignal := boundarySignal_nonneg 2 (by norm_num) n
  have hprime : (2 / Real.pi) * |primeSignal 2 n| ≤ primeMass 2 / Real.pi := by
    calc
      _ ≤ (2 / Real.pi) * (primeMass 2 / 2) :=
        mul_le_mul_of_nonneg_left (abs_primeSignal_le 2 n) (by positivity)
      _ = _ := by ring
  unfold firstTraceEntry
  norm_num only [div_self (show (2 : ℝ) ≠ 0 by norm_num), neg_mul, one_mul]
  calc
    _ ≤ |-(n : ℝ) * boundarySignal 2 n| + |(2 / Real.pi) * primeSignal 2 n| := by
      simpa only [neg_mul] using
        abs_sub (-((n : ℝ) * boundarySignal 2 n)) ((2 / Real.pi) * primeSignal 2 n)
    _ = (n : ℝ) * boundarySignal 2 n + (2 / Real.pi) * |primeSignal 2 n| := by
      rw [neg_mul, abs_neg, abs_of_nonneg (mul_nonneg (Nat.cast_nonneg _) hsignal),
        abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 / Real.pi)]
    _ ≤ 1 + 43 := add_le_add (radiusTwoBoundaryEntry_le hn) (hprime.trans radiusTwoPrimeRatio_le)
    _ = _ := by norm_num

private theorem radiusTwoBoundaryError_bounds :
    0 ≤ boundaryErrorScale 2 ∧ boundaryErrorScale 2 ≤ 2 := by
  have htwo : Real.exp (-2) < 1 / 2 :=
    (Real.exp_lt_exp.mpr (by norm_num : (-2 : ℝ) < -1)).trans Real.exp_neg_one_lt_half
  have height : Real.exp (-8) < 1 / 2 :=
    (Real.exp_lt_exp.mpr (by norm_num : (-8 : ℝ) < -1)).trans Real.exp_neg_one_lt_half
  have hden : 0 < 1 - Real.exp (-8) := by linarith only [height]
  have hquot : Real.exp (-2) / (1 - Real.exp (-8)) ≤ 1 :=
    (div_le_iff₀ hden).2 (by linarith only [htwo, height])
  have hpi : (9 : ℝ) ≤ Real.pi ^ 2 := by nlinarith [Real.pi_gt_three]
  unfold boundaryErrorScale
  rw [show (-4 : ℝ) * 2 = -8 by norm_num]
  constructor
  · positivity
  calc
    _ ≤ (1 + 1) * ((2 : ℝ) ^ 2 / 9) := by gcongr
    _ ≤ _ := by norm_num

private theorem radiusTwoRemainderWeight_bounds {n : ℕ} (hn : n ∈ Finset.Icc 1 66) :
    0 ≤ remainderWeight 66 344064 2 n ∧ remainderWeight 66 344064 2 n ≤ 400000 := by
  have hnR : (n : ℝ) ≤ 66 := by exact_mod_cast (Finset.mem_Icc.mp hn).2
  have hsq : (n : ℝ) ^ 2 ≤ 66 ^ 2 := by gcongr
  have hsignal := boundarySignal_nonneg 2 (by norm_num) n
  have hprime := primeMass_nonneg 2
  have hr : (1 / 2 : ℝ) ≤ residualBuffer 66 344064 := by norm_num [residualBuffer]
  have hs : (1 / 2 : ℝ) ≤ squaredResidualBuffer 66 344064 := by norm_num [squaredResidualBuffer]
  have hrpos : 0 < residualBuffer 66 344064 := (by norm_num : (0 : ℝ) < 1 / 2).trans_le hr
  have hspos : 0 < squaredResidualBuffer 66 344064 := (by norm_num : (0 : ℝ) < 1 / 2).trans_le hs
  have hg : (n : ℝ) ^ 3 * boundarySignal 2 n ≤ 66 ^ 2 := by
    calc
      _ = (n : ℝ) ^ 2 * ((n : ℝ) * boundarySignal 2 n) := by ring
      _ ≤ (66 : ℝ) ^ 2 * 1 :=
        mul_le_mul hsq (radiusTwoBoundaryEntry_le (Finset.mem_Icc.mp hn).1)
          (by positivity) (by positivity)
      _ = _ := mul_one _
  unfold remainderWeight
  constructor
  · positivity
  calc
    _ ≤ (2 / 2 : ℝ) * 66 ^ 2 / (1 / 2) + 43 * 66 ^ 2 / (1 / 2) := by
      simp only [div_self (show (2 : ℝ) ≠ 0 by norm_num), one_mul]
      gcongr
      exact radiusTwoPrimeRatio_le
    _ ≤ _ := by norm_num

private theorem sum_receivingTrial {f : ℕ → ℝ → ℝ}
    (hf : ∀ n, f n 0 = 0) (a b : ℝ) :
    (∑ n ∈ Finset.Icc 1 66, f n (receivingTrialCoefficients a b n)) =
      f 65 (a - b * (mixedEntry / diagonal65)) + f 66 b := by
  have hsubset : ({65, 66} : Finset ℕ) ⊆ Finset.Icc 1 66 := by decide
  rw [← Finset.sum_subset hsubset]
  · simp [receivingTrialCoefficients]
  · intro n _ hn
    have h65 : n ≠ 65 := fun h => hn (by simp [h])
    have h66 : n ≠ 66 := fun h => hn (by simp [h])
    simp [receivingTrialCoefficients, h65, h66, hf]

private theorem twoTrace_sq_le {p q B : ℝ} (hB : 0 ≤ B) (hp : |p| ≤ B) (hq : |q| ≤ B)
    (x y : ℝ) : (p * x + q * y) ^ 2 ≤ 2 * B ^ 2 * (x ^ 2 + y ^ 2) := by
  have hp' : p ^ 2 ≤ B ^ 2 := sq_le_sq.mpr (by rwa [abs_of_nonneg hB])
  have hq' : q ^ 2 ≤ B ^ 2 := sq_le_sq.mpr (by rwa [abs_of_nonneg hB])
  calc
    _ ≤ 2 * ((p * x) ^ 2 + (q * y) ^ 2) := by nlinarith only [sq_nonneg (p * x - q * y)]
    _ = 2 * (p ^ 2 * x ^ 2 + q ^ 2 * y ^ 2) := by ring
    _ ≤ 2 * (B ^ 2 * x ^ 2 + B ^ 2 * y ^ 2) := by gcongr
    _ = _ := by ring

private theorem completeRemoteAllowance_receiving_le (a b : ℝ) :
    completeRemoteAllowance 66 344064 344064 2 (receivingTrialCoefficients a b) 0 1 ≤
      (9 / 100 : ℝ) * ((a - b * (mixedEntry / diagonal65)) ^ 2 + b ^ 2) := by
  let x := receivingTrialCoefficients a b
  let c := a - b * (mixedEntry / diagonal65)
  let mass := c ^ 2 + b ^ 2
  let w := remainderWeight 66 344064 2
  have hf : (firstTrace 66 2 x 0) ^ 2 ≤ 2 * 44 ^ 2 * mass := by
    unfold firstTrace
    rw [mul_zero, sub_zero, sum_receivingTrial
      (f := fun n z => (-1 : ℝ) ^ n * z * firstTraceEntry 2 n) (by simp)]
    have h65 := abs_radiusTwoFirstTraceEntry_le (n := 65) (by decide)
    have h66 := abs_radiusTwoFirstTraceEntry_le (n := 66) (by decide)
    change ((-1 : ℝ) ^ (65 : ℕ) * c * firstTraceEntry 2 65 +
      (-1 : ℝ) ^ (66 : ℕ) * b * firstTraceEntry 2 66) ^ 2 ≤ _
    calc
      _ = (-(firstTraceEntry 2 65) * c + firstTraceEntry 2 66 * b) ^ 2 := by
        norm_num
        ring
      _ ≤ _ := twoTrace_sq_le (by norm_num) (by rwa [abs_neg]) h66 c b
  have hd : (derivativeTrace 66 x) ^ 2 ≤ 2 * 66 ^ 2 * mass := by
    unfold derivativeTrace
    rw [sum_receivingTrial (f := fun n z => (-1 : ℝ) ^ n * (n : ℝ) * z) (by simp)]
    have h := twoTrace_sq_le (B := 66) (p := -65) (q := 66) (by norm_num)
      (by norm_num) (by norm_num) c b
    norm_num at h ⊢
    simpa only [neg_mul] using h
  have hw : ∀ n ∈ Finset.Icc 1 66, 0 ≤ w n ∧ w n ≤ 400000 :=
    fun _ hn => radiusTwoRemainderWeight_bounds hn
  have hws : (∑ n ∈ Finset.Icc 1 66, w n) ≤ 66 * 400000 := by
    calc
      _ ≤ ∑ _ ∈ Finset.Icc (1 : ℕ) 66, (400000 : ℝ) :=
        Finset.sum_le_sum (fun n hn => (hw n hn).2)
      _ = _ := by norm_num
  have hwx : (∑ n ∈ Finset.Icc 1 66, w n * (x n) ^ 2) ≤ 400000 * mass := by
    rw [sum_receivingTrial (f := fun n z => w n * z ^ 2) (by simp)]
    calc
      _ ≤ 400000 * c ^ 2 + 400000 * b ^ 2 :=
        add_le_add (mul_le_mul_of_nonneg_right (hw 65 (by decide)).2 (sq_nonneg _))
          (mul_le_mul_of_nonneg_right (hw 66 (by decide)).2 (sq_nonneg _))
      _ = _ := by unfold mass; ring
  have hdp : 0 ≤ 1 / 2 + primeMass 2 / Real.pi := by
    have := primeMass_nonneg 2
    positivity
  have hdp' : 1 / 2 + primeMass 2 / Real.pi ≤ 44 := by
    linarith only [radiusTwoPrimeRatio_le]
  have hr :
      remainderQuadraticAllowance 66 344064 2 x 0 ≤
        3 * ((66 * 400000) * (400000 * mass) + 2 ^ 2 * (2 * 66 ^ 2 * mass)) := by
    unfold remainderQuadraticAllowance
    simp only [div_self (show (2 : ℝ) ≠ 0 by norm_num), one_mul, zero_pow (by decide : 2 ≠ 0),
      mul_zero, add_zero]
    change 3 * ((∑ n ∈ Finset.Icc 1 66, w n) * (∑ n ∈ Finset.Icc 1 66, w n * (x n) ^ 2) +
      boundaryErrorScale 2 ^ 2 * derivativeTrace 66 x ^ 2) ≤ _
    have hnonneg : 0 ≤ ∑ n ∈ Finset.Icc 1 66, w n * (x n) ^ 2 :=
      Finset.sum_nonneg (fun n hn => mul_nonneg (hw n hn).1 (sq_nonneg _))
    have he := (sq_le_sq₀ radiusTwoBoundaryError_bounds.1 (by norm_num)).2
      radiusTwoBoundaryError_bounds.2
    gcongr
  change completeRemoteAllowance 66 344064 344064 2 x 0 1 ≤ 9 / 100 * mass
  unfold completeRemoteAllowance
  simp only [Nat.sub_self, Finset.range_zero, Finset.sum_empty, zero_add, inv_one]
  calc
    _ ≤ (1 + 1 : ℝ) * (2 * (2 * 44 ^ 2 * mass) / 344064 +
        2 * 44 ^ 2 * (2 * 66 ^ 2 * mass) / (3 * 344064 ^ 3)) +
        (1 + 1) * (3 * ((66 * 400000) * (400000 * mass) + 2 ^ 2 * (2 * 66 ^ 2 * mass))) /
          (5 * 344064 ^ 5) := by
      norm_num only [Nat.cast_ofNat]
      have hprice := (sq_le_sq₀ hdp (by norm_num)).2 hdp'
      norm_num at hf hd hr hprice
      gcongr
      linarith only [hprice]
    _ ≤ _ := by
      have hmass : 0 ≤ mass := add_nonneg (sq_nonneg _) (sq_nonneg _)
      linarith only [hmass]

/-- The exact signed columns from modes 65 and 66 pay at most a quarter of the
pivot energy on the receiving modes strictly above 344064. The canonical
remote allowance bounds both signed traces and the full remainder. -/
theorem weightedReceivingGram_344064_le (a b : ℝ) :
    weightedReceivingGram 344064 a b ≤ (1 / 4 : ℝ) *
      (diagonal65 * a ^ 2 + secondPivot * b ^ 2) := by
  have h := weightedReceivingGram_le_finite_add_remote (N := 344064) (L := 344064)
    (J := 344064) le_rfl le_rfl le_rfl a b 1 (by norm_num)
  simp only [Nat.sub_self, Finset.range_zero, Finset.sum_empty, zero_add] at h
  have hfloor : (1 / 5 : ℝ) ≤ radiusTwoMiddleWeight (344064 + 1) :=
    modeWeight_two_threeTenths_bounds.1 _ (by decide)
  have hpos : 0 < radiusTwoMiddleWeight (344064 + 1) :=
    (by norm_num : (0 : ℝ) < 1 / 5).trans_le hfloor
  let mass := (a - b * (mixedEntry / diagonal65)) ^ 2 + b ^ 2
  calc
    _ ≤ _ := h
    _ ≤ ((9 / 100 : ℝ) * mass) / radiusTwoMiddleWeight (344064 + 1) :=
      div_le_div_of_nonneg_right (completeRemoteAllowance_receiving_le a b) hpos.le
    _ ≤ ((9 / 100 : ℝ) * mass) / (1 / 5) :=
      div_le_div_of_nonneg_left (by unfold mass; positivity) (by norm_num) hfloor
    _ = (1 / 4 : ℝ) * (9 / 5 * mass) := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (pivotEnergy_ge a b) (by norm_num)

/-- Eliminating modes 65 and 66 consumes at most one quarter of the original
shifted core energy on odd tests supported in sine modes strictly above 344064. -/
theorem schurPayment_le_quarter_core_344064
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hhead : ∀ j < 344064, sineCoefficient 2 g (j + 1) = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    schurPayment g ≤ (1 / 4 : ℝ) * shiftedOddCoreEnergy 2 (-3 / 10) g :=
  schurPayment_le_mul_core_of_gram_bound (N := 344064) le_rfl
    (by norm_num) weightedReceivingGram_344064_le hg hgm hgo hgs hhead henergy

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66
