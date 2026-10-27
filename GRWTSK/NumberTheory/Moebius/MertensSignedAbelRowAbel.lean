/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
import GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-!
# Source-exact Abel transport of the combined arithmetic response row

The existing finite Abel identity is applied to the combined signed row, not
separately to its three positive components. Its terminal coefficient is proved
zero from actual operator support. Prefix-dependent budgets are retained; a
uniform envelope and the existing dyadic tree comparison are optional stronger
suppliers. No small prefix, total variation, tree energy, or arithmetic response
is proved. In particular the unweighted tree is not asserted subpolynomial.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Positive input indexing is exactly the shifted range convention upstream. -/
theorem positive_sum_eq_range (N : ℕ) (f : ℕ → ℝ) :
    (∑ a ∈ Finset.Icc 1 N, f a) = ∑ t ∈ Finset.range N, f (t + 1) := by
  apply Finset.sum_bij (fun a _ => a - 1)
  · intro a ha
    have hm := Finset.mem_Icc.mp ha
    apply Finset.mem_range.mpr
    omega
  · intro a ha b hb he
    have hma := Finset.mem_Icc.mp ha
    have hmb := Finset.mem_Icc.mp hb
    omega
  · intro t ht
    have hm := Finset.mem_range.mp ht
    refine ⟨t + 1, Finset.mem_Icc.mpr ⟨by omega, by omega⟩, by omega⟩
  · intro a ha
    have hm := Finset.mem_Icc.mp ha
    have hi : a - 1 + 1 = a := by omega
    rw [hi]

/-- Difference of the exact COMBINED row in positive input coordinates. -/
def rowDrop (width : ℕ → ℕ) (j t : ℕ) : ℝ :=
  signedRow width j (t + 1) - signedRow width j (t + 2)

def rowVariation (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)), |rowDrop width j t|

theorem rowVariation_nonneg (width : ℕ → ℕ) (j : ℕ) :
    0 ≤ rowVariation width j := Finset.sum_nonneg (fun _ _ => abs_nonneg _)

/-- Exact signed summation by parts; the terminal term is paid by source support. -/
theorem signedResponse_eq_prefix_drop_sum (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedResponse width j f =
      ∑ t ∈ Finset.range (2 ^ (j + 1)),
        finitePrefixSum (fun a => f (a + 1)) (t + 1) * rowDrop width j t := by
  rw [signedResponse_eq_row_sum, positive_sum_eq_range]
  have hab := finiteAbelPrefixIdentity (fun a => f (a + 1))
    (fun a => signedRow width j (a + 1)) (2 ^ (j + 1))
  have hz : signedRow width j (2 ^ (j + 1) + 1) = 0 :=
    signedRow_eq_zero_of_gt width j _ (by omega)
  rw [hz, mul_zero, add_zero] at hab
  simpa only [finitePrefixSum, rowDrop, Nat.add_assoc, mul_comm] using hab

/-- Every original prefix may have its own allowance; no maximal estimate is required. -/
theorem abs_signedResponse_le_prefix_budget (width : ℕ → ℕ) (j : ℕ)
    (f : ℕ → ℝ) (E : ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      |finitePrefixSum (fun a => f (a + 1)) (t + 1)| ≤ E t) :
    |signedResponse width j f| ≤
      ∑ t ∈ Finset.range (2 ^ (j + 1)), E t * |rowDrop width j t| := by
  rw [signedResponse_eq_prefix_drop_sum]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro t ht
  rw [abs_mul]
  exact mul_le_mul_of_nonneg_right (hE t ht) (abs_nonneg _)

/-- A stronger uniform-prefix supplier factors from the exact total variation. -/
theorem abs_signedResponse_le_envelope_mul_variation (width : ℕ → ℕ) (j : ℕ)
    (f : ℕ → ℝ) (B : ℝ)
    (hB : ∀ N : ℕ, N ≤ 2 ^ (j + 1) →
      |finitePrefixSum (fun a => f (a + 1)) N| ≤ B) :
    |signedResponse width j f| ≤ B * rowVariation width j := by
  have h := abs_signedResponse_le_prefix_budget width j f (fun _ => B)
    (by intro t ht; exact hB (t + 1) (by have := Finset.mem_range.mp ht; omega))
  simpa only [rowVariation, Finset.mul_sum] using h

/-- Existing maximal-prefix machinery applies to the exact shifted input sequence. -/
theorem abs_signedResponse_le_dyadicMaximum (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    |signedResponse width j f| ≤
      dyadicPrefixMaximum (j + 1) (fun a => f (a + 1)) * rowVariation width j := by
  apply abs_signedResponse_le_envelope_mul_variation
  intro N hN
  exact le_partialSups_of_le (fun n => |finitePrefixSum (fun a => f (a + 1)) n|) hN

/-- Optional deterministic tree supplier with ALL size losses stated.
This comparison does not prove that the tree energy is arithmetically small. -/
theorem signedResponse_sq_le_dyadicTree (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    (signedResponse width j f) ^ 2 ≤
      (((j + 1 : ℕ) : ℝ) + 1) *
        dyadicTreeSquareEnergy (j + 1) (fun a => f (a + 1)) * (rowVariation width j) ^ 2 := by
  let B := dyadicPrefixMaximum (j + 1) (fun a => f (a + 1))
  have hB : 0 ≤ B := by
    have h0 := le_partialSups_of_le
      (fun n => |finitePrefixSum (fun a => f (a + 1)) n|) (Nat.zero_le (2 ^ (j + 1)))
    exact (abs_nonneg _).trans h0
  have hv := rowVariation_nonneg width j
  have hsq := (sq_le_sq₀ (abs_nonneg (signedResponse width j f))
    (mul_nonneg hB hv)).mpr (abs_signedResponse_le_dyadicMaximum width j f)
  have htree := dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy (j + 1) (fun a => f (a + 1))
  calc
    _ ≤ (B * rowVariation width j) ^ 2 := by simpa only [sq_abs] using hsq
    _ = B ^ 2 * (rowVariation width j) ^ 2 := mul_pow _ _ _
    _ ≤ _ := mul_le_mul_of_nonneg_right htree (sq_nonneg _)

/-- The old triple channel is explicitly the ordinary Mobius-prefix/drop pairing. -/
theorem triple_bulk_eq_moebius_prefix_drops (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (threePrimePrefix j) =
      ∑ t ∈ Finset.range (2 ^ (j + 1)),
        finitePrefixSum (fun a => moebiusReal (a + 1)) (t + 1) * rowDrop width j t := by
  rw [triple_bulk_eq_signedResponse, signedResponse_eq_prefix_drop_sum]

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel
