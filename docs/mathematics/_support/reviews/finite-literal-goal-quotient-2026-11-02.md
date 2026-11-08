# Exact finite image carrier for a source-bound Nat.le_trans query

Local attribution: grwtsk contributors. Mathematical source-candidate review.
2026-11-02. Native compilation, kernel replay, axiom audit: NOT_RUN.

## Abstract

The existing goal-local Nat-transitivity fixture represents facts and rules by
four distinct Boolean-pair labels but interprets them in `Nat × Nat`. At the
fixed parameters `(a,b,c)=(1,1,2)`, its image consists of exactly three pairs:
`(1,1)`, `(1,2)` and `(0,0)`. A complete finite inventory over the infinite
type `Nat × Nat` is impossible, so the previously published generic
goal-pruned Boolean equivalence could not be instantiated directly.

The source candidate
[FiniteLiteralGoalQuotient.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteLiteralGoalQuotient.lean)
now represents precisely that three-point image by `Option Bool` and
constructs a complete `FiniteInventory (Option Bool)`. It proves a surjective
source encoding, an injective decoding into literal pairs, a commutative
comparison with the original atom map, and a pullback of the previously
proved goal-local lifting hypothesis. This yields an actual source-level
**executable Boolean query equivalence**, not merely an abstract
inductive-derivability comparison. It also transports original
proof-carrying applications and facts into the finite carrier and returns
to the original interpreted goal using `decideInstantiatedGoal_sound`.

All proof terms remain **SOURCE_PROOF_CANDIDATE** until the exact pinned
Lean environment compiles and independently replays the result.
This does not extract raw `Lean.Expr` proof arguments.

## 1. Exact mathematical object

Let source labels be `ScopedGoalFixture.Atom = Bool × Bool`, with
`premiseAB=(false,false)`, `premiseBC=(false,true)`,
`conclusionAC=(true,false)`, and `unused=(true,true)`.
The original map at `(a,b,c)=(1,1,2)` is

| Source label | Three-state encoding | Literal decoding | Meaning |
| --- | --- | --- | --- |
| premiseAB | `none` | `(1,1)` | `1≤1` |
| premiseBC | `some true` | `(1,2)` | `1≤2` |
| conclusionAC | `some true` | `(1,2)` | `1≤2` |
| unused | `some false` | `(0,0)` | `True ↔ 0≤0` |

The source's two different labels for `premiseBC` and
`conclusionAC` intentionally collide. This is a **quotient-like
finite image encoding**, not a claim of a Lean `Quotient` construction
or a bijection on the original four labels. The mapping is
surjective onto its three-state target; the decoding is injective
from the three states into `Nat × Nat`. Both assertions are
explicit theorems `encode_surjective` and `decode_injective`.

The commutation theorem `decode_encode` states for each original
source atom `x`:

[
\operatorname{decode}(\operatorname{encode}(x))
  =\operatorname{ScopedGoalFixture.atomMap}(x).
]

This is an exact statement at the fixed three natural parameters,
not a false claim about all possible pairs `(a,c)`.

## 2. What is proved, and why

The generic theorem `goalLocalLiftable_pullback_injective` shows that if
`g : β→γ` is injective and `GoalLocalFiberLiftable (g∘f) R F K`
holds, then `GoalLocalFiberLiftable f R F (K∘g)` holds.
Fact coverage and backward closure follow immediately under the
composition; rule-premise coverage needs injectivity of `g` to
recover equality of finite-state images from equality of their
literal decodings. No inverse of the *source encoding* `f` is
required or constructed.

The companion `goalLocalLiftable_congr_map` replaces a map only
when it is pointwise equal, by function extensionality. The concrete
`finite_goal_liftable` combines that theorem with
`decode_encode`, `decode_injective` and
`ScopedGoalFixture.local_fiber_liftable` already published in
[GoalLocalFiberInference.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/GoalLocalFiberInference.lean).
It does not assume the previously refuted **global** fiber saturation.

The exact carrier inventory is `[none, some false, some true]`
with no duplicates and complete coverage of `Option Bool`.
This is the complete *finite target type*, not an invented
`FiniteInventory (Nat × Nat)`.

The existing
`decideGoalPruned_iff_of_goal_local_lifts` therefore applies
with `ScopedOrderExample.inventory` on the source and the
new `inventory` on the target, choosing the single source goal
`premiseAB` and its image `none`. The resulting
`optimized_queries_agree` is an exact Boolean equality **iff**
between the two executable queries at this selected goal.
`source_query_true`, combined with this equivalence, establishes
`finite_query_true`.

