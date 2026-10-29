# Mathematical adapters

Local attribution: grwtsk contributors.

Organize external adapters by provider immediately below this directory.
Keep mathematical namespaces and theorem subjects independent of provider paths.

- [openai-math](openai-math/README.md): pinned OpenAI OAI imports and 419 subject-organized
  comparator surfaces, plus finite-family Liouville/Elliott transport and
  seven-eighths zero-location consequences.

Provider packages have their own dependency manifests and build targets. They
are outside the root GRWTSK default build. A common Lean/Mathlib version does not
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
