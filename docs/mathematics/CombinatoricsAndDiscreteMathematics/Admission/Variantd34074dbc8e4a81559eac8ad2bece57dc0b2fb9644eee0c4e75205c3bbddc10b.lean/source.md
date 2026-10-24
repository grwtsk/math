# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Admission.Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b48fd39b5c4358a5f7b5d295ffdfc881bd0b264` · SHA-256 `d34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Noninterference

/-!
# Request admission

Unknown evidence and malformed requests are distinct outcomes.  The raw
envelope is opaque to the core; an external deterministic admitter supplies
the fully typed request.
-/

namespace Mathematics.GraphAccess

structure RawGraphAccessRequest where
  requestId : RequestId
  payload : ByteArray
deriving DecidableEq

instance : Repr RawGraphAccessRequest where
  reprPrec request precedence :=
    Repr.reprPrec
      (request.requestId, request.payload.data)
      precedence

inductive RequestAdmissionFailure
  | unknownReference
  | modeObjectiveMismatch
  | missingProfile
  | invalidAuthority
  | cutDigestMismatch
  | malformedBudget
  | unsupportedCombination
  | missingRequiredTarget
  | sourceNotAdmissible
  | targetNotAdmissible
  | unknownAdmissibility
  | incompleteNeighborInterface
deriving DecidableEq, Repr

inductive RequestAdmission
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | admitted
      (request : AdmittedAccessRequest G profiles)
  | unknown
      (requestId : RequestId)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (failure : RequestAdmissionFailure)

structure RequestAdmitter
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  admit :
    RawGraphAccessRequest →
      RequestAdmission G profiles

end Mathematics.GraphAccess
```
