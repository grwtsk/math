# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prism.Variant3e19f9f277d296ed69252909e4bc8bf60bbdb28484c9b96ea594a56da5f1fbb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45fb602dcefc5210a17d7d182c8c2f9b78f537c6` · SHA-256 `bb3bbc7bd4bd0131c79879e0eb7c8bd062f98a758b1496cda5948c2ec6807afd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismCellKind.Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrismCellKind.Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58","mathematical_subject":"Foundations.Unclassified","original_sha256":"bc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/PrismaticGeometry/Prism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismCellKind.Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58

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
