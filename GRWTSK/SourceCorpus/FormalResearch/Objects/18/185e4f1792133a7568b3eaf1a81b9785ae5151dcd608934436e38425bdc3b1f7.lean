/-!
# Certified compatible reduction

Order independence is admitted only for handlers carrying an exact commuting
proof.  Noncommuting handlers require branching or quarantine.
-/

namespace Mathematics.Mutation

structure CompatibleReduction (State Event : Type) where
  apply : Event → State → State
  commute :
    ∀ left right state,
      apply left (apply right state) =
        apply right (apply left state)

theorem compatible_reduction_confluent
    (reduction : CompatibleReduction State Event)
    (left right : Event)
    (state : State) :
    reduction.apply left (reduction.apply right state) =
      reduction.apply right (reduction.apply left state) :=
  reduction.commute left right state

end Mathematics.Mutation
