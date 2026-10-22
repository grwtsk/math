# Observation correspondence before target selection

`ResearchObservation` gives a pure interpretation of an observation-only state
into `ResearchState`. Its declarations live in
`GRWTSK.Logic.StateTransition.ResearchObservation`; its maintained module is
`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchObservation`.
The static mathematical acceptance contract is
[`verification/research-observation-v1.toml`](../verification/research-observation-v1.toml).
Neither this note nor that contract is an execution receipt.

The source baseline is Gate Zero, math commit
`81ee62a7524d925398092e2f3d38b1be70ec5f8c`, tree
`513d23055ee85ed636cd711873f1facb123ace5c`. Each external verification must bind
the actual committed revision containing the bridge, its exact selected source
blobs, and the pinned upstream dependencies. The baseline identifies the
mathematical predecessor; it does not certify a later runtime.

## Exact state interpretation

An `ObservationState` contains an ordered source-identity list, all metadata,
a natural-number version, and an ordered event history. `realize` retains
these values exactly. Each history event receives the fixed mathematical
operation `Operation.observe`.

All other mathematical fields are fixed explicitly. The claim type is `Empty`,
the target is absent, the obligation, frontier, and proved sets are empty,
the relation list is empty, and the core is `Unit` with meaning `True`.
The self specification is the existing unrestricted specification at version
zero. This fixed specification supplies the permission needed by
`Change.observe`; it does not enlarge the external operation decoder.

Consequently, the interpretation cannot encode a conjecture, an obligation,
a theorem route, or a proof. `realize_has_no_claims` proves the empty fields
directly. `realize_valid` supplies the corresponding vacuous semantic validity;
it does not assert that an arbitrary serialized history is reachable.
Source identity strings retain their order and all six fields, but do not
authenticate Git objects. Verification labels and planning text produce no
mathematical proof.

## Concrete operation correspondence

An `Observation` contains its literal operation string, an event, and metadata.
`recordObservation` replaces metadata, appends that exact event once, and
increments the version by one. The acceptance predicate is exactly

```text
Admitted before observation after :=
  observation.operation = "RECORD_OBSERVATION" ∧
  after = recordObservation before observation
```

The second equality covers the complete variable state. In particular, source
mutation, omitted history, a changed version, or substituted metadata cannot
be accepted merely by labeling a record verified. `wrong_operation_rejected`
and `source_mutation_rejected` give explicit rejection consequences.

`realize_recordObservation` proves that the pure update commutes with
`ResearchState.advance` after replacing metadata. `admitted_change` then
constructs the actual `ResearchState.Change.observe` term between the two
interpreted states. This is a proved bridge for the exact represented values,
with the stated pre-target scope. It is not a universal refinement proof for
an arbitrary Python implementation or JSON parser.

## Complete value binding

The reference wire language `NatTree` contains only natural-number atoms and
finite arrays. A string is an array of Unicode scalar values. The encoders use
these fixed field orders:

| Value | Array fields |
| --- | --- |
| Source identity | repository, commit, tree, path, blob, declaration name |
| Verification metadata | source identity, status label, description |
| Metadata | verification records, planning strings |
| Event | identifier, description |
| Observation | literal operation, event, metadata |
| State | sources, metadata, version, history |

The verification labels are encoded as `0` for `unverified`, `1` for
`kernelReported`, `2` for `verificationFailed`, and `3` for `externalCandidate`.
The pure bridge represents these labels as metadata. An external decoder may
support a smaller subset and must reject unsupported values.

`stringWire_injective`, `sourceWire_injective`, `metadataWire_injective`,
`eventWire_injective`, `observationWire_injective`, and `stateWire_injective`
prove that this encoding loses no represented fields. The intervening
verification encoders are also proved injective. `NatTree.renderBytes` is the
normative byte encoder. It returns the numerical ASCII byte values of decimal
naturals, comma separators, and brackets, without whitespace. Its primitive
recursor is evaluated by the kernel when checking concrete equality proofs;
it introduces no external evaluator or additional axiom. The existing
`NatTree.render` supplies a string spelling for display.

An external admission proof can bind its actual before, observation, and after
values by proving the corresponding encoder equalities to concrete natural
arrays, equality of `NatTree.renderBytes` to the actual canonical wire bytes
represented as a list of natural numbers, and `Admitted` for those same
values. Rewriting the tree equality first lets the byte proof normalize the
explicit tree. These finite proofs are checked by Lean's kernel. No theorem
here proves a general JSON decoder, general renderer injectivity, source
custody, or the provenance of externally supplied bytes.

## Ordered mathematical replay

`replay` is a pure ordered fold. `ReplayAdmitted` requires every literal
operation tag to be `RECORD_OBSERVATION` and requires the separately supplied
final state to equal the complete fold result. `replay_admitted_reachable`
constructs reachability through the actual mathematical changes, and
`replay_admitted_valid` applies the existing semantic invariant theorem.

`replay_sources`, `replay_history`, and `replay_version` prove respectively
that the original ordered source list is unchanged, every supplied event is
appended in order, and the final version is the initial version plus the
number of observations. These statements concern the supplied ordered list.
They do not prove that a file contains every event ever written or that an
untrusted list has authenticated origins.

The external Noeaaeue implementation must separately bind each actual record
to its concrete transition proof, authenticate its selected source inputs,
retain and replay the complete committed journal, and reject malformed,
reordered, missing, duplicated, or conflicting journal data. Filesystem
append behavior, locking, durable writes, checksums, compiler execution, and
repository effects belong to Noeaaeue. Their tests and receipts belong there.

Any later claim-bearing runtime state requires a new represented catalog and
its own correspondence proof. This interface selects no arithmetic conjecture
and provides no consistency theorem for Lean, Mathlib, or the research process.
