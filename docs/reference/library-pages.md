# Mathematical page inventory

The [mathematical area directory](../index.md) links to an index inside each area folder. Each area index groups its existing guides by mathematical object and links to the corresponding Lean source folder. Areas with sources but no object guides remain visible with explicit zero documentation coverage.

The [structured inventory](library-summary.json) is generated from existing tracked and nonignored untracked source paths in the local checkout, the maintained layout ledger, the selected catalog and the archive-intake records. It is an inventory snapshot, not a compiler-derived declaration census or mathematical acceptance receipt. Input digests allow the snapshot to be checked for drift.

The [selected result catalog](results.md) covers three families only. The page inventory is broader; neither is a complete declaration catalog or proof graph. [Historical evidence limits](documentation-history.md) explain the disposition of the former flat documentation.

Migration and acceptance boundaries are recorded separately in the [Lean consolidation report](lean-consolidation-report.md), [repository reconstruction contract](reconstruction.md), and [rigor and reconstruction status](rigor-and-reconstruction-report.md).

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

These populations overlap. Do not add them together or interpret their growth as mathematical novelty, proof completeness or publication impact. Conditional premises and open mathematical obligations remain open.

## Source and evidence identities

The snapshot records exact input digests for the layout ledger, selected catalog, intake inventory, Lean pin and Lake package manifest. Its source-path list measures file coverage without claiming that those files were elaborated or axiom-audited. Counts use the current local checkout; they do not claim remote integration.

The [selected result catalog](results.md) remains narrower than the page inventory. [Verification interfaces](verification-interfaces.md) distinguish written, historical and source-bound checked evidence. [Historical evidence limits](documentation-history.md) retain the disposition of the former flat documentation.
