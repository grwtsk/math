import GRWTSK.Geometry.Hodge.FiniteEdgeRealization

namespace GRWTSK.Geometry.Hodge.DegreeZeroCohomology

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

universe u v w x y

variable {R : Type u} [Ring R]
variable {C₀ : Type v} {C₁ : Type w}
variable [AddCommGroup C₀] [Module R C₀]
variable [AddCommGroup C₁] [Module R C₁]

/-- Degree-zero cocycles of a two-term cochain complex. -/
abbrev Cocycle0 (A : TwoTermHodgeData R C₀ C₁) := A.delta.ker

namespace Cocycle0

variable {A : TwoTermHodgeData R C₀ C₁}

/-- The underlying cochain representative of a degree-zero cocycle. -/
def representative : Cocycle0 A →ₗ[R] C₀ := A.delta.ker.subtype

@[simp]
theorem representative_apply (x : Cocycle0 A) : representative x = (x : C₀) := rfl

/-- Every degree-zero cocycle is killed by the coboundary. -/
@[simp]
theorem delta_representative (x : Cocycle0 A) : A.delta (representative x) = 0 :=
  x.property

end Cocycle0

/-- Exact finite Hodge-kernel identification in degree zero.

This is the missing positive-metric theorem in a general algebraic `TwoTermHodgeData`: it must be
proved by the concrete realization and is not inferred from the name `deltaStar`. -/
structure HarmonicKernelExact (A : TwoTermHodgeData R C₀ C₁) : Prop where
  harmonic_iff_cocycle : ∀ x, A.IsHarmonic0 x ↔ A.delta x = 0

namespace HarmonicKernelExact

variable {A : TwoTermHodgeData R C₀ C₁}

/-- The representative of every degree-zero cocycle is harmonic under an exact kernel theorem. -/
theorem representative_harmonic
    (K : HarmonicKernelExact A) (x : Cocycle0 A) :
    A.IsHarmonic0 (Cocycle0.representative x) := by
  apply (K.harmonic_iff_cocycle _).2
  exact x.property

end HarmonicKernelExact

/-- A complete degree-zero cohomology model: the selected class space is linearly equivalent to
all degree-zero cocycles. For a two-term complex starting in degree zero there are no incoming
boundaries, so this is the exact `H⁰` object. -/
structure HZeroModel
    (A : TwoTermHodgeData R C₀ C₁)
    (HZero : Type x) [AddCommGroup HZero] [Module R HZero] where
  classEquiv : HZero ≃ₗ[R] Cocycle0 A

namespace HZeroModel

variable {A : TwoTermHodgeData R C₀ C₁}
variable {HZero : Type x} [AddCommGroup HZero] [Module R HZero]

/-- Underlying cochain representative of a degree-zero cohomology class. -/
def representative (M : HZeroModel A HZero) : HZero →ₗ[R] C₀ :=
  Cocycle0.representative.comp M.classEquiv.toLinearMap

/-- Every represented class is a cocycle. -/
theorem delta_representative (M : HZeroModel A HZero) (h : HZero) :
    A.delta (M.representative h) = 0 := by
  exact (M.classEquiv h).property

/-- Every represented class is harmonic when the concrete Hodge kernel equals the cocycle kernel. -/
theorem representative_harmonic
    (M : HZeroModel A HZero) (K : HarmonicKernelExact A) (h : HZero) :
    A.IsHarmonic0 (M.representative h) := by
  apply (K.harmonic_iff_cocycle _).2
  exact M.delta_representative h

end HZeroModel

section RationalComparison

