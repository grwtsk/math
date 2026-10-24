/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.FiniteTranslateIndependence
import GRWTSK.Analysis.InnerProductSpace.DilationGram

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Strict Gram positivity for distinct literal source translates


The actual normalized source is continuous, nonzero and supported in its
original compact interval for positive scale. Its distinct positive-label
translates are independent. Their full ordered Gram form is strictly positive
on every nonzero finite coefficient vector. The actual squared integral and
every mixed term are retained. Repeated labels still have only the previously
proved semidefinite assertion. No uniform eigenvalue bound, arithmetic signed
energy estimate, cancellation budget or RH result is supplied.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite

open MeasureTheory Set Function
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticSupplier
open GRWTSK.Analysis.Convolution.FiniteTranslateIndependence

noncomputable section

theorem normalized_source_support_bddAbove {A : ℝ} (hA : 0 < A) :
    BddAbove (support (normalizedSource A)) := by
  refine ⟨A, ?_⟩
  intro x hx
  by_contra outside
  have notIn : x ∉ Icc (-A) A := fun member ↦ outside member.2
  have zero := SourceResidual.sourceResidual_zero_outside hA notIn
  exact hx (by simp [normalizedSource, zero])

/-- Nonemptiness comes from the actual unit squared integral. -/
theorem normalized_source_support_nonempty {A : ℝ} (hA : 0 < A) :
    (support (normalizedSource A)).Nonempty := by
  by_contra empty
  have zero : normalizedSource A = (0 : ℝ → ℝ) := by
    funext x
    by_contra nonzero
    exact empty ⟨x, nonzero⟩
  have unit := SourceNormalization.normalized_source_square_integral_of_pos hA
  rw [zero] at unit
  norm_num at unit

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
theorem finite_source_combination_ne_zero {ι : Type*} [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (s : Finset ι) (label : ι → ℕ)
    (positive : ∀ n ∈ s, 0 < label n) (distinct : Set.InjOn label (s : Set ι))
    (w : ι → ℝ) (nonzero : ∃ n ∈ s, w n ≠ 0) :
    ∃ x : ℝ, (∑ n ∈ s, w n * SourceGram.sourceVector A (label n) x) ≠ 0 := by
  have shifts : Set.InjOn (fun n ↦ Real.log (label n : ℝ)) (s : Set ι) := by
    intro m hm n hn equal
    apply distinct hm hn
    have castEqual := Real.log_injOn_pos
      (show (label m : ℝ) ∈ Ioi 0 from by
        change 0 < (label m : ℝ)
        exact_mod_cast positive m hm)
      (show (label n : ℝ) ∈ Ioi 0 from by
        change 0 < (label n : ℝ)
        exact_mod_cast positive n hn) equal
    exact_mod_cast castEqual
  simpa only [SourceGram.sourceVector] using finite_translate_combination_ne_zero
    (normalized_source_support_bddAbove hA) (normalized_source_support_nonempty hA)
    s (fun n ↦ Real.log (label n : ℝ)) shifts w nonzero

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
theorem distinct_source_vectors_linearIndependent {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ n, 0 < label n)
    (distinct : Function.Injective label) :
    LinearIndependent ℝ (fun n ↦ SourceGram.sourceVector A (label n)) := by
  have shifts : Function.Injective (fun n ↦ Real.log (label n : ℝ)) := by
    intro m n equal
    apply distinct
    have castEqual := Real.log_injOn_pos
      (show (label m : ℝ) ∈ Ioi 0 from by
        change 0 < (label m : ℝ)
        exact_mod_cast positive m)
      (show (label n : ℝ) ∈ Ioi 0 from by
        change 0 < (label n : ℝ)
        exact_mod_cast positive n) equal
    exact_mod_cast castEqual
  change LinearIndependent ℝ (fun n x ↦ normalizedSource A (x - Real.log (label n : ℝ)))
  exact finite_translates_linearIndependent
    (normalized_source_support_bddAbove hA) (normalized_source_support_nonempty hA)
    (fun n ↦ Real.log (label n : ℝ)) shifts

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
/-- Strict positivity uses continuity and genuine square integrability. -/
theorem finite_source_gram_positive {ι : Type*} [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (s : Finset ι) (label : ι → ℕ)
    (positive : ∀ n ∈ s, 0 < label n) (distinct : Set.InjOn label (s : Set ι))
    (w : ι → ℝ) (nonzero : ∃ n ∈ s, w n ≠ 0) :
    0 < ∑ m ∈ s, ∑ n ∈ s, (w m * w n) * SourceGram.sourceGram A (label m) (label n) := by
  obtain ⟨x, atX⟩ := finite_source_combination_ne_zero hA s label positive distinct w nonzero
  have continuousSum : Continuous
      (fun y : ℝ ↦ ∑ n ∈ s, w n * SourceGram.sourceVector A (label n) y) := by
    apply continuous_finsetSum
    intro n _
    exact continuous_const.mul ((SourceNormalization.normalized_source_continuous A).comp
      (continuous_id.sub continuous_const))
  rw [← SourceGram.finite_source_energy_eq_gram hA s label w positive]
  exact integral_pos_of_integrable_nonneg_nonzero (x := x)
    (continuousSum.pow 2) (SourceGram.finite_weighted_source_square_integrable hA s label w)
    (fun _ ↦ sq_nonneg _) (pow_ne_zero 2 atX)

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
theorem distinct_source_gram_matrix_positive_definite {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ n, 0 < label n)
    (distinct : Function.Injective label) : (SourceGram.sourceGramMatrix A label).PosDef := by
  classical
  apply Matrix.PosDef.of_dotProduct_mulVec_pos
  · ext m n
    simpa only [SourceGram.sourceGramMatrix, Matrix.conjTranspose_apply, star_trivial] using
      SourceGram.source_gram_symm (positive n) (positive m)
  · intro w nonzero
    have someWeight : ∃ n ∈ (Finset.univ : Finset ι), w n ≠ 0 := by
      by_contra absent
      apply nonzero
      funext n
      by_contra nonzeroAtN
      exact absent ⟨n, Finset.mem_univ n, nonzeroAtN⟩
    have strict := finite_source_gram_positive hA Finset.univ label
      (fun n _ ↦ positive n) (fun _ _ _ _ equal ↦ distinct equal) w someWeight
    simpa only [SourceGram.sourceGramMatrix, Matrix.mulVec, dotProduct, Pi.star_apply,
      star_trivial, Finset.mul_sum, mul_assoc, mul_left_comm, mul_comm] using strict

end

end GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite
