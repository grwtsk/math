/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoWeightedMiddleReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSeedCovariance
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSeedError

/-!
# Normalized source coefficients for the radius-two middle seed

Rewrite the literal parity-conjugated middle matrix in the normalized
variables used by the dyadic candidate. Subtracting the total receiving
weight times the signed signal from the second skew generator preserves
the matrix. The normalized covariance then uses the separated source
indices directly. The remote diagonal keeps every physical mode in its
price, including modes omitted from the trial.

The coefficient error budget feeds the reserved margin of the rounded
chain. Concrete source coefficient comparisons and all pivot steps are
separate. Independent mathematical review and novelty assessment are
pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateSeed

open Matrix
open RadiusTwoDisplacement RadiusTwoWeightedMiddleStructure RadiusTwoWeightedMiddleReturn
open RadiusTwoSeedError RadiusTwoSeedCovariance
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.StructuredSchurPivotResidual

/-- The actual physical mode of a retained coordinate after excluding modes 1 through 64. -/
def mode (K : ℕ) (i : Fin (K-64)) : ℕ := (middleIndex K i).val + 1

/-- The actual receiving mode of a covariance coordinate. -/
def receiving (K L : ℕ) (k : Fin (L-K)) : ℕ := K+1+k.val

private theorem mode_pos {K : ℕ} (i : Fin (K-64)) : 0 < mode K i := by
  unfold mode
  omega

private theorem mode_lt_receiving {K L : ℕ} (i : Fin (K-64)) (k : Fin (L-K)) :
    mode K i < receiving K L k := by
  have hi := (middleIndex K i).isLt
  unfold mode receiving
  omega

private theorem core_eq_cross {m n : ℕ} (hm : 0 < m) (h : m < n) :
    parityCoreEntry m n = cross m n (displacementSignal m) (displacementSignal n) := by
  have hn : 0 < n := by omega
  have hD := parityCoreEntry_displacement hm hn
  have hmR : (m : ℝ) < n := by exact_mod_cast h
  have hnR : (0 : ℝ) < n := by exact_mod_cast hn
  have hne : (m : ℝ)^2 - (n : ℝ)^2 ≠ 0 := by
    apply ne_of_lt
    nlinarith [mul_pos (sub_pos.mpr hmR) (show 0 < (m : ℝ) + n by positivity)]
  apply (eq_div_iff hne).2
  rw [mul_comm]
  convert hD using 1

/-- The four scalar fields of the two skew pairs and the diagonal. -/
structure Coefficients (ι : Type*) where
  diag : ι → ℝ
  first : ι → ℝ
  signal : ι → ℝ
  normalizedSecond : ι → ℝ

/-- Literal coefficients in the gauge used for seed comparisons. -/
def source {K L : ℕ} (s distant : ℝ) (weight : Fin (L-K) → ℝ) :
    Coefficients (Fin (K-64)) :=
  let m := mode K
  let n := receiving K L
  let u := displacementSignal ∘ m
  let U := displacementSignal ∘ n
  let C := fun i k => cross (m i) (n k) (u i) (U k)
  let a := distant⁻¹ * remoteFirst L s
  let d := distant⁻¹ * remoteDerivative L s
  ⟨fun i => parityCoreEntry (m i) (m i) - 1/5 -
      (∑ k, weight k * (C i k)^2) - a*(u i)^2 - d*(m i : ℝ)^2 -
      distant⁻¹ * remoteDiag K L s (m i),
    fun i => u i - (∑ k, weight k * C i k * U k) + d*(m i : ℝ)^3,
    u,
    fun i => (∑ k, weight k * normalizedCross (m i) (n k) (u i) (U k)) +
      a * (m i : ℝ) * u i⟩

