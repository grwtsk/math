# Repository reconstruction contract

This contract keeps two guarantees separate:

1. an artifact can be reproduced byte for byte from declared retained inputs or
   a declared deterministic recipe; and
2. a formal assertion has a checked derivation of its exact intended statement.

Neither guarantee implies the other. A restored proof script is only restored
text. A kernel-checked theorem does not by itself reconstruct the documentation,
generator, receipt, or dependency sources used to distribute it.

The governing addendum is an implementation input, not evidence. Its exact
supplied bytes are retained under `.noeaaeue/evidence/policy-inputs/` and identified by
path and SHA-256 in the versioned
[`rules/registry.json`](rules/registry.json). Retention makes the instruction
bytes reconstructible; it does not turn them into conformance evidence or let a
new registry authorize its own weakening.

## Inventory

The working snapshot is the union of Git-tracked paths and nonignored untracked
paths. Discovery uses NUL-delimited Git output. Each listed path is opened by
descriptor without following links; path bytes, file mode, size, SHA-256, text
encoding and line-ending observations are recorded. Tracked deletions,
conflicts, submodules, links, nonregular entries and observed concurrent changes
are separate failure fields rather than silent exclusions.

[`repository-artifact-catalog.json`](repository-artifact-catalog.json) is the
generated view. `.noeaaeue/documentation/math-layout.json` remains authoritative for mathematical
Lean placement and source roles; `documentation-layout.json` remains
authoritative for maintained reader pages. The artifact catalog does not
replace either index.

## Byte reconstruction

Authored source and configuration are retained literal inputs. Historical
receipts and content-addressed evidence objects are immutable observations.
Each such record covers its whole byte interval with one reversible retained
range. This is honest but deliberately modest: retention establishes exact
restoration, not why the content is true.

Generated outputs are predeclared in
[`reconstruction-recipes.json`](reconstruction-recipes.json). They are not
allowed to fall back to literal-input status after regeneration fails. Exact
hashes are integrity bindings; the retained bytes or executing recipe provide
the reconstruction material.

The catalog cannot contain its own digest without a circular definition. It is
therefore a deterministic meta-artifact: its recipe excludes the output itself,
and a separate observation binds the rendered catalog bytes. That observation
does not require its own digest as an input.

`.noeaaeue/scripts/check_repository_conformance.py --write-receipt` creates that
observation at a fresh, exclusive `.noeaaeue/evidence/repository-conformance-*.json`
path. The observation is closed before the receipt is created, so the receipt
explicitly describes the immediately prior snapshot. A subsequent catalog run
may inventory the receipt as immutable evidence; neither operation upgrades a
blocked profile or makes the receipt evidence for its own bytes.

## Origins

Every catalog record distinguishes retained literals, immutable observations,
and generated outputs. A byte-range origin is not an authorship claim. License
and attribution remain bound through the repository license, NOTICE, embedded
headers, and historical records; complete per-artifact authorship review is a
separate provenance obligation.

## Generation

Each registered recipe names its inputs, generator, check command, render
command, and environment restrictions. Network, unrecorded randomness, current
time and ambient host paths are forbidden for deterministic views. Restoring an
old observation, regenerating an output, and rerunning a check are different
operations.

The causal-realization archive has a stronger, explicitly scoped restoration
contract and object index. Its successful `restore.py --verify` result applies
only to that historical archive. It is not repository-wide reconstruction.

The current recipe registry covers the three repository-visible deterministic
views that have been reviewed as such. Other scripts write current observations,
ignored run logs, external bundles, or authoritative inputs after an explicit
operator action. Those outputs must not be silently recategorized as generated
views: the complete writer/read-set census and deterministic classification are
still open. The conformance observer therefore keeps
`generation-census-incomplete` as an unconditional Reconstructible blocker.

For the three registered views, an `ACCEPT` result currently means only that
the observer's reviewed in-process renderer produced the exact present bytes.
The validator pins the declared generator and command vectors, but the observer
does not execute those command vectors or enforce their environment contract.
It therefore does not interpret byte freshness as proof of declared-command
reproduction.

Generation checks currently import repository Python into the observer process.
The post-generation rescan catches visible mutation, but it is not a
least-privilege sandbox and cannot detect a read of an ignored or external input.
Independent dynamic read-set enforcement and sandboxed execution remain required
before a repository-wide generation claim can be admitted.

## Restoration boundary

The catalog records exact path bytes and observed file modes separately from
content. Clean tracked bytes are read back from their Git blobs and compared
directly. Dirty and untracked bytes are read back from deterministic,
content-addressed gzip objects and compared directly; SHA-256 remains an
integrity binding rather than a replacement for retained bytes. Registered
generated views are regenerated and compared byte for byte.

No standalone restorer yet materializes the complete catalog into a fresh
destination and reapplies and verifies every recorded path and mode. That
missing path/mode restoration operation is a reconstruction gap even when the
in-place byte comparisons succeed.

The two Git scans used by the observer share one implementation. They detect
concurrent changes but are not independent discovery. A separate filesystem
enumerator and a complete executed-read reconciliation are required to discharge
coverage independently.

## Freshness

A current receipt must bind every relevant source, rule, schema, parser,
generator, option, dependency object/source and checker. The current tooling
does not yet capture the complete dynamic read set of every family checker, so
repository-wide freshness remains pending. Old receipts remain historical.

## Controls

The conformance self-test checks catalog omissions, duplicate rule identities,
unknown schema fields, symlink rejection, range gaps and overlaps, byte and
Unicode/line-ending drift, stale generated output, unsupported circular rule
dependencies, and attempts to count `UNKNOWN` or incomplete execution as
acceptance. Controls are run in normal and optimized Python modes. These tests
exercise an implementation boundary; they are not soundness proofs.

## History

Historical evidence retains its original wording, source identity and outcome.
Rebinding a path or digest never refreshes a proof result. The historical
migration correspondence currently contains stale destination hashes for the
19 validation sources whose malformed combined imports were repaired; those
records must be corrected by an append-only transformation record, not silently
rewritten as byte-identical moves.

## Profiles

The cumulative profiles are Organized, Reconstructible, Formally checked, and
Independently validated. Status is a vector, not a catch-all pass. The present
working tree does not attain a profile merely because the observer completes.
Organized still requires source-bound receipts for layout, role, coverage, and
documentation review. Reconstructible additionally requires the generator and
read-set census, independent discovery, and path/mode restoration described
above. Semantic occurrence coverage, trusted-statement comparison, and an
independent checker are not implemented, and the retained owned-declaration
audit rejects existing compiler-generated partial declarations. The generated
catalog and rule registry make those gaps inspectable; they do not close them.
