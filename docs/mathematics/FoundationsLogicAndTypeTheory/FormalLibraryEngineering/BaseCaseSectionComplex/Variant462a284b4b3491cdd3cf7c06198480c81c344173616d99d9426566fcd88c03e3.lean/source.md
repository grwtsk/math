# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseSectionComplex.Variant462a284b4b3491cdd3cf7c06198480c81c344173616d99d9426566fcd88c03e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c2f056f50764a10d36c0c89f45e075986930cc3` · SHA-256 `22588ab64a4d25021359458cfd6a732e2e0200031e74ca4e5254e88f556605fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseSectionComplex.Variante53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BaseCaseSectionComplex.Variante53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189","mathematical_subject":"Foundations.Unclassified","original_sha256":"e53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/BaseCaseSectionComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.SectionComplex
import Folder.DerivedSheaf.EulerCharacteristic
import Folder.DerivedSheaf.BaseCaseEllipticCurve

/-!
# Folder.DerivedSheaf.BaseCaseSectionComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records the base-case section complex, not BinaryMatrix data.
Ontology: base.section_complex
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseSectionComplex.Variante53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189

namespace Folder
namespace DerivedSheaf

/--
A base-case section complex whose Euler characteristic is supplied and
nonzero.

This is the topological anchor.
-/
structure BaseCaseSectionComplex where
  arithmetic : CertifiedBaseCaseEllipticCurve
  complex : SectionComplex
  euler : EulerCharacteristic complex
  euler_nonzero : euler.value ≠ 0
  complexRealizesLFunction : Prop
  complexRealizesLFunction_certified : complexRealizesLFunction
  sourceLabel : String

theorem base_case_euler_nonzero
    (B : BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  B.euler_nonzero

theorem base_case_complex_realizes_lfunction
    (B : BaseCaseSectionComplex) :
    B.complexRealizesLFunction :=
  B.complexRealizesLFunction_certified

end DerivedSheaf
end Folder
```
