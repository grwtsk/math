/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeBankWitness
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothPhysicalEnergy
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# A genuinely infinite moving-bank high source with a UNIFORM norm bound 4

Select the original prime chosen by pinned Bertrand in every EVEN dyadic
shell, with p_s in (4^s,2*4^s]. Its genuine moving prime bank is
B_(2s)={p_s}. The source membership theorem in the preceding file
proves it lies in the unchanged highSmoothBlock B_(2s) (4^s) T_(2s+1).
All integer labels and original Möbius coefficients are retained.

The ORIGINAL response at p_s has
  |mu(p_s)*pickupResponse(p_s,u)| <= 2/sqrt(4^s)=2*(1/2)^s.
Pinned Mathlib sum_geometric_two_le bounds its complete finite prefix
by 4 UNIFORMLY in cutoff and physical time. This is a genuinely infinite
nonzero Möbius source selection, not a finite fixed-bank perturbation.
A positive absolute geometric budget, not cancellation, pays the cost.

The source LOW is exactly the original full wave minus this authentic
finite set of selected prime atoms. The original high/low signed mixed
term stays in its exact square, and 4 gives a 32-per-unit-time
energy allowance by elementary two-square comparison.

No RH/GRH, arithmetic correlation or all-positive-rate bound for
the LOW is claimed. This route removes only one prime per selected
shell; it does NOT thin the original source by a positive density.
Pinned compilation/fresh kernel/axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSparseEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness

/-- An actual original prime in dyadic shell of index 2*s. -/
def sparsePrime (s : ℕ) : ℕ := chosenPrime (2 * s)

/-- Its original genuine one-prime high-smooth-divisor bank. -/
def sparseBank (s : ℕ) : GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator.PrimeBand :=
  singletonBank (2 * s)

theorem sparsePrime_original_high (s : ℕ) :
    sparsePrime s ∈
      GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell.highShell
        (sparseBank s) (2 * s) :=
  chosenPrime_mem_original_highShell (2 * s)

theorem sparsePrime_moebius (s : ℕ) : moebiusReal (sparsePrime s) = -1 :=
  chosenPrime_moebius (2 * s)

theorem sparsePrime_injective : Function.Injective sparsePrime := by
  intro s t he
  have h := chosenPrime_injective he
  omega

theorem sparsePrime_infinite : Set.Infinite (Set.range sparsePrime) :=
  Set.infinite_range_of_injective sparsePrime_injective

/-- Exact original real source response of the selected actual prime. -/
def sparseSignedAtom (s : ℕ) (u : ℝ) : ℝ :=
  originalSignedAtom (sparsePrime s) u

/-- The crucial even-dyadic identity sqrt(2^(2s))=2^s. -/
private theorem sqrt_even_dyadic (s : ℕ) :
    Real.sqrt (((2 ^ (2 * s) : ℕ) : ℝ)) = (((2 ^ s : ℕ) : ℝ)) := by
  have he : 2 ^ (2 * s) = (2 ^ s) ^ 2 := by
    rw [show 2 * s = s * 2 by omega, pow_mul]
  rw [he, Nat.cast_pow, Real.sqrt_sq_eq_abs]
  exact abs_of_nonneg (by positivity)

/-- Original signed PRIME atom, paid at the exact 4^s lower shell bound. -/
theorem sparseSignedAtom_abs_le_geometric (s : ℕ) (u : ℝ) :
    |sparseSignedAtom s u| ≤ 2 * (1 / 2 : ℝ) ^ s := by
  have hsource :=
    originalSignedAtom_abs_le_shell
      (X := 2 ^ (2 * s)) (n := sparsePrime s)
      (by positivity : 1 ≤ 2 ^ (2 * s))
      (chosenPrime_gt (2 * s)) u
  unfold sparseSignedAtom
  calc
    |originalSignedAtom (sparsePrime s) u| ≤
        2 * (Real.sqrt (((2 ^ (2 * s) : ℕ) : ℝ)))⁻¹ := hsource
    _ = 2 * (1 / 2 : ℝ) ^ s := by
      rw [sqrt_even_dyadic]
      simp only [Nat.cast_pow, inv_pow]
      norm_num

/-- An actual infinite-family, still FINITE-cutoff signed high observation.
No absolute value is taken before original coefficients are combined. -/
def sparsePrimeWave (j : ℕ) (u : ℝ) : ℝ :=
  ∑ s ∈ Finset.range j, sparseSignedAtom s u

/-- Uniform 4 (not a rate-dependent parameter or unproved Mertens input). -/
theorem sparsePrimeWave_abs_le_four (j : ℕ) (u : ℝ) :
    |sparsePrimeWave j u| ≤ 4 := by
  unfold sparsePrimeWave
  calc
    |∑ s ∈ Finset.range j, sparseSignedAtom s u| ≤
        ∑ s ∈ Finset.range j, |sparseSignedAtom s u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ s ∈ Finset.range j, 2 * (1 / 2 : ℝ) ^ s := by
      apply Finset.sum_le_sum
      intro s hs
      exact sparseSignedAtom_abs_le_geometric s u
    _ = 2 * (∑ s ∈ Finset.range j, (1 / 2 : ℝ) ^ s) := by
      rw [Finset.mul_sum]
    _ ≤ 4 := by
      have h := sum_geometric_two_le j
      linarith

/-- One distinct original prime per even shell; the whole selected prime
set lies inside the original FULL closed cutoff 1..2^(2j). -/
def sparsePrimeIndex (j : ℕ) : Finset ℕ :=
  (Finset.range j).image sparsePrime

