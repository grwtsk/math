# Verification target: GRWTSK.Topology.GeneralTopology.LeftRight.Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3550da6c44de882d02536c58a62ecb01e22d6eef",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3550da6c44de882d02536c58a62ecb01e22d6eef`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frequently_lt_nhds](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/frequently-lt-nhds--de61fe775db3d447e9112ada.md) | 41 | `result-track:de61fe775db3d447e9112ada1b75fec372e50191ae88d00adf9a912d25657433` |
| 2 | `theorem` | [Filter.Eventually.exists_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/filter-eventually-exists-lt--8e3369f6e161ce9a88825a56.md) | 45 | `result-track:8e3369f6e161ce9a88825a56e0284852d92b7bfb0096aaf3f8988aee0aac069a` |
| 3 | `theorem` | [nhdsWithin_Ici_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithin-ici-nebot--4614706a9ce71802de4e6203.md) | 50 | `result-track:4614706a9ce71802de4e62039accfda53633b3c62682aa12048953ee1d559f5d` |
| 4 | `instance` | [nhdsLE_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdsle-nebot--87a753cc865e4a8451f61c1d.md) | 54 | `declaration-track:87a753cc865e4a8451f61c1d93942fa20903623830f316112e5b9f2c02f97cd2` |
| 5 | `theorem` | [nhdsLT_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdslt-le-nhdsne--fe87f7bcdea46e5d2b35121a.md) | 57 | `result-track:fe87f7bcdea46e5d2b35121a46260654e5fa840c6992cbba502a309b21399a52` |
| 6 | `lemma` | [IsAntichain.interior_eq_empty](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/isantichain-interior-eq-empty--d30d98fb544da44859f35b8d.md) | 62 | `result-track:d30d98fb544da44859f35b8d07641fa9d6bdebb483753c0d544802ef31ed517f` |
| 7 | `lemma` | [IsAntichain.interior_eq_empty'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/isantichain-interior-eq-empty--b1e198c55509095575440e72.md) | 69 | `result-track:b1e198c55509095575440e72880218bfbf89ff6b8c0a43d231e46dc4598c78aa` |
| 8 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/continuouswithinat-ioi-iff-ici--dcbcd33d616ae05b067f0a3b.md) | 81 | `result-track:dcbcd33d616ae05b067f0a3b36381e2b549ec3bd9f3cdfe44e93f19d4f988859` |
| 9 | `theorem` | [continuousWithinAt_inter_Ioi_iff_Ici](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/continuouswithinat-inter-ioi-iff-ici--35c0bda5bfbf65c5e4f549ef.md) | 86 | `result-track:35c0bda5bfbf65c5e4f549eff677143ac82cff6c327965368ffe9b5cbdf85f42` |
| 10 | `theorem` | [nhdsLE_sup_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdsle-sup-nhdsge--7be1cb1f6f189b2ce73fe082.md) | 97 | `result-track:7be1cb1f6f189b2ce73fe0824341961881cc3273162e6456ff40f51d5b897347` |
| 11 | `theorem` | [nhdsWithinLE_sup_nhdsWithinGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithinle-sup-nhdswithinge--f06f030ee9fb909167abc639.md) | 101 | `result-track:f06f030ee9fb909167abc6390fbcfba9fe896d6a426414740020488b8dc5d920` |
| 12 | `theorem` | [nhdsLT_sup_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdslt-sup-nhdsge--ea65bc11f3abfd5eac8455cf.md) | 105 | `result-track:ea65bc11f3abfd5eac8455cf1942788d4e5bc281e2e5bceb3b21d9ca613f9516` |
| 13 | `theorem` | [nhdsWithinLT_sup_nhdsWithinGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithinlt-sup-nhdswithinge--2940c130b86e2621deabee38.md) | 109 | `result-track:2940c130b86e2621deabee3877dff89b5e73cc105aef10f237edca0bbeb1fe60` |
| 14 | `theorem` | [nhdsLE_sup_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdsle-sup-nhdsgt--9df43b11d3dec7343faf6e9b.md) | 113 | `result-track:9df43b11d3dec7343faf6e9b911e4d99822efe045e35b1e6e3e56b8eac7e2a5b` |
| 15 | `theorem` | [nhdsWithinLE_sup_nhdsWithinGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithinle-sup-nhdswithingt--91070d74c882f11ebc05e6cf.md) | 117 | `result-track:91070d74c882f11ebc05e6cf9af958e2474eb6cbb30d9c4c7b61ad40c6e5a88f` |
| 16 | `theorem` | [nhdsLT_sup_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdslt-sup-nhdsgt--2ec9a48f7847e254674f4b6a.md) | 121 | `result-track:2ec9a48f7847e254674f4b6a30552592f707e6ffc7d33118ea281bea94583772` |
| 17 | `theorem` | [nhdsWithinLT_sup_nhdsWithinGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithinlt-sup-nhdswithingt--8711e7e511e9710a34721b82.md) | 125 | `result-track:8711e7e511e9710a34721b8208c36ad886465780770afdcd6e85e021dfa586b4` |
| 18 | `lemma` | [nhdsGT_sup_nhdsWithin_singleton](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdsgt-sup-nhdswithin-singleton--a02125895e023df108e0f858.md) | 131 | `result-track:a02125895e023df108e0f858171492bda2c61215219c0591304ccfd2175ab872` |
| 19 | `lemma` | [nhdsWithin_uIoo_left_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithin-uioo-left-le-nhdsne--743acb133452f06acf8155dc.md) | 135 | `result-track:743acb133452f06acf8155dcfbe2419510950bfe708fb34b84f010dc13b6e07e` |
| 20 | `lemma` | [nhdsWithin_uIoo_right_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/nhdswithin-uioo-right-le-nhdsne--cea7fff858a4d8b2ed34f0ff.md) | 138 | `result-track:cea7fff858a4d8b2ed34f0ff0b1ff38301a206d8c18770fda0e5ef15ec358e3b` |
| 21 | `theorem` | [continuousAt_iff_continuous_left_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/continuousat-iff-continuous-left-right--1a5d59455f2e11e9c6e60145.md) | 142 | `result-track:1a5d59455f2e11e9c6e6014511ded0fb259f21bbb7437f2cd293f95270e9a1f3` |
| 22 | `theorem` | [continuousAt_iff_continuous_left'_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/continuousat-iff-continuous-left-right--d645f7996526852afa0d0f57.md) | 147 | `result-track:d645f7996526852afa0d0f579ceb091aaef9a1f4d06437b3e987b4833f88e1b9` |
| 23 | `theorem` | [continuousWithinAt_iff_continuous_left_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/continuouswithinat-iff-continuous-left-right--942af76fa00cb16e59122b98.md) | 153 | `result-track:942af76fa00cb16e59122b98085ccf8e572ef5350ea5bfc260c0aaa6b53e5c71` |
| 24 | `theorem` | [continuousWithinAt_iff_continuous_left'_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variantc49de0e899210d4d2b89ce7ba4704f0ae1c2ceb7a73d18380672b2937ff44bef.lean/declarations/continuouswithinat-iff-continuous-left-right--5e846c0d174606bf9105d0d3.md) | 159 | `result-track:5e846c0d174606bf9105d0d3783a9c048287f736c8f270abcfb364b19fbb9087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
