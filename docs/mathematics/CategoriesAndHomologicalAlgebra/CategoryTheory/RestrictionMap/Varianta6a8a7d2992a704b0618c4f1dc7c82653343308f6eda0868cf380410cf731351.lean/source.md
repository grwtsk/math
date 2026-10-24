# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionMap.Varianta6a8a7d2992a704b0618c4f1dc7c82653343308f6eda0868cf380410cf731351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dc397ea37c6a9edb58f1141653272ab258e9d8f` · SHA-256 `39c40210be99d89773cd382f760db9cd73010da3e1fe086aa53f2dc580285718`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdelicRestrictionMap.Variant1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AdelicRestrictionMap.Variant1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a","mathematical_subject":"Foundations.Unclassified","original_sha256":"1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/AdelicInfinityTopos/RestrictionMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.AdelicInfinityTopos.AdelicSpectralSheaf

/-!
# Folder.AdelicInfinityTopos.RestrictionMap

Radiation role: research-boundary
BinaryMatrix spine: This module makes adelic place-to-place restriction morphisms explicit.
Ontology: adelic.restriction_map
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdelicRestrictionMap.Variant1397506991ac3208718fbb6a68a87c30ddcde30a14faf02ec1b532639d004e8a

namespace Folder
namespace AdelicInfinityTopos

structure AdelicRestrictionMap
    (S : AdelicSpectralSheaf)
    (i j : Place) where
  sourcePlace : Place := i
  targetPlace : Place := j
  sourceSpectrum : SpectrumObject
  targetSpectrum : SpectrumObject
  morphism : SpectrumMorphism sourceSpectrum targetSpectrum
  compatibleWithLocalFactors : Prop
  compatibleWithBoundary : Prop
  compatibleWithBoundary_certified : compatibleWithBoundary

theorem restriction_compatible_with_boundary
    {S : AdelicSpectralSheaf}
    {i j : Place}
    (rho : AdelicRestrictionMap S i j) :
    rho.compatibleWithBoundary :=
  rho.compatibleWithBoundary_certified

end AdelicInfinityTopos
end Folder
```