theorem sparsePrime_mem_original_indices
    {s j : ℕ} (hs : s < j) :
    sparsePrime s ∈ indices (2 * j) := by
  have hlow : 2 ^ (2 * s) < sparsePrime s :=
    chosenPrime_gt (2 * s)
  have hup : sparsePrime s ≤ 2 ^ (2 * s + 1) := by
    simpa [pow_succ, Nat.mul_comm] using chosenPrime_le (2 * s)
  have hpower : 2 ^ (2 * s + 1) ≤ 2 ^ (2 * j) := by
    apply Nat.pow_le_pow_right (by omega)
    omega
  change sparsePrime s ∈ Finset.Icc 1 (2 ^ (2 * j))
  exact Finset.mem_Icc.mpr ⟨by omega, hup.trans hpower⟩

theorem sparsePrimeIndex_subset_indices (j : ℕ) :
    sparsePrimeIndex j ⊆ indices (2 * j) := by
  intro n hn
  obtain ⟨s, hs, hsn⟩ := Finset.mem_image.mp hn
  subst n
  exact sparsePrime_mem_original_indices (Finset.mem_range.mp hs)

/-- The selected prime source is the exact original-index sum, no repeats. -/
theorem sparsePrimeWave_eq_original_index_sum (j : ℕ) (u : ℝ) :
    sparsePrimeWave j u =
      ∑ n ∈ sparsePrimeIndex j, originalSignedAtom n u := by
  classical
  unfold sparsePrimeWave sparseSignedAtom sparsePrimeIndex
  exact (Finset.sum_image (s := Finset.range j)
    (f := fun n => originalSignedAtom n u)
    (fun s hs t ht he => sparsePrime_injective he)).symm

/-- Original LOW retains every other integer, including n=1 and all
squareful zeros, and all original signs of surviving terms. -/
def sparseLowWave (j : ℕ) (u : ℝ) : ℝ :=
  originalFixedWave (2 * j) u - sparsePrimeWave j u

theorem sparseLowWave_eq_original_filter (j : ℕ) (u : ℝ) :
    sparseLowWave j u =
      ∑ n ∈ indices (2 * j),
        if n ∈ sparsePrimeIndex j then 0 else originalSignedAtom n u := by
  classical
  let H : Finset ℕ := sparsePrimeIndex j
  have hsub : H ⊆ indices (2 * j) :=
    sparsePrimeIndex_subset_indices j
  have hfilter : (indices (2 * j)).filter (fun n => n ∈ H) = H := by
    ext n
    simp only [Finset.mem_filter]
    exact ⟨fun hn => hn.2, fun hn => ⟨hsub hn, hn⟩⟩
  have hhigh : sparsePrimeWave j u =
      ∑ n ∈ indices (2 * j),
        if n ∈ H then originalSignedAtom n u else 0 := by
    calc
      sparsePrimeWave j u =
          ∑ n ∈ H, originalSignedAtom n u :=
        sparsePrimeWave_eq_original_index_sum j u
      _ = ∑ n ∈ (indices (2 * j)).filter (fun n => n ∈ H),
          originalSignedAtom n u := by rw [hfilter]
      _ = _ := by rw [Finset.sum_filter]
  unfold sparseLowWave originalFixedWave
  rw [hhigh, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmem : n ∈ H <;>
    simp [hmem, originalSignedAtom]

/-- Exact original two-sector signed square at the ORIGINAL dyadic
horizon T_(2j), without removing either mixed orientation. -/
theorem fullSparseLow_signed_square (j : ℕ) (u : ℝ) :
    (originalFixedWave (2 * j) u) ^ 2 =
      (sparsePrimeWave j u) ^ 2 +
        2 * sparsePrimeWave j u * sparseLowWave j u +
          (sparseLowWave j u) ^ 2 := by
  unfold sparseLowWave
  ring

/-- The complete ORIGINAL coherent observation is controlled by the
genuine sparse LOW and a UNIVERSAL paid 32 pointwise price. -/
theorem original_even_sq_le_sparseLow (j : ℕ) (u : ℝ) :
    (originalFixedWave (2 * j) u) ^ 2 ≤
      2 * (sparseLowWave j u) ^ 2 + 32 := by
  have hK := sparsePrimeWave_abs_le_four j u
  have hsquare : (sparsePrimeWave j u) ^ 2 ≤ 16 := by
    have h := abs_le.mp hK
    nlinarith [mul_nonneg
      (show 0 ≤ 4 - sparsePrimeWave j u by linarith)
      (show 0 ≤ 4 + sparsePrimeWave j u by linarith)]
  have hsum : originalFixedWave (2 * j) u =
      sparsePrimeWave j u + sparseLowWave j u := by
    unfold sparseLowWave
    ring
  rw [hsum]
  nlinarith [sq_nonneg (sparsePrimeWave j u - sparseLowWave j u)]

/-- Reverse comparison: a bounded infinite original-source prime
correction does not solve the hard signed LOW problem. -/
theorem sparseLow_sq_le_original_even (j : ℕ) (u : ℝ) :
    (sparseLowWave j u) ^ 2 ≤
      2 * (originalFixedWave (2 * j) u) ^ 2 + 32 := by
  have hK := sparsePrimeWave_abs_le_four j u
  have hsquare : (sparsePrimeWave j u) ^ 2 ≤ 16 := by
    have h := abs_le.mp hK
    nlinarith [mul_nonneg
      (show 0 ≤ 4 - sparsePrimeWave j u by linarith)
      (show 0 ≤ 4 + sparsePrimeWave j u by linarith)]
  unfold sparseLowWave
  nlinarith [sq_nonneg
    (originalFixedWave (2 * j) u + sparsePrimeWave j u)]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSparseEnergy
