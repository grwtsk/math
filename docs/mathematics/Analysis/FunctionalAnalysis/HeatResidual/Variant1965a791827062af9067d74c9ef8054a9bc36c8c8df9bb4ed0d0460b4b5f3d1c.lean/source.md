# Complete source: GRWTSK.Analysis.FunctionalAnalysis.HeatResidual.Variant1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f40bdd2339031968ec0cf7ab74d6582657a8eb5b` · SHA-256 `1965a791827062af9067d74c9ef8054a9bc36c8c8df9bb4ed0d0460b4b5f3d1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Residual

/-!
# Folder.Theorem.Spectral.HeatResidual

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.heat_residual
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Spectral

open Carrier

structure LiftedState (s : GridShape) (k : Nat) where
  visible : SpectralTensor s k
  fiber : SpectralTensor s k

def liftedHeat {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    SpectralTensor s k × SpectralTensor s k :=
  (H.heat t X, heatResidual H t X)

def reconstructHeat {s : GridShape} {k : Nat}
    (Y R : SpectralTensor s k) :
    SpectralTensor s k :=
  Y + R

theorem reconstruct_liftedHeat {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2 = X := by
  exact heat_add_residual H t X

end Spectral
end Folder
```
