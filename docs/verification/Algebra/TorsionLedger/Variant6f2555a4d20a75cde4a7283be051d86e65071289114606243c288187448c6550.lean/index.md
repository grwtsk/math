# Verification target: GRWTSK.Algebra.TorsionLedger.Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e3d35e393e27c697bc4b51b3f4d8bba989b7110",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/index.md) · [Full source](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e3d35e393e27c697bc4b51b3f4d8bba989b7110`.

Source path: `GRWTSK/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.SmithCertificate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionLedger](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/torsionledger--3dbd14aae58dbb716304a446.md) | 31 | `declaration-track:3dbd14aae58dbb716304a4460c8e922614679a4e185551a8806bde8f28f77c03` |
| 2 | `abbrev` | [Coordinate](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/coordinate--334aa96f9f269a6a0b6952fb.md) | 49 | `declaration-track:334aa96f9f269a6a0b6952fb729952ecccc4589aaff4fd6ee669b0c2e3bb9cf1` |
| 3 | `instance` | [coordinateFintype](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/coordinatefintype--271cd7cc4fcd1a7820f21bec.md) | 52 | `declaration-track:271cd7cc4fcd1a7820f21bec590f39d42708f8963f5ce291e30f34070e63e31b` |
| 4 | `structure` | [UCTBocksteinTorsionRepresentation](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/uctbocksteintorsionrepresentation--ad8894b9a2129af0c754eafd.md) | 66 | `declaration-track:ad8894b9a2129af0c754eafd9624f9ca11de1312d59ae7ec3910fce117f24f0f` |
| 5 | `theorem` | [finite](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/finite--cbecc35c98e0498ad17c4d3f.md) | 92 | `result-track:cbecc35c98e0498ad17c4d3ff3227f9d4037af05889f3d833f51dfc392d0aa91` |
| 6 | `theorem` | [coordinates_injective](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/coordinates-injective--8c6df5bef9c003a8640effa7.md) | 97 | `result-track:8c6df5bef9c003a8640effa73311c1e8765326a225d72f8f452dbdcad479e342` |
| 7 | `structure` | [TorsionTransport](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/torsiontransport--978cee60027ac8484cef7da1.md) | 114 | `declaration-track:978cee60027ac8484cef7da12c37a4a19a29dceb39fa948c93b7224979f8bac7` |
| 8 | `theorem` | [transports_bockstein](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/transports-bockstein--4a141b617242e57372a01358.md) | 193 | `result-track:4a141b617242e57372a01358dc67f1f4417b769c78a9094231fb21ac24affcfd` |
| 9 | `theorem` | [transports_coordinates](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/transports-coordinates--a8dfb08f71634315d8cdc79b.md) | 199 | `result-track:a8dfb08f71634315d8cdc79b26f4d4f5ec093205ce8f88e84e76711d1d563eea` |
| 10 | `theorem` | [transports_gluing](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/transports-gluing--d0337d491067a48fd4b43acc.md) | 207 | `result-track:d0337d491067a48fd4b43accaf5d74d85d957a5193815477ee69c6007e545321` |
| 11 | `structure` | [UniformTorsionBound](../../../../mathematics/Algebra/TorsionLedger/Variant6f2555a4d20a75cde4a7283be051d86e65071289114606243c288187448c6550.lean/declarations/uniformtorsionbound--2576feb65207aba092fd8c29.md) | 215 | `declaration-track:2576feb65207aba092fd8c29e4ca323da91e4930d7395f996bd7e78d1843e709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
