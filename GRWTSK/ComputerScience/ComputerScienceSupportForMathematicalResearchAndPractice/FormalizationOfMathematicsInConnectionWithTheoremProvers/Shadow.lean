import Mathematics.Mutation.Obstruction

/-!
# Immutable shadow mutation

The pure construction returns the original canonical snapshot unchanged and a
separate counterfactual state.  It exposes no operation that writes the
canonical carrier.
-/

namespace Mathematics.Mutation

structure ShadowMutationResult
    {State : Type}
    (snapshot : ImmutableSnapshot State) where
  canonical : ImmutableSnapshot State
  shadowState : State
  mutationProgramId : StableId
  canonical_unchanged :
    canonical = snapshot

def applyShadowMutation
    {State : Type}
    (snapshot : ImmutableSnapshot State)
    (program : MutationProgram State) :
    ShadowMutationResult snapshot where
  canonical := snapshot
  shadowState := program.mutate snapshot.state
  mutationProgramId := program.programId
  canonical_unchanged := rfl

theorem shadow_mutation_preserves_canonical
    {State : Type}
    (snapshot : ImmutableSnapshot State)
    (program : MutationProgram State) :
    (applyShadowMutation snapshot program).canonical = snapshot :=
  (applyShadowMutation snapshot program).canonical_unchanged

end Mathematics.Mutation
