/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing Frey rational lattice, real coefficient energies and maps.
Formalization assistance: OpenAI.

An actual rational-to-real function map connects the previously separate
coefficient lattices and real energies. Integer-span membership is reflected
on the rational image; extending the coefficient field is not saturating
that integer lattice. No intrinsic Hodge, geometric H0, conductor or uniform
arithmetic-height theorem is supplied. Unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyArchimedeanRealization

open FreyWeightedSections FreyWeightedBasis FreyWeightedBaseChange
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- The rational-to-real map is the restriction of the original ring-presentation map. -/
def realize (a b : ℚ) (k : ℕ) :
    stage a b k →ₛₗ[algebraMap ℚ ℝ] stage (a : ℝ) (b : ℝ) k :=
  stageMap (algebraMap ℚ ℝ) a b k

theorem realize_injective (a b : ℚ) (k : ℕ) : Function.Injective (realize a b k) := by
  apply stageMap_injective
  intro u v h
  exact_mod_cast h

/-- Real coordinates are precisely the casts of the established rational coordinates. -/
theorem realize_coordinates (a b : ℚ) (k : ℕ) (f : stage a b k) (i : Index k) :
    FreyWeightedEnergy.coordinates (a : ℝ) (b : ℝ) k (realize a b k f) i =
      (((basis a b k).repr f i : ℚ) : ℝ) :=
  stageMap_coordinates (algebraMap ℚ ℝ) a b k f i

/-- The previous real lift, with its inverse witness transported from the rational source. -/
def realLift (a b l : ℚ) (hl : a * b * l = 1) (k : ℕ) :
    stage (a : ℝ) (b : ℝ) k ≃ₗ[ℝ] stage (a : ℝ) (b : ℝ) k :=
  stageEquiv (a : ℝ) (b : ℝ) (l : ℝ)
    (mapped_inverse (algebraMap ℚ ℝ) a b l hl) k

theorem realize_lift (a b l : ℚ) (hl : a * b * l = 1) (k : ℕ) (f : stage a b k) :
    realize a b k (stageEquiv a b l hl k f) = realLift a b l hl k (realize a b k f) :=
  stageMap_lift (algebraMap ℚ ℝ) a b l hl k f

theorem realize_lift_symm (a b l : ℚ) (hl : a * b * l = 1) (k : ℕ) (f : stage a b k) :
    realize a b k ((stageEquiv a b l hl k).symm f) =
      (realLift a b l hl k).symm (realize a b k f) :=
  stageMap_lift_symm (algebraMap ℚ ℝ) a b l hl k f

/-- The old real energy is now evaluated on an actual rationally sourced function. -/
theorem realize_energy (a b : ℚ) (k : ℕ) (f : stage a b k) :
    FreyWeightedEnergy.coefficientEnergy (a : ℝ) (b : ℝ) k (realize a b k f) =
      ∑ i : Index k, ((((basis a b k).repr f i : ℚ) : ℝ)) ^ 2 := by
  unfold FreyWeightedEnergy.coefficientEnergy
  unfold GRWTSK.Algebra.LinearAlgebra.WeightedPermutationEnergy.energy
  simp only [realize_coordinates]

/-- The existing sharp energy factors apply to the same rationally defined operator. -/
theorem realize_energy_bounds (a b l : ℚ) (hl : a * b * l = 1)
    (hab : 1 ≤ a * b) (k : ℕ) (f : stage a b k) :
    FreyWeightedEnergy.coefficientEnergy (a : ℝ) (b : ℝ) k (realize a b k f) ≤
      FreyWeightedEnergy.coefficientEnergy (a : ℝ) (b : ℝ) k
        (realize a b k (stageEquiv a b l hl k f)) ∧
    FreyWeightedEnergy.coefficientEnergy (a : ℝ) (b : ℝ) k
        (realize a b k (stageEquiv a b l hl k f)) ≤
      (((a : ℝ) * (b : ℝ)) ^ 2) ^ k *
        FreyWeightedEnergy.coefficientEnergy (a : ℝ) (b : ℝ) k (realize a b k f) := by
  have habR : 1 ≤ (a : ℝ) * (b : ℝ) := by exact_mod_cast hab
  simp only [realize_lift]
  exact FreyWeightedEnergy.coefficientEnergy_bounds (a : ℝ) (b : ℝ) (l : ℝ)
    (mapped_inverse (algebraMap ℚ ℝ) a b l hl) habR k (realize a b k f)

/-- Define the real integer span independently using the PREVIOUS real basis. -/
def realSynthesize (a b : ℤ) (k : ℕ) (v : Index k → ℤ) :
    stage ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k :=
  FreyWeightedEnergy.synthesize ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k (fun i => (v i : ℝ))

