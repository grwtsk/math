/-!
External LeanCert boundary root.

LeanCert references in blueprint files do not become local theorem authority
unless the dependency is declared and the imported theorem statements are bound
to checked kernel targets.
-/

namespace Formal.External.LeanCert

def importedIntoKernel : Bool := false

theorem not_imported_into_kernel : importedIntoKernel = false := by
  rfl

end Formal.External.LeanCert
