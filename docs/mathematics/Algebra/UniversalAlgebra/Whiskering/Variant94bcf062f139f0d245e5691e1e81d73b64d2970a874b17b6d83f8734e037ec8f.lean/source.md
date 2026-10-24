# Complete source: GRWTSK.Algebra.UniversalAlgebra.Whiskering.Variant94bcf062f139f0d245e5691e1e81d73b64d2970a874b17b6d83f8734e037ec8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67f8dec5927c5ac224402c9eee9ce6d27ba192a8` · SHA-256 `8876fe6ed81ff929861b2b703da382b8f3f531ee55cff8d340d112827637eb67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Colimits.Variantadaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Colimits.Variantadaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"adaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Sites/Whiskering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Category.ModuleCat.Limits
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Sites.Equivalence


namespace GRWTSK.Algebra.UniversalAlgebra.Colimits.Variantadaec1c2364def908c37775ce6caa117b99e8468404c46246d6e3f9a829832a0

universe u

open CategoryTheory GrothendieckTopology

section Small

variable {C : Type u} [SmallCategory C] (J : GrothendieckTopology C) (R : Type u) [Ring R]

example : HasSheafCompose J (forget (ModuleCat.{u} R)) := inferInstance

end Small

section Large

variable {C : Type (u + 1)} [LargeCategory C] (J : GrothendieckTopology C)

example (R : Type (u + 1)) [Ring R] : HasSheafCompose J (forget (ModuleCat.{u+1} R)) := inferInstance

variable [EssentiallySmall.{u} C]

example (R : Type u) [Ring R] : HasSheafCompose J (forget (ModuleCat.{u} R)) := inferInstance

end Large
```
