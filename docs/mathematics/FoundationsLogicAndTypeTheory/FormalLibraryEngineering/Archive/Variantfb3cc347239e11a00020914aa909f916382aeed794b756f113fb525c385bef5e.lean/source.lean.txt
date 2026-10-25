/-!
Archive boundary root.

Archived formal material is retained for inspection only. It is not part of the
checked kernel and must not be imported by `Formal.Kernel`.
-/

namespace Formal.Archive

def importedByKernel : Bool := false

theorem archive_not_imported_by_kernel : importedByKernel = false := by
  rfl

end Formal.Archive
