import Mathematics.GraphAccess.Resolver

/-!
# Concrete-mode implementation contract

Every later traversal mode supplies its own applicability predicate, output
certificate family, and invariant-preserving machine through this package.
-/

namespace Mathematics.GraphAccess

structure ModeImplementation
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
    (mode : TraversalMode) where
  applies :
    ∀ request : AdmittedAccessRequest G profiles,
      request.plan.primary = mode → Prop
  outputs :
    ∀ request : AdmittedAccessRequest G profiles,
      request.plan.primary = mode →
        ModeOutputFamily G request
  build :
    ∀ request : AdmittedAccessRequest G profiles,
      ∀ modeEquality :
        request.plan.primary = mode,
      applies request modeEquality →
        AccessMachine G request
          (outputs request modeEquality)

end Mathematics.GraphAccess