/-- Its coefficients are integers, not arbitrary real scalars. -/
def realEmbedding (a b : ℤ) (k : ℕ) :
    (Index k → ℤ) →ₗ[ℤ] stage ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k :=
  let F : (Index k → ℤ) →+ stage ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k :=
    { toFun := realSynthesize a b k
      map_zero' := by simp [realSynthesize, FreyWeightedEnergy.synthesize]
      map_add' := by
        intro u v
        simp [realSynthesize, FreyWeightedEnergy.synthesize, add_smul, Finset.sum_add_distrib] }
  { toFun := F
    map_add' := F.map_add
    map_smul' := fun n v => map_zsmul F v n }

def realLattice (a b : ℤ) (k : ℕ) :
    Submodule ℤ (stage ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k) := LinearMap.range (realEmbedding a b k)

/-- The old rational lattice and the independently synthesized real integer span agree. -/
theorem realize_integer_synthesize (a b : ℤ) (k : ℕ) (v : Index k → ℤ) :
    realize (a : ℚ) (b : ℚ) k (FreyWeightedLattice.synthesize a b k v) =
      realSynthesize a b k v := by
  simpa [realize, FreyWeightedLattice.synthesize, realSynthesize,
    FreyWeightedEnergy.synthesize] using
    stageMap_sum (algebraMap ℚ ℝ) (a : ℚ) (b : ℚ) k (fun i => (v i : ℚ))

/-- Injective scalar extension cannot make a nonintegral rational coordinate integral. -/
theorem realize_mem_lattice_iff (a b : ℤ) (k : ℕ) (f : stage (a : ℚ) (b : ℚ) k) :
    realize (a : ℚ) (b : ℚ) k f ∈ realLattice a b k ↔ f ∈ FreyWeightedLattice.lattice a b k := by
  change (∃ v, realSynthesize a b k v = realize (a : ℚ) (b : ℚ) k f) ↔
    ∃ v, FreyWeightedLattice.synthesize a b k v = f
  constructor
  · rintro ⟨v, hv⟩
    refine ⟨v, (realize_injective (a : ℚ) (b : ℚ) k) ?_⟩
    rw [realize_integer_synthesize]
    exact hv
  · rintro ⟨v, rfl⟩
    exact ⟨v, (realize_integer_synthesize a b k v).symm⟩

/-- Both old lifts act on the same integer-sourced vector after realization. -/
theorem realLift_integer_synthesize (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (v : Index k → ℤ) :
    realLift (a : ℚ) (b : ℚ) l hl k (realSynthesize a b k v) =
      realSynthesize a b k (FreyWeightedLattice.integerMap a b k v) := by
  rw [← realize_integer_synthesize, ← realize_lift]
  change realize (a : ℚ) (b : ℚ) k
    (FreyWeightedLattice.rationalLift a b l hl k (FreyWeightedLattice.synthesize a b k v)) = _
  rw [FreyWeightedLattice.rationalLift_synthesize, realize_integer_synthesize]

/-- The original all-depth inverse-integrality obstruction survives the real embedding. -/
theorem real_inverse_mem_lattice_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (v : Index k → ℤ) :
    (realLift (a : ℚ) (b : ℚ) l hl k).symm (realSynthesize a b k v) ∈ realLattice a b k ↔
      ∀ i, FreyWeightedLattice.weight (a * b) k i ∣ v (FreyWeightedLattice.reverse k i) := by
  rw [← realize_integer_synthesize, ← realize_lift_symm, realize_mem_lattice_iff]
  exact FreyWeightedLattice.inverse_mem_lattice_iff a b l hl k v

/-- Uniform inverse clearing on the real integer span retains the same full power. -/
theorem real_inverse_clearing_iff (a b : ℤ) (l : ℚ)
    (hl : (a : ℚ) * (b : ℚ) * l = 1) (k : ℕ) (d : ℤ) :
    (∀ v : Index k → ℤ,
      (realLift (a : ℚ) (b : ℚ) l hl k).symm (realSynthesize a b k (d • v)) ∈
        realLattice a b k) ↔ (-(a * b)) ^ k ∣ d := by
  simp_rw [real_inverse_mem_lattice_iff, ← FreyWeightedLattice.integer_image_iff]
  exact FreyWeightedLattice.integer_clearing_iff a b k d

/-- The native denominator-depth counterexample survives the real coefficient embedding. -/
theorem real_two_three_radical_fails :
    ¬ (∀ v : Index 2 → ℤ,
      (realLift (2 : ℚ) 3 (1 / 6) (by norm_num) 2).symm
        (realSynthesize 2 3 2 (6 • v)) ∈ realLattice 2 3 2) := by
  intro h
  have hd := (real_inverse_clearing_iff 2 3 (1 / 6) (by norm_num) 2 6).mp h
  norm_num at hd

/-- Real realization changes neither the integer source coefficients nor their standard energy. -/
theorem integer_energy (a b : ℤ) (k : ℕ) (v : Index k → ℤ) :
    FreyWeightedEnergy.coefficientEnergy ((a : ℚ) : ℝ) ((b : ℚ) : ℝ) k
      (realize (a : ℚ) (b : ℚ) k (FreyWeightedLattice.synthesize a b k v)) =
      ∑ i : Index k, (v i : ℝ) ^ 2 := by
  rw [realize_integer_synthesize]
  simp only [realSynthesize, FreyWeightedEnergy.coefficientEnergy,
    FreyWeightedEnergy.coordinates_synthesize,
    GRWTSK.Algebra.LinearAlgebra.WeightedPermutationEnergy.energy]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyArchimedeanRealization
