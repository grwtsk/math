/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses the existing real Frey stages, basis and weighted lift.
Formalization assistance: OpenAI.

An explicitly selected finite coefficient heat on THREE copies of the old
W_k, plus an independent closure copy. Ordinary real coefficient topology
is separate from the previous discrete-jet topology. The flow fixes the
whole diagonal W_k; it is not a Dolbeault projection or arithmetic heat.
The old weighted map and all source/grade metric costs are retained.
Unelaborated source proof scripts; no global instance or execution receipt.
-/
import GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCoefficientHeat

open FreyWeightedSections FreyWeightedBasis FreyWeightedEnergy
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

open GRWTSK.Analysis.LinearAlgebra

/-- Coefficients are observed in the old basis; phase labels are not torsion translations. -/
def phaseCoefficients (a b : ℝ) (k : ℕ) (z : Fin 3 → stage a b k) (i : Index k) :
    ThreePhaseCoefficientHeat.Triple := fun j => coordinates a b k (z j) i

/-- Mean and relaxation are defined directly on the existing function space. -/
def meanStage (a b : ℝ) (k : ℕ) (z : Fin 3 → stage a b k) : stage a b k :=
  (1 / 3 : ℝ) • (z 0 + z 1 + z 2)

def heat (a b : ℝ) (k : ℕ) (t : ℝ) (z : Fin 3 → stage a b k) : Fin 3 → stage a b k :=
  fun j => meanStage a b k z + ThreePhaseCoefficientHeat.decay t • (z j - meanStage a b k z)

/-- The closure copy is not a fourth geometric phase port. -/
def closureHeat (a b : ℝ) (k : ℕ) (t : ℝ) (c : stage a b k) : stage a b k :=
  ThreePhaseCoefficientHeat.decay t • c

private theorem coordinates_injective (a b : ℝ) (k : ℕ) :
    Function.Injective (coordinates a b k) := by
  intro u v h
  have hs := congrArg (synthesize a b k) h
  simpa only [synthesize_coordinates] using hs

@[simp] theorem coordinates_add (a b : ℝ) (k : ℕ) (u v : stage a b k) (i : Index k) :
    coordinates a b k (u + v) i = coordinates a b k u i + coordinates a b k v i := by
  simp [coordinates]

@[simp] theorem coordinates_smul (a b : ℝ) (k : ℕ) (d : ℝ) (u : stage a b k) (i : Index k) :
    coordinates a b k (d • u) i = d * coordinates a b k u i := by simp [coordinates]

@[simp] theorem coordinates_sub (a b : ℝ) (k : ℕ) (u v : stage a b k) (i : Index k) :
    coordinates a b k (u - v) i = coordinates a b k u i - coordinates a b k v i := by
  simp [coordinates]

theorem mean_coordinates (a b : ℝ) (k : ℕ) (z : Fin 3 → stage a b k) (i : Index k) :
    coordinates a b k (meanStage a b k z) i = ThreePhaseCoefficientHeat.mean (phaseCoefficients a b k z i) := by
  simp only [meanStage, coordinates_smul, coordinates_add, ThreePhaseCoefficientHeat.mean, phaseCoefficients]
  ring

/-- Same-map identity for every coefficient of every phase, not a sampled waveform. -/
theorem heat_coordinates (a b : ℝ) (k : ℕ) (t : ℝ) (z : Fin 3 → stage a b k) (i : Index k) :
    phaseCoefficients a b k (heat a b k t z) i = ThreePhaseCoefficientHeat.flow t (phaseCoefficients a b k z i) := by
  funext j
  simp only [phaseCoefficients, heat, coordinates_add, coordinates_smul, coordinates_sub,
    mean_coordinates, ThreePhaseCoefficientHeat.flow, ThreePhaseCoefficientHeat.relax]

@[simp] theorem closure_coordinates (a b : ℝ) (k : ℕ) (t : ℝ) (c : stage a b k) (i : Index k) :
    coordinates a b k (closureHeat a b k t c) i = ThreePhaseCoefficientHeat.decay t * coordinates a b k c i :=
  coordinates_smul a b k _ c i

@[simp] theorem heat_zero (a b : ℝ) (k : ℕ) (z : Fin 3 → stage a b k) : heat a b k 0 z = z := by
  funext j
  simp [heat, ThreePhaseCoefficientHeat.decay_zero]

/-- The mean is the entire old W_k-valued section, not merely one scalar coordinate. -/
theorem mean_heat (a b : ℝ) (k : ℕ) (t : ℝ) (z : Fin 3 → stage a b k) :
    meanStage a b k (heat a b k t z) = meanStage a b k z := by
  apply coordinates_injective a b k
  funext i
  rw [mean_coordinates, heat_coordinates, ThreePhaseCoefficientHeat.mean_flow, mean_coordinates]

