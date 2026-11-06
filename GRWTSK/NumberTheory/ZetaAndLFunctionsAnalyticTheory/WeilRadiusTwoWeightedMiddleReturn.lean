/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoWeightedMiddleStructure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoMiddleCutoffWeights
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedFiniteReturn

/-!
# Return the radius-two high floor from the paid inclusion matrix

The signed scatter map inserts modes 65 through the middle cutoff and
sets the scalar pole coordinate to zero. Congruence through this map
recovers the shifted trial energy and the complete remote charge. The
weighted cross covariance pays the literal receiving rows. One may use
upper reciprocal weights for those rows and a lower first distant
weight. The remaining premise is a nonnegative finite quadratic for
the resulting source matrix. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoWeightedMiddleReturn

open Matrix
open RadiusTwoWeightedMiddleStructure RadiusTwoSchurDisplacement RadiusTwoDisplacement
open OddModeDependentTail OddLiteralWindow OddBorderedExpansion OddBorderedFiniteReturn
open OddResidualSourceComparison OddResidualMajorant OddRemoteAllowanceMatrix OddSineForm
open OddHighComplement OddSchurAccounting
open GRWTSK.LinearAlgebra.SchurObserver
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The active physical coordinates, with modes 1 through 64 omitted. -/
def middleIndex (K : ℕ) (i : Fin (K - 64)) : Fin K := ⟨64 + i.val, by have := i.isLt; omega⟩

theorem middleIndex_injective (K : ℕ) : Function.Injective (middleIndex K) := by
  intro i j h
  have hv := congrArg Fin.val h
  apply Fin.ext
  dsimp only [middleIndex] at hv
  omega

private def mode {K : ℕ} (i : Fin K) : ℕ := i.val + 1
private def sign (n : ℕ) : ℝ := (-1 : ℝ)^n

private theorem sign_mul_self (n : ℕ) : sign n * sign n = 1 := by
  rw [← pow_two, sign, ← pow_mul, Nat.mul_comm, pow_mul]
  norm_num

private def scatter (K : ℕ) : Matrix (Fin K ⊕ Unit) (Fin (K - 64)) ℝ :=
  fun j i => if j = .inl (middleIndex K i) then sign (mode (middleIndex K i)) else 0

private def signed {K : ℕ} (u : Fin K → ℝ) (i : Fin (K - 64)) : ℝ :=
  sign (mode (middleIndex K i)) * u (middleIndex K i)

private theorem scatter_mulVec {K : ℕ} (u : Fin K → ℝ)
    (hzero : ∀ j, j.val < 64 → u j = 0) :
    (scatter K).mulVec (signed u) = Sum.elim u (fun _ => 0) := by
  funext j
  rcases j with j | ⟨⟩
  · by_cases hj : j.val < 64
    · have hn (i : Fin (K - 64)) : j ≠ middleIndex K i := by
        intro h
        have hv := congrArg Fin.val h
        dsimp only [middleIndex] at hv
        omega
      simp [Matrix.mulVec, dotProduct, scatter, hn, hzero j hj]
    · let i : Fin (K - 64) := ⟨j.val - 64, by have := j.isLt; omega⟩
      have hi : middleIndex K i = j := by
        apply Fin.ext
        dsimp only [middleIndex, i]
        omega
      rw [Matrix.mulVec, dotProduct, Finset.sum_eq_single i]
      · simp only [scatter, hi, ite_true, signed, Sum.elim_inl]
        rw [← mul_assoc, sign_mul_self, one_mul]
      · intro k _ hk
        have hne : j ≠ middleIndex K k := fun h =>
          hk (middleIndex_injective K (h.symm.trans hi.symm))
        simp [scatter, hne]
      · simp
  · simp [Matrix.mulVec, dotProduct, scatter]

private theorem vecMul_scatter {K : ℕ} (r : Fin K ⊕ Unit → ℝ) (i : Fin (K - 64)) :
    (r ᵥ* scatter K) i =
      r (.inl (middleIndex K i)) * sign (mode (middleIndex K i)) := by
  rw [Matrix.vecMul, dotProduct, Finset.sum_eq_single (.inl (middleIndex K i))]
  · simp [scatter]
  · intro j _ hj
    simp [scatter, hj]
  · simp

private theorem congruence_scatter {K : ℕ} (A : Matrix (Fin K ⊕ Unit) (Fin K ⊕ Unit) ℝ)
    (i j : Fin (K - 64)) :
    congruence (scatter K) A i j =
      sign (mode (middleIndex K i)) * A (.inl (middleIndex K i)) (.inl (middleIndex K j)) *
        sign (mode (middleIndex K j)) := by
  change (((scatter K)ᵀ * A) * scatter K) i j = _
  rw [Matrix.mul_apply, Finset.sum_eq_single (.inl (middleIndex K j))]
  · rw [Matrix.mul_apply, Finset.sum_eq_single (.inl (middleIndex K i))]
    · simp [scatter]
    · intro k _ hk
      simp [scatter, hk]
    · simp
  · intro k _ hk
    simp [scatter, hk]
  · simp

