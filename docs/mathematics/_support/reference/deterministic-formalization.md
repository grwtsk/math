# Deterministic formalization contracts

GRWTSK supplies pure mathematical contracts for Noeaaeue's deterministic
formalization, taxonomy channel routing, incremental observation reuse and
separate verification queue. Executable generators, caches, queues, replay logs
and receipts remain in `grwtsk/noeaaeue` and its external runtime.

| Contract | Source | Exact scope |
| --- | --- | --- |
| Constructive derivation soundness | [ConstructiveDerivation.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ConstructiveDerivation.lean) | Every derivation in the defined propositional calculus preserves the meaning of its explicit hypotheses; closed falsity has no derivation |
| Taxonomy-channel filter splitting | [ChannelSplitting.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean) | Predicate channels may overlap; two filters have four exhaustive membership cases; the residual contains all unmatched signals |
| Observation cache and claim validity | [ContentBoundCache.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ContentBoundCache.lean) | Equal source bytes and observer profile permit observation reuse; unchanged entries persist; changed entries refresh; stale/expired claims are rejected |
| Typed equational rewriting | [TypedRewriting.lean](../../../../GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/TypedRewriting.lean) | Natural-number semiring laws and order-preserving list append/reverse laws compose soundly under contextual transport, symmetry and transitivity |

The fiber optics analogy describes multiplexing by subject identity and splitting
with explicit predicates. No theorem about physical optics, bandwidth, taxonomy
acceptance or mathematical payload validity follows from routing. UUID channels
retain canonical taxonomy identity and editorial status. Unmatched signals remain
in the residual, and overlapping memberships retain one underlying task identity.

The original Noeaaeue integration described the entry point
`workflows/formalization/lean/replay/incremental_formalization.py`.
That integration recorded its contract and commands in
`research-tracks/formalization/research/docs/deterministic-formalization-v1.md`.
These are historical companion-repository locators, not executable paths in this
math checkout or a check of current Noeaaeue commands. Inspect the intended
companion revision before using them. In the described integration, the
persistent result index observes each Git blob once per observer version;
the separate verification queue binds exact source and environment. Counts are
computed from stored observations. A result stays verification pending until its
own replay evidence has been checked. The initial closed compiler accepts
structured constructive propositions and emits explicit proof terms; unsupported
or unresolved goals remain open. It does not translate arbitrary prose.

The compiler also accepts typed natural-number addition/multiplication and
finite-list append/reverse equalities. It performs bounded rewrite search with
independent trace checking; it is not an unrestricted algebra solver. List
reverse uses the upstream `propext` axiom, which native replay reports explicitly.
See the [archived guide](https://github.com/grwtsk/math/blob/9b46c9dc984c2a20cef7fe59984514ab038f0d58/documentation/mathematics/GeneralAlgebraicSystems/AlgebraicStructures/TypedRewriting.md).

Source-signal routing uses the canonical UUID subjects, including the
[source-signal draft](../../../taxonomy/proposals/new-concepts/source-signal-subjects.md).
Every GRWTSK file, including hash-named files, is in scope. Direct observations,
exact-original links and lexical dependency-only candidates remain distinct;
none confers editorial acceptance or a mathematical verification receipt.

The recorded historical check compiled the pure contracts using `lean -t 0 <source-path>` with
Lean 4.33.0. This describes those checked inputs, not a fresh check of the linked
current files or current dependency configuration. Operational logs/receipts are
retained in Noeaaeue, not here.
These mathematical laws do not assert a formal refinement of the Python/SQLite,
Git hash, filesystem, clock, or renderer implementations. Cache reuse assumes
actual equality of content; digest equality alone is not proved injective.

[Theorem/result occurrence catalog](result-occurrences.md) · [Taxonomy schema](../../../taxonomy/schema.md)

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f55070d1620cbf12fd84ed587783aead368c29e804b4037765543aba036cfccb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Equational/TypedRewriting.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean","GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ContentBoundCache.lean","GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
