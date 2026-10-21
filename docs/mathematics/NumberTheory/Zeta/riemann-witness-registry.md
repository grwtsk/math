# Riemann-hypothesis witness registry

Issue: #451  
Stacked parent: PR #447 at `cebfa82e0fc74c2ad099c82ecc87846e771baf42`

## Purpose

The RH program contains several objects called witnesses, together with
obstruction theorems, comparison suppliers and prose classifications. They were
created on independent branches and do not form one theorem chain. This registry
records their exact source identities and the logical status of their relations.

A registry entry is not a theorem import. In particular:

- an exact branch, commit, path and declaration do not make a divergent source
  available in the current environment;
- a prose proof is not a Lean declaration;
- a historical name is not a proposition;
- a diagnostic relation cannot be traversed as an implication;
- a local metadata edge does not construct either endpoint witness.

## Node inventory

| ID | Kind | Availability | Exact source | Scope and consumer |
|---|---|---|---|---|
| `canonicalRectangleEdge` | witness | local import | PR #345, `9356655ba5ce3a8473b718b41a525d19bdaf21bb`, `CanonicalRectangleEdgeObstructionWitness.lean`, `CanonicalRectangleEdgeWitness` | Finite-height zeta count; reaches `RHThrough N` only with a source-aligned line family and strict deficit |
| `rectangleConjectureJunction` | connection atlas | local import | PR #447, `cebfa82e0fc74c2ad099c82ecc87846e771baf42`, `CanonicalRectangleConjectureConnections.lean`, `AllRouteConnections` | Conditional routes into the rectangle witness or a bounded bypass; no inhabitant supplied |
| `mobiusTerminalEndpointLoss` | obstruction | external branch | PR #432, `30acfd2babb7443461b8d4bb57f23982c50cbe08`, `TerminalMertensTwoPointPrefixObstruction.lean`, `not_terminalMultiplierRecovery` | Exact finite Möbius obstruction; does not prove the maximal-energy supplier |
| `mobiusEndpointConnectionAtlas` | connection atlas | external branch | PR #446, `4af9bb2ba38318e9fe9be838e11cef06425e59bf`, `EndpointInformationLossConnections.lean`, `endpointInformationLossWitness` | Typed Chowla/Elliott/short-interval/Sarnak relations; literature reviewed but not imported here |
| `typedCriticalStripTransport` | classification | prose only | PR #440, `2903d3392feba8facb75261ac7c4ed91b9b903bc`, `typed-critical-strip-witnesses.md` | Separates strip transport, square coherence, groupoid inverses, null-loop holonomy and line location; no Lean declaration claimed |
| `fixedNegativeBudget` | obstruction | external branch | PR #308, `6c9ca58645612d3e245fa9269eefd5d7010f2321`, `FixedWitnessBudget.lean`, `witness_forces_budget` | Generic finite error-floor theorem; no arithmetic source or RH consumer constructed |
| `finiteGramWindow` | supplier | external branch | same PR/head, `FiniteGramWitnessWindow.lean`, `complex_gram_window_comparison` | Conditional finite source-to-Gram budget; can feed `no_fixed_negative_below_window` |
| `criticalReflectionCover` | supplier | external branch | same PR/head, `CubicReflectionSupplier.lean`, `rhThrough_of_cubic_slope_cover` | Distinct finite-height bypass requiring actual slopes, root membership and complete accepted coverage |
| `dyadicTreeMaximalComparison` | supplier | external branch | PR #449, `1157501e4b52ec388bbcff8baed6563534c40c0b`, `DyadicBlockSquareMaximal.lean`, `dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy` | Generic finite comparison; no Möbius block-energy bound or RH conclusion |
| `quinticWitnessLabel` | unresolved label | unresolved | none | No verified declaration, proposition or consumer located in the bounded audit |
| `boundaryLayerWitnessLabel` | unresolved label | unresolved | none | No verified declaration, proposition or consumer located in the bounded audit |
| `finiteScaleFilterWitnessLabel` | unresolved label | unresolved | none | No verified declaration, proposition or consumer located in the bounded audit |

The last three rows deliberately preserve the names without assigning them
mathematical content. A future reconciliation must supply an exact repository
source, proposition, scope and consumer before changing their status.

## Relation semantics

The source defines:

