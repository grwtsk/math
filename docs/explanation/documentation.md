# Documentation model and upkeep

The README routes readers. Tutorials teach one complete example; how-to pages support a task; explanations clarify concepts; reference pages retain exact interfaces and evidence. Canonical result pages follow mathematical subjects and objects. Topic dossiers connect subjects without becoming source umbrellas.

Each referenceable result family needs its exact statement and hypotheses, proof explanation, actual consumers, limits, source-bound evidence, upstream credit and local contribution. No paper format, headline novelty claim or measured-impact claim is required.

The candidate [structured records](../reference/results.json) own IDs, source bindings and status. Authored pages explain mathematics; the generated index projects those records. Priority reflects immediate architectural usefulness, not measured scientific influence. A proposed application is distinct from a checked consumer.

When checked results change: identify affected records; retain the old evidence; replay affected proofs/consumers where required; update source and receipt bindings; then regenerate navigation and run documentation controls. Never silently refresh a hash to imply a check happened. Negative paths and unresolved premises remain first-class documentation.

`python3 -B scripts/check_documentation.py` validates selected source bindings, links, status and premise requirements. `--render` regenerates the selected index. It is a structural documentation checker, not a theorem prover or the full authoritative catalog. Coverage is explicitly three selected families, the RH criteria navigation guide and the existing top-level page inventory; declaration-wide coverage remains open.

For `historical-source-changed`, retain `sha256` as the earlier documentary source
binding, record current bytes separately in `observed_source_sha256`, state
`current_verification: not-run`, and explain the historical evidence limit. The
catalog displays current replay as pending. The checker rejects undeclared drift,
a stale current observation, erased history and promotion of an old receipt to
current verification. This status provides a source observation and preserves a
historical record; it does not accept the present proof.

Provide complete text and meaningful link labels. Diagrams supplement the text. Historical pages retain their original qualifications; their listed commands may require repaired source bindings during the layout migration.