private theorem core_scatter (K : ℕ) :
    congruence (scatter K) (shiftedBlock (borderedSourceMatrix 2 K) poleShiftMetric (-3 / 10)) =
      parityCoreMatrix (fun i => mode (middleIndex K i)) + diagonal (fun _ => (-1 / 5 : ℝ)) := by
  ext i j
  rw [congruence_scatter, shiftedBordered_physicalEntry 2 (by norm_num)]
  by_cases h : i = j
  · subst j
    let m := mode (middleIndex K i)
    simp only [ite_true, Matrix.add_apply, Matrix.diagonal_apply_eq, parityCoreMatrix]
    change sign m * (literalCoreEntry 2 m m - (-3 / 10)) * sign m =
      parityCoreEntry m m + (-1 / 5)
    have hs : (-1 : ℝ) ^ (m + m) = 1 := by simpa only [sign, pow_add] using sign_mul_self m
    simp only [parityCoreEntry, hs, ite_true, one_mul]
    calc
      _ = (sign m * sign m) * (literalCoreEntry 2 m m - (-3 / 10)) := by ring
      _ = _ := by rw [sign_mul_self]; ring
  · have hi : middleIndex K i ≠ middleIndex K j := (middleIndex_injective K).ne h
    have hm : mode (middleIndex K i) ≠ mode (middleIndex K j) :=
      fun he => hi (Fin.ext (Nat.succ.inj he))
    simp only [hi, hm, ite_false, sub_zero, Matrix.add_apply, Matrix.diagonal_apply_ne _ h,
      add_zero, parityCoreMatrix, parityCoreEntry, sign, pow_add]
    simp only [mode]
    ring

private def inclusion {K : ℕ} (u : Fin K → ℝ) (n : ℕ) : ℝ :=
  if h : n - 1 < K then u ⟨n - 1,h⟩ else 0

private theorem inclusion_matches {K : ℕ} (u : Fin K → ℝ) (i : Fin K) :
    inclusion u (i.val + 1) = u i := by simp [inclusion, i.isLt]

private theorem sum_modes {K : ℕ} (f : ℕ → ℝ) :
    (∑ i : Fin K, f (i.val + 1)) = ∑ n ∈ Finset.Icc 1 K, f n := by
  rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range,
    Fin.sum_univ_eq_sum_range (fun i : ℕ => f (i + 1))]
  simp only [Nat.add_sub_cancel, Nat.add_comm 1]

private theorem parityEntry_symm {m n : ℕ} (hm : 0 < m) (hn : 0 < n) :
    parityCoreEntry m n = parityCoreEntry n m := by
  let f (b : Bool) := if b then m else n
  have h := parityCoreMatrix_isSymm f (fun b => by cases b <;> simpa [f] using ‹0 < _›)
  exact congrArg (fun A : Matrix Bool Bool ℝ => A false true) h.eq

