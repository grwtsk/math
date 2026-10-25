# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleEngine.Variant27d9d9aa65642251a40723f2a69edc64dc882f6cf45b20a472c28bc3773d7428

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b67a781470ac0e6f4700b15f0ef5230ca0d587e0` · SHA-256 `91d9639402ae4fdc0eb207b50b66abd2124ef5bc6074fa8f9796350677c3a887`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CopyRuleFixed.Variantd8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CopyRuleFixed.Variantd8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a","mathematical_subject":"Foundations.Unclassified","original_sha256":"d8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Presentation/RuleEngine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Presentation.RuleEngine

/-!
# Folder.Theorem.Presentation.RuleEngine

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes presentation rule engine correctness facts.
Ontology: proof.presentation.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CopyRuleFixed.Variantd8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a

namespace Folder
namespace Theorem
namespace Presentation

theorem copyRule_fixed
    (x : α) :
    Folder.Presentation.IsFixedBy (Folder.Presentation.copyRule α) x :=
  Folder.Presentation.copyRule_fixed x

theorem run?_resolved
    (E : Folder.Presentation.RuleEngine)
    (A : Folder.Presentation.RuleApplication E)
    (R : Folder.Presentation.PresentationRule E.Input E.Output)
    (h : E.resolve A.rule = some R) :
    A.run? = some (R.apply A.input) :=
  Folder.Presentation.run?_resolved E A R h

end Presentation
end Theorem
end Folder
```