```text
SUPPLIES
SPECIALIZES
FORMALIZES
BYPASSES
REQUIRES
REFUTES_AT_SCOPE
COMPARES_TO
MOTIVATES
RELEVANT_ONLY
NO_PROVED_CONNECTION
```

Only `SUPPLIES` and `BYPASSES` are even eligible to carry an implication. They
remain non-traversable unless `EdgeAuthority.localProof` is also present.
`externalSourceBound`, `proseOnly` and `unresolved` authority never produce a
local proof edge.

This deliberately makes the following non-implications machine-visible:

```text
source URL or commit       -/-> local theorem
prose classification       -/-> Lean proof
historical witness label   -/-> proposition
REFUTES_AT_SCOPE           -/-> general refutation
MOTIVATES                   -/-> supplier theorem
FORMALIZES                  -/-> witness inhabitant
```

## Registered graph

```text
rectangleConjectureJunction
  --FORMALIZES, local metadata only-->
canonicalRectangleEdge

mobiusEndpointConnectionAtlas
  --FORMALIZES, external branch-->
mobiusTerminalEndpointLoss

mobiusTerminalEndpointLoss
  --MOTIVATES-->
dyadicTreeMaximalComparison

finiteGramWindow
  --SPECIALIZES, external branch-->
fixedNegativeBudget

criticalReflectionCover
  --BYPASSES, external and therefore not locally traversable-->
finite-height RH consumer

criticalStripTransport
  --NO_PROVED_CONNECTION-->
canonicalRectangleEdge

mobiusTerminalEndpointLoss
  --NO_PROVED_CONNECTION-->
canonicalRectangleEdge

fixedNegativeBudget
  --NO_PROVED_CONNECTION-->
canonicalRectangleEdge
```

For each of the unresolved quintic, boundary-layer and finite-scale-filter
labels, the registry records `NO_PROVED_CONNECTION` to the rectangle witness,
the Möbius endpoint obstruction and the local reflection-cover route.

## Scope corrections retained

### Möbius endpoint witness

The exact result is one-horizon information loss:

```text
earlier prefix nonzero
terminal prefix zero
therefore terminal-only multiplicative recovery fails.
```

It does not refute Chowla, corrected Elliott, Sarnak disjointness, short-interval
randomness, a maximal inequality, or the all-scale maximal-energy premise.

### Critical-strip classification

Strip-preserving maps, square path coherence, groupoid inverse transport and
null-loop identity holonomy do not establish critical-line location or divisor
exhaustivity. The source remains prose-only in this registry.

### Fixed and finite Gram witnesses

These modules prove conditional comparison inequalities. They require source
identity, complete forcing, model updates, tail control and a strict margin. They
do not reconstruct arithmetic positivity, a Weil form, a zeta divisor or a
contour count.

### Critical-reflection route

The local contraction route has its own finite-height consumer. It can bypass
the rectangle-count path only after all of its semantic slope, root-membership
and complete-cover premises are supplied. Its source branch is not imported, so
its bypass edge is not locally traversable here.

## Local proposition bindings

The core module binds two propositions without proving them:

```lean
canonicalRectangleEdgeBinding N
  : LocalClaimBinding .canonicalRectangleEdge

rectangleConjectureJunctionBinding N
  : LocalClaimBinding .rectangleConjectureJunction
```

Their claims are respectively:

```text
HasCanonicalRectangleEdgeWitness N
Nonempty (AllRouteConnections N).
```

No witness or route-registry inhabitant is constructed.

## Evidence state

Established for this registry:

```text
SOURCE_DRAFT
```

PR #446 separately records `LITERATURE_REVIEWED` for its own source ledger. That
state is copied only into the corresponding metadata node; it is not inherited
by the registry as a whole.

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

No Lean/Lake/native execution, cross-branch cherry-pick, dependency closure,
source reconciliation, theorem admission, witness construction, finite-height
RH result or global RH result is represented.

## Next reconciliation obligations

1. Locate or define an exact quintic-witness declaration and its consumer, or
   preserve the unresolved label.
2. Locate or define an exact boundary-layer witness and its consumer, or
   preserve the unresolved label.
3. Locate or define an exact finite-scale-filter witness and its consumer, or
   preserve the unresolved label.
4. Import and replay a divergent source only on a separately authorized branch;
   do not convert its registry reference into local authority automatically.
5. Add a comparison edge only with an exact theorem whose hypotheses and scope
   match both nodes.
