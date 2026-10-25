# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rule.Variant8d6494f10254106810a262a981743a4c6220399c2245c3b972760977d979767b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74f6aae03279d694d5c14dd6f44731255de18c64` · SHA-256 `f14ee16b15d3a1dc0fb53e28aab439d6f31ee544e048689a469e9d0d451776ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PresentationRule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PresentationRule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","mathematical_subject":"Foundations.Unclassified","original_sha256":"ee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Presentation.Rule

Radiation role: presentation-rule
BinaryMatrix spine: This module defines presentation rules as views over carriers, distinct from archive reconstruction rules.
Ontology: presentation.rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PresentationRule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8

namespace Folder
namespace Presentation

structure PresentationRule (α β : Type _) where
  name : String
  apply : α → β

def copyRule (α : Type _) : PresentationRule α α where
  name := "copy"
  apply := id

def IsFixedBy
    (R : PresentationRule α α)
    (x : α) : Prop :=
  R.apply x = x

theorem copyRule_fixed
    (x : α) :
    IsFixedBy (copyRule α) x :=
  rfl

end Presentation
end Folder
```
