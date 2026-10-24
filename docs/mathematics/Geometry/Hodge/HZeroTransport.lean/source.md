# Complete source: GRWTSK.Geometry.Hodge.HZeroTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ca3ffd9a473b567f4a8fc4b36be7008b8dd5cc7` · SHA-256 `71a146e06f05047a23aa91a0e807c905111584cc6197f0424f367038017c1d85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.HodgeEquivalence
import GRWTSK.Geometry.Hodge.DegreeZeroCohomology

namespace GRWTSK.Geometry.Hodge.HZeroTransport

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology

universe u v₀ v₁ w₀ w₁ h c h'

variable {R : Type u} [Ring R]
variable {A₀ : Type v₀} {A₁ : Type v₁}
variable {B₀ : Type w₀} {B₁ : Type w₁}
variable [AddCommGroup A₀] [Module R A₀]
variable [AddCommGroup A₁] [Module R A₁]
variable [AddCommGroup B₀] [Module R B₀]
variable [AddCommGroup B₁] [Module R B₁]
variable {A : TwoTermHodgeData R A₀ A₁}
variable {B : TwoTermHodgeData R B₀ B₁}

namespace HodgeEquiv

/-- Exact Hodge equivalence induces an equivalence of degree-zero cocycle spaces. -/
def _root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.cocycleEquiv
    (P : HodgeEquiv A B) : Cocycle0 A ≃ₗ[R] Cocycle0 B where
  toFun x :=
    ⟨P.equiv0 x, by
      have h := P.delta_apply (x : A₀)
      rw [x.property] at h
      simpa using h.symm⟩
  invFun y :=
    ⟨P.equiv0.symm y, by
      have h := P.symm.delta_apply (y : B₀)
      rw [y.property] at h
      simpa [GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.symm] using h.symm⟩
  left_inv x := by
    apply Subtype.ext
    exact P.equiv0.symm_apply_apply x
  right_inv y := by
    apply Subtype.ext
    exact P.equiv0.apply_symm_apply y
  map_add' x y := by
    apply Subtype.ext
    simp
  map_smul' r x := by
    apply Subtype.ext
    simp

/-- Compatibility name for the cocycle equivalence in the original transport namespace. -/
abbrev cocycleEquiv (P : HodgeEquiv A B) : Cocycle0 A ≃ₗ[R] Cocycle0 B :=
  P.cocycleEquiv

/-- Transport a complete degree-zero cohomology model through an exact Hodge equivalence. -/
def _root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHZeroModel
    {HZero : Type h} [AddCommGroup HZero] [Module R HZero]
    (P : HodgeEquiv A B) (M : HZeroModel A HZero) :
    HZeroModel B HZero where
  classEquiv := M.classEquiv.trans P.cocycleEquiv

/-- Compatibility name for degree-zero model transport. -/
abbrev transportHZeroModel
    {HZero : Type h} [AddCommGroup HZero] [Module R HZero]
    (P : HodgeEquiv A B) (M : HZeroModel A HZero) : HZeroModel B HZero :=
  P.transportHZeroModel M

/-- Transport the exact equality `ker Δ₀ = ker δ` through an exact Hodge equivalence. -/
theorem _root_.GRWTSK.LinearAlgebra.FramedFiberPort.HodgeEquiv.transportHarmonicKernel
    (P : HodgeEquiv A B) (K : HarmonicKernelExact A) :
    HarmonicKernelExact B where
  harmonic_iff_cocycle := by
    intro y
    let x : A₀ := P.equiv0.symm y
    constructor
    · intro hy
      have hAx : A.IsHarmonic0 x := by
        apply (P.harmonic0_iff x).2
        simpa [x] using hy
      have hδA : A.delta x = 0 := (K.harmonic_iff_cocycle x).1 hAx
      have hcomm := P.delta_apply x
      rw [hδA] at hcomm
      simpa [x] using hcomm.symm
    · intro hδB
      have hδA : A.delta x = 0 := by
        apply P.equiv1.injective
        have hcomm := P.delta_apply x
        simpa [x, hδB] using hcomm
      have hAx : A.IsHarmonic0 x := (K.harmonic_iff_cocycle x).2 hδA
      have hBy : B.IsHarmonic0 (P.equiv0 x) := (P.harmonic0_iff x).1 hAx
      simpa [x] using hBy

