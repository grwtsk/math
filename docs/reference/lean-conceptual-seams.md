# Declaration-level conceptual seam contract

Status: **draft pure source contract / source-only / NOT_RUN / NOT_KERNEL_AUDITED**.

Issue: `grwtsk/math#403`. Operational consumer: `grwtsk/noeaaeue#357`.

The whole-file sorter in PR #390 deliberately stops at `review` when one Lean
file is conceptually mixed. This extension specifies the evidence required before
such a file may be decomposed into several subject-homed modules.

## Units and identities

The canonical source occurrence remains identified by repository, revision,
path and content digest. Within it, each Lean command receives an exact half-open
byte span, ordinal, syntax kind and raw digest. Explicit and generated
declarations are attached to the command that introduced them. Generated
structure fields, recursors, instances and other environment additions never
become free-standing source spans.

Each command records incoming and outgoing namespace, section, variable,
universe, option, syntax, attribute and local-instance state. This permits the
operational extractor to report that a conceptual seam exists while the physical
split is unsafe.

## Coverage and reconstruction

An accepted plan must establish all of the following independently:

- command spans cover the exact source range from byte zero to the source length;
- no source gap or overlap is hidden by formatting or pretty printing;
- command ordinals are unique and every command occurs once in the slice list;
- every observed explicit and generated declaration is attached exactly once;
- the result recipe reconstructs the original source bytes exactly;
- all copyright, attribution, source and documentation notices are preserved;
- selected public declaration names and elaborated type fingerprints are unchanged.

Hash equality may identify bytes for custody, but the pure plan carries exact
reconstruction equality rather than treating a digest as a proof of semantics.

## Inseparable dependencies

Generated declarations, mutual definitions, private visibility, local context
and notice ownership are hard dependencies. Their command units remain in one
slice unless a separate theorem changes the dependency. Ordinary public
references may cross a module boundary only through explicit imports and a
result-module dependency graph with a supplied topological order.

A namespace boundary is neither necessary nor sufficient for a conceptual seam.
A subject transition may be reviewed as mathematically meaningful while remaining
`CONCEPTUAL_SEAM_PHYSICAL_SPLIT_BLOCKED` operationally.

## Subject relations

A slice may be relevant to several persistent taxonomy IDs but has at most one
selected target module. Machine-origin relations remain `relevantTo`. They do not
become implication, equivalence, formalization, declaration identity, authorship
or originality claims.

Unknown, nearly tied, no-suitable-subject and incomplete-taxonomy cases remain
`review`. A coherent unknown cluster may motivate a taxonomy proposal; it does
not create an accepted subject automatically.

## Operational boundary

Noeaaeue #357 must obtain command spans, environment deltas, generated
declarations, exact elaborated types and reference edges from the pinned Lean
frontend. It owns ranking, review UI, transactions, import rewrites, execution,
receipts and rollback. Accepted mathematical source and reviewed static
associations return to `grwtsk/math`.

No live source split is authorized by this document or its Lean record. A valid
external receipt still must replay every resulting module, compare the public
surface, reconcile root exposure, run the complete library target and retain
exact rollback evidence.
