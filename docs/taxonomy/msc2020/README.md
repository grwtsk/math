# MSC2020 source folders

[Documentation overview](../../index.md) · [Lean source tree](../../../GRWTSK/) · [Authored subject guides](../subjects/index.md) · [Document aliases](documentation-layout-v1.json).

MSC2020 is the selected folder taxonomy for maintained mathematical sources. Folder names use readable forms of the official headings; the [static layout](source-layout-v1.json) retains the exact MSC codes and binds old/current source locations and byte hashes. Identical consecutive headings are elided. Declaration namespaces are unchanged.

The classification data is by Mathematical Reviews and zbMATH, from the [official CSV](https://msc2020.org/MSC_2020.csv), SHA-256 `f7c889354c202551fe01f89bad2ae95ccadec4c57ac1f6f9de38bbd658d3c78c`. It is published under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/). These terms apply to the classification data and derived heading tables; mathematical source and upstream licenses retain their own terms. The exact Latin-1, tab-separated source and notice live in `grwtsk/noeaaeue/registry/taxonomy/msc2020/`.

PMD identifiers and generated PMD metadata are retired. Historical source commit/blob pins and original verification scope remain meaningful independently of those identifiers. Authored subject definitions and upstream attribution are preserved.

Placement is navigation. Known public upstream module subjects, mathematical object signals and broader source contexts determine the initial homes; the manifest records the basis for each. Broad classifications require source-specific semantic review. Folder placement does not prove a theorem, admit a negative fixture, discharge a premise, or establish equivalence between different proof bodies. The layout-stage record labels compilation, fresh kernel verification and transitive axiom auditing `NOT_RUN`. Those recorded labels do not aggregate later source-bound checks or establish current corpus-wide verification status.

Effectful materialization and audit tooling belong to `grwtsk/noeaaeue`. The older source-location manifests remain historical source aliases, with obsolete taxonomy identifiers removed; their old target hashes certify only their original scope.

Local attribution: grwtsk contributors.

Provider packages and dependency manifests live in [docs/adapters](../../adapters/README.md). Mapped provider module views link to the canonical `GRWTSK/` MSC tree. Source-boundary directories may instead contain draft files or requirements without a functioning compiled package; the adapter index records those distinctions. The root build retains its existing root imports; provider dependencies and native build targets remain isolated. Source layout `followup_files` bind the canonical source locations and provider links without replacing historical source identities.

## Resolving document aliases

The [documentation layout](documentation-layout-v1.json) records document aliases
in its `pages` map. Resolve a recorded path through that map before opening it.
In particular, entries in `current_navigation` retain the earlier `documentation/`
prefix; their `pages` values give the maintained `docs/` destinations. The
[subject-guide index](../subjects/index.md) provides readable browsing.
These aliases concern document navigation; use the source layout and its
`followup_files` for Lean source placement. Neither lookup changes historical
source identities or supplies verification evidence.
