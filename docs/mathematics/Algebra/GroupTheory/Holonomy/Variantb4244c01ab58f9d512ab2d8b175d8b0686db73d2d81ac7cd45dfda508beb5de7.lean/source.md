# Complete source: GRWTSK.Algebra.GroupTheory.Holonomy.Variantb4244c01ab58f9d512ab2d8b175d8b0686db73d2d81ac7cd45dfda508beb5de7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e58b161ee9cd5366e969acbb877cd651df8857a` · SHA-256 `f1fb94ee41be02014f2896adde3cf97e877b7739037b94fefc455b0f66cb53d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.LoopGeneratingSet.Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.LoopGeneratingSet.Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666","mathematical_subject":"Algebra.Groups","original_sha256":"b25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/Holonomy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.TransportHolonomy

/-!
# Generated-loop holonomy

Cycle consistency is checked on a certified generating family and then
extended to every loop by subgroup closure.
-/


namespace GRWTSK.Algebra.GroupTheory.LoopGeneratingSet.Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666

namespace Mathematics.MobiusOntology

universe u v w

abbrev LoopGeneratingSet
    (Loop : Type u) (Generator : Type w) [Group Loop] :=
  Mathematics.Federation.LoopGeneratingSet Loop Generator

abbrev CycleConsistencyCertificate
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (generators : LoopGeneratingSet Loop Generator)
    (object : Object) :=
  Mathematics.Federation.CycleConsistencyCertificate
    holonomy generators object

theorem cycle_consistency_on_all_loops
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    {holonomy : Loop →* Equiv.Perm Object}
    {generators : LoopGeneratingSet Loop Generator}
    {object : Object}
    (certificate :
      CycleConsistencyCertificate holonomy generators object) :
    ∀ loop, holonomy loop object = object :=
  certificate.allLoops

end Mathematics.MobiusOntology
```
