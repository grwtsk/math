/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion
import GRWTSK.Analysis.Complex.RationalDiskSeparation
import GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation

set_option autoImplicit false

/-!
# Construct canonical HeadBinding from local witnesses and count saturation

The supplied facts are LOCAL zero existence with LOWER multiplicities and ONE
upper bound on the actual COMPLETE height count. Rational disk separation and
containment give distinctness and membership. Positive-mass exhaustion derives
coverage, exact multiplicities, and then the prior HeadBinding. No supplied
bijection or exact per-record multiplicity remains in this constructor.

No actual local existence certificate or sharp total count is produced here.
The arithmetic disk guard does not check either analytic supplier. The choice
of witnesses is noncomputable and uses the inherited classical foundations.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalZeroHeadBinding

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalTentAccumulation
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion
open CanonicalRationalTentEvaluation TentSource SignedTentCorrection CanonicalTentPrimeCriterion

/-- Existence and a lower analytic order, NOT uniqueness or list completeness.
The point is a genuine ZeroPoint. A small residual does not establish this. -/
def LocalWitnesses {k : ℕ} (rows : Fin k → WeightedInput) : Prop :=
  ∀ i, ∃ z : ZeroPoint,
    ‖z.1 - QComplex.embed (rows i).point.center‖ ≤ ((rows i).point.coordinateError : ℝ) ∧
    (rows i).weight ≤ multiplicity z

/-- Select local witnesses only for the semantic proof; no executable zero finder. -/
noncomputable def witness {k : ℕ} (rows : Fin k → WeightedInput)
    (hloc : LocalWitnesses rows) (i : Fin k) : ZeroPoint := Classical.choose (hloc i)

theorem witness_spec {k : ℕ} (rows : Fin k → WeightedInput)
    (hloc : LocalWitnesses rows) (i : Fin k) :
    ‖(witness rows hloc i).1 - QComplex.embed (rows i).point.center‖ ≤
        ((rows i).point.coordinateError : ℝ) ∧
      (rows i).weight ≤ multiplicity (witness rows hloc i) :=
  Classical.choose_spec (hloc i)

/-- Exact source count cast as a sum over its original finite subtype. -/
theorem head_subtype_mass (T : ℝ) :
    (∑ z : ↥(heightHead T), multiplicity z.1) = heightCount T := by
  classical
  rw [Finset.sum_coe_sort]
  rfl

/-- Full membership and exact weights are derived simultaneously. -/
noncomputable def of_local_witnesses (T : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hloc : LocalWitnesses rows)
    (hcount : heightCount (T : ℝ) ≤ ∑ i, (rows i).weight) : HeadBinding (T : ℝ) rows := by
  classical
  let center := fun i => (rows i).point.center
  let radius := fun i => (rows i).point.coordinateError
  have hg := (GRWTSK.Analysis.Complex.RationalDiskSeparation.verify_iff T center radius).mp hgeometry
  have hheight (i : Fin k) : height (witness rows hloc i) ≤ (T : ℝ) :=
    GRWTSK.Analysis.Complex.RationalDiskSeparation.abs_im_le_cutoff T center radius hg i
      (witness rows hloc i).1 (witness_spec rows hloc i).1
  let f : Fin k → ↥(heightHead (T : ℝ)) := fun i =>
    ⟨witness rows hloc i, (mem_heightHead _ _).mpr (hheight i)⟩
  have hinj : Function.Injective f := by
    intro i j he
    have he' : (witness rows hloc i).1 = (witness rows hloc j).1 :=
      congrArg (fun z : ↥(heightHead (T : ℝ)) => z.1.1) he
    exact GRWTSK.Analysis.Complex.RationalDiskSeparation.witnesses_injective
      T center radius hg (fun i => (witness rows hloc i).1)
      (fun i => (witness_spec rows hloc i).1) he'
  have htotal : (∑ z : ↥(heightHead (T : ℝ)), multiplicity z.1) ≤ ∑ i, (rows i).weight := by
    rw [head_subtype_mass]
    exact hcount
  obtain ⟨hb, hw⟩ := bijective_and_weights_eq
    (fun z : ↥(heightHead (T : ℝ)) => multiplicity z.1)
    (fun z => multiplicity_pos z.1) (fun i => (rows i).weight) f hinj
    (fun i => (witness_spec rows hloc i).2) htotal
  exact { index := Equiv.ofBijective f hb
          weight_eq := hw
          coordinate := fun i => (witness_spec rows hloc i).1 }

