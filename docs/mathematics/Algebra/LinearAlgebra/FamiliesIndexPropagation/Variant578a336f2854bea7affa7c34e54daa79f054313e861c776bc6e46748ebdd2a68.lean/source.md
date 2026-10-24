# Complete source: GRWTSK.Algebra.LinearAlgebra.FamiliesIndexPropagation.Variant578a336f2854bea7affa7c34e54daa79f054313e861c776bc6e46748ebdd2a68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4820daeaaa05edfeb978239309b283f9d9dc9692` · SHA-256 `8cc8b653f1928751967c60b53e5a40949ae2a68643cd1b1ff51da18100aaf39f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FamiliesKIndexPropagation.Variant019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FamiliesKIndexPropagation.Variant019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8","mathematical_subject":"Foundations.Unclassified","original_sha256":"019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/FamiliesIndexPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.PerfectFamilyTheoremTarget
import Folder.CanonicalPath.DeterminantLinePropagation
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.FamiliesIndexPropagation

Radiation role: research-boundary
BinaryMatrix spine: This module records families K-index propagation targets.
Ontology: canonical.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.Algebra.LinearAlgebra.FamiliesKIndexPropagation.Variant019d68169c3228c1fda177e5de0b26824fcf1d7881d3fffc538da9bc1249fcf8

namespace Folder
namespace CanonicalPath

structure FamiliesKIndexPropagation
    (F : PerfectSectionComplexFamily)
    (M : DerivedSheaf.MellKTheory) where
  familyIndexClass : DerivedSheaf.KTheoryClass M.K
  specializesToFiberIndex : Prop
  specializesToFiberIndex_certified : specializesToFiberIndex
  nontrivialOnComponent : Prop
  nontrivialOnComponent_certified : nontrivialOnComponent
  determinantEvidence? : Option (DeterminantLineFamily F)
  sourceLabel : String

theorem families_k_index_nontrivial_if_supplied
    {F : PerfectSectionComplexFamily}
    {M : DerivedSheaf.MellKTheory}
    (I : FamiliesKIndexPropagation F M) :
    I.nontrivialOnComponent :=
  I.nontrivialOnComponent_certified

theorem families_k_index_specializes_if_supplied
    {F : PerfectSectionComplexFamily}
    {M : DerivedSheaf.MellKTheory}
    (I : FamiliesKIndexPropagation F M) :
    I.specializesToFiberIndex :=
  I.specializesToFiberIndex_certified

end CanonicalPath
end Folder
```
