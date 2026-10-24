# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpansionIndex.Variant4c2ea2d7020fbbb9c0ed34c7a59739ca0c2df01e3e48f58630176e9bebce5b96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d83c241680f054c61bc6bb9cb8fd5c89f77c5a7` · SHA-256 `a1f14dd3c5bbb0e05f5e7d48023d74649167718671a4624b3273bbca1c00572b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpandAtInternal.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.ExpandAtInternal.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Catalan/ExpansionIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.ExpansionIndex

/-!
# Folder.Theorem.Catalan.ExpansionIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpandAtInternal.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c

namespace Folder
namespace Catalan

theorem expandAt_internal
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.internal = T.internal + 1 :=
  CTree.expandAt?_internal h

theorem expandAt_leaves
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.leaves = T.leaves + 1 :=
  CTree.expandAt?_leaves h

end Catalan
end Folder
```
