# Static neighborhood-registry validation contract

Local attribution: grwtsk contributors. Date: 2026-11-09.

The [registry](registry.json) is a finite, source-local directory overlay
outside `GRWTSK/`. Its [JSON Schema](registry.schema.json) checks closed
record shapes, field types, canonical path spelling and revision syntax.
It cannot prove primality, directory parentage, reciprocal modular edges,
source-file existence or mathematical correctness. These require separate
semantic checks.

## Exact structural obligations

For each annotated scope `s` with canonical directory `d(s)`:

1. Scope IDs, directory paths and assigned prime labels are individually
   distinct, and each label is actually prime.
2. The instruction file is `d(s)/AGENTS.md`, except at root where it is
   `AGENTS.md`. The declared parent is the unique longest registered strict
   ancestor; the children list is its exact inverse. Every parent chain
   terminates at the root. A prime edge never changes that chain.
3. Prime predecessors and successors are the actual immediate global
   prime neighbors. Parents and children are exactly the induced finite
   intersections of the explicitly defined modular relation
   `a<b ∧ (b mod a=1 ∨ b mod a=a−1)`. Neither set is an
   exhaustive description of all primes outside the finite registry.
4. Every conditional source-context handoff identifies existing scope
   endpoints, a source-relative evidence locator, an explicit task trigger,
   and an exact prime-graph witness from its source label to its target.
   Handoffs are *optional references*, not inheritance or authority.
5. Attribution, verified source identity, permission, publication and
   mathematical acceptance remain independent. Historical source pins
   must never be presented as fresh corpus-wide checks.

## Canonical path requirement

A route input must be a canonical, repository-relative, case-sensitive path:
no leading or trailing slash, repeated slash, backslash, ASCII control
character, or `.`/`..` component. Reject malformed paths rather than
normalizing them silently.

For instance, `GRWTSK/../docs/ontology/README.md` must be rejected
before the `GRWTSK/` exclusion is tested; normalization afterward could
turn an excluded path into a seemingly allowed one. Conversely,
`GRWTSK-extras/x` is **not** in `GRWTSK/`, and
`docs/ontology-ish/x` is **not** under `docs/ontology/`.

The source-local routing lemma assumes this canonical input domain.
Matching directory component prefixes form a finite chain, so its
longest element is unique. Strict parents shorten paths, making
inheritance acyclic. The registry's empty chain for a `GRWTSK/` file
only means the optional overlay is inapplicable: the repository-root
`AGENTS.md` still governs that file.

## Inherited context in unannotated descendants

The nearest ancestor `AGENTS.md` remains applicable, but its representative
`source_neighborhood` is **not** a complete file census. Inspect the
actual child source, README or index, manifests, source pins, licenses
and relevant consumers before edits. Follow only handoffs whose trigger
matches the task. Traversing the dense prime-2/prime-3 adjacency stars
is not a substitute for reading the correct source.

## Hostile cases and assurance

The [route fixtures](route-fixtures.json) contain 16 deterministic
routing examples, seven malformed paths that must be rejected, and
seven deliberately invalid mutations of the existing registry:
duplicate prime, incorrect immediate successor, spurious modular
parent, inconsistent directory ancestry, noncolocated instruction,
unknown handoff endpoint and nonadjacent prime witness.

Direct finite calculations checked the baseline relations and rejected
those 14 hostile inputs at the inspected revision. This is static
data validation, not a Lean build, fresh kernel replay, transitive
axiom audit, source-wide file verification, independent mathematics
review or a running agent. The repository contains no process runner.
