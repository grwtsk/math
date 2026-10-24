import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
import GRWTSK.Analysis.Operator.HolomorphicLineGaugePort

/-!
# Pointwise adjoints of rank-one compatible fiber operators

Every complex-linear endomorphism of a line is scalar multiplication. The overlap law makes its
coefficient chart-independent, so conjugating that coefficient constructs a compatible adjoint.
The adjoint identity and uniqueness refer to the exact weighted fiber pairing. They are not an
adjoint theorem for differential operators or a Hilbert space of global sections.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicLineAdjoint

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Operator.HolomorphicLinePort
open GRWTSK.Analysis.Operator.HolomorphicLineGaugePort

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

def coefficient (A : CompatibleOperators C) (i : ι) (z : (D.U i).carrier) : ℂ :=
  A.localOp i z 1

theorem localOp_eq_mul (A : CompatibleOperators C) (i : ι) (z : (D.U i).carrier)
    (a : ℂ) : A.localOp i z a = coefficient A i z * a := by
  have h : A.localOp i z a = a * A.localOp i z 1 := by
    simpa only [smul_eq_mul, mul_one] using (A.localOp i z).map_smul a (1 : ℂ)
  exact h.trans (mul_comm _ _)

/-- Nonzero transitions and the actual intertwining law force the same scalar in every chart. -/
theorem coefficient_matching (A : CompatibleOperators C) (i j : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier) :
    coefficient A j ⟨x.1, hj⟩ = coefficient A i ⟨x.1, hi⟩ := by
  apply mul_right_cancel₀ (C.scalar_ne_zero i j x hi hj)
  calc
    coefficient A j ⟨x.1, hj⟩ * C.scalar i j x =
        A.localOp j ⟨x.1, hj⟩ (C.scalar i j x) := (localOp_eq_mul A j _ _).symm
    _ = C.scalar i j x * coefficient A i ⟨x.1, hi⟩ := by
      simpa only [mul_one] using A.intertwines i j x hi hj 1
    _ = coefficient A i ⟨x.1, hi⟩ * C.scalar i j x := mul_comm _ _

theorem ext_localOp {A B : CompatibleOperators C} (h : A.localOp = B.localOp) : A = B := by
  cases A
  cases B
  cases h
  rfl

/-- The adjoint is constructed from local scalar coefficients, not supplied as an assumption. -/
def adjoint (A : CompatibleOperators C) : CompatibleOperators C where
  localOp i z := (starRingEnd ℂ) (coefficient A i z) • ContinuousLinearMap.id ℂ ℂ
  intertwines := by
    intro i j x hi hj a
    change (starRingEnd ℂ) (coefficient A j ⟨x.1, hj⟩) * (C.scalar i j x * a) =
      C.scalar i j x * ((starRingEnd ℂ) (coefficient A i ⟨x.1, hi⟩) * a)
    rw [coefficient_matching A i j x hi hj]
    ring

@[simp] theorem adjoint_coefficient (A : CompatibleOperators C)
    (i : ι) (z : (D.U i).carrier) :
    coefficient (adjoint A) i z = (starRingEnd ℂ) (coefficient A i z) := by
  change (starRingEnd ℂ) (coefficient A i z) * 1 = _
  exact mul_one _

/-- The same pairing convention is used on both sides of the adjoint equation. -/
theorem adjoint_pairing (A : CompatibleOperators C) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a b : (C.vectorBundleCore hOpen).Fiber x) :
    M.pairing hOpen x (A.descend hOpen x a) b =
      M.pairing hOpen x a ((adjoint A).descend hOpen x b) := by
  change weightedPair (M.atPoint x) (A.localOp (D.select x) ⟨x.1, D.select_mem x⟩ a) b =
    weightedPair (M.atPoint x) a
      ((starRingEnd ℂ) (coefficient A (D.select x) ⟨x.1, D.select_mem x⟩) * b)
  rw [localOp_eq_mul]
  simp only [weightedPair, map_mul]
  ring

/-- Positive definiteness makes this adjoint unique among maps on the exact fiber. -/
theorem adjoint_unique (A : CompatibleOperators C) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (B : (C.vectorBundleCore hOpen).Fiber x →L[ℂ] (C.vectorBundleCore hOpen).Fiber x)
    (hB : ∀ a b, M.pairing hOpen x (A.descend hOpen x a) b =
      M.pairing hOpen x a (B b)) : B = (adjoint A).descend hOpen x := by
  apply ContinuousLinearMap.ext
  intro b
  have h := (hB 1 b).symm.trans (adjoint_pairing A M hOpen x 1 b)
  have hw : (M.atPoint x : ℂ) ≠ 0 := by
    intro hz
    exact (ne_of_gt (M.atPoint_pos x)) (congrArg Complex.re hz)
  apply mul_left_cancel₀ hw
  simpa only [MetricWeights.pairing, weightedPair, map_one, one_mul] using h

