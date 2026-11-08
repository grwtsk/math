# Mathematical adapters

[Documentation index](../index.md)

Local attribution: grwtsk contributors.

This directory contains isolated provider packages and source-boundary contracts.
Canonical MSC2020 source locations are recorded in the [source layout](../taxonomy/msc2020/source-layout-v1.json);
provider links retain separate source editions and dependency manifests where
present. Some source-boundary directories contain draft Lean files or
requirements without a functioning compiled package. Follow each guide’s stated
source and build boundary; declaration namespaces remain distinct from file paths.

- [openai-math](openai-math/README.md): pinned OpenAI OAI imports and 419 subject-organized
  comparator surfaces, plus finite-family Liouville/Elliott transport and
  seven-eighths zero-location consequences.
- [openai-math-residue-circle](openai-math-residue-circle/README.md): opt-in, separately pinned residue-circle/CM comparison sources; explicit upstream import and acceptance gates.

Buildable provider packages have isolated dependency manifests and build targets.
Source-boundary contracts alone do not supply a build target or compiled import.
Provider integration stays separate from the root GRWTSK default build. A common Lean/Mathlib version does not
admit upstream analytic theorems or establish a bridge to local arithmetic
consumers. Preserve source identities, exact hypotheses, licenses, and pending
verification status when adding a provider.

- [anthropic-math](anthropic-math/README.md): isolated zeta23, 3SUM/APSP, ETH and
  Fermat packages, exact source inventories and pending verification.

- [tao-erdos](tao-erdos/README.md): pinned adapters for Tao’s Analysis Erdős
  modules #379, #613, #707 and #987, plus the pinned community problem index.
- [Repository discovery](DISCOVERY.md): eleven source-pinned candidates with
  concrete mathematical uses and compatibility/trust boundaries.

## Imported discovery providers

All eleven discovery repositories now have isolated native-version import packages.
See [imported-discoveries.json](imported-discoveries.json) for exact source pins
and provider catalogues. These surfaces are not proof acceptance.

- [pfr](pfr/README.md): `teorth/pfr`.
- [pnt-plus](pnt-plus/README.md): `AlexKontorovich/PrimeNumberTheoremAnd`.
- [ieantn](ieantn/README.md): `teorth/IEANTN`.
- [carleson](carleson/README.md): `fpvandoorn/carleson`.
- [formal-conjectures](formal-conjectures/README.md): `google-deepmind/formal-conjectures`.
- [imperial-flt](imperial-flt/README.md): `ImperialCollegeLondon/FLT`.
- [sphere-packing](sphere-packing/README.md): `thefundamentaltheor3m/Sphere-Packing-Lean`.
- [equational-theories](equational-theories/README.md): `teorth/equational_theories`.
- [apap](apap/README.md): `YaelDillies/apap`.
- [lean-liquid](lean-liquid/README.md): `leanprover-community/lean-liquid`.
- [lean-proofs](lean-proofs/README.md): `plby/lean-proofs`.

## Mathematical consumer integration

[Consumer results](CONSUMERS.md) connect source theorems to local problems with
explicit hypotheses, representation comparisons and precise missing bridges.
Source candidates are not mathematical acceptance; native verification remains
separately tracked.

## Additional isolated packages

- [Progression coloring](progression-coloring/README.md): pinned proof-source port for Erdős Problem #138; its source correspondence and formal checks retain the package’s stated scope.
- [Hurwitz adapter](tauceti-connes/README.md): isolated TauCeti Hurwitz sources with separate dependency pins and explicit consumer obligations.

## Source-boundary contracts

- [Elliptic Kummer–Selmer and Néron–Tate boundary](tauceti-elliptic-kummer-height/source-boundary.md): pinned original provider declarations and exact comparison obligations; not a compiled adapter.
- [Elliptic Selmer mapping-fiber boundary](tauceti-elliptic-selmer-fiber/source-boundary.md): cochain/local-condition requirements and source candidates with their individual evidence scopes; no compiled Tau Ceti dependency is established by the contract.