/-- The normalized seed matrix is exactly the literal paid inclusion matrix. -/
theorem inclusionPaidMatrix_eq_seedMatrix (K L : ℕ) (s distant : ℝ)
    (weight : Fin (L-K) → ℝ) :
    let literal := source (K := K) s distant weight
    inclusionPaidMatrix K L s distant weight =
      seedMatrix (fun i => mode K i) literal.diag literal.first literal.signal literal.normalizedSecond := by
  dsimp only
  let m := mode K
  let n := receiving K L
  let u := displacementSignal ∘ m
  let U := displacementSignal ∘ n
  let C := fun i k => cross (m i) (n k) (u i) (U k)
  let α := distant⁻¹ * remoteFirst L s
  let δ := distant⁻¹ * remoteDerivative L s
  let B := fun i => (∑ k, C i k * (weight k * (n k : ℝ))) + α * (m i : ℝ)^2 * u i
  let literal := source (K := K) s distant weight
  have hm (i : Fin (K-64)) : 0 < (m i : ℝ) := by exact_mod_cast mode_pos i
  have hC (i : Fin (K-64)) (k : Fin (L-K)) : parityCoreEntry (m i) (n k) = C i k :=
    core_eq_cross (mode_pos i) (mode_lt_receiving i k)
  have hNorm (i : Fin (K-64)) : literal.normalizedSecond i =
      (B i - (∑ k, weight k) * u i) / (m i : ℝ) := by
    have hSep (k : Fin (L-K)) : (m i : ℝ)^2 - (n k : ℝ)^2 ≠ 0 := by
      have hlt : (m i : ℝ) < n k := by exact_mod_cast mode_lt_receiving i k
      exact ne_of_lt (sub_neg.mpr (pow_lt_pow_left₀ hlt (hm i).le (by decide)))
    have hN := normalized_covariance_generator (m i : ℝ) (u i)
      (fun k => (n k : ℝ)) U weight (C i) (hm i) hSep (fun k => by unfold C cross; ring)
    unfold literal source B
    change (∑ k, weight k * normalizedCross (m i) (n k) (u i) (U k)) + α * (m i : ℝ) * u i = _
    rw [show ((∑ k, C i k * (weight k * (n k : ℝ))) + α * (m i : ℝ)^2 * u i -
          (∑ k, weight k) * u i) / (m i : ℝ) =
        ((∑ k, C i k * weight k * (n k : ℝ)) - u i * (∑ k, weight k)) / (m i : ℝ) +
          α * (m i : ℝ) * u i by
      have hSum : (∑ k, C i k * (weight k * (n k : ℝ))) =
          ∑ k, C i k * weight k * (n k : ℝ) := by simp only [mul_assoc]
      rw [hSum]
      field_simp [(hm i).ne']
      ring]
    rw [hN]
    congr 1
    apply Finset.sum_congr rfl
    intro k _
    unfold normalizedCross
    ring
  change _ = seedMatrix (fun i => (m i : ℝ)) literal.diag literal.first u literal.normalizedSecond
  rw [show literal.normalizedSecond = _ from funext hNorm,
    seedMatrix_gauge _ _ _ _ _ _ hm]
  unfold inclusionPaidMatrix
  rw [sourcePaidMiddle_eq_cauchyMatrix _ (middleIndex_injective K) _
    (fun k => by have := k.isLt; omega) weight L s distant]
  let P : Matrix (Fin (K-64)) (Fin (L-K)) ℝ := fun i k =>
    parityCoreEntry (m i) (n k)
  change cauchyMatrix (fun i => (m i : ℝ)^2)
    (fun i => parityCoreEntry (m i) (m i) - 1/5 -
      (∑ k, weight k * (P i k)^2) - α*(u i)^2 - δ*(m i : ℝ)^2 -
      distant⁻¹ * remoteDiag K L s (m i))
    (fun i k => if k = 0 then (m i : ℝ) else u i)
    (fun i k => if k = 0 then u i - P.mulVec (fun k => weight k * U k) i +
      δ*(m i : ℝ)^2*(m i : ℝ) else
      P.mulVec (fun k => weight k * (n k : ℝ)) i + α*(m i : ℝ)^2*u i) =
    cauchyMatrix (fun i => (m i : ℝ)^2) literal.diag
      (fun i k => if k = 0 then (m i : ℝ) else u i)
      (fun i k => if k = 0 then literal.first i else B i)
  have hP : P = C := funext fun i => funext fun k => hC i k
  rw [hP]
  have hA (i : Fin (K-64)) :
      Matrix.mulVec C (fun k => weight k * U k) i = ∑ k, weight k * C i k * U k := by
    simp only [Matrix.mulVec, dotProduct]
    apply Finset.sum_congr rfl
    intro k _
    ring
  congr 1
  funext i k
  split_ifs
  · rw [hA]
    change _ = u i - (∑ k, weight k * C i k * U k) + δ * (m i : ℝ)^3
    ring
  · rfl

open OddLiteralWindow

private theorem concrete_mode (i : Fin 399936) : mode 400000 i = 65 + i.val := by
  simp only [mode, middleIndex]
  omega

/-- The fixed source coefficients for the candidate's actual receiving weights. -/
def candidateSource : Coefficients (Fin 399936) :=
  source (K := 400000) (L := 1200000) (1/4) (149/100) (fun _ => 100/39)

/-- Scalar error budgets sufficient to charge the source comparison. -/
structure SeedComparison (c : Coefficients (Fin 399936)) : Prop where
  diag : ∀ i, |candidateSource.diag i - c.diag i| ≤ 1/100
  first : ∀ i, |candidateSource.first i - c.first i| ≤ 9/10000
  signal : ∀ i, |candidateSource.signal i - c.signal i| ≤ 1/1000000
  normalizedSecond : ∀ i, |candidateSource.normalizedSecond i - c.normalizedSecond i| ≤ 1/20000
  signalMagnitude : ∀ i, |candidateSource.signal i| ≤ 9
  secondMagnitude : ∀ i, |candidateSource.normalizedSecond i| ≤ 440

/-- The seed before reserving the diagonal margin for the pivot chain. -/
def candidateMatrix (c : Coefficients (Fin 399936)) : Matrix (Fin 399936) (Fin 399936) ℝ :=
  seedMatrix (fun i => mode 400000 i) c.diag c.first c.signal c.normalizedSecond

/-- The specified scalar comparisons charge at most 61/1000 of the mass. -/
theorem candidateMatrix_error {c : Coefficients (Fin 399936)} (h : SeedComparison c)
    (x : Fin 399936 → ℝ) :
    |quadratic (inclusionPaidMatrix 400000 1200000 (1/4) (149/100) (fun _ => 100/39)) x -
      quadratic (candidateMatrix c) x| ≤ (61/1000) * ∑ i, (x i)^2 := by
  rw [inclusionPaidMatrix_eq_seedMatrix]
  change |quadratic (candidateMatrix candidateSource) x - quadratic (candidateMatrix c) x| ≤ _
  let m : Fin 399936 → ℝ := fun i => mode 400000 i
  have hm (i : Fin 399936) : 0 < m i := by
    change (0 : ℝ) < (mode 400000 i : ℝ)
    exact_mod_cast mode_pos (K := 400000) i
  have hmInj : Function.Injective m := by
    intro i j he
    change (mode 400000 i : ℝ) = (mode 400000 j : ℝ) at he
    have he' : mode 400000 i = mode 400000 j := by exact_mod_cast he
    rw [concrete_mode, concrete_mode] at he'
    exact Fin.ext (by omega)
  have hH (i : Fin 399936) : (∑ j : Fin 399936, (|m i - m j|)⁻¹) ≤ 28 := by
    simpa only [m, concrete_mode] using distanceRow_le_28 (by decide : 399936 ≤ 400000) 65 i
  have hErr := abs_seedQuadratic_sub_le m
    candidateSource.diag candidateSource.first candidateSource.signal candidateSource.normalizedSecond
    c.diag c.first c.signal c.normalizedSecond
    (1/100) (9/10000) (1/1000000) (1/20000) 9 440 28 hm hmInj
    h.diag h.first h.signal h.normalizedSecond h.signalMagnitude h.secondMagnitude hH x
  exact hErr.trans (mul_le_mul_of_nonneg_right (by norm_num)
    (Finset.sum_nonneg fun _ _ => sq_nonneg _))

/-- Checked scalar budgets and a complete rounded chain can spend
disjoint parts of the candidate's exact 1/10 diagonal reserve. -/
theorem highFloor_two_of_checkedSeed
    (A : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
    (pivot error : ℕ → ℝ) (column : (n : ℕ) → Fin n → ℝ)
    (c : Coefficients (Fin 399936)) (h : SeedComparison c)
    (hInit : A 399936 + (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
      candidateMatrix c)
    (hStep : ∀ n < 399936, 0 < pivot n ∧ 0 ≤ error n ∧
      ∀ x, -error n * ∑ i, (x i)^2 ≤
        quadratic (A (n+1) -
          GRWTSK.Algebra.LinearAlgebra.FiniteSchurResidualChain.reassemblePivot
            (pivot n) (column n) (A n)) x)
    (hBudget : ∑ n ∈ Finset.range 399936, error n ≤ 39/1000) :
    HighFloor 2 (-1/2) (1/5) 64 := by
  apply highFloor_two_of_roundedCandidateChain A pivot error column (39/1000) hStep hBudget
  intro x
  have hErr := (abs_le.mp (candidateMatrix_error h x)).1
  have hMass : quadratic (1 : Matrix (Fin 399936) (Fin 399936) ℝ) x = ∑ i, (x i)^2 := by
    simp only [quadratic, Matrix.one_mulVec, dotProduct, pow_two]
  rw [← hInit, quadratic_add, quadratic_smul, hMass] at hErr
  linarith only [hErr]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateSeed
