# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrinsicScalar.Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b65bffe23485e179f1cf6e1cb5bcd404d356ea2` · SHA-256 `71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.StructuralIsomorphism

/-!
# Certified intrinsic scalar classifiers

The scalar is a lossless natural-number code of the *unlabeled isomorphism
class*.  The executable classifier is required to supply both directions of
completeness; a digest or an unchecked canonicalization cannot inhabit this
interface.
-/

namespace Mathematics.Projection

universe u v w

variable {signature : StructuralSignature}

/--
Proof-producing implementation of the exhaustive minimum-over-enumerations
construction.  `complete` is the kernel boundary that excludes hash collisions
and non-exhaustive canonical-label searches.
-/
structure IntrinsicScalarClassifier
    (signature : StructuralSignature.{u, v}) where
  code : PolyHierarchy.{w, u, v} signature → Nat
  isoInvariant :
    ∀ {left right : PolyHierarchy.{w, u, v} signature},
      Nonempty (StructuralIso left right) →
        code left = code right
  complete :
    ∀ {left right : PolyHierarchy.{w, u, v} signature},
      code left = code right →
        Nonempty (StructuralIso left right)

def intrinsicScalar
    (classifier : IntrinsicScalarClassifier signature)
    (hierarchy : PolyHierarchy signature) : Nat :=
  classifier.code hierarchy

theorem intrinsicScalar_isoInvariant
    (classifier : IntrinsicScalarClassifier signature)
    {left right : PolyHierarchy signature}
    (isomorphic : Nonempty (StructuralIso left right)) :
    intrinsicScalar classifier left = intrinsicScalar classifier right :=
  classifier.isoInvariant isomorphic

theorem intrinsicScalar_complete
    (classifier : IntrinsicScalarClassifier signature)
    {left right : PolyHierarchy signature} :
    intrinsicScalar classifier left = intrinsicScalar classifier right ↔
      Nonempty (StructuralIso left right) := by
  constructor
  · exact classifier.complete
  · exact classifier.isoInvariant

/--
The scalar certifies an isomorphism class only.  It does not contain a chosen
enumeration or a chosen representative of an automorphism orbit.
-/
theorem intrinsicScalar_has_no_embedded_element_selector
    (classifier : IntrinsicScalarClassifier signature)
    (hierarchy : PolyHierarchy signature) :
    intrinsicScalar classifier hierarchy = classifier.code hierarchy :=
  rfl

end Mathematics.Projection
```
