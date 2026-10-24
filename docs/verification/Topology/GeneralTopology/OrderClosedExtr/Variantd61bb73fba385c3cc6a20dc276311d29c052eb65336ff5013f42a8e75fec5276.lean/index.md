# Verification target: GRWTSK.Topology.GeneralTopology.OrderClosedExtr.Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9310515b9826b2d03f3223a174380c161ecb35a2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9310515b9826b2d03f3223a174380c161ecb35a2`.

Source path: `GRWTSK/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocalMax_of_mono_anti](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean/declarations/islocalmax-of-mono-anti--e9c2e955980655d6eb205c0b.md) | 41 | `result-track:e9c2e955980655d6eb205c0b228b4e0cfcb7dc9f6161e9ed898e8ff715235137` |
| 2 | `lemma` | [isLocalMin_of_anti_mono](../../../../../mathematics/Topology/GeneralTopology/OrderClosedExtr/Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276.lean/declarations/islocalmin-of-anti-mono--04412d644a2a4d14c94bf483.md) | 51 | `result-track:04412d644a2a4d14c94bf48372cabf9c7e1b4730fc1830f5baf3f4d40abbe4ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
