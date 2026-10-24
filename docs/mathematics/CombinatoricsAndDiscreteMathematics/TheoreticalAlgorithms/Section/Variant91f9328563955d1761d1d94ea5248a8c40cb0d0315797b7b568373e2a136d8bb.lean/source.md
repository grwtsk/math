# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Section.Variant91f9328563955d1761d1d94ea5248a8c40cb0d0315797b7b568373e2a136d8bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e5003962f00b968dd84f4f251cb7798a56d6305` · SHA-256 `00d129560079599b1e8b4b01adbe88190d3cc079377d63d48ea6d6056f1be582`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LatexSection.Varianta4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LatexSection.Varianta4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c","mathematical_subject":"Computation.DataStructures","original_sha256":"a4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Latex/Section.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Latex.Syntax

/-!
# Folder.Latex.Section

Radiation role: latex-section
BinaryMatrix spine: This module records reference-ranked LaTeX sections emitted from presentation documents.
Ontology: latex.section
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LatexSection.Varianta4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c

namespace Folder
namespace Latex

structure LatexSection where
  title : String
  label : String
  rank : Nat
  body : LatexFragment

structure LatexSectionOrder where
  sections : List LatexSection
  sorted_desc : sections.Pairwise (fun a b => b.rank ≤ a.rank)

theorem latex_section_order_sorted
    (O : LatexSectionOrder) :
    O.sections.Pairwise (fun a b => b.rank ≤ a.rank) :=
  O.sorted_desc

end Latex
end Folder
```
