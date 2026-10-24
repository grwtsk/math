# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FolderTree.Variant18246a902617b641817bfc076be94d674a7e23cd7f4b3dd6e59b6d9b985bf47d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42e019518938128c3d8ae410e989751acf0cf224` · SHA-256 `540e1c0ff52408852ef6186ae9540339853c5a1d636d8a8913102c534555837f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FolderTree.Variant5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FolderTree.Variant5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb","mathematical_subject":"Computation.DataStructures","original_sha256":"5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/FolderTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.FileEntry

/-!
# Folder.Archive.FolderTree

Radiation role: archive-manifest
BinaryMatrix spine: This module stores canonical archive entries before they are presented as BinaryMatrixStream layers.
Ontology: archive.folder_tree
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FolderTree.Variant5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb

namespace Folder
namespace Archive

structure FolderTree where
  entries : List ArchiveEntry
  unique_paths :
    entries.Pairwise (fun a b => a.path.value ≠ b.path.value)
  parent_dirs_present : Prop
  sorted : Prop

theorem folderTree_unique_paths
    (T : FolderTree) :
    T.entries.Pairwise (fun a b => a.path.value ≠ b.path.value) :=
  T.unique_paths

end Archive
end Folder
```
