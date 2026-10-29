/- Copyright (c) 2026 grwtsk. MIT.
Imported results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelNeighborhoodCriterion
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelRowAbel

/-!
# Compatibility with the existing finite-row, feature, and row-Abel neighborhood

The coefficient rows and signed readout are definitionally the old ones. Reuse
old feature-fibre observability, weighted energy, and variable-prefix estimates.
The finite-law marginal model is exactly the same operator acting on the
constant column-weighted mean. Its discrepancy can therefore be bounded either
by the new covariance comparison or the existing row-Abel comparison, retaining
the smaller allowance and the same full signed head. No estimate is supplied.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelNeighborhoodTransport

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelCoefficientKernel
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseLaw
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRowAbel

/-- No replacement matrix is introduced by the new notation. -/
theorem coefficient_eq_existing_row (width : ℕ → ℕ) (j v a : ℕ) :
    coefficient width j v a =
      GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.responseRow width j v a := rfl

theorem readout_eq_existing_response (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedReadout (responseProfile width j f) =
      GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.signedResponse width j f := rfl

/-- Exact reuse of the old feature-fibre criterion; no decoder is claimed to exist unconditionally. -/
theorem readout_decoder_iff {β : Type*} (feature : (ℕ → ℝ) → β)
    (width : ℕ → ℕ) (j : ℕ) :
    (∃ decode : β → ℝ, ∀ f, decode (feature f) = signedReadout (responseProfile width j f)) ↔
      (∀ f g, feature f = feature g →
        ∑ a ∈ sourceIndices j, signedCoefficient width j a * (f a - g a) = 0) :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.signedResponse_decoder_iff feature width j

/-- The previous coefficient-aware Cauchy comparison acts on the same actual input error. -/
theorem readout_error_sq_le_row_energy (width : ℕ → ℕ) (j : ℕ) (f g : ℕ → ℝ) :
    (signedReadout (responseProfile width j f) - signedReadout (responseProfile width j g)) ^ 2 ≤
      signedRowMass width j *
        ∑ a ∈ sourceIndices j, |signedCoefficient width j a| * (f a - g a) ^ 2 := by
  have h := GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.signedResponse_sq_le_row_weighted_energy
    width j (fun a => f a - g a)
  rw [GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.signedResponse_sub] at h
  exact h

/-- Source-faithful reuse of finite Abel transport, keeping each prefix allowance separate. -/
theorem readout_error_le_prefix_budget (width : ℕ → ℕ) (j : ℕ) (f g E : ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      |finitePrefixSum (fun a => f (a + 1) - g (a + 1)) (t + 1)| ≤ E t) :
    |signedReadout (responseProfile width j f) - signedReadout (responseProfile width j g)| ≤
      ∑ t ∈ Finset.range (2 ^ (j + 1)), E t * |rowDrop width j t| := by
  have h := abs_signedResponse_le_prefix_budget width j (fun a => f a - g a) E hE
  rw [GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.signedResponse_sub] at h
  exact h

/-- Preserve whichever source-matched error comparison is better at the current scale. -/
theorem readout_error_le_min_input_prefix (width : ℕ → ℕ) (j : ℕ) (f g E : ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      |finitePrefixSum (fun a => f (a + 1) - g (a + 1)) (t + 1)| ≤ E t) :
    |signedReadout (responseProfile width j f) - signedReadout (responseProfile width j g)| ≤
      min (∑ a ∈ sourceIndices j, |signedCoefficient width j a| * |f a - g a|)
        (∑ t ∈ Finset.range (2 ^ (j + 1)), E t * |rowDrop width j t|) :=
  le_min (signed_error_le_weighted_input_error width j f g)
    (readout_error_le_prefix_budget width j f g E hE)

/-- The product-of-marginals model is exactly the operator applied to a constant weighted mean. -/
theorem independent_eq_constant_response (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    independentReadout width j f = signedReadout (responseProfile width j
      (fun _ => ∑ a ∈ sourceIndices j, columnMarginal width j a * f a)) := by
  by_cases hM : totalMass width j = 0
  · rw [readout_zero_of_mass_zero width j _ hM]
    simp [independentReadout, hM]
  · have hpos : 0 < totalMass width j := by
      rcases (totalMass_nonneg width j).eq_or_lt with hz | hp
      · exact (hM hz.symm).elim
      · exact hp
    let c := ∑ a ∈ sourceIndices j, columnMarginal width j a * f a
    have hs :
        (∑ v ∈ cofactorIndices, ∑ a ∈ sourceIndices j,
          jointWeight width j v a * (cofactorSign v * c)) =
        (∑ v ∈ cofactorIndices, rowMarginal width j v * cofactorSign v) * c := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro v _
      unfold rowMarginal
      rw [Finset.sum_mul, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro a _
      ring
    rw [readout_eq_mass_pairing width j _ hpos]
    change totalMass width j *
        ((∑ v ∈ cofactorIndices, rowMarginal width j v * cofactorSign v) * c) =
      totalMass width j * ∑ v ∈ cofactorIndices, ∑ a ∈ sourceIndices j,
        jointWeight width j v a * (cofactorSign v * c)
    exact congrArg (fun z : ℝ => totalMass width j * z) hs.symm

/-- Covariance and row-Abel estimates now apply to the identical centered arithmetic input. -/
theorem centered_error_le_min_dependence_prefix (width : ℕ → ℕ) (j : ℕ) (f E : ℕ → ℝ)
    (hf : ∀ a ∈ sourceIndices j, |f a| ≤ 1)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      |finitePrefixSum (fun a => f (a + 1) -
        ∑ n ∈ sourceIndices j, columnMarginal width j n * f n) (t + 1)| ≤ E t) :
    |signedReadout (responseProfile width j f) - independentReadout width j f| ≤
      min (dependenceCost width j)
        (∑ t ∈ Finset.range (2 ^ (j + 1)), E t * |rowDrop width j t|) := by
  have hp := readout_error_le_prefix_budget width j f
    (fun _ => ∑ n ∈ sourceIndices j, columnMarginal width j n * f n) E hE
  rw [← independent_eq_constant_response width j f] at hp
  exact le_min (readout_sub_independent_le_all width j f hf) hp

/-- Full packet handoff with the smaller actual covariance/variable-prefix cost. -/
theorem packet_centered_prefix_comparison (j : ℕ) (E : ℕ → ℝ)
    (hE : ∀ t ∈ Finset.range (2 ^ (j + 1)),
      |finitePrefixSum (fun a => moebiusReal (a + 1) -
        ∑ n ∈ sourceIndices j, columnMarginal sqrtWidth j n * moebiusReal n) (t + 1)| ≤ E t) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (headPacket sqrtWidth j - independentReadout sqrtWidth j moebiusReal / 6)| ≤
      2 + min (dependenceCost sqrtWidth j)
        (∑ t ∈ Finset.range (2 ^ (j + 1)), E t * |rowDrop sqrtWidth j t|) / 6 := by
  have hc := centered_error_le_min_dependence_prefix sqrtWidth j moebiusReal E
    (fun a _ => moebiusReal_abs_le_one a) hE
  have hr : signedReadout (recoverProfile (independentReadout sqrtWidth j moebiusReal) 0 0) =
      independentReadout sqrtWidth j moebiusReal := by simp [signedReadout, recoverProfile]
  have h := abs_packet_sub_readout_model_le j
    (recoverProfile (independentReadout sqrtWidth j moebiusReal) 0 0)
    (by simpa only [hr] using hc)
  simpa only [hr] using h

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelNeighborhoodTransport
