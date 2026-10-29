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
