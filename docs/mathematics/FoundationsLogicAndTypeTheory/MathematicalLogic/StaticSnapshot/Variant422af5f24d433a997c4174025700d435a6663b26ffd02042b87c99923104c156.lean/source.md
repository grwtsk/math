# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StaticSnapshot.Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f5581f1717a054e3fbc9f608b3aeef3155cefb0` · SHA-256 `422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompositeElements.Planes

/-! # Immutable formal half of one composite snapshot. -/

namespace URSM.Composite

structure StaticComposite where
  projects : Fin projectCount → ProjectDescriptor
  projectIdsUnique :
    Function.Injective (fun index ↦ (projects index).projectId)
  planes : StaticPlanes
  parentSnapshotId : Option String
  formalCertificateRoot : String

def phaseOneStaticComposite : StaticComposite where
  projects := projectAt
  projectIdsUnique := projectId_unique
  planes := staticPlanes
  parentSnapshotId := none
  formalCertificateRoot :=
    "lean:URSM.Composite.phaseOneStaticComposite_valid"

abbrev DiagonalStatus (n : Nat) := Fin n → Bool

structure ActiveOverlay (n : Nat) where
  active : DiagonalStatus n
  buildComplete : DiagonalStatus n
  kernelChecked : DiagonalStatus n
  runtimeChecked : DiagonalStatus n
  quarantined : DiagonalStatus n

structure ActivationValid
    (imports conflict : BitMatrix n n)
    (overlay : ActiveOverlay n) : Prop where
  ready :
    ∀ i, overlay.active i = true →
      overlay.buildComplete i = true ∧
      overlay.kernelChecked i = true ∧
      overlay.runtimeChecked i = true ∧
      overlay.quarantined i = false
  dependencyClosed :
    ∀ i j,
      overlay.active i = true →
      imports i j = true →
      overlay.active j = true
  conflictFree :
    ∀ i j,
      overlay.active i = true →
      overlay.active j = true →
      conflict i j = false

end URSM.Composite
```