theorem adjoint_involutive (A : CompatibleOperators C) : adjoint (adjoint A) = A := by
  apply ext_localOp
  funext i z
  apply ContinuousLinearMap.ext
  intro a
  rw [localOp_eq_mul, adjoint_coefficient, adjoint_coefficient, localOp_eq_mul]
  have hc : (starRingEnd ℂ) ((starRingEnd ℂ) (coefficient A i z)) = coefficient A i z :=
    star_star _
  rw [hc]

/-- A gauge does not change the scalar of a rank-one endomorphism. This is rank-specific. -/
theorem transport_coefficient (G : Gauge C E) (A : CompatibleOperators C)
    (i : ι) (z : (D.U i).carrier) : coefficient (transport G A) i z = coefficient A i z := by
  change (transport G A).localOp i z 1 = _
  rw [transport_apply, localOp_eq_mul]
  calc
    _ = (unitValue (G.frame i) z * unitValue (G.frame i)⁻¹ z) * coefficient A i z := by ring
    _ = coefficient A i z := by rw [unitValue_mul_inv, one_mul]

/-- The constructed adjoint commutes with the same gauge conjugation as the original operator. -/
theorem adjoint_transport (G : Gauge C E) (A : CompatibleOperators C) :
    adjoint (transport G A) = transport G (adjoint A) := by
  apply ext_localOp
  funext i z
  apply ContinuousLinearMap.ext
  intro a
  rw [localOp_eq_mul, adjoint_coefficient, transport_coefficient,
    localOp_eq_mul, transport_coefficient, adjoint_coefficient]

/-- Adjoint transport and the fiber map retain exact source and target endpoints. -/
theorem adjoint_intertwines (G : Gauge C E) (A : CompatibleOperators C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    (adjoint (transport G A)).descend hOpen x (G.fiberMap hOpen x a) =
      G.fiberMap hOpen x ((adjoint A).descend hOpen x a) := by
  rw [adjoint_transport]
  exact descend_intertwines G (adjoint A) hOpen x a

/-- Pointwise length distortion is exact; no base-uniform bound is inferred. -/
theorem squaredNorm_descend (A : CompatibleOperators C) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    M.squaredNorm hOpen x (A.descend hOpen x a) =
      Complex.normSq (coefficient A (D.select x) ⟨x.1, D.select_mem x⟩) *
        M.squaredNorm hOpen x a := by
  change M.atPoint x * Complex.normSq (A.localOp (D.select x) ⟨x.1, D.select_mem x⟩ a) = _
  rw [localOp_eq_mul, Complex.normSq_mul]
  change M.atPoint x * (_ * Complex.normSq a) = _ * (M.atPoint x * Complex.normSq a)
  ring

/-- Holomorphic preservation is precisely a condition on the scalar coefficient functions. -/
theorem preservesHolomorphy_iff (A : CompatibleOperators C) :
    A.PreservesHolomorphy ↔ ∀ i, ExtendsHolomorphically (D.U i) (coefficient A i) := by
  constructor
  · intro h i
    exact h i 1
  · intro h i f
    let c : HolomorphicSection (D.U i) := ⟨coefficient A i, h i⟩
    have heq : (fun z => A.localOp i z ((f : Section (D.U i)) z)) =
        ((c * f : HolomorphicSection (D.U i)) : Section (D.U i)) := by
      funext z
      exact localOp_eq_mul A i z _
    rw [heq]
    exact (c * f).property

/-- Conjugated coefficients need their own holomorphic witnesses; the original ones do not suffice. -/
theorem adjoint_preservesHolomorphy_iff (A : CompatibleOperators C) :
    (adjoint A).PreservesHolomorphy ↔
      ∀ i, ExtendsHolomorphically (D.U i) (fun z => (starRingEnd ℂ) (coefficient A i z)) := by
  rw [preservesHolomorphy_iff]
  simp only [adjoint_coefficient]

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection)

/-- A holomorphic multiplication operator need not be self-adjoint in a positive metric. -/
theorem imaginary_multiplication_not_selfAdjoint :
    let A := CompatibleOperators.multiplication (Cocycle.identity twoCharts)
      (constantSection twoCharts.X Complex.I)
    A.PreservesHolomorphy ∧ adjoint A ≠ A := by
  constructor
  · exact CompatibleOperators.multiplication_preservesHolomorphy _
  · intro h
    have hh := congrArg (fun A : CompatibleOperators (Cocycle.identity twoCharts) =>
      coefficient A false ⟨0, Set.mem_univ _⟩) h
    rw [adjoint_coefficient] at hh
    have him := congrArg Complex.im hh
    norm_num [coefficient, CompatibleOperators.multiplication, constantSection] at him

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicLineAdjoint
