# Deterministic formalization contracts

GRWTSK supplies pure mathematical contracts for Noeaaeue's deterministic
formalization, taxonomy channel routing, incremental observation reuse and
separate verification queue. Executable generators, caches, queues, replay logs
and receipts remain in `grwtsk/noeaaeue` and its external runtime.

| Contract | Source | Exact scope |
| --- | --- | --- |
| Constructive derivation soundness | [ConstructiveDerivation.lean](../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean) | Every derivation in the defined propositional calculus preserves the meaning of its explicit hypotheses; closed falsity has no derivation |
| Taxonomy-channel filter splitting | [ChannelSplitting.lean](../../GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean) | Predicate channels may overlap; two filters have four exhaustive membership cases; the residual contains all unmatched signals |
| Observation cache and claim validity | [ContentBoundCache.lean](../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ContentBoundCache.lean) | Equal source bytes and observer profile permit observation reuse; unchanged entries persist; changed entries refresh; stale/expired claims are rejected |

The fiber optics analogy describes multiplexing by subject identity and splitting
with explicit predicates. No theorem about physical optics, bandwidth, taxonomy
acceptance or mathematical payload validity follows from routing. UUID channels
retain canonical taxonomy identity and editorial status. Unmatched signals remain
in the residual, and overlapping memberships retain one underlying task identity.

Noeaaeue's entry point is
`workflows/formalization/lean/replay/incremental_formalization.py`.
Its contract and commands are documented in
`research-tracks/formalization/research/docs/deterministic-formalization-v1.md`.
The persistent result index observes each Git blob once per observer version;
the separate verification queue binds exact source and environment. Counts are
computed from stored observations. A result stays verification pending until its
own replay evidence has been checked. The initial closed compiler accepts
structured constructive propositions and emits explicit proof terms; unsupported
or unresolved goals remain open. It does not translate arbitrary prose.

The pure contracts were directly compiled using `lean -t 0 <source-path>` with
Lean 4.33.0. Operational logs/receipts are retained in Noeaaeue, not here.
These mathematical laws do not assert a formal refinement of the Python/SQLite,
Git hash, filesystem, clock, or renderer implementations. Cache reuse assumes
actual equality of content; digest equality alone is not proved injective.

[Theorem/result occurrence catalog](result-occurrences.md) · [Taxonomy schema](../taxonomy/schema.md)
