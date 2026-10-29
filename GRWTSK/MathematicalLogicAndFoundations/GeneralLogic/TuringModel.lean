import Surface.Legacy.Oracle.Oracle

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure OracleTuringModel where
  stateName : String
  transitionSound : Prop

end Legacy
end Surface
