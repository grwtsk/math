# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedIndex.Variantc8c729edc4bc8ce2d084c62522f1024ed87034ac15fba216620591334a7bac8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f347ae1f173de30ac793e524ab71579a694dad2e` · SHA-256 `fbde6c7f7576e3bd10acc391e15eaf75ba81f9a797559ba6737cc3029f4aab4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedIndex.Variantc25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DerivedIndex.Variantc25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a","mathematical_subject":"Foundations.Unclassified","original_sha256":"c25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/DerivedIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.EulerCharacteristic

/-!
# Folder.DerivedSheaf.DerivedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module represents derived indices, not BinaryMatrix counts.
Ontology: derived.derived_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedIndex.Variantc25b7e2c70c2cd43ba9d75730881d91654d4b164f08197c3c1fdc7837408263a

namespace Folder
namespace DerivedSheaf

structure DerivedIndex where
  complex : SectionComplex
  euler : EulerCharacteristic complex
  interpretsAsIndex : Prop
  interpretsAsIndex_certified : interpretsAsIndex
  sourceLabel : String

theorem derived_index_interprets_as_index
    (I : DerivedIndex) :
    I.interpretsAsIndex :=
  I.interpretsAsIndex_certified

theorem derived_index_has_euler_characteristic
    (I : DerivedIndex) :
    ∃ chi : EulerCharacteristic I.complex, chi = I.euler :=
  ⟨I.euler, rfl⟩

end DerivedSheaf
end Folder
```
