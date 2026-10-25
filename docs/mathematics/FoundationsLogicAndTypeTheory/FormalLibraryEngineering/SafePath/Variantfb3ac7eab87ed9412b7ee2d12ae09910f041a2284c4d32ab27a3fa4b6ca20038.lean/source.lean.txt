import Folder.Basic

/-!
# Folder.Archive.SafePath

Radiation role: archive-manifest
BinaryMatrix spine: This module constrains archive paths before payloads are materialized as BinaryMatrix layers.
Ontology: archive.safe_path
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure SafeRelPath where
  value : String
  not_empty : value ≠ ""
  no_dotdot : ¬ ".." ∈ value.splitOn "/"
  not_absolute : ¬ value.startsWith "/"
  no_empty_components : ∀ c ∈ value.splitOn "/", c ≠ ""

theorem safeRelPath_no_dotdot
    (p : SafeRelPath) :
    ¬ ".." ∈ p.value.splitOn "/" :=
  p.no_dotdot

theorem safeRelPath_not_empty
    (p : SafeRelPath) :
    p.value ≠ "" :=
  p.not_empty

end Archive
end Folder
