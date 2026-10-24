# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentBitFrontier.Variant76076c9f04e7eb0e164621ae6006f1d95928875a7b050348387f4f5abd885a6e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf0c6aca1de8da6bd0d9102d154d7d73b5e7e3bc` · SHA-256 `97aa102f82963396b5f4bc72d3e6569044c07fa0a3b685db809f42fc7a30a2e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentBitfieldProjection.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PersistentBitfieldProjection.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","mathematical_subject":"Computation.DataStructures","original_sha256":"4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/PersistentBitFrontier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Persistent parent-relative distinctions

A distinction projects only through an explicit transport witness.  No parity
or disappearance rule is implicit.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentBitfieldProjection.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829

namespace Mathematics.StratifiedBoundary

structure PersistentBitfieldProjection
    (ParentBitfield ChildBitfield : Type u) where
  project : ChildBitfield → ParentBitfield
  parentBitfield : ParentBitfield
  childBitfield : ChildBitfield
  projectionWitness :
    project childBitfield = parentBitfield
  dischargeWitnessRefs : List String

theorem persistent_bitfield_projects
    {ParentBitfield ChildBitfield : Type u}
    (certificate :
      PersistentBitfieldProjection
        ParentBitfield ChildBitfield) :
    certificate.project certificate.childBitfield =
      certificate.parentBitfield :=
  certificate.projectionWitness

end Mathematics.StratifiedBoundary
```
