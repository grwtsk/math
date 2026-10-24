# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Witness.Variantf7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77b8db022654d0d7a2964d43329617dcf2ae4140` · SHA-256 `f7bf62ac93fea2dfc54ffd123ed007a80ade877816c31bab62c4705468fb2728`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Energy
import Folder.Spectral.Expansion

/-!
# Folder.Spectral.Witness

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.witness
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure Witness (α β : Type _) where
  observe : α → β

def Consistent {α β γ : Type _}
    (W : Witness α β)
    (encode : α → γ)
    (decode : γ → α) :
    Prop :=
  ∀ x, W.observe (decode (encode x)) = W.observe x

noncomputable def meanWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) ℝ where
  observe := SpectralTensor.mean

noncomputable def energyWitness {s : GridShape} (k : Nat)
    (G : CellGraph s) :
    Witness (SpectralTensor s k) ℝ where
  observe := energy G

def cellCountWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) Nat where
  observe := fun _ => s.rows * s.cols * k

end Spectral
end Folder
```
