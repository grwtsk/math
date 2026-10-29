import Folder.Rebuild.ProofStatus
import Folder.Rebuild.ClassicalAnchor

/-!
# Folder.Rebuild.Basic

Umbrella basics for the classical rebuild branch.
-/

namespace Folder
namespace Rebuild

theorem rebuild_checked_status_allowed :
    RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.checkedByLean :=
  trivial

theorem rebuild_mathlib_status_allowed :
    RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.mathlibInternal :=
  trivial

end Rebuild
end Folder
