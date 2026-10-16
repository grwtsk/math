# Source-intake process and classification tools

This page preserves the operational material separated from the mathematical source-candidate inventory. Its historical authorization language is a retained record of its original scope, not a new authorization for this cleanup.

The importer and source-bound assignment exporter are executable Python tools:

```sh
python3 -B .noeaaeue/scripts/taxonomy.py .noeaaeue/examples/taxonomy.json --output /tmp/taxonomy-output
python3 -B .noeaaeue/scripts/taxonomy_handoff.py TAXONOMY.json ASSIGNMENTS.json --out HANDOFF.json
python3 -B -m unittest discover -s .noeaaeue/tests -p 'test_taxonomy*.py' -v
python3 -O -B -m unittest discover -s .noeaaeue/tests -p 'test_taxonomy*.py' -v
```

Output destinations must be new. Assignments use the closed `math-taxonomy-assignments/v1` format: taxonomy identity/revision and rows containing an immutable 64-hex audit `record_id`, primary node, secondary nodes, `PROPOSED` or `REVIEWED` editorial state, and rationale. `.noeaaeue/scripts/taxonomy_handoff.py` produces `math-taxonomy-handoff/v1` with exact input digests, normalized paths and unchanged notation. It neither extracts Lean declarations nor certifies proofs, source authenticity or access rights.

Consumers must establish current permitted source projections before indexing or ranking and retain unresolved fields as unresolved. A matching classification is not a proof of theorem applicability. [The source-bound integration receipt](../../evidence/taxonomy-integration-v1.json) records the Python runs and explicit native/full-repository checks not run. The five candidate modules are deliberately absent from the public `GRWTSK.lean` import closure until native admission.

## Retained source-intake instruction

R.A. Jacob Martone confirms ownership of the supplied proof sources and directs this work through ChatGPT and Codex. The existing Math repository MIT terms apply. Human direction, formal-source contribution, assistance, ownership and mathematical origin are recorded separately; original source credit, upstream mathematics and Mathlib licenses are retained. The human explicitly authorizes a candidate-source push of the rights-cleared Lean files and this metadata. Mathematical admission and formal releases remain separate: no theorem acceptance, formal release or original prose/script republication follows from the source push.
