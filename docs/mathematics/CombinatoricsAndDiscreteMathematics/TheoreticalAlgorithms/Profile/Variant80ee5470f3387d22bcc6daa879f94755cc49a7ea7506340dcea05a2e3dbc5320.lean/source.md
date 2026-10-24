# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Profile.Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c898190a87598b371122f063d38d8ad472b7500` · SHA-256 `80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Scope
import Mathematics.Juris.Disposition

/-!
# Source-bound jurisdiction profile

The evaluator is supplied by a versioned profile bound to authoritative source
digests.  This formal layer does not invent legal rules.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure JurisContext where
  actor : PrincipalId
  resource : ElementId
  dataClass : StableId
  purpose : PurposeId
  territory : StableId
  device : DeviceId
  effect : Effect

structure JurisProfile where
  profileId : StableId
  sourceDigests : List Digest
  sources_valid :
    ∀ digest ∈ sourceDigests, digest.Valid
  effectiveFrom : Nat
  effectiveUntil : Option Nat
  evaluate : JurisContext → JurisDisposition

def jurisEvaluate
    (profile : JurisProfile)
    (context : JurisContext) :
    JurisDisposition :=
  profile.evaluate context

structure JurisAdmission
    (profile : JurisProfile)
    (context : JurisContext) : Prop where
  allowed :
    jurisEvaluate profile context = .allowed

theorem JurisAdmission.mayExecute
    {profile : JurisProfile}
    {context : JurisContext}
    (admission : JurisAdmission profile context) :
    (jurisEvaluate profile context).MayExecute := by
  rw [admission.allowed]
  trivial

end Mathematics.Juris
```
