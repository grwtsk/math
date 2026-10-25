# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Emit.Variant749bc57300f5a46637fcf0f3714536677344049671bb82073de6c47a57c9fc5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a1b7841e08ce3aa667f6ea404ab53a4b5dc8be4` · SHA-256 `55f0e1c95ad5765b0d4dccde5a1a6a22daaa07e9ffbc664c5052c63906db897f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatexEmitter.Variant57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LatexEmitter.Variant57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953","mathematical_subject":"Foundations.Unclassified","original_sha256":"57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Latex/Emit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Latex.Project
import Folder.Latex.Section

/-!
# Folder.Latex.Emit

Radiation role: latex-emit
BinaryMatrix spine: This module names LaTeX project emission contracts for presentation outputs.
Ontology: latex.emit
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatexEmitter.Variant57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953

namespace Folder
namespace Latex

structure LatexEmitter where
  emit : LatexDocument → LatexProject
  root_is_main : ∀ D, (emit D).rootFile = "main.tex"

theorem latexEmitter_emits_main
    (E : LatexEmitter)
    (D : LatexDocument) :
    (E.emit D).hasMain :=
  E.root_is_main D

end Latex
end Folder
```
