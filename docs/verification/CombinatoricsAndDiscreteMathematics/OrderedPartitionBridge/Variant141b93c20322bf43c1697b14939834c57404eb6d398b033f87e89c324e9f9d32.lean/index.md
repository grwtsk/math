# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderedPartitionBridge.Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aba217ba360898a36d6e04087d1064f40d157e9d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aba217ba360898a36d6e04087d1064f40d157e9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblock--56656032b7feaf608bdbf806.md) | 40 | `declaration-track:56656032b7feaf608bdbf806ca1c81457e5906debd095667180022d0bbe3d3e0` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/mem-orderedblock-iff--89b00a4d4c5077d10a6fa417.md) | 47 | `result-track:89b00a4d4c5077d10a6fa4175e5f6775aaaecfe06f327c5fc8412c7dbc701f4a` |
| 3 | `theorem` | [orderedBlock_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblock-card--8115295feef2429666955cb5.md) | 57 | `result-track:8115295feef2429666955cb5c76dff6962e752a0d682e03c342865b991796191` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblock-nonempty--b42a7997a4808ab4b7dd4e5b.md) | 68 | `result-track:b42a7997a4808ab4b7dd4e5b589e79c898061c26872b42c17e795ff7d9fc3c8c` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblock-index-eq-of-common-mem--c503d0c13d3dfc96d76c386f.md) | 77 | `result-track:c503d0c13d3dfc96d76c386f5539186c24c430b526b99140db4e94ae0b50d895` |
| 6 | `theorem` | [orderedBlock_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblock-injective--5cf2116eea48405086673389.md) | 96 | `result-track:5cf2116eea4840508667338967a4a11310a5d6e8f0d48231e864528fca76817e` |
| 7 | `def` | [orderedBlocks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblocks--055e499b4c25140e63f817c5.md) | 108 | `declaration-track:055e499b4c25140e63f817c520d84ef95e79a1544cfd7fd2b9159ff7df6825f6` |
| 8 | `def` | [orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedtodirectionpartition--0353a1bffa00e2226033e5df.md) | 114 | `declaration-track:0353a1bffa00e2226033e5df0de8d325a073881e72a0f9c2be73c48a7b984f20` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedtodirectionpartition-parts--3ad7ab7e34f2e4a3b415914a.md) | 147 | `result-track:3ad7ab7e34f2e4a3b415914acb461ba02a6014da3af6771141964f207495a5af` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedtodirectionpartition-card-parts--b003f413eca9cf38bbfabd2e.md) | 155 | `result-track:b003f413eca9cf38bbfabd2e0b18d9e78462d38d69c6b72c13c7347e21d49a14` |
| 11 | `def` | [orderedBlockPart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblockpart--4f3317775dca999000e0cd25.md) | 165 | `declaration-track:4f3317775dca999000e0cd25c3ec3d8bc945b4c471b6384366d44fbaed0e6055` |
| 12 | `def` | [orderedBlockEquivParts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblockequivparts--5f5ba09c97d61bc7fd6920f6.md) | 175 | `declaration-track:5f5ba09c97d61bc7fd6920f6604a35bf9de45f77560aa995109fe73aa5802a27` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblockequivparts-apply-val--7ee91c90d6695fd6ffdcf6e4.md) | 191 | `result-track:7ee91c90d6695fd6ffdcf6e424c229bf478314a7d693bdcb4fabd24b136a212d` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/orderedblock-orderemboffin--e5b538cbb71420b61b8f9b96.md) | 202 | `result-track:e5b538cbb71420b61b8f9b96643977740a44b36a02915902133065e939776680` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/blockdirections-orderedblock--20e6d5fc9b3f81771326e189.md) | 220 | `result-track:20e6d5fc9b3f81771326e189f1382bf25b6038e20d6ce702591005b0e159dc11` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/prod-parts-orderedtodirectionpartition--d4258530980efd6b2da33148.md) | 241 | `result-track:d4258530980efd6b2da3314805665eada51d1e4fa6a225cc19823d6244115d5a` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/declarations/sum-parts-orderedtodirectionpartition--1bb34ba5df02e4072bb120c3.md) | 257 | `result-track:1bb34ba5df02e4072bb120c339a8616aa5550dde052fe8d41cc7f94c7642eaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