/-- Compatibility name for the exact harmonic-kernel theorem transport. -/
abbrev transportHarmonicKernel
    (P : HodgeEquiv A B) (K : HarmonicKernelExact A) : HarmonicKernelExact B :=
  P.transportHarmonicKernel K

end HodgeEquiv

section RationalTransport

variable {Cycle : Type c} {HodgeClass : Type h'}
variable [AddCommGroup Cycle] [Module ℚ Cycle]
variable [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
variable {QA₀ : Type v₀} {QA₁ : Type v₁}
variable {QB₀ : Type w₀} {QB₁ : Type w₁}
variable [AddCommGroup QA₀] [Module ℚ QA₀]
variable [AddCommGroup QA₁] [Module ℚ QA₁]
variable [AddCommGroup QB₀] [Module ℚ QB₀]
variable [AddCommGroup QB₁] [Module ℚ QB₁]
variable {H : RationalHodgeData Cycle HodgeClass}
variable {QA : RationalTwoTermHodgeData QA₀ QA₁}
variable {QB : RationalTwoTermHodgeData QB₀ QB₁}

namespace CycleHZeroComparison

/-- Transport a cycle/Hodge-to-`H⁰` comparison through an exact rational Hodge equivalence. -/
def _root_.GRWTSK.Geometry.Hodge.DegreeZeroCohomology.CycleHZeroComparison.transport
    (C : CycleHZeroComparison H QA) (P : HodgeEquiv QA QB) :
    CycleHZeroComparison H QB where
  hodgeToCocycle := P.cocycleEquiv.toLinearMap.comp C.hodgeToCocycle
  cycleToCocycle := P.cocycleEquiv.toLinearMap.comp C.cycleToCocycle
  commute := by
    ext z
    simp [LinearMap.comp_apply, CycleHZeroComparison.cycleToCocycle_apply]

/-- Compatibility name for cocycle comparison transport. -/
abbrev transport
    (C : CycleHZeroComparison H QA) (P : HodgeEquiv QA QB) :
    CycleHZeroComparison H QB :=
  C.transport P

end CycleHZeroComparison

namespace RationalHodgeHZeroAdapter

/-- Transport a complete rational-Hodge/`H⁰` adapter through an exact Hodge equivalence. -/
def _root_.GRWTSK.Geometry.Hodge.DegreeZeroCohomology.RationalHodgeHZeroAdapter.transport
    (G : RationalHodgeHZeroAdapter H QA) (P : HodgeEquiv QA QB) :
    RationalHodgeHZeroAdapter H QB where
  globalTheorem := G.globalTheorem
  comparison := G.comparison.transport P
  harmonicKernel := P.transportHarmonicKernel G.harmonicKernel

/-- Compatibility name for complete rational-Hodge adapter transport. -/
abbrev transport
    (G : RationalHodgeHZeroAdapter H QA) (P : HodgeEquiv QA QB) :
    RationalHodgeHZeroAdapter H QB :=
  G.transport P

end RationalHodgeHZeroAdapter

end RationalTransport

namespace Fixtures

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology.EdgeFixture
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization

/-- Identity Hodge transport leaves the finite-edge `H⁰` model unchanged up to the canonical
identity equivalence. -/
def edgeIdentityModel : HZeroModel edgeHodge ℚ :=
  (HodgeEquiv.refl edgeHodge).transportHZeroModel edgeHZeroModel

/-- The transported finite-edge adapter still realizes every rational class harmonically. -/
theorem edgeIdentityAdapter_realizes (q : ℚ) :
    ∃ z : ℚ,
      pointCycleClass.cycleClass z = q ∧
      ((pointHZeroAdapter.transport (HodgeEquiv.refl edgeHodge)).comparison.cycleToCocycle z) =
        ((pointHZeroAdapter.transport (HodgeEquiv.refl edgeHodge)).comparison.hodgeToCocycle q) ∧
      edgeHodge.IsHarmonic0
        (Cocycle0.representative
          ((pointHZeroAdapter.transport
            (HodgeEquiv.refl edgeHodge)).comparison.hodgeToCocycle q)) :=
  (pointHZeroAdapter.transport (HodgeEquiv.refl edgeHodge)).exists_cycle_cocycle_harmonic q

end Fixtures

end GRWTSK.Geometry.Hodge.HZeroTransport
```
