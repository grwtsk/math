# A finite, proof-carrying research state

This is Gate Zero of the self-formalizing arithmetic research directive. The
mathematical subject is state-transition invariants and interpreted inference.
No arithmetic target, diffusion construction, or open conjecture is selected
by this increment.

The maintained model is
`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState`.
Its declarations live in `GRWTSK.Logic.StateTransition.ResearchState`.
The adjacent `ResearchStateExamples` module supplies finite demonstrations and
hostile controls. The static replay contract is
`verification/research-state-v1.toml`. Execution logs, source custody, feedback
serialization, and publication state belong to `grwtsk/noeaaeue`.

## Exact propositions and source identities

A fixed catalog associates each claim with an actual Lean proposition, an
explicit list of propositions serving as hypotheses, and a source identity.
Its meaning is the implication from all those hypotheses to the statement.
Proving that implication does not prove its hypotheses. An adapter that uses
additional hypotheses must either prove them or include them among its finite
premises. There is no coercion from a declaration name, source hash,
verification record, similarity score, or planning observation to a proof.

A claim and its catalog meaning remain fixed throughout a lineage. A source
incorporation records another source; it cannot rewrite a catalog statement.
A changed statement needs a fresh claim and a proof-producing adapter. Equal
serialized names supply no such adapter. Authenticating repository, commit,
tree, path, and blob values against actual Git objects is an external custody
obligation. The model does not parse or authenticate Git.

## State and conditional route

The state records an optional target, an abstract arithmetic-core
specification, a finite collection of obligations, typed relations, a finite
frontier, proved claims, verification metadata, a specification version, and
typed event history. The conditional route is the semantic assertion that
proofs of every frontier claim imply the selected target. Initially the target
may be absent. Selection adds its exact claim to the frontier; subsequent
transitions preserve that selected claim.

`Valid` is a defined predicate over these fields. It checks containment of
frontier and proved claims in the obligation collection, actual proofs of
claims marked proved, and the conditional target route. It is not a validity
field supplied by the caller.

The core parameter is deliberately abstract at this gate. A compatible core
replacement needs a mathematical compatibility proof. Neither a new core
identity nor an equivalent abstract core meaning automatically transports a
theorem about a concrete Laplacian, observable, normalization, or group action;
those exact assertions must be catalog claims with their own adapters.

## Debt conservation and admissible changes

Concrete changes distinguish obligation introduction, theorem registration,
conditional reduction construction, frontier transfer, scoped refutation,
core replacement, route revision, source incorporation, self-specification
revision, and observation. Target selection is a separate initialization
change. Mathematical preconditions are proof arguments, not status strings.

For a sound finite rule with conclusion `q` and premises `P`, a transfer
replaces the frontier `F` by `(F.erase q) ∪ P`. All premises are retained,
including any unresolved auxiliary hypothesis. A proved rule is not a proof of
its premises. A discharge removes a token only with a proof of its exact
meaning. Redundancy is a transfer whose required suppliers are already in the
remaining frontier. A route replacement must derive every old frontier claim
from the new frontier, even if the selected target has an easier proof.

The substantive conservation theorem derives

```
FrontierHolds after → FrontierHolds before
```

from the concrete transition constructors. It preserves all earlier debt,
not just a convenient conditional implication to the target. Validity and
locked-target preservation are then proved for reachability. Reachability
reuses the established `StateInvariant` induction theorem.

Self-specification revision is intentionally conservative in this first
version. It cannot introduce a new mathematical inference constructor or
remove the proof requirements of an existing constructor. Broader extensions
require a new formal model and a separately proved compatibility theorem.

Typed relations distinguish actual implications, equivalences and proofs
from descriptive dependencies, provenance and relevance. Grounded proof
closure reuses inductively grounded finite rules, starting without unchecked
seeds. An ungrounded implication cycle cannot certify a theorem. A conditional
self-reduction retains its own debt. A scoped refutation records only its
proved scope. Failed search, numerical observations, unknown checker results,
and unverified citations supply no mathematical negation.

## Reused foundations and inspected sources

The inspection baseline is math commit
`f2b467c505bcc20ac7d23c2c03cd037604a6afb2`, tree
`3e2302bd5aed2e66c7a314617fdc635ef2b84ffb`. The corresponding Noeaaeue baseline
is commit `48e5610d333075a317214d75575a803fe7c36c90`, tree
`5be24b6eb0e91b9366d967bc8eb302395f55a7d8`.

The inspected mathematical owners are:

- `StateTransition/Invariant.lean`: `StateInvariant.Reachable` and
  `reachable_invariant`; blob `d2e384c89ee6fd15392727d3d188f50f53ae6632`.
- `Inference/FiniteRuleSystems.lean`: grounded support, least closure and
  `supportedClaims_empty_of_no_ground`; blob
  `89e16446676e28b9a46cdfa40bdff82aa04296e9`.
- `Inference/RuleSoundness.lean`: `SoundRule`, interpreted rule soundness and
  exact checker acceptance; blob `6b06e15df2dc639558defb4c881a77f3b3e72327`.
- `Locality/RevisionCertificates.lean`: source freshness with separately
  proved semantic locality; blob `33c1c9e8420f83ff5cd52055e24dae0a4e15aa28`.
- `GRWTSK/Logic/SimultaneousProofPortfolio.lean`: proof-carrying dispositions
  and equivalence transport; blob `bd62fb7a826e8871e29bdbc14aece0a14721443e`.

The first four paths are relative to
`GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/`. The typed-relation
requirements in [issue #89](https://github.com/grwtsk/math/issues/89), dependent
port cuts, typed port normalization, conservative finite-rule replay, and
dependency-revision machinery informed the boundary. The existing
`GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean` (blob
`8262d6fdca3d8a48682471e956364b8e0094e02d`) and `RoleRelationReindex.lean`
(blob `9d5ab118519cbdda90ac93b61e076cca5003ae99`) preserve role-qualified
edge identities and path codecs. They do not attach implication soundness to
a role name. This gate therefore uses the established sound-rule interface
for mathematical authority, alongside distinct descriptive relation
constructors. It does not complete issue #89 or extract arbitrary elaborated
Lean contexts.

## Trust and remaining correspondence

The mathematical results rely on Lean's kernel and their audited transitive
dependencies. The replay contract rejects `sorryAx`, project-added axioms, and
unreported unsafe or native dependencies. A finite example is a demonstration
of these transition rules, not a proof of an open arithmetic conjecture.

The Noeaaeue feedback schema is a serialization contract. Structural schema
validation does not prove correspondence between a runtime execution and a
Lean transition. Still required before runtime actions are treated as
conforming are authenticated source discovery, complete dependency binding,
byte/parser realization, an actual transition witness for each accepted
record, state replay, and append-only ledger correspondence. These are explicit
implementation obligations, not fields that acquire authority by being set.

There is no consistency theorem for Lean, Mathlib, or the research process,
and no self-modification or model-weight claim. The retained frontier and the
locked target constrain a research lineage; they do not guarantee that its
target is true or that a proof will be found.
