# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Degree.Variant420dee5c5fb33375af668a14ea988577ca9c9043b0e0235b3fca74e432098285

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e8c3444b9bd52be4ab8562293f0ca22c08ae0ad` · SHA-256 `74fed108956a72325689788cfd4ec8d28c66486cca98c5c3a82df32da940bd34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GradedObject.Variant258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GradedObject.Variant258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891","mathematical_subject":"Foundations.Unclassified","original_sha256":"258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/Degree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.DerivedSheaf.Degree

Radiation role: research-boundary
BinaryMatrix spine: This module supplies derived sheaf degree labels, not BinaryMatrix carriers.
Ontology: derived.section_complex
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GradedObject.Variant258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891

namespace Folder
namespace DerivedSheaf

abbrev Degree := Int

structure GradedObject where
  Obj : Degree → Type _
  label : String

def GradedObject.term
    (G : GradedObject)
    (n : Degree) : Type _ :=
  G.Obj n

theorem graded_object_has_term
    (G : GradedObject)
    (n : Degree) :
    ∃ T : Type _, T = G.term n :=
  ⟨G.term n, rfl⟩

end DerivedSheaf
end Folder
```