/-- The budget must saturate: this is an equality conclusion, not an input. -/
theorem exact_count_of_binding (T : ℝ) {k : ℕ} (rows : Fin k → WeightedInput)
    (b : HeadBinding T rows) : heightCount T = ∑ i, (rows i).weight := by
  classical
  rw [← head_subtype_mass]
  calc
    _ = ∑ i, multiplicity (b.index i).1 := (Equiv.sum_comp b.index _).symm
    _ = _ := Finset.sum_congr rfl (fun i _ => (b.weight_eq i).symm)

/-- A binding on separated, contained disks isolates one unique actual zero in
EACH whole disk, not just among observed entries. -/
theorem unique_zero_in_disk (T : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : GRWTSK.Analysis.Complex.RationalDiskSeparation.Admissible T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError))
    (b : HeadBinding (T : ℝ) rows) (i : Fin k) :
    ∃! z : ZeroPoint, ‖z.1 - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ) := by
  refine ⟨(b.index i).1, b.coordinate i, ?_⟩
  intro z hz
  have hh := GRWTSK.Analysis.Complex.RationalDiskSeparation.abs_im_le_cutoff T
    (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) hg i z.1 hz
  let zh : ↥(heightHead (T : ℝ)) := ⟨z, (mem_heightHead _ _).mpr hh⟩
  obtain ⟨j, hj⟩ := b.index.surjective zh
  have he : (b.index j).1 = z := congrArg Subtype.val hj
  have hji : j = i := by
    by_contra hne
    exact GRWTSK.Analysis.Complex.RationalDiskSeparation.not_in_two_balls T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) hg j i hne
      z.1 (by simpa only [he] using b.coordinate j) hz
  simpa only [hji] using he.symm

/-- Unit weights need only local existence. Individual simplicity and global
coverage are obtained from saturation, not required as local hypotheses. -/
noncomputable def of_simple_witnesses (T : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hweights : ∀ i, (rows i).weight = 1)
    (hexists : ∀ i, ∃ z : ZeroPoint, ‖z.1 - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ))
    (hcount : heightCount (T : ℝ) ≤ k) : HeadBinding (T : ℝ) rows := by
  apply of_local_witnesses T rows hgeometry
  · intro i
    obtain ⟨z, hz⟩ := hexists i
    refine ⟨z, hz, ?_⟩
    rw [hweights i]
    exact multiplicity_pos z
  · simpa only [hweights, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul,
      mul_one] using hcount

/-- A unit-weight complete binding forces simplicity at EVERY point in the head. -/
theorem all_simple_of_unit_binding (T : ℝ) {k : ℕ} (rows : Fin k → WeightedInput)
    (b : HeadBinding T rows) (hw : ∀ i, (rows i).weight = 1) :
    ∀ z ∈ heightHead T, multiplicity z = 1 := by
  intro z hz
  obtain ⟨i, hi⟩ := b.index.surjective ⟨z, hz⟩
  have he : (b.index i).1 = z := congrArg Subtype.val hi
  have hm := b.weight_eq i
  rw [he, hw i] at hm
  exact hm.symm

/-- Geometry alone is insufficient: local analytic witnesses AND a source-bound
complete count are still required by this arithmetic-to-canonical adapter. -/
theorem verified_head_of_local_witnesses (x h T : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput)
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hloc : LocalWitnesses rows)
    (hcount : heightCount (T : ℝ) ≤ ∑ i, (rows i).weight)
    (tolerance : ℚ) (out : State)
    (hv : GRWTSK.Analysis.Complex.RationalTentAccumulation.verify x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧ out.error ≤ tolerance :=
  verified_head_sound x h (T : ℝ) bits rows
    (of_local_witnesses T rows hgeometry hloc hcount) tolerance out hv

/-- The source bijection is no longer a caller input. The local witnesses,
actual total count and strict prime margin are NOT numerically manufactured. -/
theorem prime_in_square_of_saturated_disks (n : ℕ) (hn : 2 ≤ n)
    (T : ℚ) (hT : 2 ≤ T) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hloc : LocalWitnesses rows)
    (hcount : heightCount (T : ℝ) ≤ ∑ i, (rows i).weight)
    (tolerance : ℚ) (out : State)
    (hv : GRWTSK.Analysis.Complex.RationalTentAccumulation.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows tolerance out = true)
    (hmargin : 0 < canonicalPrimeMargin n (T : ℝ)
      ((QComplex.embed out.value).re + (out.error : ℝ)) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_verified_rational_head n hn (T : ℝ) (by exact_mod_cast hT)
    bits rows (of_local_witnesses T rows hgeometry hloc hcount) tolerance out hv hmargin

end GRWTSK.NumberTheory.Chebyshev.CanonicalZeroHeadBinding
