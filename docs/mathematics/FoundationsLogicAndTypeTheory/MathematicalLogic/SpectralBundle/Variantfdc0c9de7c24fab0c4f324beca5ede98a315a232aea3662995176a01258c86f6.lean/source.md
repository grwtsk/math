# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SpectralBundle.Variantfdc0c9de7c24fab0c4f324beca5ede98a315a232aea3662995176a01258c86f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5f5ded67d37ed57c7cc076bb75f2a1d50960e73` · SHA-256 `fdc0c9de7c24fab0c4f324beca5ede98a315a232aea3662995176a01258c86f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.Tree
import Folder.Fiber.Transport
import Folder.Spectral.Tensor

/-!
# Folder.Fiber.SpectralBundle

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.spectral_bundle
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

open Carrier

structure FixedShapeSpectralFiber
    (s : GridShape)
    (k : Nat) where
  visible : Spectral.SpectralTensor s k
  residual : Spectral.SpectralTensor s k

def constantSpectralBundle
    (s : GridShape)
    (k : Nat) :
    Bundle Catalan.CTree where
  Fiber := fun _ => FixedShapeSpectralFiber s k

def constantSpectralTransport
    (s : GridShape)
    (k : Nat)
    (Step : Catalan.CTree → Catalan.CTree → Prop) :
    TransportSystem (constantSpectralBundle s k) Step where
  transportStep := fun _ => Equiv.refl _

theorem constantSpectralTransport_roundtrip
    (s : GridShape)
    (k : Nat)
    {Step : Catalan.CTree → Catalan.CTree → Prop}
    {T U : Catalan.CTree}
    (p : Monodromy.Path Step T U)
    (x : (constantSpectralBundle s k).Fiber T) :
    (transportPath (constantSpectralTransport s k Step) p).symm
      ((transportPath (constantSpectralTransport s k Step) p) x) = x :=
  Equiv.symm_apply_apply _ x

structure SpectralExpansionBundleContract
    (k : Nat) where
  bundle : Bundle Catalan.CTree
  step : Catalan.CTree → Catalan.CTree → Prop
  transport : TransportSystem bundle step
  visible :
    ∀ T, bundle.Fiber T → Σ s : GridShape, Spectral.SpectralTensor s k

end Fiber
end Folder
```
