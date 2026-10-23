# Mathematical page inventory

The [mathematical area directory](../index.md) links to an index inside each area folder. Each area index groups its existing guides by mathematical object and links to the corresponding Lean source folder. Areas with sources but no object guides remain visible with explicit zero documentation coverage.

The [structured inventory](library-summary.json) is generated from existing tracked and nonignored untracked source paths and bytes in the local checkout, the maintained layout ledger, the selected catalog and the archive-intake records. It includes a separate census of explicit Lean source declaration commands, with parsing coverage. It is an inventory snapshot, not a census of compiler-generated declarations or a mathematical acceptance receipt. Input digests allow the snapshot to be checked for drift.

The [selected result catalog](results.md) covers three families only. The page inventory is broader; neither is a complete declaration catalog or proof graph. Historical evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f) explain the disposition of the former flat documentation.

Migration and acceptance boundaries are recorded separately in the Lean consolidation report (artifact:gitblob:a0aee0a59e806de6638a059af9df7dd22359b507), repository reconstruction contract (artifact:gitblob:6434bef0cd7e148093f275fc82ea3013c6523630), and rigor and reconstruction status (artifact:gitblob:558248aa8fd44d10f9024a266f8a64dbab2f4b13).

## Count definitions

| Datum | Exact population | Limit |
|---|---|---|
| Areas | Union of object-guide subjects and first-level source folders under GRWTSK | A navigation grouping, not a mathematical ontology |
| Object guides | Registered mathematical object articles; excludes area indexes and reference pages | An article can discuss several statements |
| Documented object groups | Distinct subject/object keys among those guides | Nested object paths are distinct groups |
| Primary sources linked | Distinct primary Lean source bindings in object articles | Secondary imports and other cited sources are excluded |
| Lean source modules | Existing regular tracked and nonignored untracked .lean files under GRWTSK, from the Git-visible path inventory | Includes audit interfaces and unverified candidates; excludes checks outside GRWTSK and absent tracked deletions |
| Archive intake records | Distinct source entries in the archive intake inventory | Overlaps the module inventory; custody does not imply proof acceptance |
| Selected families | Records in the deliberately narrow selected result catalog | No declaration-wide or whole-topic coverage |
| Maintained pages | All Markdown pages registered in the layout ledger | Includes navigation, tutorials, how-to, explanation and reference material |
| Evidence-label counts | Literal status fields on object-guide records | Labels apply only to their bound scope; not theorem or proof totals |
| Source declaration commands | Explicit declaration commands in completely parsed Lean source files: theorem/lemma, definition, abbreviation, opaque, axiom, instance, inductive/coinductive, structure and class commands | Counts written commands, including private declarations and unverified candidates; excludes anonymous examples, fields, constructors, generated helpers and imported declarations |
| Theorem/lemma commands | Explicit `theorem` and `lemma` source commands within the declaration-command population | A subset of declaration commands, not an additional population to add; no elaboration or accepted-theorem claim |
| Parsed source modules | Source files whose complete command stream parses through end of input with the pinned Lean parser and Mathlib syntax | Parsing does not elaborate declarations, check proofs or run the owned-declaration axiom audit |
| Unparsed source modules | Source files for which complete parsing fails, including unsupported custom syntax | Their declaration and theorem counts are unavailable, never zero; broader totals are lower bounds while any files remain unparsed |

These populations overlap. Do not add them together or interpret their growth as mathematical novelty, proof completeness or publication impact. Conditional premises and open mathematical obligations remain open.

## Totals by scope

The area directory totals each inventory column separately. Subject indexes total all source modules in that subject; their object sections count the distinct primary sources linked by that object's guides. Each object guide ends with a generated totals block for its one registered primary source, preserving the mathematics and evidence scope above it. Two guides may share a source: library and subject totals count that file only once, rather than adding guide footers.

Source-command totals use the pinned Lean parser with Mathlib's parser environment, without elaborating the project sources. Only declaration commands and explicit command wrappers are visited; theorem syntax inside quotations or proof terms is excluded. A file with any parser error contributes no command counts. Custom commands and local syntax may therefore leave coverage incomplete even when a file can be compiled in its own import environment. The structured inventory retains each source's SHA-256, parser identity, coverage and diagnostics so that unavailable totals remain visible.

## Source and evidence identities

The snapshot records exact input digests for the layout ledger, selected catalog, intake inventory, Lean pin and Lake package manifest, and a content digest for every counted source. Its source-path list and source-command census measure coverage without claiming that those files were elaborated or axiom-audited. Counts use the current local checkout; they do not claim remote integration.

The [selected result catalog](results.md) remains narrower than the page inventory. Verification interfaces (artifact:gitblob:d7df3a864028a221ea3728082afc25ec28c72953) distinguish written, historical and source-bound checked evidence. Historical evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f) retain the disposition of the former flat documentation.
