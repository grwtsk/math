# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MathlibAdapter.Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `697690e49a89b884f24895e03bbaf5cb13ed39b0` · SHA-256 `f3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.GaloisCohomology.Selmer

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u v w

/-!
What is formalized:
Adapter contracts from the constructed finite `FiniteH1` and
`FiniteSelmerGroup` objects to future Mathlib quotient/subgroup backends.

What is certificate-gated:
The actual Mathlib backend. The current Surface arithmetic Galois-cohomology
layer remains self-contained and does not import Mathlib.

What is not claimed:
This file does not construct continuous cohomology, absolute Galois groups,
Kummer maps, Sha, Mordell--Weil descent, BSD, or any analytic object.

Primary mathematical source:
Standard inhomogeneous degree-one group cohomology and the finite Selmer
substrate in Surface.Arithmetic.GaloisCohomology.
-/

/-- Backend status for finite Galois-cohomology Mathlib adapters. -/
inductive MathlibCohomologyAdapterBackend where
  | unavailable
  | importedMathlib
deriving Repr, DecidableEq

namespace MathlibCohomologyAdapterBackend

def usableForFinalTheorem
    (b : MathlibCohomologyAdapterBackend) : Prop :=
  b = MathlibCohomologyAdapterBackend.importedMathlib

theorem unavailable_not_usableForFinalTheorem :
    ¬ MathlibCohomologyAdapterBackend.unavailable.usableForFinalTheorem := by
  intro h
  cases h

end MathlibCohomologyAdapterBackend

/-- Adapter from constructed finite `H1` to a future Mathlib quotient object. -/
structure FiniteH1MathlibAdapter
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) where
  backend : MathlibCohomologyAdapterBackend
  cocycleObjectTransferred : Prop
  cocycleObjectTransferredCertified :
    cocycleObjectTransferred
  coboundaryRelationTransferred : Prop
  coboundaryRelationTransferredCertified :
    coboundaryRelationTransferred
  quotientObjectTransferred : Prop
  quotientObjectTransferredCertified :
    quotientObjectTransferred
  zeroAddNegTransferred : Prop
  zeroAddNegTransferredCertified :
    zeroAddNegTransferred
  boundary : List String

def FiniteH1MathlibAdapter.usableForFinalTheorem
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (M : FiniteH1MathlibAdapter G A ρ) :
    Prop :=
  M.backend.usableForFinalTheorem ∧
    M.cocycleObjectTransferred ∧
    M.coboundaryRelationTransferred ∧
    M.quotientObjectTransferred ∧
    M.zeroAddNegTransferred

theorem FiniteH1MathlibAdapter.unavailable_not_usableForFinalTheorem
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (M : FiniteH1MathlibAdapter G A ρ)
    (h : M.backend = MathlibCohomologyAdapterBackend.unavailable) :
    ¬ M.usableForFinalTheorem := by
  intro hUse
  rw [FiniteH1MathlibAdapter.usableForFinalTheorem, h] at hUse
  exact MathlibCohomologyAdapterBackend.unavailable_not_usableForFinalTheorem hUse.1

theorem FiniteH1MathlibAdapter.usableForFinalTheorem_has_transfers
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (M : FiniteH1MathlibAdapter G A ρ)
    (h : M.usableForFinalTheorem) :
    M.cocycleObjectTransferred ∧
      M.coboundaryRelationTransferred ∧
      M.quotientObjectTransferred ∧
      M.zeroAddNegTransferred :=
  h.2

/-- Adapter from a constructed finite Selmer problem to a future Mathlib subgroup. -/
structure FiniteSelmerMathlibAdapter
    (P : FiniteSelmerProblem.{u, v, w}) where
  backend : MathlibCohomologyAdapterBackend
  globalH1Adapter :
    FiniteH1MathlibAdapter P.G P.A P.ρG
  localH1Adapter :
    ∀ place : P.V,
      FiniteH1MathlibAdapter (P.Gv place) P.A (P.ρv place)
  restrictionMapsTransferred : Prop
  restrictionMapsTransferredCertified :
    restrictionMapsTransferred
  localConditionsTransferred : Prop
  localConditionsTransferredCertified :
    localConditionsTransferred
  selmerSubgroupTransferred : Prop
  selmerSubgroupTransferredCertified :
    selmerSubgroupTransferred
  boundary : List String

def FiniteSelmerMathlibAdapter.usableForFinalTheorem
    {P : FiniteSelmerProblem.{u, v, w}}
    (M : FiniteSelmerMathlibAdapter P) :
    Prop :=
  M.backend.usableForFinalTheorem ∧
    M.globalH1Adapter.usableForFinalTheorem ∧
    (∀ place : P.V,
      (M.localH1Adapter place).usableForFinalTheorem) ∧
    M.restrictionMapsTransferred ∧
    M.localConditionsTransferred ∧
    M.selmerSubgroupTransferred

theorem FiniteSelmerMathlibAdapter.unavailable_not_usableForFinalTheorem
    {P : FiniteSelmerProblem.{u, v, w}}
    (M : FiniteSelmerMathlibAdapter P)
    (h : M.backend = MathlibCohomologyAdapterBackend.unavailable) :
    ¬ M.usableForFinalTheorem := by
  intro hUse
  rw [FiniteSelmerMathlibAdapter.usableForFinalTheorem, h] at hUse
  exact MathlibCohomologyAdapterBackend.unavailable_not_usableForFinalTheorem hUse.1

theorem FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_globalH1
    {P : FiniteSelmerProblem.{u, v, w}}
    (M : FiniteSelmerMathlibAdapter P)
    (h : M.usableForFinalTheorem) :
    M.globalH1Adapter.usableForFinalTheorem :=
  h.2.1

theorem FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_localH1
    {P : FiniteSelmerProblem.{u, v, w}}
    (M : FiniteSelmerMathlibAdapter P)
    (h : M.usableForFinalTheorem)
    (place : P.V) :
    (M.localH1Adapter place).usableForFinalTheorem :=
  h.2.2.1 place

theorem FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_transfers
    {P : FiniteSelmerProblem.{u, v, w}}
    (M : FiniteSelmerMathlibAdapter P)
    (h : M.usableForFinalTheorem) :
    M.restrictionMapsTransferred ∧
      M.localConditionsTransferred ∧
      M.selmerSubgroupTransferred :=
  h.2.2.2

end GaloisCohomology
end Surface.Arithmetic
```
