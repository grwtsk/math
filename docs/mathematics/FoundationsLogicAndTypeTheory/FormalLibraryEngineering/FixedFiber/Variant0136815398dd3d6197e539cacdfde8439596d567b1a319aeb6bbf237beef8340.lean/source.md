# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedFiber.Variant0136815398dd3d6197e539cacdfde8439596d567b1a319aeb6bbf237beef8340

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5300078de06b330a2e16ff22b8f0255534a3cd7` · SHA-256 `e19deca1e6ba861649fe6b144a4b493001d23b2ef779fd1f1b312ddfb0775318`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedFiberContractExposesFixedPoint.Varianta2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedFiberContractExposesFixedPoint.Varianta2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607","mathematical_subject":"Foundations.Unclassified","original_sha256":"a2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Fiber/FixedFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Fiber.FixedPoint

/-!
# Folder.Theorem.Fiber.FixedFiber

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.fiber.fixed_fiber
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedFiberContractExposesFixedPoint.Varianta2c6c98853f3487f313e11141fc0e6e8f6589769abb528e873e8ab82d5ae6607

namespace Folder
namespace Fiber

theorem fixed_fiber_contract_exposes_fixed_point
    {α : Type _}
    {F : α → α}
    (h : HasFixedPoint α F) :
    F h.point = h.point :=
  fixed_point_is_fixed h

theorem unique_fixed_fiber_contract_exposes_uniqueness
    {α : Type _}
    {F : α → α}
    (h : HasUniqueFixedPoint α F)
    {x : α}
    (hx : F x = x) :
    x = h.point :=
  unique_fixed_point_eq h hx

end Fiber
end Folder
```
