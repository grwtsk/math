# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.UnknownLedger.Variantd52f0877dcd4b5e94b6f0b2456fda10880535b04ed9e3aa0295b7690701f67ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed3f4f0a53a5ddec219e3786ea1583ac111ea12d` · SHA-256 `d52f0877dcd4b5e94b6f0b2456fda10880535b04ed9e3aa0295b7690701f67ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Interfaces

/-!
# Mode-indexed terminal Connes--bitfield interfaces

Absence is represented by `unknown`, never by falsehood or rejection.
-/

namespace Mathematics.ConnesBitfield

inductive BoundaryLawTerminalInterface
  | arithmeticBitfieldEncoding
  | arithmeticInvariantTraceCorrespondence
  | boundarySemanticIdentification
  | uniformTraceScale
  | localGlobalArithmeticCompatibility
  deriving DecidableEq, Repr, Fintype

inductive CommittedRealizationTerminalInterface
  | uniformTestClassTypicality
  deriving DecidableEq, Repr, Fintype

inductive FamilyLimitTerminalInterface
  | uniformEnsembleLimit
  deriving DecidableEq, Repr, Fintype

inductive InterfaceStatus
  | unknown
  | underConstruction
  | certificateRejected
  | certified
  deriving DecidableEq, Repr, Fintype

abbrev BoundaryLawInterfaceLedger :=
  BoundaryLawTerminalInterface → InterfaceStatus

abbrev CommittedRealizationInterfaceLedger :=
  CommittedRealizationTerminalInterface → InterfaceStatus

abbrev FamilyLimitInterfaceLedger :=
  FamilyLimitTerminalInterface → InterfaceStatus

def initialBoundaryLawLedger :
    BoundaryLawInterfaceLedger :=
  fun _ => .unknown

def initialCommittedRealizationLedger :
    CommittedRealizationInterfaceLedger :=
  fun _ => .unknown

def initialFamilyLimitLedger :
    FamilyLimitInterfaceLedger :=
  fun _ => .unknown

def boundaryLawInterfaces :
    Finset BoundaryLawTerminalInterface :=
  Finset.univ

def unresolvedBoundaryLawInterfaces
    (ledger : BoundaryLawInterfaceLedger) :
    Finset BoundaryLawTerminalInterface :=
  boundaryLawInterfaces.filter
    (fun interface =>
      ledger interface ≠ .certified)

theorem initial_boundary_law_ledger_unresolved
    (interface : BoundaryLawTerminalInterface) :
    interface ∈
      unresolvedBoundaryLawInterfaces
        initialBoundaryLawLedger := by
  simp [unresolvedBoundaryLawInterfaces,
    boundaryLawInterfaces, initialBoundaryLawLedger]

end Mathematics.ConnesBitfield
```
