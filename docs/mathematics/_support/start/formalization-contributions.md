# Returning formal mathematical findings to GRWTSK

Local attribution: grwtsk contributors.

This guide is for people or tools explicitly authorized to formalize and contribute findings. **Exploration, education, discussion, and ordinary mathematical work do not require submission or Lean.** Publication requirements here apply only when a repository contribution is part of the task.

Start with the [mathematical index](../../index.md), the [proof-comparison disposition](../reference/proof-comparison-disposition.md), and [repository instructions](../../../../AGENTS.md). Identify exact source files at a specific revision and follow the existing subject taxonomy. Source definitions, named declarations, imports, hypotheses, and historical verification records have identities that must survive any contribution.

## The source-bound research prompt

> Use grwtsk/math to investigate and, if possible, prove X. Read the relevant source at an exact revision and follow its repository instructions. Compare the intended original mathematical objects with any new representation, preserving quantifiers, signs, supports, limits, constants, and the full error or residual. Identify the strongest prior result and distinguish a new theorem from a known implication, a new proof, a new formalization, or an analogy. Explain the principal analytical argument; seek a genuinely different check or hostile boundary when useful without requiring a second proof. Formalize useful findings in the corresponding subject modules under GRWTSK/, and record the source and intended consumer in the source or linked issue/PR. Do not generate matching subject documents unless specifically requested. Record conditional premises, finite experiments, counterexamples, tool contributions, and precise remaining obligations at their supported scope. Keep analytical proof, compilation, kernel checking, and transitive axiom auditing separate; record actual checks or NOT_RUN. Where direct contribution is authorized, preserve concurrent changes, publish through non-force commits to the existing main branch, and verify the published commit, source paths, and declarations. Do not end at a chat answer or unattached patch when an actual repository contribution was requested; report a blocked return rather than claiming success.

Here, “prove X” is the objective—not permission to assume X. Useful rigorous partial results may be contributed while the stated final conjecture remains open.

## Submission and verification boundaries

1. **Locate the consumer.** Name the original proposition or problem, the source objects, the intended application, and the unproved step that would make the result useful.
2. **Preserve the mathematics.** Prove any map, comparison, transport, estimate, or signed-remainder control required to return to the original source. Record failed attempts and exact counterexamples without promoting them to more general claims.
3. **Choose the existing taxonomy.** Reuse and extend current `GRWTSK/` subject modules rather than creating a prompt-specific hierarchy. Existing documents may be linked but are not required. Preserve upstream credit, exact hypotheses, and declared verification boundaries.
4. **Report evidence honestly.** A file edit, a typecheck, a historical verification receipt, an independent analytic proof, and a prior-art survey are distinct events. Never replace an unrun check with an inferred passing result.
5. **Close the authorized contribution loop.** Publish via non-force commits on the existing `main` only when authority and concurrency constraints permit. Verify reachability, commit and blob identities, and the exact changed paths. If publication is blocked, label the return pending and do not claim completion.

Noeaaeue owns effectful execution and verification receipts; this repository retains the mathematical source and static specifications. The [README's practical module command](../../../../README.md#practical-lean-checks-optional) is an optional local starting point, **not** a requirement to build the entire library before studying or contributing.

For paper-derived material, cite genuine authors, a stable identifier, the exact theorem scope, and checked or unrun verification evidence in the source or associated issue/PR. Updating the [paper-to-formalization register](../reference/literature/reading-background/paper-to-formalization-references.md) is optional and must not be automatically triggered. Tools and providers are acknowledged for concrete contributions, not advertised.
