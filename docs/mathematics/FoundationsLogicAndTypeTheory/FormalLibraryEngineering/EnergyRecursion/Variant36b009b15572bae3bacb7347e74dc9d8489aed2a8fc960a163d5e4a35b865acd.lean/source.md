# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnergyRecursion.Variant36b009b15572bae3bacb7347e74dc9d8489aed2a8fc960a163d5e4a35b865acd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b328566b80b57e71885da6ae640203ab10f38c40` · SHA-256 `36b009b15572bae3bacb7347e74dc9d8489aed2a8fc960a163d5e4a35b865acd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.RecursiveBoundary
import Folder.GrandChallenge.YangMills.MassGapObstruction

/-!
# Folder.GrandChallenge.YangMills.EnergyRecursion

Radiation role: research-boundary
BinaryMatrix spine: This module recasts Yang-Mills as recursive energy continuation.
Ontology: yang_mills_energy_recursion
Pivot role: recursion
Zero typology: mass-gap-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace YangMills

/--
Yang-Mills energy recursion.

Energy enters as a nonzero invariant; legal recursive continuation is checked
against an obstruction detector; zero-mass escape is the forbidden state.
-/
structure YangMillsEnergyRecursion where
  program : RecursiveObstructionProgram
  energyInvariant : program.Invariant
  positiveEnergyEnters : Prop
  positiveEnergyEnters_certified : positiveEnergyEnters
  zeroMassEscape : program.State → Prop
  stickyMassBoundary : program.Boundary → Prop
  stickyMassBoundary_implies_programSticky :
    ∀ B, stickyMassBoundary B → program.stickyBoundary B
  zeroMassEscapeCreatesObstruction :
    ∀ S, zeroMassEscape S → program.obstruction energyInvariant S
  sourceLabel : String

theorem positive_energy_enters_if_supplied
    (Y : YangMillsEnergyRecursion) :
    Y.positiveEnergyEnters :=
  Y.positiveEnergyEnters_certified

theorem sticky_mass_boundary_if_supplied
    (Y : YangMillsEnergyRecursion)
    {B : Y.program.Boundary}
    (h : Y.stickyMassBoundary B) :
    Y.program.stickyBoundary B :=
  Y.stickyMassBoundary_implies_programSticky B h

theorem zero_mass_escape_obstructed_if_supplied
    (Y : YangMillsEnergyRecursion)
    {S : Y.program.State}
    (h : Y.zeroMassEscape S) :
    Y.program.obstruction Y.energyInvariant S :=
  Y.zeroMassEscapeCreatesObstruction S h

theorem no_zero_mass_escape_without_obstruction
    (Y : YangMillsEnergyRecursion)
    {S : Y.program.State}
    (hno : ¬ Y.program.obstruction Y.energyInvariant S)
    (hzero : Y.zeroMassEscape S) :
    False :=
  hno (Y.zeroMassEscapeCreatesObstruction S hzero)

end YangMills
end GrandChallenge
end Folder

```
