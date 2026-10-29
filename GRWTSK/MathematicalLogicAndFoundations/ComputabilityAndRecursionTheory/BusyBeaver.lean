import Surface.Legacy.Oracle.Halting

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure BusyBeaverDescriptor where
  haltingOracle : HaltingOracleDescriptor
  ordinaryComputable : Bool

theorem busyBeaver_not_marked_ordinary_computable
    (B : BusyBeaverDescriptor) :
    B.ordinaryComputable = false -> B.ordinaryComputable = false := by
  intro h
  exact h

end Legacy
end Surface
