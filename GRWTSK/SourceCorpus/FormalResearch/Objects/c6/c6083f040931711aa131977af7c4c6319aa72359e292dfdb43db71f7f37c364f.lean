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
