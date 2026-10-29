# Lean repositories worth adapting

Local attribution: grwtsk contributors. Source survey: 2026-10-29.

Selection is based on concrete GRWTSK consumers and primary repository README,
Lake/toolchain and license sources. This is a shortlist, not a ranking of all Lean
projects or an assessment of their proof correctness. Exact immutable commits and
source SHA-256 values are in [discovery.json](discovery.json). None of these
additional adapters has been implemented or verified by this survey.

| Repository | Priority / useful consumer | Required boundary |
| --- | --- | --- |
| [teorth/pfr](https://github.com/teorth/pfr/tree/7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f) | HIGH: Entropy and small-doubling/additive-combinatorics consumers | Select exact finite-group hypotheses and constants; connect local entropy/group objects, avoid replacing them by analogy. |
| [AlexKontorovich/PrimeNumberTheoremAnd](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/tree/127b50e33f6033e2147921167a117af96d9ba4ea) | HIGH: Prime counting, explicit formula and local arithmetic-error consumers | Select proved endpoints and exact normalization/error constants; distinguish pending blueprint nodes. |
| [teorth/IEANTN](https://github.com/teorth/IEANTN/tree/ec66e388e6e117c6881367f38665f310edf7cacf) | HIGH_SELECTIVE: Explicit analytic number-theory dependency interfaces | Its claim graph tracks varying evidence roles. Admit only exact proved declarations; finite numerical or literature claims are not all kernel proofs. |
| [fpvandoorn/carleson](https://github.com/fpvandoorn/carleson/tree/52cba54d4b7b444e937c7abbc67835afa2a0bb16) | HIGH: Harmonic-analysis and almost-everywhere convergence consumers | Match generalized metric-measure/phase hypotheses, exceptional sets and operator normalization. |
| [google-deepmind/formal-conjectures](https://github.com/google-deepmind/formal-conjectures/tree/909a8bec155bc5a6f3c72e12baaaa610ae293281) | HIGH_STATEMENT_INTERFACE_ONLY: Canonical problem statements and equivalence checks for Erdős adapters | Conjecture statements may contain sorry. Do not import them as established proofs; prove a separate fidelity equivalence to a proof endpoint. |
| [ImperialCollegeLondon/FLT](https://github.com/ImperialCollegeLondon/FLT/tree/a3210204ad8876e851e32f73dd97d882bf1ccd0a) | MEDIUM: Modularity/Galois/arithmetic interfaces complementary to Anthropic FLT | Select proved dependency endpoints, distinguish blueprint targets and pending premises; not a second automatically accepted FLT proof. |
| [thefundamentaltheor3m/Sphere-Packing-Lean](https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/tree/77cf0a0c104f2e31501eab04d88bbc068d61c169) | MEDIUM: Fourier/geometric packing and density consumers | Select exact dimension and normalization; audit real proof endpoints and unresolved source obligations. |
| [teorth/equational_theories](https://github.com/teorth/equational_theories/tree/2f49bdaf3d38ffb722e54ac1288c8269dac61846) | HIGH: Finite algebra and implication/countermodel consumers | Preserve law identifiers, finite/infinite model domains and certificate scope; do not equate graph reachability with a proof without a soundness bridge. |
| [YaelDillies/apap](https://github.com/YaelDillies/apap/tree/b2001974b99b18ca1c13b6aa4791b7801563f939) | HIGH: Quantitative progression/Roth and density consumers | Preserve finite ambient group, density thresholds, logarithms and explicit/implicit constants. |
| [leanprover-community/lean-liquid](https://github.com/leanprover-community/lean-liquid/tree/ee4795874a99ea5f9d85bd0b364425f07b932377) | HISTORICAL_PORT_REQUIRED: Condensed/liquid mathematics reference | Lean3 project: use as a port/reference source, not a direct Lean4 Lake dependency. |
| [plby/lean-proofs](https://github.com/plby/lean-proofs/tree/8822f7ddef30fadbd92e1c6ab4ed897af356af5e) | HIGH_PER_PROJECT: Broader solved Erdős corpus linked from the community database | Multiple versioned source projects; no root toolchain. Pin each selected project, source authors and hypotheses separately, audit axioms and avoid a blanket acceptance claim. |

Start with PFR, PNT+/IEANTN, APAP and per-project solved Erdős sources for the
current arithmetic/combinatorics programme; use Formal Conjectures to check
statement fidelity, without treating its conjectures as proved facts. Carleson
and equational theories are strong subject-specific additions. FLT and sphere
packing need narrower consumer choices before adapter implementation.

Every selected project needs its own pinned dependency manifest, exact public
source attribution/license, subject-based GRWTSK interface, actual local consumer,
and source-bound verification target. Conflicting toolchains stay isolated.
Root toolchain absence in plby/lean-proofs means inspect a versioned subproject;
Lean Liquid is explicitly historical Lean3, rather than an importable Lean4 package.
CI badges, documentation pages and upstream status assertions are discovery
material, not local compilation/kernel/axiom receipts.
