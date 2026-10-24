# Verification target: GRWTSK.Topology.GeneralTopology.Bornology.Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93afbf73aa4aeeb1f598a47e6b90515c427db624",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93afbf73aa4aeeb1f598a47e6b90515c427db624`.

Source path: `GRWTSK/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Constructions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/orderbornology--f5b301e8914cc99104d5b92f.md) | 29 | `declaration-track:f5b301e8914cc99104d5b92f23b0c9afbdd3e3b57d5a2d7adf1389e07cb62c80` |
| 2 | `lemma` | [orderBornology_isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/orderbornology-isbounded--c58154d050cd1161276a323b.md) | 36 | `result-track:c58154d050cd1161276a323b99e7378f696ccce85eff6d2dba730d907842122f` |
| 3 | `class` | [IsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/isorderbornology--8d0a81298ccf530c333b2a27.md) | 46 | `declaration-track:8d0a81298ccf530c333b2a27141d85f4eb897bb6cb042df9ad9765e7700c90fe` |
| 4 | `lemma` | [isOrderBornology_iff_eq_orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/isorderbornology-iff-eq-orderbornology--d35b000c88ef3fe2b9f31030.md) | 49 | `result-track:d35b000c88ef3fe2b9f31030f1f8bff6a201b9a82e822d4c9eb4b2adb8269b03` |
| 5 | `lemma` | [isBounded_iff_bddBelow_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/isbounded-iff-bddbelow-bddabove--42c68accf76323e37619ddfd.md) | 58 | `result-track:42c68accf76323e37619ddfd4bce26c82239635294e477591cf2055c4bf585b1` |
| 6 | `lemma` | [Bornology.IsBounded.bddBelow](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bornology-isbounded-bddbelow--114a8ccfbf0ccdd4d0017322.md) | 61 | `result-track:114a8ccfbf0ccdd4d001732282b1a84b3f03f282e66f5cd20aa97cda9cae19ce` |
| 7 | `lemma` | [Bornology.IsBounded.bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bornology-isbounded-bddabove--f4dc3bdabf43a33d12ba4725.md) | 64 | `result-track:f4dc3bdabf43a33d12ba4725c30c4c068f40a13c0ee05a78b4ab819b4e98cf24` |
| 8 | `lemma` | [BddBelow.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bddbelow-isbounded--8ae9975fb42f326885e657e9.md) | 67 | `result-track:8ae9975fb42f326885e657e9b62ea59e7136510f021852a9cd08e6e598850c83` |
| 9 | `lemma` | [BddAbove.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bddabove-isbounded--f40d4ab2e565af0a41fb53c7.md) | 70 | `result-track:f40d4ab2e565af0a41fb53c750031283241c02ccabf7aaa6c4ef06429accfd8d` |
| 10 | `lemma` | [BddBelow.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bddbelow-isbounded-inter--92041ef4007b85c64d995b53.md) | 73 | `result-track:92041ef4007b85c64d995b53c65dce3d14fb48c278859f9e5816a1549eef1c46` |
| 11 | `lemma` | [BddAbove.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bddabove-isbounded-inter--723f7de8b07f77b7e022093b.md) | 76 | `result-track:723f7de8b07f77b7e022093bcd01a09cfc5079d0de96e9d8b48ed7e87ca7045c` |
| 12 | `instance` | [OrderDual.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/orderdual-instisorderbornology--3a66bd3dec13bc1330abfb86.md) | 79 | `declaration-track:3a66bd3dec13bc1330abfb86ade630194a95734458a0aad63aac0c9107ee8453` |
| 13 | `instance` | [Prod.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/prod-instisorderbornology--154abf625703bdde733f5931.md) | 84 | `declaration-track:154abf625703bdde733f5931d24250c13e11be3133c4453c83936c75f678e03a` |
| 14 | `instance` | [Pi.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/pi-instisorderbornology--7463fed16abb5ddabdd56077.md) | 90 | `declaration-track:7463fed16abb5ddabdd560773d5023ec1e40d0eb1b0ac3c5069fa2540d43aef8` |
| 15 | `lemma` | [Bornology.IsBounded.subset_Icc_sInf_sSup](../../../../../mathematics/Topology/GeneralTopology/Bornology/Varianteca3276447f6dc37adf8f1f73aae9928e878d0899e5885de36bc4cd3f164ea8c.lean/declarations/bornology-isbounded-subset-icc-sinf-ssup--cc5d8858b42aef6ce387c4fc.md) | 101 | `result-track:cc5d8858b42aef6ce387c4fc07bc85e9e2a5789e7dd864df94d90853111fdeb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
