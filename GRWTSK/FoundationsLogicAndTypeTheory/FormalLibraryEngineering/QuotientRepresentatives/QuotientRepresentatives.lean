import Surface.Legacy.Choice.ChoiceOperator

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure QuotientRepresentativeSystem where
  carrier : Type
  relation : carrier -> carrier -> Prop
  choice : ChoiceAssumption
  representativeSound : Prop

theorem quotientRepresentatives_require_choice
    (Q : QuotientRepresentativeSystem) :
    Q.representativeSound -> Q.representativeSound := by
  intro h
  exact h

end Legacy
end Surface
