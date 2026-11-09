# Source-colocated agent neighborhoods

Instructions are discovered beside their maintained source files in each
directory's `AGENTS.md`; [the root rules](../AGENTS.md) and
[docs rules](../docs/AGENTS.md) remain authoritative. This directory
contains the single static scope index, prime mathematics, and finite
navigation examples—not a competing `agents/scopes/` instruction tree.

## Validation and hostile cases

[Registry Schema](registry.schema.json) constrains record shape and
canonical source paths. The [validation contract](validation-contract.md)
states the mathematical and source-fidelity properties a JSON Schema
cannot establish. [Route fixtures](route-fixtures.json) exercise positive,
negative and ambiguous-prefix cases.

## Which context to read

1. Identify the exact source path and task. If it is inside `GRWTSK/`,
   this registry is **out of scope**; follow the repository's subject rules.
2. For other tracked paths, read the matching ancestor `AGENTS.md` chain,
   from root through the deepest applicable directory.
3. Read the direct files listed in that directory's **Actual source neighborhood**.
   Choose the relevant actual source(s), not every linked directory.
4. Follow a **Source-context handoff** only when its explicit trigger applies.
   The handoff cites a real source contract and an exact comparison to make.
5. Verify the relevant identities, links, existing consumers and evidence
   before an authorized edit. No navigation step itself grants permission.

The [registry](registry.json) stores both the inherited directory tree and
the conditional source-context handoffs. The
[route examples](route-fixtures.json) make inherited routing inspectable.
A path under an unannotated directory inherits the nearest annotated parent;
inspect its actual README, toolchain, source manifest and directly consumed
files. Reject paths containing `.`/`..` components, repeated separators,
backslashes or absolute prefixes **before** routing. The optional registry's
empty chain for `GRWTSK/` never disables root repository instructions.

## Two different link relations

The [prime-knot triplets](prime-knot-triplets.md) provide consecutive-prime
neighbors and modular parents/children. They prove connectivity of all primes,
but this graph is very dense and **does not determine relevant source context**.
The registry's separate `context_handoffs` list records directly inspected,
task-triggered source/consumer/rights comparisons. Arithmetic
`prime_witness` entries show that handoffs can be carried by a path in the
prime graph; these paths do not establish semantic relevance.

For example, changing a `docs/ontology/mappings/files-00.yaml` layout
reference starts with root, docs, ontology and mappings instructions. Only
if `layout_exact` or `followup_files` is affected should the agent
consult the MSC2020 source layout. Prime 23 connects to prime 41 via
23 → 2 → 41, but that path does not make the root a decision-maker.

All content here is static source-integrity support. It does not create
running agents, schedules, Git authorization, theorem verification,
proof acceptance, or mutable receipts. Effectful automation belongs
in the separately bound Noe operations repository.
