# Mathematical documentation standard

Organize mathematics by subject and object, matching the Lean source tree: `docs/mathematics/<Subject>/<Object>/<page>.md`. A mixed dossier must distribute its results among their actual objects. Cross-subject connections are explicit links with their hypotheses; they do not create an umbrella campaign or imply a proved adapter.

Lead each result page with the mathematics: exact statement, hypotheses, definitions and proof idea. Preserve counterexamples, actual consumers, open premises, source citations and individual contributions. Identify written arguments, external literature, conditional theorems, historical checks and current source-bound receipts distinctly. Never update a hash as a substitute for verification.

The README and mathematical area directory route readers. Each area has a generated `docs/mathematics/<Subject>/index.md` navigation page grouping its object guides. Area indexes carry no theorem status or primary-source claim. Their inventory counts distinguish modules, guides, object groups, intake records and selected catalog families; the [count definitions](../reference/library-pages.md#count-definitions) state the exact populations and limits. Tutorials develop one example; how-to pages support a task; explanations develop concepts; reference describes sources, interfaces and evidence. Conversation chronology, grants, branch instructions and execution campaigns do not organize mathematical pages. Raw history remains evidence, outside canonical navigation. No paper format or unsupported novelty or impact claim is needed.

For a new or changed result, update its affected object page, exact source binding, status, credit and downstream links. Preserve earlier receipts and failures. Add the page to the [layout ledger](../reference/documentation-layout.json), regenerate subject navigation, and run both documentation checkers and the hostile fixtures. Keep the selected [result catalog](../reference/results.json) narrower than declaration-wide coverage until its separate acceptance requirements are met.

```sh
python3 -B scripts/check_documentation.py --render
python3 -B scripts/check_documentation.py
python3 -B -m unittest discover -s scripts -p test_documentation_layout.py
python3 -O -B -m unittest discover -s scripts -p test_documentation_layout.py
```

The checker discovers every Git-visible maintained Markdown page, enforces subject/object placement and exact source bindings, verifies the complete legacy section ledger, and rejects stale navigation, broken links, unsafe paths, private provenance and unsupported current-verification labels. Python optimization cannot disable these checks. Structural success does not establish mathematical truth, complete historical attribution or universal semantic preservation.

Byte reconstruction and formal correctness are independent guarantees. The [reconstruction contract](../reference/reconstruction.md) and [current rigor report](../reference/rigor-and-reconstruction-report.md) state their separate evidence and blockers. Neither an intact artifact nor a passing documentation check is a proof of its mathematical claims.

Provide complete structured text and descriptive links. Diagrams supplement the statements. Reorganization must preserve hypotheses, orientation, normalization, signs, endpoint conventions and scope; an unresolved proof remains unresolved.
