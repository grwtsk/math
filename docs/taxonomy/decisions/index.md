# Architecture decisions

[Taxonomy](../index.md)

These decisions define this bounded draft's design, not independent editorial acceptance of its concepts, permission to execute workflows, or approval by an external body. Review history begins with 0.1, 2026-10-19; all alternatives and unresolved gates remain retained here.

## D01 Ownership

Use maintained concept pages, mathematical/editorial proposal content, stable decisions and static specifications in `grwtsk/math/docs/taxonomy/`. Do not move Lean or modify source imports. The existing documentation index is left unchanged because its generated inventory is not this pilot's denominator.

Noeaaeue's `registry/taxonomy/classification/` owns named PMD disk metadata and transfers; `registry/taxonomy/collation/` owns source collation; `workflows/taxonomy/integration/` owns integration effects. These remain distinct from the universal mathematical concept library. Their historical snapshots are neither replaced nor relabeled as this scheme. Any relationship to the new vocabulary needs a separate, versioned association/crosswalk. Existing mathematical Git bindings remain the input boundary.

This resolves the naming overlap without a second operational framework: reuse those owners for future effects, subject to their contracts. It does not assert that their current implementation already understands this profile. Their compatibility, nested instructions, extension points and exact execution commands require a source-bound Noe implementation review before any operational change. No validator, publisher, cache, operational receipt, permission ledger or scheduling state is added to math.

Sources: [math AGENTS](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/AGENTS.md), [Noe taxonomy](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/README.md), [Noe classification](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/classification/README.md).

## D02 Reference-only external sources

The pilot contains locally authored explanations, bibliographic metadata and selective code references. It does not import the MSC dataset, external definitions, standards texts or book files. MSC's CC BY-NC-SA 4.0 terms are not replaced by the repository's MIT notice. Bulk external registration and redistribution remain blocked until an explicit permitted reuse/distribution arrangement and source-byte acquisition are recorded. Reference-only records do not count as imported, reconciled scheme entries.

Possible later arrangements include a separately noticed license-scoped data component, an authorized external reference service, or specific permission. None is approved by this draft. Exports must carry record-level provenance and rights and must not flatten mixed licensing into MIT. ISO complete texts, detailed LCC schedules and unverified authority identifiers are not reconstructed from public summaries.

## D03 Single canonical source

Adopt the Markdown/YAML profile in [schema](../schema.md). One concept has one page and UUID, all semantic parents, and one chosen navigation home. The registry owns path identity. Relative links expose other routes without duplicate definitions. Source associations, crosswalks and proposals are separate records rather than additional definitions of the subject. No competing editable JSON/RDF catalogue is created.

## D04 Pilot admission and scale-up

All eleven concept records and three crosswalks are proposed. No independent reviewer or production graph is claimed. The pilot exercises architecture but leaves full disciplinary coverage intact. Before population batches, resolve any profile defect, source-rights blocker or ownership conflict discovered by review. Before production release, execute the positive/hostile controls in Noe, reconcile the complete declared baseline, and publish independent semantic and cataloging dispositions.

## D05 Compatibility and source credit

The three named namespace pairs remain scope-review candidates. Preserve existing exact source versions, upstream notices, hypotheses and unresolved #254 credit markers. Classifying a guide or a source occurrence does not migrate its Lean module. Splits and merges require durable predecessor/replacement decisions; new paths cannot silently redefine historical identities.
