# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WindowFusionTests.Variant4161bfacc4e0dee0f22a06e7d17ae1ccbc059bfec9feef3e239c49c37e11a1b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dace927f003ae6ef4fb537666b75c62dedba62d5` · SHA-256 `4161bfacc4e0dee0f22a06e7d17ae1ccbc059bfec9feef3e239c49c37e11a1b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.GloballyAnchoredWindowDiffusion
import DAF.FiniteDynamics.CycleTransport
import Mathlib.Tactic.NormNum

/-!
# Concrete exact-overlap and weighted-fusion checks

Two full-support windows carry static weights one and three.  Their exact
overlap enumeration is query-sensitive, every global denominator is four, and
identity local maps fuse back to the identity global linear operator.
-/

namespace DAF.Integration.WindowFusionTests

open scoped BigOperators
open DAF.Terrain

def windowGlobal : KnownMaximalState Real where
  Coord := Fin 2
  coordFintype := inferInstance
  coordDecEq := inferInstance
  cardinality := 2
  absoluteIndex := Equiv.refl (Fin 2)
  reference c := c.val

def fullRegion : AbsoluteRegion windowGlobal :=
  AbsoluteRegion.univ windowGlobal

def exactOverlaps (R : AbsoluteRegion windowGlobal) : Finset Bool :=
  if R.coordinates.Nonempty then Finset.univ else ∅

def staticWeight (i : Bool) (_c : windowGlobal.Coord) : Real :=
  if i then 3 else 1

def twoWindowSystem : GlobalWindowSystem windowGlobal where
  WindowId := Bool
  windowFintype := inferInstance
  windowDecEq := inferInstance
  region _ := fullRegion
  overlappingWindows := exactOverlaps
  overlapping_spec := by
    intro R i
    by_cases h : R.coordinates.Nonempty
    · simp [exactOverlaps, h, fullRegion, AbsoluteRegion.univ]
    · simp [exactOverlaps, h, fullRegion, AbsoluteRegion.univ]
  weight := staticWeight
  weight_nonnegative := by
    intro i c
    cases i <;> norm_num [staticWeight]
  weight_support := by
    intro i c hc
    exfalso
    apply hc
    simp [fullRegion, AbsoluteRegion.univ]
  positive_cover := by
    intro c
    norm_num [staticWeight, Fintype.sum_bool]

def identityLocalOperators : WindowLinearOperators twoWindowSystem :=
  fun _ => LinearMap.id

theorem identityLocal_extended
    (f : windowGlobal.Coord → Real)
    (i : twoWindowSystem.WindowId)
    (c : windowGlobal.Coord) :
    extendSignal (twoWindowSystem.region i)
        (identityLocalOperators i
          (restrictSignal (twoWindowSystem.region i) f)) c = f c := by
  letI : DecidableEq windowGlobal.Coord := windowGlobal.coordDecEq
  change projectSignal (twoWindowSystem.region i) f c = f c
  apply AbsoluteRegion.projectSignal_apply_mem
  simp [twoWindowSystem, fullRegion, AbsoluteRegion.univ]

example (R : AbsoluteRegion windowGlobal) (i : Bool) :
    letI := twoWindowSystem.windowDecEq
    letI := windowGlobal.coordDecEq
    i ∈ twoWindowSystem.kappa R ↔
      ((twoWindowSystem.region i).coordinates ∩ R.coordinates).Nonempty := by
  letI := twoWindowSystem.windowDecEq
  letI := windowGlobal.coordDecEq
  exact twoWindowSystem.mem_kappa_iff R i

theorem denominator_eq_four (c : windowGlobal.Coord) :
    twoWindowSystem.denominator c = 4 := by
  change (∑ i : Bool, staticWeight i c) = 4
  rw [Fintype.sum_bool]
  norm_num [staticWeight]

example (c : windowGlobal.Coord) :
    0 < twoWindowSystem.denominator c :=
  twoWindowSystem.denominator_pos c

example (f g : windowGlobal.Coord → Real) :
    fusedWindowLinear twoWindowSystem identityLocalOperators (f + g) =
      fusedWindowLinear twoWindowSystem identityLocalOperators f +
        fusedWindowLinear twoWindowSystem identityLocalOperators g :=
  (fusedWindowLinear twoWindowSystem identityLocalOperators).map_add f g

example (a : Real) (f : windowGlobal.Coord → Real) :
    fusedWindowLinear twoWindowSystem identityLocalOperators (a • f) =
      a • fusedWindowLinear twoWindowSystem identityLocalOperators f :=
  (fusedWindowLinear twoWindowSystem identityLocalOperators).map_smul a f

example (f : windowGlobal.Coord → Real) :
    fusedWindowLinear twoWindowSystem identityLocalOperators f = f := by
  letI : DecidableEq windowGlobal.Coord := windowGlobal.coordDecEq
  funext c
  rw [fusedWindowLinear_apply]
  unfold fusedWindowOperator fusedWindowNumerator
  simp_rw [identityLocal_extended]
  rw [denominator_eq_four]
  change 4⁻¹ * (∑ i : Bool, staticWeight i c * f c) = f c
  rw [Fintype.sum_bool]
  norm_num [staticWeight]
  ring

end DAF.Integration.WindowFusionTests

namespace DAF.Integration.WindowFusionTests.CycleOrder

open FinitePermutationDynamics

/-- A transposition packaged with its exact support. -/
def swapInvolution (a b : Fin 4) : CertifiedInvolution (Fin 4) where
  act := Equiv.swap a b
  involutive := Equiv.swap_apply_self a b
  support := (Equiv.swap a b).support
  support_spec := by
    intro x
    exact Equiv.Perm.mem_support

/-- Four edge involutions whose complete ordered transport is a three-cycle. -/
def fourEdgeCycle : DirectedCycleQuantum (Fin 4) where
  period := 4
  positive := by decide
  orbit := Function.Embedding.refl _
  edge k :=
    if k = 0 then swapInvolution 0 1
    else if k = 1 then swapInvolution 1 2
    else if k = 2 then swapInvolution 2 3
    else swapInvolution 3 0
  advances := by native_decide
  direction := .forward

/-- Individual involutions can compose to a complete transport of order three. -/
def fourEdgeCycleOrderWitness :
    DirectedCycleQuantum.CompleteCycleOrderWitness fourEdgeCycle where
  order := 3
  order_gt_two := by decide
  returns := by native_decide
  minimal := by
    intro k positive less
    have alternatives : k = 1 ∨ k = 2 := by omega
    rcases alternatives with rfl | rfl <;> native_decide

example : (fourEdgeCycle.forwardTransport fourEdgeCycle.period) ^ 2 ≠ 1 :=
  DirectedCycleQuantum.completeCycleTransport_not_involutive
    fourEdgeCycleOrderWitness

end DAF.Integration.WindowFusionTests.CycleOrder
```
