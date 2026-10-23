# Predicate-channel splitting

[Lean source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean)

A route is a predicate `Channel → Signal → Prop`. A signal can satisfy several
channel predicates. `Residual route signal` means that it satisfies none.
`GRWTSK.Combinatorics.FiniteSets.ChannelSplitting.lossless` proves, classically,
that a signal is routed somewhere or belongs to this residual. `filter_split`
enumerates all four membership cases for two predicates; `residual_disjoint`
proves that a residual signal belongs to no ordinary channel.

Noeaaeue uses taxonomy UUIDs as channels and explicit source selectors as
predicates. The fiber optics analogy refers to multiplexing and filtering.
It supplies no physical model, semantic taxonomy acceptance or proof of the
signal's mathematical payload.

[Workflow contracts](../../../reference/deterministic-formalization.md)