To avoid ending with a bare rule-list calculation,
`applications` maps both pre-existing proof-bearing source
applications through `forwardCertificateMap` using the exact
pointwise interpretation `source_meaning_iff`.
`facts` transports both original `InstantiatedFact` evidence
terms. The two erasure theorems identify their output as exactly
the executable mapped rule/fact lists, preserving the AND-premise
rule and separate alternative goal rule. The final result
`finite_query_proves_literal_goal` applies the existing
`decideInstantiatedGoal_sound` to the *typed* transformed
certificate inventory; `finite_query_proves_source_goal`
returns to the original proposition `1≤1`.

The proof reuses the original `Nat.le_trans` and reflexivity
proofs. It is not an independently discovered theorem about the
naturals and does not prove general `Lean.Expr` reification.

## 3. Concrete finite model and hostile controls

The actual source rules and mapped finite rules, in their
original order, are:

```
source:
    [premiseAB, premiseBC] -> conclusionAC
    [unused] -> premiseAB

finite:
    [none, some true] -> some true
    [some false] -> none
```

The finite facts are `[some false, some true]`, so the
selected `none` goal is obtained by a nonzero-depth rule
application. The source goal `premiseAB` is not an initial
fact. The finite model retains the transitivity conjuncts,
even though the target transitivity conclusion happens to be
`some true` and is already an input fact. Duplicate target
atoms do not authorize deleting the original source rule
or treating a raw Expr as a proof.

An independent ephemeral **non-Lean Python** model checked:
encoding/decoding commutation for all four Boolean labels,
surjectivity of the finite encoding, injectivity of the literal
decoder, both mapped rule occurrences, both input facts,
source and finite closure membership and the selected goal,
backward closure, local fact/rule lifts, and the failure of
global fact saturation. Every required fixture check passed.

For 27 parameter triples `a,b,c∈{0,1,2}`, the cardinality of
the corresponding four-label literal image was: one point in
one triple, two points in six triples, three points in ten
triples, and four points in ten triples. A fixed three-state
encoding therefore **cannot** represent every other triple
and must not be reused without a fresh image and proof.

These Python results are bounded reference controls, not Lean
compilation, source-to-Python refinement proof, actual native
Boolean query execution or a performance measurement.

## 4. Exact source dependencies and evidence

Source identities inspected on maintained Math main:

- `GoalLocalFiberInference.lean`, Git blob
  `85daeaac6118d33fce60ea8ca34066844bd7d42f`.
- `FiniteFiberLiftedInference.lean`, Git blob
  `48bab1d425a4cf89d4daf122753bf4857ed25f9c`.
- `NoninjectiveNatLeTransTransport.lean`, Git blob
  `004b43ddafe549886b664d0d27587547dd7227e9`.
- `InstantiatedRuleCertificates.lean`, Git blob
  `8a947b13ef0f4fdca9127620d11a99870d4b121a`.
- `FiniteGoalPrunedClosure.lean`, Git blob
  `f915650ad2281144b28bfb5e5bdff16bc65a2417`.
- Lean toolchain `leanprover/lean4:v4.34.1`, via
  `lean-toolchain` blob `ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5`.

The exact new source Git blob and publication commit are
recorded in its passive verification issue after publication.

The authoring container has no Lean, Lake or Elan binary.
No Noe native host or verification worker was invoked.

| Evidence facet | Status |
| --- | --- |
| Exact Git source/diff and blob readback | Require publication readback |
| Static source/placeholder/whitespace inspection | Done; source-only |
| Independent bounded Python fixture comparison | Passed; non-Lean |
| Exact-source Lean compilation and elaboration | NOT_RUN |
| Fresh kernel replay and transitive axiom audit | NOT_RUN |
| Actual `MetaM` execution and proof-term refinement | NOT_RUN / NOT_PROVED |
| Corpus completeness, AI benefit, SAT complexity | NOT_CLAIMED |

## 5. Next obligation and consumer boundary

For a fully source-bound Noe-owned validation, first run native
Lean compilation at the exact published commit and dependency
lock, then inspect the generated declaration types and all
`#print axioms` outputs under the intended trust policy.
Run the finite query and object-level return in an importing
module with fresh kernel replay. Record the actual exit status
and immutable receipts. A source-only `by decide` theorem
candidate is not a `decide` execution receipt.

The next independent mathematical problem is to generalize
this *finite image construction* to arbitrary supported finite
literal occurrence inventories by supplying their exact image,
a computable finite carrier and a decoder/encoder round-trip
on that image. Any extension to raw Lean.Expr theorem
application arguments needs its own context-sensitive
proof reification and source-authentication bridge.

Coordinate with [Math issue #1637](https://github.com/grwtsk/math/issues/1637)
and [Noeaaeue programme #406](https://github.com/grwtsk/noeaaeue/issues/406).
