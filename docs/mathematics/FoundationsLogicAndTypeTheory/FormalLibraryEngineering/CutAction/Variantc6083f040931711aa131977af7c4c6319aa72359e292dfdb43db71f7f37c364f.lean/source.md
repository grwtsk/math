# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutAction.Variantc6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `202e56aba8a6dbcc5c42a03f81ed5bed3596ca1f` · SHA-256 `c6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Equivariance
import Mathematics.StratifiedBoundary.Boundary.FiniteCut

/-!
# Finite-cut automorphism action

The stratum layer reuses the exact equivariant kernel certificate already
carried by each Connes--bitfield closure package.
-/

namespace Mathematics.StratifiedBoundary.Symmetry

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

abbrev CutEquivariance
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  EquivariantScheduleKernelCertificate
    cut.closure.crossedProduct
    cut.closure.dynamics

def FiniteReflectiveCut.cutEquivariance
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :
    CutEquivariance cut :=
  cut.closure.equivariance

theorem finite_cut_boundary_law_automorphism_invariant
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (automorphism : cut.Automorphism) :
    cut.cutEquivariance.lawAction
        automorphism
        cut.closure.dynamics.invariantLaw =
      cut.closure.dynamics.invariantLaw :=
  invariantLaw_automorphism_invariant
    cut.cutEquivariance automorphism

end Mathematics.StratifiedBoundary.Symmetry
```
