# Complete source: GRWTSK.Analysis.MeasureTheory.CausalFiniteOperatorSeparation.Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7fdd9638aba7e0a551c1ae213b09466e5ab6f93` · SHA-256 `59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.LinearMap.FiniteMixingObstruction
import GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
import GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Measure.OpenPos

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Contact obstructs finite mixing followed by a common linear operator


The native input family uses ONE common original window, with its exact Ioc
restriction and Lebesgue L2 classes. Only the contacting coordinate is used as
zero. Distinct actual prescribed source classes are independent: continuity
upgrades a finite representative sum's a.e. equality to pointwise equality.

Arbitrary same-size finite coefficient mixing followed by any common linear map
cannot realize the ENTIRE target family. The common map may be unbounded. This
does not rule out additional input features, changed windows, label-dependent
operators, nonlinear maps, approximate realization, inequalities or general
renormalized comparisons. No arithmetic signed-vector or cancellation budget,
joint strict-sector witness, unconditional RH result or converse is supplied.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation

open MeasureTheory Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticPickupEnergy
open GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
open GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite
open GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction

noncomputable section

/-- Genuine admission of every label at the same complete original window. -/
theorem window_response_memLp (T : ℝ) (n : ℕ) : MemLp (windowResponse T n) 2 volume := by
  have responseMeasurable : Measurable (response n) :=
    (response_kernel_continuous n).measurable.indicator measurableSet_Ici
  unfold windowResponse
  apply (memLp_indicator_iff_restrict measurableSet_Ioc).mpr
  apply (memLp_two_iff_integrable_sq responseMeasurable.aestronglyMeasurable).mpr
  simpa only [pow_two, IntegrableOn] using response_product_integrable T n n

/-- All labels share T; this is not the family of separate own-contact windows. -/
def originalWindowL2 (T : ℝ) (n : ℕ) : Lp ℝ 2 (volume : Measure ℝ) :=
  (window_response_memLp T n).toLp (windowResponse T n)

theorem original_window_L2_contact_zero {n : ℕ} (hn : 1 ≤ n) :
    originalWindowL2 (Real.log (n : ℝ)) n = 0 := by
  unfold originalWindowL2
  exact (MemLp.toLp_congr _ (MemLp.zero : MemLp (0 : ℝ → ℝ) 2 volume)
    (Filter.EventuallyEq.of_eq (touching_window_response_eq_zero hn))).trans
    (MemLp.toLp_zero _)