/-- Additive real time gives the exact selected semigroup on the old stages. -/
theorem heat_add (a b : ℝ) (k : ℕ) (s t : ℝ) (z : Fin 3 → stage a b k) :
    heat a b k (s + t) z = heat a b k s (heat a b k t z) := by
  funext j
  apply coordinates_injective a b k
  funext i
  change phaseCoefficients a b k (heat a b k (s + t) z) i j =
    phaseCoefficients a b k (heat a b k s (heat a b k t z)) i j
  rw [heat_coordinates, heat_coordinates, heat_coordinates, ThreePhaseCoefficientHeat.flow_add]

@[simp] theorem closureHeat_zero (a b : ℝ) (k : ℕ) (c : stage a b k) :
    closureHeat a b k 0 c = c := by simp [closureHeat]

theorem closureHeat_add (a b : ℝ) (k : ℕ) (s t : ℝ) (c : stage a b k) :
    closureHeat a b k (s + t) c = closureHeat a b k s (closureHeat a b k t c) := by
  simp only [closureHeat, ThreePhaseCoefficientHeat.decay_add, mul_smul]

/-- Ordinary finite-product REAL topology on the established coefficient frame.
This neither replaces nor identifies the previous discrete-jet topology. -/
def coefficientTopology (a b : ℝ) (k : ℕ) : TopologicalSpace (stage a b k) :=
  TopologicalSpace.induced (coordinates a b k) inferInstance

/-- Nonconstant continuous real-time evolution is now possible in the declared topology. -/
theorem heat_continuous (a b : ℝ) (k : ℕ) (z : Fin 3 → stage a b k) (j : Fin 3) :
    @Continuous ℝ (stage a b k) inferInstance (coefficientTopology a b k)
      (fun t => heat a b k t z j) := by
  apply continuous_induced_rng.mpr
  apply continuous_pi
  intro i
  have heq : (fun t => coordinates a b k (heat a b k t z j) i) =
      (fun t => ThreePhaseCoefficientHeat.flow t (phaseCoefficients a b k z i) j) :=
    funext (fun t => congrFun (heat_coordinates a b k t z i) j)
  rw [heq]
  exact (continuous_apply j).comp (ThreePhaseCoefficientHeat.flow_continuous _)

theorem closureHeat_continuous (a b : ℝ) (k : ℕ) (c : stage a b k) :
    @Continuous ℝ (stage a b k) inferInstance (coefficientTopology a b k)
      (fun t => closureHeat a b k t c) := by
  apply continuous_induced_rng.mpr
  apply continuous_pi
  intro i
  simp only [Function.comp_apply, closure_coordinates]
  exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul continuous_const

/-- The scalar differential equation is verified at every coordinate of the SAME stage flow. -/
theorem heat_coordinate_derivative (a b : ℝ) (k : ℕ) (z : Fin 3 → stage a b k)
    (j : Fin 3) (i : Index k) (t : ℝ) :
    HasDerivAt (fun s => coordinates a b k (heat a b k s z j) i)
      (-(ThreePhaseCoefficientHeat.generator (phaseCoefficients a b k (heat a b k t z) i) j)) t := by
  have heq : (fun s => coordinates a b k (heat a b k s z j) i) =
      (fun s => ThreePhaseCoefficientHeat.flow s (phaseCoefficients a b k z i) j) :=
    funext (fun s => congrFun (heat_coordinates a b k s z i) j)
  rw [heq, heat_coordinates]
  exact ThreePhaseCoefficientHeat.flow_derivative _ j t

