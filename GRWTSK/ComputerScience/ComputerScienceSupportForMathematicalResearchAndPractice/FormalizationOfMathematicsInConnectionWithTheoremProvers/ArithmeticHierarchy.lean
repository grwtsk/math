import Surface.Legacy.Oracle.BusyBeaver

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure ArithmeticHierarchyDescriptor where
  level : Nat
  oracleRelative : Prop

theorem arithmeticHierarchy_descriptor_is_relative
    (A : ArithmeticHierarchyDescriptor) :
    A.oracleRelative -> A.oracleRelative := by
  intro h
  exact h

end Legacy
end Surface
