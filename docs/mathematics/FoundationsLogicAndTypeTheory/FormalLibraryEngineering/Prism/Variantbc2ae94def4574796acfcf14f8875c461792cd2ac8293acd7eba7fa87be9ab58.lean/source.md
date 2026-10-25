# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prism.Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d7f7dd9afeda4aea217707c1d163a83bac050f4` · SHA-256 `bc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.PrismaticGeometry.CellComplex

/-!
# n-prisms as finite cell-complex syntax

n-prism descriptors and complexes are finite geometric shadows. The
boundary-sphere relation is proof-carrying: this file does not prove that
every n-prism has a sphere boundary from first principles, and it asserts
no prismatic cohomology or comparison theorem.

Object index: `PrismCellKind`, `NPrismDescriptor`, `NPrismComplex`,
`PrismBoundarySphere`, `prism_boundary_sphere_sound`.
-/

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- Kinds of prism cells. -/
inductive PrismCellKind where
  | vertex
  | edge
  | face
  | interior
  | custom : Nat → String → PrismCellKind
deriving Repr, DecidableEq

/-- Finite descriptor of an n-prism. Metadata only. -/
structure NPrismDescriptor where
  dim : Nat
  baseCellCount : Nat
  verticalDirectionCount : Nat
  nullCentered : Bool
  prismHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- An n-prism complex: a descriptor together with a finite cell complex
and a proof that the complex realizes the descriptor. -/
structure NPrismComplex where
  descriptor : NPrismDescriptor
  complex : FiniteCellComplex
  realizesDescriptor : Prop
  realizesDescriptorProof : realizesDescriptor

/-- The boundary-sphere shell of an n-prism: a closed chain one dimension
below the prism, with a supplied soundness proof. -/
structure PrismBoundarySphere
    (P : NPrismComplex) where
  sphereDim : Nat
  expectedDim :
    sphereDim + 1 = P.descriptor.dim ∨
      P.descriptor.dim = 0
  boundaryChain :
    Chain P.complex sphereDim
  boundaryClosed : ClosedChain P.complex sphereDim boundaryChain
  boundarySound : Prop
  boundarySoundProof : boundarySound

theorem prism_boundary_sphere_sound
    {P : NPrismComplex}
    (S : PrismBoundarySphere P) :
    S.boundaryClosed.closed ∧ S.boundarySound :=
  ⟨S.boundaryClosed.proof, S.boundarySoundProof⟩

end PrismaticGeometry
end Cube
end Boolean
```
