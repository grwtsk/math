# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitAction.Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eabd3281af9e0e9365a4c0b423c4008777ca031d` · SHA-256 `e32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Symmetry.SuccessorCompatibility

/-!
# Limit action and boundary-law preservation
-/

namespace Mathematics.StratifiedBoundary

structure LimitAutomorphismBoundaryLaw
    (GroupElement State BoundaryLaw : Type u) where
  action : CutAutomorphismAction GroupElement State
  boundaryLaw : BoundaryLaw
  transformedBoundaryLaw :
    GroupElement → BoundaryLaw → BoundaryLaw
  preserves :
    ∀ groupElement,
      transformedBoundaryLaw groupElement boundaryLaw =
        boundaryLaw
  projectiveActionCertificateRef : String

theorem limit_automorphism_preserves_boundary_law
    {GroupElement State BoundaryLaw : Type u}
    (certificate :
      LimitAutomorphismBoundaryLaw
        GroupElement State BoundaryLaw)
    (groupElement : GroupElement) :
    certificate.transformedBoundaryLaw
        groupElement certificate.boundaryLaw =
      certificate.boundaryLaw :=
  certificate.preserves groupElement

end Mathematics.StratifiedBoundary
```
