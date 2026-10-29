/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.RealFunctions.DyadicSlidingMean
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelDyadicReadout

/-!
# Average-origin inputs for the actual signed arithmetic row

One complete existing dyadic level is omitted; its root and all other levels
remain in the old signed model. A centered short-interval L1 estimate pays
that level's input energy without requiring its fixed origins to be regular.
The actual signed row energy, source length, nonzero center, and inherited
factor 1/6 and boundary allowance two are retained. The required averaged
arithmetic estimate and the retained model estimate are NOT supplied here.
Depends on the exact detached #1395 dyadic overlay. No arXiv theorem is
imported or axiomatized. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelSlidingMean
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.ShortIntervalSampling
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement
open GRWTSK.Analysis.FiniteSums.DyadicSlidingMean
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicReadout

/-- Keep the root and every detail except the parent-height k+1 level. -/
def retainExceptLevel (k r _o : ℕ) : Prop := r ≠ k + 1

/-- Exact coefficient energy of the existing combined row on that one level. -/
def levelRowEnergy (width : ℕ → ℕ) (j k : ℕ) : ℝ :=
  gridEnergy (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0 (dyadicRow width j)

/-- An actual ordinary-origin mean, with the same center across this occurrence.
For f(n)=mu(n+1) the window is o < n <= o+2^k. Origins run 0,...,Y-1;
inputs consequently extend through Y+2^k-1. No tail is silently zero-padded. -/
def moebiusSlidingMass (j k : ℕ) (c : ℝ) : ℝ :=
  centeredSlidingL1 (positiveInput moebiusReal) c 0 (2 ^ (j + 1)) (2 ^ k)

theorem levelRowEnergy_nonneg (width : ℕ → ℕ) (j k : ℕ) :
    0 ≤ levelRowEnergy width j k := gridEnergy_nonneg _ _ _ _

/-- The analytic-origin coordinates are identified with the original dyadic remainder. -/
theorem remainder_eq_grid (width : ℕ → ℕ) (j k : ℕ) (hk : k < j + 1) (f : ℕ → ℝ) :
    dyadicRemainder (retainExceptLevel k) width j f =
      gridPairing (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0
        (dyadicRow width j) (positiveInput f) := by
  simp only [dyadicRemainder, retainExceptLevel, not_not]
  exact level_pairing_eq_grid (j + 1) k 0 _ _ hk

/-- Finite comparison with the actual all-origin arithmetic mass, not a fixed-origin assumption. -/
theorem moebius_level_energy_le_sliding (j k : ℕ) (hk : k < j + 1) (c : ℝ) :
    gridEnergy (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0 (positiveInput moebiusReal) ≤
      (8 * (1 + |c|) / ((2 ^ k : ℕ) : ℝ)) * moebiusSlidingMass j k c := by
  have h := gridEnergy_le_centeredSliding (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0
    (by positivity) (positiveInput moebiusReal) c
    (fun n => moebiusReal_abs_le_one (n + 1))
  rw [dyadic_grid_length (j + 1) k hk] at h
  exact h

/-- The row and arithmetic masses remain separate payable factors. -/
theorem remainder_sq_le_sliding (width : ℕ → ℕ) (j k : ℕ)
    (hk : k < j + 1) (c : ℝ) :
    dyadicRemainder (retainExceptLevel k) width j moebiusReal ^ 2 ≤
      levelRowEnergy width j k *
        ((8 * (1 + |c|) / ((2 ^ k : ℕ) : ℝ)) * moebiusSlidingMass j k c) := by
  rw [remainder_eq_grid width j k hk]
  exact (gridPairing_sq_le_energies _ _ _ (by positivity) _ _).trans
    (mul_le_mul_of_nonneg_left (moebius_level_energy_le_sliding j k hk c)
      (levelRowEnergy_nonneg width j k))

/-- Complete original packet comparison. No extra arithmetic boundary loss. -/
theorem full_packet_level_sliding_comparison (j k : ℕ) (hk : k < j + 1) (c : ℝ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (hbudget : levelRowEnergy sqrtWidth j k *
      ((8 * (1 + |c|) / ((2 ^ k : ℕ) : ℝ)) * moebiusSlidingMass j k c) ≤ ε ^ 2) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel (retainExceptLevel k) sqrtWidth j (headPacket sqrtWidth j)| ≤
        2 + ε / 6 := by
  apply full_packet_dyadic_comparison
  have h := (remainder_sq_le_sliding sqrtWidth j k hk c).trans hbudget
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp (by simpa only [sq_abs] using h)

/-- A normalized average rho pays a source-length factor Y, not a unit allowance. -/
theorem full_packet_level_mean_comparison (j k : ℕ) (hk : k < j + 1)
    (c ρ : ℝ) {ε : ℝ} (hε : 0 ≤ ε)
    (hmean : moebiusSlidingMass j k c ≤
      ρ * (((2 ^ (j + 1) : ℕ) : ℝ)) * (((2 ^ k : ℕ) : ℝ)))
    (hbudget : levelRowEnergy sqrtWidth j k *
      (8 * (1 + |c|) * ρ * (((2 ^ (j + 1) : ℕ) : ℝ))) ≤ ε ^ 2) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel (retainExceptLevel k) sqrtWidth j (headPacket sqrtWidth j)| ≤
        2 + ε / 6 := by
  apply full_packet_dyadic_comparison
  rw [remainder_eq_grid sqrtWidth j k hk]
  have he := gridEnergy_le_of_centered_mean (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0
    (by positivity) (positiveInput moebiusReal) c ρ
    (fun n => moebiusReal_abs_le_one (n + 1))
    (by simpa only [dyadic_grid_length (j + 1) k hk, moebiusSlidingMass] using hmean)
  rw [dyadic_grid_length (j + 1) k hk] at he
  have h := (gridPairing_sq_le_energies (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0
    (by positivity) (dyadicRow sqrtWidth j) (positiveInput moebiusReal)).trans
      ((mul_le_mul_of_nonneg_left he (levelRowEnergy_nonneg sqrtWidth j k)).trans hbudget)
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp (by simpa only [sq_abs] using h)

/-- Direct exceptional-origin supplier. Fixed grid origins may all be exceptional;
that does not invalidate the bound, because their neighboring origins are charged. -/
theorem full_packet_level_exception_comparison (j k : ℕ) (hk : k < j + 1)
    (c η : ℝ) (bad : Finset ℕ) (hη : 0 ≤ η) {ε : ℝ} (hε : 0 ≤ ε)
    (hgood : ∀ r ∈ Finset.range (2 ^ (j + 1)), r ∉ bad →
      |shortSum (positiveInput moebiusReal) r (2 ^ k) - (((2 ^ k : ℕ) : ℝ)) * c| ≤
        η * (((2 ^ k : ℕ) : ℝ)))
    (hbudget : levelRowEnergy sqrtWidth j k * (8 * (1 + |c|) *
      (η * (((2 ^ (j + 1) : ℕ) : ℝ)) + (1 + |c|) *
        (((Finset.range (2 ^ (j + 1))).filter (fun r => r ∈ bad)).card : ℝ))) ≤ ε ^ 2) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      dyadicPacketModel (retainExceptLevel k) sqrtWidth j (headPacket sqrtWidth j)| ≤
        2 + ε / 6 := by
  apply full_packet_dyadic_comparison
  rw [remainder_eq_grid sqrtWidth j k hk]
  have he := gridEnergy_le_of_exceptional_origins (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0
    (by positivity) (positiveInput moebiusReal) c η bad hη
    (fun n => moebiusReal_abs_le_one (n + 1))
    (by simpa only [dyadic_grid_length (j + 1) k hk, Nat.zero_add] using hgood)
  rw [dyadic_grid_length (j + 1) k hk] at he
  have h := (gridPairing_sq_le_energies (2 ^ k) (2 ^ (j + 1 - (k + 1))) 0
    (by positivity) (dyadicRow sqrtWidth j) (positiveInput moebiusReal)).trans
      ((mul_le_mul_of_nonneg_left he (levelRowEnergy_nonneg sqrtWidth j k)).trans hbudget)
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp (by simpa only [sq_abs] using h)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelSlidingMean
