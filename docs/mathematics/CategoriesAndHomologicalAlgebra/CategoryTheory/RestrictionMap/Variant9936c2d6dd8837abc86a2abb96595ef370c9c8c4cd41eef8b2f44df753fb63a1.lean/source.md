# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionMap.Variant9936c2d6dd8837abc86a2abb96595ef370c9c8c4cd41eef8b2f44df753fb63a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36a247d1cd860836674c6dbb43600232bb9b47e7` · SHA-256 `26efc30299208a0f812645f62d86981d6eea4f05fe24ac0a3cef28753d70bd12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionCompatibleWithBoundary.Variant1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RestrictionCompatibleWithBoundary.Variant1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390","mathematical_subject":"Foundations.Unclassified","original_sha256":"1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/AdelicInfinityTopos/RestrictionMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.AdelicInfinityTopos.RestrictionMap

/-!
# Folder.Theorem.AdelicInfinityTopos.RestrictionMap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports restriction-map boundary compatibility.
Ontology: proof.adelic.restriction_map
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionCompatibleWithBoundary.Variant1a9b8353b3c7949f848798ef4097a58a73d61a877db1deb8a2a2df509e102390

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace RestrictionMap

theorem restriction_compatible_with_boundary
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    {i j : Folder.AdelicInfinityTopos.Place}
    (rho : Folder.AdelicInfinityTopos.AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  Folder.AdelicInfinityTopos.restriction_compatible_with_boundary rho

end RestrictionMap
end AdelicInfinityTopos
end Theorem
end Folder
```
