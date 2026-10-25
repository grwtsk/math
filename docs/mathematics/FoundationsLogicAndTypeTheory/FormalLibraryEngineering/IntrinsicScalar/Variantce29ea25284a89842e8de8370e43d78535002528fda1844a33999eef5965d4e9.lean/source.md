# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrinsicScalar.Variantce29ea25284a89842e8de8370e43d78535002528fda1844a33999eef5965d4e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c1621e4f2d588da71ec06e03177b79339ea5548` · SHA-256 `48af8c861936a83715fd13545578730d70f4903416bfdf21bf6d7c9b0526f4ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrinsicScalarClassifier.Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntrinsicScalarClassifier.Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111","mathematical_subject":"Foundations.Unclassified","original_sha256":"71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/IntrinsicScalar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.StructuralIsomorphism

/-!
# Certified intrinsic scalar classifiers

The scalar is a lossless natural-number code of the *unlabeled isomorphism
class*.  The executable classifier is required to supply both directions of
completeness; a digest or an unchecked canonicalization cannot inhabit this
interface.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrinsicScalarClassifier.Variant71c3ed86fcfa36e80e98363ca08f6f5ec71c0e4ae775aef37d72118cac688111

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
