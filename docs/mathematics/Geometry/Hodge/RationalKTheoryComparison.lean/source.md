# Complete source: GRWTSK.Geometry.Hodge.RationalKTheoryComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `997f612416073194ef9f54f013fd6720066838b1` · SHA-256 `5945bae617bfa39a65193d47a716ca8205da9395ef8776c92df8efed55a0c46b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import GRWTSK.Geometry.Hodge.RationalCycleCellular

namespace GRWTSK.Geometry.Hodge.RationalKTheoryComparison

universe u v w x y

/-- An integral-to-rational comparison with an explicit subgroup of information lost.

The lost subgroup is exactly the kernel of the selected rationalization map. This record does
not assert that the source group is a geometric `K₀`; that identification belongs to a separate
source-bound profile. -/
structure RationalizationData
    (KIntegral : Type u) (KQ : Type v)
    [AddCommGroup KIntegral]
    [AddCommGroup KQ] [Module ℚ KQ] where
  rationalize : KIntegral →+ KQ
  lost : AddSubgroup KIntegral
  kernel_eq_lost : rationalize.ker = lost

namespace RationalizationData

variable {KIntegral : Type u} {KQ : Type v}
variable [AddCommGroup KIntegral]
variable [AddCommGroup KQ] [Module ℚ KQ]

/-- Vanishing after rationalization is exactly membership in the declared loss subgroup. -/
theorem rationalize_eq_zero_iff
    (R : RationalizationData KIntegral KQ) (x : KIntegral) :
    R.rationalize x = 0 ↔ x ∈ R.lost := by
  change x ∈ R.rationalize.ker ↔ x ∈ R.lost
  rw [R.kernel_eq_lost]

/-- Two integral classes have the same rational image when their difference lies in the
explicit loss subgroup. -/
theorem rationalize_eq_of_sub_mem_lost
    (R : RationalizationData KIntegral KQ) {x y : KIntegral}
    (hxy : x - y ∈ R.lost) :
    R.rationalize x = R.rationalize y := by
  have hzero : R.rationalize (x - y) = 0 :=
    (R.rationalize_eq_zero_iff (x - y)).2 hxy
  have hsub : R.rationalize x - R.rationalize y = 0 := by
    simpa using hzero
  exact sub_eq_zero.mp hsub

end RationalizationData

/-- A rational Chern-character-shaped comparison with a separately recorded correction.

For geometric applications the correction may encode a Todd class or another declared
Grothendieck--Riemann--Roch factor. Setting it to zero is an additional theorem, not a default. -/
structure RationalChernData
    (KQ : Type u) (Cycle : Type v)
    [AddCommGroup KQ] [Module ℚ KQ]
    [AddCommGroup Cycle] [Module ℚ Cycle] where
  chern : KQ →ₗ[ℚ] Cycle
  correction : KQ →ₗ[ℚ] Cycle
  cycleFromK : KQ →ₗ[ℚ] Cycle
  cycleFromK_eq : cycleFromK = chern + correction
  degreeProfile : String
  supportProfile : String
  pushforwardConvention : String

namespace RationalChernData

variable {KQ : Type u} {Cycle : Type v}
variable [AddCommGroup KQ] [Module ℚ KQ]
variable [AddCommGroup Cycle] [Module ℚ Cycle]

/-- The selected cycle image is the Chern contribution plus the declared correction. -/
theorem cycleFromK_apply (D : RationalChernData KQ Cycle) (x : KQ) :
    D.cycleFromK x = D.chern x + D.correction x := by
  have h := congrArg (fun f : KQ →ₗ[ℚ] Cycle => f x) D.cycleFromK_eq
  simpa using h

end RationalChernData

