# Upstream and local license inventory

Local attribution: grwtsk contributors. Source-local scope: `LICENSES/` (prime 5). This document specializes existing repository instructions; it is not an autonomous agent, credential or permission.

## Inherited instructions

[Root AGENTS.md](../AGENTS.md)

## Actual source neighborhood

- [`LICENSES/MIT.txt`](MIT.txt)
- [`LICENSES/Mathlib-Apache-2.0.txt`](Mathlib-Apache-2.0.txt)
- [`LICENSES/OpenAI-Apache-2.0.txt`](OpenAI-Apache-2.0.txt)
- [`LICENSE`](../LICENSE)
- [`NOTICE`](../NOTICE)

## Maintenance contract

**Inspect:** Inspect the applicable source headers, root LICENSE and complete NOTICE.

**Preserve:** Preserve upstream copyright, licenses, source authors and collective local attribution at their existing scope.

**Before authorized changes:** Do not edit legal bytes or relocate a notice without a source-specific rights and consumer audit.

## Legal file layout

- Root `LICENSE` and `NOTICE` retain their existing text and scope.
- `upstream/` holds the preexisting named upstream license copies; `environments/` mirrors isolated package legal-file locations. Existing paths remain relative compatibility links.
- [manifest.json](manifest.json) records exact file locations and SHA-256 digests. It is a location/integrity inventory, not a new license grant or a complete per-source license classification.
- Preserve distinct legal texts and all source-specific notices. Do not normalize license variants or infer that a package license covers unrelated mathematical sources.

## Source mapping

- [sources.json](sources.json) maps actual tracked source paths and Git blobs to explicit header evidence or the repository MIT default. Symbolic views refer to canonical source records.
- Keep file-level license assignments separate from dependency obligations and contextual package notices. Preserve theorem-level and cross-publication provenance; publication identity alone does not determine licensing.
- Uncertain assignments have a null license expression and an explicit reason; the repository default is a separate candidate, not permission to override uncertain upstream terms. This map is not a new license grant or a completed rights audit.

- [source-evidence.json](source-evidence.json) records exact upstream matches and scoped dispositions for reviewed mappings. Apply the owner-requested MIT default only in the absence of contrary evidence. Preserve explicit conflicting source/project notices as unresolved; never use the default to override them. Keep AGPL identifiers as written unless the exact version-option grant is established.

- A later upstream edition may resolve a historical file/project discrepancy only with exact source identity or an exhaustive stated byte comparison, an explicit file license, and its same-revision project license. Record the separately licensed edition and preserve the older notice and pin; a commit message alone is insufficient.