/-- The old weighted lift acts equally on each phase, hence fixes the averaging operation. -/
theorem heat_lift (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (t : ℝ)
    (z : Fin 3 → stage a b k) :
    (fun j => stageEquiv a b l hl k (heat a b k t z j)) =
      heat a b k t (fun j => stageEquiv a b l hl k (z j)) := by
  funext j
  simp only [heat, meanStage, map_add, map_sub, map_smul]

/-- This also binds the separate closure channel to the original weighted lift. -/
theorem closureHeat_lift (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (t : ℝ)
    (c : stage a b k) :
    stageEquiv a b l hl k (closureHeat a b k t c) =
      closureHeat a b k t (stageEquiv a b l hl k c) := by simp [closureHeat]

/-- Same-map continuity in the coefficient topology; it is not a metric-isometry claim. -/
theorem lift_continuous (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) :
    @Continuous (stage a b k) (stage a b k) (coefficientTopology a b k)
      (coefficientTopology a b k) (stageEquiv a b l hl k) := by
  letI : TopologicalSpace (stage a b k) := coefficientTopology a b k
  have hc : Continuous (coordinates a b k) :=
    continuous_iff_le_induced.mpr le_rfl
  apply continuous_induced_rng.mpr
  have heq : (coordinates a b k ∘ stageEquiv a b l hl k) =
      (fun f => GRWTSK.LinearAlgebra.WeightedPermutationEnergy.transport
        (reverse k) (weight (a * b) k) (coordinates a b k f)) :=
    funext (coordinates_stage a b l hl k)
  rw [heq]
  apply continuous_pi
  intro j
  exact continuous_const.mul ((continuous_apply ((reverse k).symm j)).comp hc)

/-- Sum of the selected coefficient diagnostics; closure weight remains explicit. -/
def defectEnergy (a b : ℝ) (k : ℕ) (lam : ℝ) (z : Fin 3 → stage a b k) (c : stage a b k) : ℝ :=
  ∑ i, ThreePhaseCoefficientHeat.defectEnergy lam (phaseCoefficients a b k z i) (coordinates a b k c i)

def totalEnergy (a b : ℝ) (k : ℕ) (lam : ℝ) (z : Fin 3 → stage a b k) (c : stage a b k) : ℝ :=
  ∑ i, ThreePhaseCoefficientHeat.totalEnergy lam (phaseCoefficients a b k z i) (coordinates a b k c i)

/-- The metric uses the PREVIOUS stage energy, not a newly fitted geometric norm. -/
theorem totalEnergy_agrees (a b : ℝ) (k : ℕ) (lam : ℝ)
    (z : Fin 3 → stage a b k) (c : stage a b k) :
    totalEnergy a b k lam z c = coefficientEnergy a b k (z 0) +
      coefficientEnergy a b k (z 1) + coefficientEnergy a b k (z 2) +
      lam * coefficientEnergy a b k c := by
  simp only [totalEnergy, ThreePhaseCoefficientHeat.totalEnergy, ThreePhaseCoefficientHeat.phaseEnergy, Fin.sum_univ_three,
    phaseCoefficients, Finset.sum_add_distrib, ← Finset.mul_sum, coefficientEnergy,
    GRWTSK.LinearAlgebra.WeightedPermutationEnergy.energy]

theorem defect_heat (a b : ℝ) (k : ℕ) (lam t : ℝ)
    (z : Fin 3 → stage a b k) (c : stage a b k) :
    defectEnergy a b k lam (heat a b k t z) (closureHeat a b k t c) =
      Real.exp (-6 * t) * defectEnergy a b k lam z c := by
  simp only [defectEnergy, heat_coordinates, closure_coordinates, ThreePhaseCoefficientHeat.defect_flow,
    Finset.mul_sum]

/-- The whole diagonal W_k survives. No projection onto a geometric H0 is inferred. -/
theorem total_heat (a b : ℝ) (k : ℕ) (lam t : ℝ)
    (z : Fin 3 → stage a b k) (c : stage a b k) :
    totalEnergy a b k lam (heat a b k t z) (closureHeat a b k t c) =
      3 * coefficientEnergy a b k (meanStage a b k z) +
        Real.exp (-6 * t) * defectEnergy a b k lam z c := by
  simp only [totalEnergy, heat_coordinates, closure_coordinates, ThreePhaseCoefficientHeat.total_flow,
    Finset.sum_add_distrib, ← Finset.mul_sum, coefficientEnergy,
    GRWTSK.LinearAlgebra.WeightedPermutationEnergy.energy, mean_coordinates, defectEnergy]

theorem defect_nonneg (a b : ℝ) (k : ℕ) (lam : ℝ) (hlam : 0 ≤ lam)
    (z : Fin 3 → stage a b k) (c : stage a b k) : 0 ≤ defectEnergy a b k lam z c :=
  Finset.sum_nonneg (fun i _ => ThreePhaseCoefficientHeat.defect_nonneg lam hlam _ _)

/-- Exact vanishing detects the WHOLE diagonal section and the independent closure copy. -/
theorem defect_zero_iff (a b : ℝ) (k : ℕ) (lam : ℝ) (hlam : 0 < lam)
    (z : Fin 3 → stage a b k) (c : stage a b k) :
    defectEnergy a b k lam z c = 0 ↔ (∀ j, z j = meanStage a b k z) ∧ c = 0 := by
  constructor
  · intro h
    have hi : ∀ i : Index k, ThreePhaseCoefficientHeat.defectEnergy lam
        (phaseCoefficients a b k z i) (coordinates a b k c i) = 0 := by
      intro i
      have hlo := ThreePhaseCoefficientHeat.defect_nonneg lam hlam.le
        (phaseCoefficients a b k z i) (coordinates a b k c i)
      have hhi : ThreePhaseCoefficientHeat.defectEnergy lam
          (phaseCoefficients a b k z i) (coordinates a b k c i) ≤ defectEnergy a b k lam z c :=
        Finset.single_le_sum (fun j _ => ThreePhaseCoefficientHeat.defect_nonneg lam hlam.le _ _)
          (Finset.mem_univ i)
      rw [h] at hhi
      linarith
    constructor
    · intro j
      apply coordinates_injective a b k
      funext i
      have hz := ((ThreePhaseCoefficientHeat.defect_zero_iff lam hlam _ _).mp (hi i)).1 j
      exact hz.trans (mean_coordinates a b k z i).symm
    · apply coordinates_injective a b k
      funext i
      have hc := ((ThreePhaseCoefficientHeat.defect_zero_iff lam hlam _ _).mp (hi i)).2
      simpa [coordinates] using hc
  · rintro ⟨hz, hc⟩
    apply Finset.sum_eq_zero
    intro i _
    apply (ThreePhaseCoefficientHeat.defect_zero_iff lam hlam _ _).mpr
    constructor
    · intro j
      change coordinates a b k (z j) i = _
      rw [hz j, mean_coordinates]
    · simp [hc, coordinates]

/-- Positive-time contraction, with the positive closure metric assumption retained. -/
theorem defect_contraction (a b : ℝ) (k : ℕ) (lam : ℝ) (hlam : 0 ≤ lam)
    (t : ℝ) (ht : 0 ≤ t) (z : Fin 3 → stage a b k) (c : stage a b k) :
    defectEnergy a b k lam (heat a b k t z) (closureHeat a b k t c) ≤ defectEnergy a b k lam z c := by
  apply Finset.sum_le_sum
  intro i _
  rw [heat_coordinates, closure_coordinates]
  exact ThreePhaseCoefficientHeat.defect_contraction lam hlam t ht _ _

/-- A concrete nonconstant path in every existing stage, using its actual constant basis vector. -/
theorem nonconstant_stage_fixture (a b : ℝ) (k : ℕ) :
    ∃ z : Fin 3 → stage a b k, heat a b k 1 z ≠ heat a b k 0 z := by
  classical
  let i : Index k := Sum.inl ⟨0, Nat.zero_lt_succ k⟩
  let z : Fin 3 → stage a b k := fun j => (![1, -1, 0] j : ℝ) • basis a b k i
  have hc : phaseCoefficients a b k z i = ![1, -1, 0] := by
    funext j
    simp [phaseCoefficients, z, coordinates, Finsupp.single_apply]
  refine ⟨z, ?_⟩
  intro h
  have hh := congrArg (fun zz => phaseCoefficients a b k zz i) h
  rw [heat_coordinates, heat_coordinates, hc] at hh
  exact ThreePhaseCoefficientHeat.nonconstant_fixture hh

/-- Exact finite-time vanishing is equivalent to an already vanishing initial defect. -/
theorem finite_time_zero_iff (a b : ℝ) (k : ℕ) (lam t : ℝ)
    (z : Fin 3 → stage a b k) (c : stage a b k) :
    defectEnergy a b k lam (heat a b k t z) (closureHeat a b k t c) = 0 ↔
      defectEnergy a b k lam z c = 0 := by
  rw [defect_heat, mul_eq_zero]
  simp only [ne_of_gt (Real.exp_pos (-6 * t)), false_or]

/-- The existing weighted transport costs persist on the three-phase-plus-closure cell. -/
theorem lifted_total_bounds (a b l : ℝ) (hl : a * b * l = 1) (hab : 1 ≤ a * b)
    (k : ℕ) (lam : ℝ) (hlam : 0 ≤ lam) (z : Fin 3 → stage a b k) (c : stage a b k) :
    totalEnergy a b k lam z c ≤
      totalEnergy a b k lam (fun j => stageEquiv a b l hl k (z j)) (stageEquiv a b l hl k c) ∧
    totalEnergy a b k lam (fun j => stageEquiv a b l hl k (z j)) (stageEquiv a b l hl k c) ≤
      ((a * b) ^ 2) ^ k * totalEnergy a b k lam z c := by
  have h0 := coefficientEnergy_bounds a b l hl hab k (z 0)
  have h1 := coefficientEnergy_bounds a b l hl hab k (z 1)
  have h2 := coefficientEnergy_bounds a b l hl hab k (z 2)
  have hc := coefficientEnergy_bounds a b l hl hab k c
  have hlo := mul_le_mul_of_nonneg_left hc.1 hlam
  have hhi := mul_le_mul_of_nonneg_left hc.2 hlam
  simp only [totalEnergy_agrees]
  constructor <;> nlinarith [h0.1, h0.2, h1.1, h1.2, h2.1, h2.2]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCoefficientHeat
