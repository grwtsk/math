# Collection-wide OpenAI import surfaces

Local attribution: grwtsk contributors. OpenAI retains upstream authorship and
Apache-2.0 licensing, together with the obligations of its dependencies.

The [static catalogue](catalogue.json) is bound to
`openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. It records all 721
manuscripts in 373 result families and all 419 comparator configurations,
including the nested Hodge challenge. Those configurations name 545 distinct
theorems, with 546 theorem occurrences and one definition occurrence. The
upstream formalization catalogue separately lists 176 source references and
208 main-result records; its own review status is `unchecked`.

The source inventory also identifies the upstream OAI module trees, containing
162,417 Lean sources. Internal implementation modules remain explicit upstream
dependencies rather than being copied into GRWTSK or counted as local bridges.

## Using a surface

Files live under `GRWTSK/<subject>/OpenAIMath/` within this provider package.
Each imports the exact solution module and any additional imports specified by
its comparator. It exposes the configured declarations through nested namespace
aliases retaining their original qualified names and types. For example:

```lean
import GRWTSK.NumberTheory.OpenAIMath.OrdinaryTwoPointCorrelations

#check GRWTSK.NumberTheory.OpenAIMath.OrdinaryTwoPointCorrelations.OAI.OrdinaryTwoPointCorrelations.liouville_log_saving
```

The catalogue records each lookup alias, source blob and comparator policy.
These aliases resolve to upstream declarations; they are not new proved
GRWTSK consequences or independently accepted analytic inputs.

The opt-in `GRWTSKOpenAICatalogue` library declares the subject modules. From an
external, source-pinned materialization of this provider package, select one:

```sh
lake build GRWTSK.NumberTheory.OpenAIMath.OrdinaryTwoPointCorrelations
```

The provider's existing default targets and the repository's root imports do
not include the collection-wide library.

## Remaining mathematical and verification work

Every collection-wide surface has compilation, comparator execution, fresh
independent kernel checking and complete transitive axiom auditing `NOT_RUN`.
A permitted-axiom list or `enable_nanoda` setting describes a configuration,
not an execution result. Preserve each comparator's actual policy and reject
unapproved trust mechanisms before acceptance.

Manuscript references are source records. The catalogue does not infer that
every manuscript has a Lean formalization, and absence from its upstream
formalization source list does not establish that none exists. Exact paper
theorems, hypotheses, consumer-specific bridges and missing premises must be
reconciled individually. Source-only or unmapped items remain unresolved.

Further adapter work should supply meaningful mathematical consumers and
source-bound evidence. Re-export count, file count and finite diagnostics are
not substitutes for that work. Operational runs, receipts and scheduling state
belong outside maintained math content.

## Canonical reference maintenance

The [canonical paper ledger](../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#openai-adapter-reconciliation)
reconciles the provider's original two papers and the previously separate
signed-Abel supplements. Extend that ledger for each actual mathematical bridge,
with exact hypotheses, source identities, verification evidence or `NOT_RUN`, and
missing premises. The 721 source records remain a catalogue; this reconciliation
does not invent paper-to-theorem mappings or certify all 419 import surfaces.
