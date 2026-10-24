# Verification target: GRWTSK.Analysis.ErrorBounds.GramWindowEndpointNormalForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81a9cc507e91e2991d7b34477476fcbbd77ce263",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81a9cc507e91e2991d7b34477476fcbbd77ce263`.

Source path: `GRWTSK/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalWindowEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalWindowEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointDisk](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/endpointdisk--ae3c241aa901c92a6d941389.md) | 49 | `declaration-track:ae3c241aa901c92a6d9413890b9cd79e67100dbf68289c798fe14b59f1269806` |
| 2 | `theorem` | [complete_step_eq_increment](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/complete-step-eq-increment--5b3df6e5e06d0f0155592d62.md) | 56 | `result-track:5b3df6e5e06d0f0155592d6227fd1c8a60776cf14f0207c398ba6edc8b5ac9ad` |
| 3 | `theorem` | [windowValue_eq_terminal](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/windowvalue-eq-terminal--e7fb3baedcebd8772dce3740.md) | 81 | `result-track:e7fb3baedcebd8772dce37408cbc680a5437aa64fdef53028116d165ef78455d` |
| 4 | `theorem` | [windowValue_gain_independent](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/windowvalue-gain-independent--d1a389f192d1dbc697158d6f.md) | 96 | `result-track:d1a389f192d1dbc697158d6fb9831083d80bdd05581e81f5584cada9bc723e72` |
| 5 | `theorem` | [windowValue_history_independent](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/windowvalue-history-independent--557342b128db7f7d54865fae.md) | 104 | `result-track:557342b128db7f7d54865fae8acb34796cace1e2b493a85f83d5b6bdcaee9153` |
| 6 | `theorem` | [endpointDisk_contains](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/endpointdisk-contains--f59a6216d36d7173e30f613d.md) | 116 | `result-track:f59a6216d36d7173e30f613debab356c666082bf8f11da9204e4dba9647d6730` |
| 7 | `theorem` | [endpointDisk_contains_window](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/endpointdisk-contains-window--5fc7cd2f37a7d3b28b831745.md) | 127 | `result-track:5fc7cd2f37a7d3b28b8317454826417d5ba1eba5d1a30a997700f69b56e18b23` |
| 8 | `theorem` | [terminalResidual_real_identity](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/terminalresidual-real-identity--828526146ff5b9d554c983e6.md) | 140 | `result-track:828526146ff5b9d554c983e6fa21fb8a898c458d067154e414e1ee4ff9542653` |
| 9 | `theorem` | [terminalResidual_real_le_source](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/terminalresidual-real-le-source--57b835fa44d42ad99506709b.md) | 150 | `result-track:57b835fa44d42ad99506709b0dbaa1a3e2ac71e585d6ea7a576e54751df68eb2` |
| 10 | `theorem` | [two_enclosures_lower](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/two-enclosures-lower--80d5fa6c1f9976fce0bdbf87.md) | 160 | `result-track:80d5fa6c1f9976fce0bdbf873d5bee3157e7afb19e0ea22cda8958eaf35a3cc2` |
| 11 | `theorem` | [no_fixed_negative_of_endpoint](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/no-fixed-negative-of-endpoint--faaa28606b8b8dd7421a4ceb.md) | 167 | `result-track:faaa28606b8b8dd7421a4cebe90f0af581a34837f6a3a6611ada4831df514b99` |
| 12 | `theorem` | [endpoint_rejects_negative](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/endpoint-rejects-negative--a99b6d3b1636085d321b1a18.md) | 189 | `result-track:a99b6d3b1636085d321b1a18379a76e8958201637bf633a8c4fc517399a3ed6c` |
| 13 | `theorem` | [interior_uncertainty_fixture](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/interior-uncertainty-fixture--82a7be74aa012b8817b07bbe.md) | 208 | `result-track:82a7be74aa012b8817b07bbe24628a0c2393c0b9999919c7c4af5a8eb17ba07b` |
| 14 | `theorem` | [retained_negative_endpoint_fixture](../../../../mathematics/Analysis/ErrorBounds/GramWindowEndpointNormalForm.lean/declarations/retained-negative-endpoint-fixture--ce9a043177fa573baf2c38f7.md) | 219 | `result-track:ce9a043177fa573baf2c38f704575f3c1ee3cad12b043208973d5ca15f1fa1f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
