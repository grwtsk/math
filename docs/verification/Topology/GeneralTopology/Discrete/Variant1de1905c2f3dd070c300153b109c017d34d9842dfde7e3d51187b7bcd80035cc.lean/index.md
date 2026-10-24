# Verification target: GRWTSK.Topology.GeneralTopology.Discrete.Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f3de2ca916a79570c7274474244d6eaf2ca41d7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f3de2ca916a79570c7274474244d6eaf2ca41d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.LinearLocallyFinite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/declarations/instance--485ba48702da371c78f883e2.md) | 36 | `declaration-track:485ba48702da371c78f883e23cb6ac9880da2ad8e2f61beacc9694a908834c62` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/declarations/instance--b14949c3cbddb86131c3216c.md) | 40 | `declaration-track:b14949c3cbddb86131c3216c63842140b0a60600b1a8d685b88fe32991c7843e` |
| 3 | `theorem` | [LinearOrder.bot_topologicalSpace_eq_generateFrom](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/declarations/linearorder-bot-topologicalspace-eq-generatefrom--9da8755ab8a75b0d600d19f5.md) | 48 | `result-track:9da8755ab8a75b0d600d19f55a8737e3653a3eb07c29a9b428256400a55c564f` |
| 4 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--9754f7451667e9ba13f482ca.md) | 58 | `result-track:9754f7451667e9ba13f482ca203b7b271b0b3229de864e53b417eb68134f961e` |
| 5 | `instance` | [OrderTopology.of_discreteTopology](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/declarations/ordertopology-of-discretetopology--43484fdac2b68e21523c45ac.md) | 67 | `declaration-track:43484fdac2b68e21523c45ac44e6126ad5a47c19bd1acaf56824fa13f5327632` |
| 6 | `instance` | [OrderTopology.of_linearLocallyFinite](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant1de1905c2f3dd070c300153b109c017d34d9842dfde7e3d51187b7bcd80035cc.lean/declarations/ordertopology-of-linearlocallyfinite--fd39de303787a3861a891c42.md) | 71 | `declaration-track:fd39de303787a3861a891c4239984849df22d925d7241d67998ee50597a90098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