private theorem receiving_eq {K m : ℕ} (hm : K < m) (u : Fin K → ℝ)
    (hzero : ∀ j, j.val < 64 → u j = 0) :
    (∑ i : Fin (K - 64), parityCoreEntry (mode (middleIndex K i)) m * signed u i) =
      sign m * literalAugmentedRow K 2 (inclusion u) 0 (-3 / 10) m := by
  let r : Fin K ⊕ Unit → ℝ := Sum.elim (fun i => literalCoreEntry 2 m (mode i)) (fun _ => 0)
  have hr : r ⬝ᵥ Sum.elim u (fun _ => 0) =
      literalAugmentedRow K 2 (inclusion u) 0 (-3 / 10) m := by
    rw [dotProduct, Fintype.sum_sum_type, literalAugmentedRow, mul_zero, add_zero,
      ← sum_modes]
    simp only [r, Sum.elim_inl, Sum.elim_inr, zero_mul, Finset.sum_const_zero, add_zero,
      inclusion_matches, mode]
    apply Finset.sum_congr rfl
    intro i _
    have hn : m ≠ i.val + 1 := by have := i.isLt; omega
    simp [hn, mul_comm]
  rw [← hr, ← scatter_mulVec u hzero, dotProduct_mulVec, dotProduct, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  have hpos : 0 < mode (middleIndex K i) := Nat.zero_lt_succ _
  rw [vecMul_scatter, parityEntry_symm hpos (Nat.zero_lt_of_lt hm)]
  have hn : m ≠ mode (middleIndex K i) := by
    have := (middleIndex K i).isLt
    unfold mode
    omega
  simp only [parityCoreEntry, hn, ite_false, sub_zero, r, Sum.elim_inl, pow_add, sign]
  ring

private theorem quad_sub {ι : Type*} [Fintype ι] (A B : Matrix ι ι ℝ) (v : ι → ℝ) :
    quadratic (A-B) v = quadratic A v - quadratic B v := by
  simp only [quadratic, sub_mulVec, dotProduct_sub]

private theorem covariance_quadratic {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (C : Matrix ι κ ℝ) (weight : κ → ℝ) (v : ι → ℝ) :
    quadratic (C * diagonal weight * Cᵀ) v = ∑ k, weight k * (Cᵀ.mulVec v k)^2 := by
  change quadratic (congruence Cᵀ (diagonal weight)) v = _
  rw [quadratic_congruence]
  simp only [quadratic, mulVec_diagonal, dotProduct]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The finite paid matrix at a receiving grid and distant lower weight. -/
def inclusionPaidMatrix (K L : ℕ) (s distant : ℝ) (weight : Fin (L - K) → ℝ) :
    Matrix (Fin (K - 64)) (Fin (K - 64)) ℝ :=
  sourcePaidMiddle (middleIndex K) (fun k => K + 1 + k.val) weight L s distant

/-- Positivity of the actual paid matrix proves the requested smaller high floor.
Outward reciprocal weights may be used in the finite and distant charges. -/
theorem highFloor_two_of_inclusionPaidMatrix {K L : ℕ}
    (hK : 344064 ≤ K) (hKL : K ≤ L) (s distant : ℝ) (hs : 0 < s)
    (hDpos : 0 < distant) (hD : distant ≤ radiusTwoMiddleWeight (L+1))
    (weight : Fin (L-K) → ℝ)
    (hW : ∀ k, (radiusTwoMiddleWeight (K+1+k.val))⁻¹ ≤ weight k)
    (hpaid : ∀ v, 0 ≤ quadratic (inclusionPaidMatrix K L s distant weight) v) :
    HighFloor 2 (-1 / 2) (1 / 5) 64 := by
  apply highFloor_two_of_weightedPaidMiddle (K := K) (M := K) (L := L) (J := L)
    hK le_rfl hKL le_rfl s hs inclusion inclusion_matches
  intro u hzero
  let v := signed u
  let C : Matrix (Fin (K-64)) (Fin (L-K)) ℝ := fun i k =>
    parityCoreEntry (mode (middleIndex K i)) (K+1+k.val)
  have hv : (scatter K).mulVec v = Sum.elim u (fun _ => 0) := scatter_mulVec u hzero
  have henergy := shiftedOddBorderedEnergy_finiteSine_eq_quadratic 2 (by norm_num) (-3 / 10) u 0
  rw [show shiftedOddBorderedEnergy 2 (-3 / 10) (finiteSine 2 u) 0 =
    shiftedOddCoreEnergy 2 (-3 / 10) (finiteSine 2 u) by simp [shiftedOddBorderedEnergy],
    ← hv, ← quadratic_congruence, core_scatter] at henergy
  have hremote := quadratic_completeRemoteMatrix L L 2 s (inclusion u) u 0 (inclusion_matches u)
  rw [← hv, ← quadratic_congruence] at hremote
  have hR : congruence (scatter K) (completeRemoteMatrix K L L 2 s) =
      parityRemote L s (middleIndex K) := by
    ext i j
    exact congruence_scatter _ i j
  rw [hR] at hremote
  have hC (k : Fin (L-K)) :
      Cᵀ.mulVec v k = sign (K+1+k.val) *
        literalAugmentedRow K 2 (inclusion u) 0 (-3 / 10) (K+1+k.val) := by
    change (∑ i, parityCoreEntry (mode (middleIndex K i)) (K+1+k.val) * signed u i) = _
    exact receiving_eq (by omega) u hzero
  have hcova := covariance_quadratic C weight v
  simp_rw [hC, mul_pow, pow_two (sign _), sign_mul_self, one_mul] at hcova
  have h := hpaid v
  change 0 ≤ quadratic
    ((parityCoreMatrix (fun i => mode (middleIndex K i)) + diagonal (fun _ => (-1 / 5 : ℝ))) -
      C * diagonal weight * Cᵀ - distant⁻¹ • parityRemote L s (middleIndex K)) v at h
  rw [quad_sub, quad_sub, quadratic_smul, ← henergy, hcova, hremote] at h
  have hfinite :
      (∑ n ∈ Finset.range (L - K),
        (literalAugmentedRow K 2 (inclusion u) 0 (-3 / 10) (K+1+n))^2 /
          radiusTwoMiddleWeight (K+1+n)) ≤
      ∑ k : Fin (L-K), weight k * (literalAugmentedRow K 2 (inclusion u) 0 (-3 / 10) (K+1+k.val))^2 := by
    rw [← Fin.sum_univ_eq_sum_range]
    apply Finset.sum_le_sum
    intro k _
    rw [div_eq_mul_inv, mul_comm]
    exact mul_le_mul_of_nonneg_right (hW k) (sq_nonneg _)
  have hremote0 : 0 ≤ completeRemoteAllowance K L L 2 (inclusion u) 0 s := by
    rw [← quadratic_completeRemoteMatrix L L 2 s (inclusion u) u 0 (inclusion_matches u)]
    exact (completeRemoteMatrix_posSemidef hKL L 2 s (by norm_num) hs).dotProduct_mulVec_nonneg _
  have hrem :
      completeRemoteAllowance K L L 2 (inclusion u) 0 s / radiusTwoMiddleWeight (L+1) ≤
        distant⁻¹ * completeRemoteAllowance K L L 2 (inclusion u) 0 s := by
    rw [mul_comm, ← div_eq_mul_inv]
    exact div_le_div_of_nonneg_left hremote0 hDpos hD
  simp only [inclusion_matches]
  linarith only [hfinite, hrem, h]

/-- A complete rounded chain and a source comparison paying its initial
error give the literal radius-two high floor. The margin in the comparison
is the reserve left after paying the initial source enclosure error. -/
theorem highFloor_two_of_roundedMiddleChain {K L : ℕ}
    (hK : 344064 ≤ K) (hKL : K ≤ L) (s distant : ℝ) (hs : 0 < s)
    (hDpos : 0 < distant) (hD : distant ≤ radiusTwoMiddleWeight (L+1))
    (weight : Fin (L-K) → ℝ)
    (hW : ∀ k, (radiusTwoMiddleWeight (K+1+k.val))⁻¹ ≤ weight k)
    (A : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
    (pivot error : ℕ → ℝ) (column : (n : ℕ) → Fin n → ℝ) (margin : ℝ)
    (hStep : ∀ n < K-64, 0 < pivot n ∧ 0 ≤ error n ∧
      ∀ x, -error n * ∑ i, (x i)^2 ≤
        quadratic (A (n+1) -
          GRWTSK.Algebra.LinearAlgebra.FiniteSchurResidualChain.reassemblePivot
            (pivot n) (column n) (A n)) x)
    (hBudget : ∑ n ∈ Finset.range (K-64), error n ≤ margin)
    (hSource : ∀ x : Fin (K-64) → ℝ, quadratic (A (K-64)) x + margin * ∑ i, (x i)^2 ≤
      quadratic (inclusionPaidMatrix K L s distant weight) x) :
    HighFloor 2 (-1 / 2) (1 / 5) 64 := by
  apply highFloor_two_of_inclusionPaidMatrix hK hKL s distant hs hDpos hD weight hW
  intro x
  have hChain := GRWTSK.Algebra.LinearAlgebra.FiniteSchurResidualChain.quadratic_lower_of_pivotChain
    A pivot error column (K-64) hStep x
  have hMass : 0 ≤ ∑ i, (x i)^2 := Finset.sum_nonneg (fun i _ => sq_nonneg (x i))
  have hPay := mul_le_mul_of_nonneg_right hBudget hMass
  linarith only [hChain, hPay, hSource x]

/-- Specialization to the rational receiving and distant weights of the
400000-mode candidate. The remaining conditions are the complete chain
checks, their cumulative budget, and the literal seed comparison. -/
theorem highFloor_two_of_roundedCandidateChain
    (A : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
    (pivot error : ℕ → ℝ) (column : (n : ℕ) → Fin n → ℝ) (margin : ℝ)
    (hStep : ∀ n < 399936, 0 < pivot n ∧ 0 ≤ error n ∧
      ∀ x, -error n * ∑ i, (x i)^2 ≤
        quadratic (A (n+1) -
          GRWTSK.Algebra.LinearAlgebra.FiniteSchurResidualChain.reassemblePivot
            (pivot n) (column n) (A n)) x)
    (hBudget : ∑ n ∈ Finset.range 399936, error n ≤ margin)
    (hSource : ∀ x : Fin 399936 → ℝ, quadratic (A 399936) x + margin * ∑ i, (x i)^2 ≤
      quadratic (inclusionPaidMatrix 400000 1200000 (1 / 4) (149 / 100) (fun _ => 100 / 39)) x) :
    HighFloor 2 (-1 / 2) (1 / 5) 64 :=
  highFloor_two_of_roundedMiddleChain (K := 400000) (L := 1200000)
    (by decide) (by decide) (1 / 4) (149 / 100) (by norm_num) (by norm_num)
    (RadiusTwoMiddleCutoffWeights.distantWeight_le (by decide))
    (fun _ => 100 / 39)
    (fun k => RadiusTwoMiddleCutoffWeights.receivingInverse_le (by omega))
    A pivot error column margin hStep hBudget hSource

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoWeightedMiddleReturn
