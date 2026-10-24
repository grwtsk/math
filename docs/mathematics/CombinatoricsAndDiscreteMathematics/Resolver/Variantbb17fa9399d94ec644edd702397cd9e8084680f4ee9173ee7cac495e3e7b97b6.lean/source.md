# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Resolver.Variantbb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17ec9d74fccfe59ad7a9f23c3928a2462b949967` · SHA-256 `bb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Admission

/-!
# Dependency-inverted graph-access resolver

Admission and mode construction are injected.  The dispatcher knows no BFS,
Dijkstra, A*, rotor, sequence, sampling, obstruction, or cylinder internals.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessResolution
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | completed
      (request : AdmittedAccessRequest G profiles)
      (resultType : ModeOutputFamily G request)
      (machine :
        AccessMachine G request resultType)
      (result : MachineResolution machine)
  | unknown
      (requestId : RequestId)
      (frontier : Option ByteArray)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (reason : RequestAdmissionFailure)
  | operationalFailure
      (requestId : RequestId)
      (failure : OperationalFailure)

structure ModeBackendRegistry
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  outputs :
    ∀ request : AdmittedAccessRequest G profiles,
      ModeOutputFamily G request
  machine :
    ∀ request : AdmittedAccessRequest G profiles,
      AccessMachine G request (outputs request)

def resolveGraphAccess
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
    (admitter : RequestAdmitter G profiles)
    (backend : ModeBackendRegistry G profiles)
    (raw : RawGraphAccessRequest) :
    GraphAccessResolution G profiles :=
  match admitter.admit raw with
  | .admitted request =>
      .completed request
        (backend.outputs request)
        (backend.machine request)
        (executeMachine (backend.machine request))
  | .unknown requestId unknowns nonempty =>
      .unknown requestId none unknowns nonempty
  | .rejected requestId failure =>
      .rejected requestId failure

end Mathematics.GraphAccess
```
