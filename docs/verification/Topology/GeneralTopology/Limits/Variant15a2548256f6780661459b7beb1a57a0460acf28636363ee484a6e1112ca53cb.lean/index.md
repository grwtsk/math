# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b99e98a7975839e0092d361966900214503f2d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b99e98a7975839e0092d361966900214503f2d4`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/instance--93f1d3582cd529be33aa2190.md) | 22 | `declaration-track:93f1d3582cd529be33aa219041bad2f94e412c82bd64bbdf1097d7dd178a0adf` |
| 2 | `lemma` | [extremallyDisconnected_preimage](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/extremallydisconnected-preimage--b3e80eefa561718ca349576c.md) | 28 | `result-track:b3e80eefa561718ca349576c446ca48aa406f1195a2dc7fec26d7cdcca7594ab` |
| 3 | `lemma` | [extremallyDisconnected_pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/extremallydisconnected-pullback--1372315e5f36dfa1b3ef0a52.md) | 38 | `result-track:1372315e5f36dfa1b3ef0a524ff727b530b61d3eb81e279b894598216a321114` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/instance--ebda4a503503f76dad55199a.md) | 47 | `declaration-track:ebda4a503503f76dad55199a395852099f1cfd3fbc9a10bc0bea4da4e948aeb2` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/example--e79aff57675ba72eb3499719.md) | 52 | `declaration-track:e79aff57675ba72eb3499719a545d9080180bd4de2976934726c532611ac08c7` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/example--413162f300024cb7b8f0f51e.md) | 54 | `declaration-track:413162f300024cb7b8f0f51e522be467d3cab7631ae90e6cd14ab524a5000b64` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant15a2548256f6780661459b7beb1a57a0460acf28636363ee484a6e1112ca53cb.lean/declarations/example--7c4a4d22b20f5890a3027a83.md) | 56 | `declaration-track:7c4a4d22b20f5890a3027a836c9a8049ad2536b891f0afa94fec5f94f338ed1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