/-- Actual representatives of a finite L2 combination, with every signed term retained. -/
theorem finite_source_L2_combination_ae {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (w : ι → ℝ) :
    ⇑(∑ i, w i • prescribedSourceL2 A hA (label i)) =ᵐ[volume]
      (fun x : ℝ ↦ ∑ i, w i * SourceGram.sourceVector A (label i) x) := by
  have scaled : ∀ i,
      ⇑(w i • prescribedSourceL2 A hA (label i)) =ᵐ[volume]
        (fun x : ℝ ↦ w i * SourceGram.sourceVector A (label i) x) := by
    intro i
    have representative := MemLp.coeFn_toLp (SourceGram.source_vector_memLp hA (label i))
    filter_upwards [Lp.coeFn_smul (w i) (prescribedSourceL2 A hA (label i)),
      representative] with x hx hy
    simpa only [prescribedSourceL2, Pi.smul_apply, smul_eq_mul, hy] using hx
  have allScaled : ∀ᵐ x ∂volume, ∀ i,
      (w i • prescribedSourceL2 A hA (label i)) x =
        w i * SourceGram.sourceVector A (label i) x := Filter.eventually_all.mpr scaled
  have sumRepresentative := Lp.coeFn_fun_finsetSum Finset.univ
    (fun i ↦ w i • prescribedSourceL2 A hA (label i))
  filter_upwards [sumRepresentative, allScaled] with x hx allAtX
  simpa only [allAtX] using hx

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedFintypeInType false in
/-- Independence is asserted for actual equivalence classes, not merely pointwise functions. -/
theorem distinct_source_L2_linearIndependent {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ i, 0 < label i)
    (distinct : Function.Injective label) :
    LinearIndependent ℝ (fun i ↦ prescribedSourceL2 A hA (label i)) := by
  classical
  apply Fintype.linearIndependent_iff.mpr
  intro w zeroSum i
  have representatives := finite_source_L2_combination_ae hA label w
  rw [zeroSum] at representatives
  have aeZero := representatives.symm.trans (Lp.coeFn_zero ℝ 2 (volume : Measure ℝ))
  have continuousSum : Continuous
      (fun x : ℝ ↦ ∑ j, w j * SourceGram.sourceVector A (label j) x) := by
    apply continuous_finsetSum
    intro j _
    exact continuous_const.mul ((SourceNormalization.normalized_source_continuous A).comp
      (continuous_id.sub continuous_const))
  have pointwise : (fun x : ℝ ↦ ∑ j, w j * SourceGram.sourceVector A (label j) x) = 0 :=
    MeasureTheory.Measure.eq_of_ae_eq aeZero continuousSum continuous_zero
  have functionSum : (∑ j, w j • SourceGram.sourceVector A (label j)) = 0 := by
    funext x
    have equality := congrFun pointwise x
    simpa using equality
  exact (Fintype.linearIndependent_iff.mp
    (distinct_source_vectors_linearIndependent hA label positive distinct)) w functionSum i

theorem finite_contact_functions_no_linear_mix {ι : Type*} [Fintype ι] [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ i, 0 < label i)
    (distinct : Function.Injective label) (contact : ι)
    (mix : (ι → ℝ) →ₗ[ℝ] (ι → ℝ)) (map : (ℝ → ℝ) →ₗ[ℝ] (ℝ → ℝ)) :
    ¬ ∀ i, map (Fintype.linearCombination ℝ
      (fun j ↦ windowResponse (Real.log (label contact : ℝ)) (label j))
      (mix (Pi.single i (1 : ℝ)))) = SourceGram.sourceVector A (label i) :=
  zero_coordinate_no_independent_linear_mix _ _
    (distinct_source_vectors_linearIndependent hA label positive distinct) contact
    (touching_window_response_eq_zero (Nat.succ_le_iff.mpr (positive contact))) mix map

theorem finite_contact_L2_no_linear_mix {ι : Type*} [Fintype ι] [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ i, 0 < label i)
    (distinct : Function.Injective label) (contact : ι)
    (mix : (ι → ℝ) →ₗ[ℝ] (ι → ℝ))
    (map : Lp ℝ 2 (volume : Measure ℝ) →ₗ[ℝ] Lp ℝ 2 (volume : Measure ℝ)) :
    ¬ ∀ i, map (Fintype.linearCombination ℝ
      (fun j ↦ originalWindowL2 (Real.log (label contact : ℝ)) (label j))
      (mix (Pi.single i (1 : ℝ)))) = prescribedSourceL2 A hA (label i) :=
  zero_coordinate_no_independent_linear_mix _ _
    (distinct_source_L2_linearIndependent hA label positive distinct) contact
    (original_window_L2_contact_zero (Nat.succ_le_iff.mpr (positive contact))) mix map

/-- The complete original inventory is retained; all inputs share its contact horizon. -/
theorem original_inventory_L2_no_linear_mix {A : ℝ} (hA : 0 < A) {n : ℕ} (hn : 1 ≤ n)
    (mix : (inventory (Real.log (n : ℝ)) → ℝ) →ₗ[ℝ]
      (inventory (Real.log (n : ℝ)) → ℝ))
    (map : Lp ℝ 2 (volume : Measure ℝ) →ₗ[ℝ] Lp ℝ 2 (volume : Measure ℝ)) :
    ¬ ∀ i : inventory (Real.log (n : ℝ)), map (Fintype.linearCombination ℝ
      (fun j : inventory (Real.log (n : ℝ)) ↦ originalWindowL2 (Real.log (n : ℝ)) (j : ℕ))
      (mix (Pi.single i (1 : ℝ)))) = prescribedSourceL2 A hA (i : ℕ) := by
  let contact : inventory (Real.log (n : ℝ)) :=
    ⟨n, SourceNativeSeparation.touching_atom_in_inventory hn⟩
  exact finite_contact_L2_no_linear_mix (ι := inventory (Real.log (n : ℝ)))
    hA (fun i ↦ (i : ℕ))
    (fun i ↦ lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp i.property).1)
    Subtype.val_injective contact mix map

theorem prescribed_horizon_L2_linear_mix_obstruction :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ hA : 0 < A,
      ∀ mix : (inventory (2 * A) → ℝ) →ₗ[ℝ] (inventory (2 * A) → ℝ),
      ∀ map : Lp ℝ 2 (volume : Measure ℝ) →ₗ[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ¬ ∀ i : inventory (2 * A), map (Fintype.linearCombination ℝ
          (fun j : inventory (2 * A) ↦ originalWindowL2 (2 * A) (j : ℕ))
          (mix (Pi.single i (1 : ℝ)))) = prescribedSourceL2 A hA (i : ℕ) := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_⟩
  rw [horizon]
  intro hA mix map
  exact original_inventory_L2_no_linear_mix hA (n := 8) (by norm_num) mix map

end

end GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation
```