variable {Cycle : Type u} {HodgeClass : Type x}
variable [AddCommGroup Cycle] [Module ℚ Cycle]
variable [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
variable {D₀ : Type v} {D₁ : Type w}
variable [AddCommGroup D₀] [Module ℚ D₀]
variable [AddCommGroup D₁] [Module ℚ D₁]
variable {H : RationalHodgeData Cycle HodgeClass}
variable {A : RationalTwoTermHodgeData D₀ D₁}

/-- A genuine cohomology-level comparison: both algebraic cycles and Hodge classes land in the
actual degree-zero cocycle space of the selected finite complex.

The commuting maps may both be zero. This record does not require an equivalence or
surjectivity onto all degree-zero cohomology classes. -/
structure CycleHZeroComparison
    (H : RationalHodgeData Cycle HodgeClass)
    (A : RationalTwoTermHodgeData D₀ D₁) where
  hodgeToCocycle : HodgeClass →ₗ[ℚ] Cocycle0 A
  cycleToCocycle : Cycle →ₗ[ℚ] Cocycle0 A
  commute : cycleToCocycle = hodgeToCocycle.comp H.cycleClass

namespace CycleHZeroComparison

/-- Pointwise form of the cycle-class/cohomology comparison square. -/
@[simp]
theorem cycleToCocycle_apply
    (C : CycleHZeroComparison H A) (z : Cycle) :
    C.cycleToCocycle z = C.hodgeToCocycle (H.cycleClass z) := by
  have h := congrArg (fun f : Cycle →ₗ[ℚ] Cocycle0 A => f z) C.commute
  simpa [LinearMap.comp_apply] using h

end CycleHZeroComparison

/-- Complete source-bound adapter from rational-Hodge surjectivity to an actual finite degree-zero
cohomology class and harmonic cochain representative. -/
structure RationalHodgeHZeroAdapter
    (H : RationalHodgeData Cycle HodgeClass)
    (A : RationalTwoTermHodgeData D₀ D₁) where
  globalTheorem : SourceBoundRationalHodgeTheorem H
  comparison : CycleHZeroComparison H A
  harmonicKernel : HarmonicKernelExact A

namespace RationalHodgeHZeroAdapter

/-- Every selected rational Hodge class receives an algebraic-cycle witness, the corresponding
finite degree-zero cocycle, and a harmonic cochain representative. -/
theorem exists_cycle_cocycle_harmonic
    (G : RationalHodgeHZeroAdapter H A) (h : HodgeClass) :
    ∃ z : Cycle,
      H.cycleClass z = h ∧
      G.comparison.cycleToCocycle z = G.comparison.hodgeToCocycle h ∧
      A.IsHarmonic0
        (Cocycle0.representative (G.comparison.hodgeToCocycle h)) := by
  obtain ⟨z, hz⟩ := G.globalTheorem.surjective h
  refine ⟨z, hz, ?_, ?_⟩
  · rw [CycleHZeroComparison.cycleToCocycle_apply, hz]
  · exact G.harmonicKernel.representative_harmonic _

end RationalHodgeHZeroAdapter

end RationalComparison

namespace EdgeFixture

open GRWTSK.Geometry.Hodge.FiniteEdgeRealization

/-- A rational scalar determines the constant degree-zero cocycle on the finite edge. -/
def constantCocycle : ℚ →ₗ[ℚ] Cocycle0 edgeHodge where
  toFun c := ⟨(c, c), by simp [edgeHodge, edgeDelta]⟩
  map_add' s t := by
    apply Subtype.ext
    ext <;> simp
  map_smul' r t := by
    apply Subtype.ext
    ext <;> simp

/-- Constant cocycles are exactly all degree-zero cocycles of the connected one-edge complex. -/
def constantCocycleEquiv : ℚ ≃ₗ[ℚ] Cocycle0 edgeHodge where
  toFun := constantCocycle
  invFun x := (x : ℚ × ℚ).1
  left_inv c := rfl
  right_inv x := by
    apply Subtype.ext
    rcases x with ⟨⟨a, b⟩, h⟩
    have hab : a = b := by
      change edgeDelta (a, b) = 0 at h
      exact sub_eq_zero.mp h
    simp [constantCocycle, hab]
  map_add' s t := by
    apply Subtype.ext
    ext <;> simp [constantCocycle]
  map_smul' r t := by
    apply Subtype.ext
    ext <;> simp [constantCocycle]

/-- On the positive finite-edge Hodge complex, harmonicity is exactly the cocycle equation. -/
theorem edge_harmonic_iff_cocycle (x : ℚ × ℚ) :
    edgeHodge.IsHarmonic0 x ↔ edgeHodge.delta x = 0 := by
  constructor
  · intro h
    unfold TwoTermHodgeData.IsHarmonic0 at h
    change edgeDeltaStar (edgeDelta x) = 0 at h
    have hfst := congrArg Prod.fst h
    simpa [edgeHodge, edgeDeltaStar] using hfst
  · intro h
    change edgeDelta x = 0 at h
    unfold TwoTermHodgeData.IsHarmonic0
    change edgeDeltaStar (edgeDelta x) = 0
    rw [h]
    simp [edgeDeltaStar]

/-- Exact harmonic-kernel identification for the finite edge. -/
theorem edgeKernelExact : HarmonicKernelExact edgeHodge where
  harmonic_iff_cocycle := edge_harmonic_iff_cocycle

/-- Exact `H⁰` model of the finite edge. -/
def edgeHZeroModel : HZeroModel edgeHodge ℚ where
  classEquiv := constantCocycleEquiv

/-- The identity rational cycle class lands in the actual finite-edge cocycle space. -/
def pointHZeroComparison : CycleHZeroComparison pointCycleClass edgeHodge where
  hodgeToCocycle := constantCocycle
  cycleToCocycle := constantCocycle
  commute := rfl

/-- Complete cohomology-level finite-edge adapter. -/
def pointHZeroAdapter : RationalHodgeHZeroAdapter pointCycleClass edgeHodge where
  globalTheorem := pointSourceTheorem
  comparison := pointHZeroComparison
  harmonicKernel := edgeKernelExact

/-- Every rational fixture class has a cycle, an exact degree-zero cocycle, and a harmonic
representative in the nontrivial finite edge complex. -/
theorem pointHZeroAdapter_realizes (h : ℚ) :
    ∃ z : ℚ,
      pointCycleClass.cycleClass z = h ∧
      pointHZeroAdapter.comparison.cycleToCocycle z =
        pointHZeroAdapter.comparison.hodgeToCocycle h ∧
      edgeHodge.IsHarmonic0
        (Cocycle0.representative
          (pointHZeroAdapter.comparison.hodgeToCocycle h)) :=
  pointHZeroAdapter.exists_cycle_cocycle_harmonic h

end EdgeFixture

end GRWTSK.Geometry.Hodge.DegreeZeroCohomology
