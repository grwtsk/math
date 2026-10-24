# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixOrbit.Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1506993d827abd3de61a535c711ef34c284b13f` · SHA-256 `5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.MatrixSymmetry

/-!
# Folder.Archive.MatrixOrbit

Radiation role: archive-symmetry
BinaryMatrix spine: This module states orbit membership and canonicalization contracts for BinaryMatrix archive atoms.
Ontology: archive.matrix_orbit
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

namespace Folder
namespace Archive

def InSameOrbit
    (A : MatrixAction)
    (M N : Carrier.BinaryMatrix) : Prop :=
  ∃ g : A.Spin, A.act g M = N

structure OrbitCanonicalizer (A : MatrixAction) where
  canonical : Carrier.BinaryMatrix → Carrier.BinaryMatrix
  spinFromCanonical : Carrier.BinaryMatrix → A.Spin
  reconstruct :
    ∀ M, A.act (spinFromCanonical M) (canonical M) = M
  canonical_in_orbit :
    ∀ M, InSameOrbit A M (canonical M)

def copyCanonicalizer : OrbitCanonicalizer copyAction where
  canonical := id
  spinFromCanonical := fun _ => ()
  reconstruct := by intro M; rfl
  canonical_in_orbit := by
    intro M
    exact ⟨(), rfl⟩

theorem orbitCanonicalizer_reconstruct
    {A : MatrixAction}
    (C : OrbitCanonicalizer A)
    (M : Carrier.BinaryMatrix) :
    A.act (C.spinFromCanonical M) (C.canonical M) = M :=
  C.reconstruct M

theorem copyCanonicalizer_reconstruct
    (M : Carrier.BinaryMatrix) :
    copyAction.act (copyCanonicalizer.spinFromCanonical M)
        (copyCanonicalizer.canonical M) = M :=
  copyCanonicalizer.reconstruct M

end Archive
end Folder
```