/-- A proof-carrying comparison from an integral K-shaped group through rational cycles and
Hodge classes to one finite cellular class space. -/
structure RationalKCycleCellularAdapter
    {Cycle : Type u} {HodgeClass : Type v} {CellClass : Type w}
    [AddCommGroup Cycle] [Module ℚ Cycle]
    [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
    [AddCommGroup CellClass] [Module ℚ CellClass]
    (H : RationalHodgeData Cycle HodgeClass)
    (C : CycleCellularComparison H CellClass)
    (KIntegral : Type x) (KQ : Type y)
    [AddCommGroup KIntegral]
    [AddCommGroup KQ] [Module ℚ KQ] where
  rationalization : RationalizationData KIntegral KQ
  chernData : RationalChernData KQ Cycle
  sourceProfile : String
  coefficientLossProfile : String

namespace RationalKCycleCellularAdapter

variable {Cycle : Type u} {HodgeClass : Type v} {CellClass : Type w}
variable [AddCommGroup Cycle] [Module ℚ Cycle]
variable [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
variable [AddCommGroup CellClass] [Module ℚ CellClass]
variable {H : RationalHodgeData Cycle HodgeClass}
variable {C : CycleCellularComparison H CellClass}
variable {KIntegral : Type x} {KQ : Type y}
variable [AddCommGroup KIntegral]
variable [AddCommGroup KQ] [Module ℚ KQ]

/-- The cellular class produced by the complete selected rational K-to-cycle route. -/
def cellClassOfIntegral
    (A : RationalKCycleCellularAdapter H C KIntegral KQ)
    (k : KIntegral) : CellClass :=
  C.cycleToCell (A.chernData.cycleFromK (A.rationalization.rationalize k))

/-- The cellular output agrees with the Hodge realization of the selected rational cycle. -/
theorem cellClassOfIntegral_formula
    (A : RationalKCycleCellularAdapter H C KIntegral KQ)
    (k : KIntegral) :
    A.cellClassOfIntegral k =
      C.hodgeToCell
        (H.cycleClass
          (A.chernData.cycleFromK (A.rationalization.rationalize k))) := by
  exact C.cycleToCell_apply _

/-- The Chern and correction contributions remain separately visible in the cellular target. -/
theorem cellClassOfIntegral_chern_add_correction
    (A : RationalKCycleCellularAdapter H C KIntegral KQ)
    (k : KIntegral) :
    A.cellClassOfIntegral k =
      C.cycleToCell (A.chernData.chern (A.rationalization.rationalize k)) +
        C.cycleToCell
          (A.chernData.correction (A.rationalization.rationalize k)) := by
  unfold cellClassOfIntegral
  rw [A.chernData.cycleFromK_apply]
  exact C.cycleToCell.map_add _ _

/-- Equality after rationalization yields equality of the cellular outputs, but not equality of
integral source classes. -/
theorem cellClassOfIntegral_eq_of_rationalize_eq
    (A : RationalKCycleCellularAdapter H C KIntegral KQ)
    {x y : KIntegral}
    (hxy : A.rationalization.rationalize x =
      A.rationalization.rationalize y) :
    A.cellClassOfIntegral x = A.cellClassOfIntegral y := by
  unfold cellClassOfIntegral
  rw [hxy]

/-- Every class in the explicit rationalization-loss subgroup has zero cellular image. -/
theorem cellClassOfIntegral_eq_zero_of_mem_lost
    (A : RationalKCycleCellularAdapter H C KIntegral KQ)
    {x : KIntegral} (hx : x ∈ A.rationalization.lost) :
    A.cellClassOfIntegral x = 0 := by
  have hzero : A.rationalization.rationalize x = 0 :=
    (A.rationalization.rationalize_eq_zero_iff x).2 hx
  simp [cellClassOfIntegral, hzero]

/-- A declared lost difference forces equal cellular images while retaining the integral
nonidentification boundary. -/
theorem cellClassOfIntegral_eq_of_sub_mem_lost
    (A : RationalKCycleCellularAdapter H C KIntegral KQ)
    {x y : KIntegral} (hxy : x - y ∈ A.rationalization.lost) :
    A.cellClassOfIntegral x = A.cellClassOfIntegral y := by
  apply A.cellClassOfIntegral_eq_of_rationalize_eq
  exact A.rationalization.rationalize_eq_of_sub_mem_lost hxy

end RationalKCycleCellularAdapter

namespace Examples

open GRWTSK.Geometry.Hodge.Examples

/-- Loss-free rationalization fixture. -/
def rationalIdentity : RationalizationData ℚ ℚ where
  rationalize := AddMonoidHom.id ℚ
  lost := ⊥
  kernel_eq_lost := by
    ext x
    simp

/-- Identity Chern fixture with no correction. -/
def identityChern : RationalChernData ℚ ℚ where
  chern := LinearMap.id
  correction := 0
  cycleFromK := LinearMap.id
  cycleFromK_eq := by
    ext
    simp
  degreeProfile := "degree zero fixture"
  supportProfile := "finite identity support"
  pushforwardConvention := "identity"

/-- Complete loss-free K-shaped comparison fixture over the one-dimensional Hodge model. -/
def lineKAdapter :
    RationalKCycleCellularAdapter lineHodgeData lineComparison ℚ ℚ where
  rationalization := rationalIdentity
  chernData := identityChern
  sourceProfile := "universal rational identity fixture"
  coefficientLossProfile := "none; kernel is bottom"

/-- The loss-free fixture returns its input cellular class. -/
theorem lineKAdapter_cellClass (x : ℚ) :
    lineKAdapter.cellClassOfIntegral x = x := by
  simp [RationalKCycleCellularAdapter.cellClassOfIntegral,
    lineKAdapter, rationalIdentity, identityChern, lineComparison]

end Examples

end GRWTSK.Geometry.Hodge.RationalKTheoryComparison
```
