# Verification target: GRWTSK.Topology.GeneralTopology.NhdsSet.Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a2a7bfb2db6f3b5ba8ec0f5dd3464184c644b44",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a2a7bfb2db6f3b5ba8ec0f5dd3464184c644b44`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset--89afad2123cfe9569de2eee2.md) | 35 | `declaration-track:89afad2123cfe9569de2eee20007a00728bbbe6ab0241bbb65746a05469a6547` |
| 2 | `theorem` | [nhdsSet_diagonal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-diagonal--98dc03c27b44ed958000d8ab.md) | 41 | `result-track:98dc03c27b44ed958000d8abd707d0007ebf036b55856c5fb37dc6faab545cd7` |
| 3 | `theorem` | [mem_nhdsSet_iff_forall](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/mem-nhdsset-iff-forall--ef9ecd6c2bf54b7ac2b7e099.md) | 47 | `result-track:ef9ecd6c2bf54b7ac2b7e099e7762385a44ba8eeddae5277cb6682651bd35642` |
| 4 | `theorem` | [bUnion_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/bunion-mem-nhdsset--e22306ae79a9aca94bee393a.md) | 51 | `result-track:e22306ae79a9aca94bee393af8ca848758cc017f4500521342c460fb7a3df6fa` |
| 5 | `theorem` | [subset_interior_iff_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/subset-interior-iff-mem-nhdsset--7d821f5f9042add04e1c4440.md) | 56 | `result-track:7d821f5f9042add04e1c4440904f77bb9a9e5161e95040238d40f7c664de3e98` |
| 6 | `theorem` | [disjoint_principal_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/disjoint-principal-nhdsset--27e05a554a069db19b320b08.md) | 60 | `result-track:27e05a554a069db19b320b08b36a5905c4d341f1a4b8b2b66e0b369c1a41d3bd` |
| 7 | `theorem` | [disjoint_nhdsSet_principal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/disjoint-nhdsset-principal--e571eb69a274d866e706d114.md) | 64 | `result-track:e571eb69a274d866e706d114807f02bf77fa13feeaa5633a4ff01e92d15435f6` |
| 8 | `theorem` | [mem_nhdsSet_iff_exists](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/mem-nhdsset-iff-exists--6dd0aa7c4566d8bddfc78146.md) | 67 | `result-track:6dd0aa7c4566d8bddfc7814611c663dbd405fcb9a9fe39dc9ced97054878d9c9` |
| 9 | `theorem` | [hasBasis_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/hasbasis-nhdsset--3e38d799d7e6d950bd4c32df.md) | 71 | `result-track:3e38d799d7e6d950bd4c32df32424fb9d3e2ebf152b84d3d9a642efad9b44ae4` |
| 10 | `theorem` | [IsOpen.mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/isopen-mem-nhdsset--85c0e625c2808f10f792fe87.md) | 75 | `result-track:85c0e625c2808f10f792fe87c89ec9499c35831421f74dd9d41ab7f53efc375b` |
| 11 | `theorem` | [principal_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/principal-le-nhdsset--969c28113489093785ae0ac4.md) | 79 | `result-track:969c28113489093785ae0ac44c1ba4a6c1b96e79d5ea31b911612e1592ec2d61` |
| 12 | `theorem` | [subset_of_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/subset-of-mem-nhdsset--57fa40f0a5122931d3009ba6.md) | 83 | `result-track:57fa40f0a5122931d3009ba690d057068481829b66858c5e3f7d70c6f4dafc01` |
| 13 | `theorem` | [Filter.Eventually.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/filter-eventually-self-of-nhdsset--c21f701d6bc8838b8762ebc2.md) | 85 | `result-track:c21f701d6bc8838b8762ebc208defe5d2117b3f156ddbf3ec27cb7f252cb2873` |
| 14 | `theorem` | [Filter.EventuallyEq.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/filter-eventuallyeq-self-of-nhdsset--88d5be95721d63f39b882202.md) | 88 | `result-track:88d5be95721d63f39b8822021dc2190ea1129a07e861549b31b4923691580d61` |
| 15 | `theorem` | [nhdsSet_eq_principal_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-eq-principal-iff--d4af4f3e80366eed94b6196c.md) | 92 | `result-track:d4af4f3e80366eed94b6196ccce7866db1ad103507f53c50024edabf624298b6` |
| 16 | `theorem` | [nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-interior--e14e7d99665078b782f73aaa.md) | 101 | `result-track:e14e7d99665078b782f73aaa2b94381b776f103d5d67b429798269bbfd2681f4` |
| 17 | `theorem` | [nhdsSet_singleton](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-singleton--7174b680abf637e1d62b11c6.md) | 106 | `result-track:7174b680abf637e1d62b11c66e944133d92cc3d238321c8e68c2e20a0c9c7954` |
| 18 | `theorem` | [mem_nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/mem-nhdsset-interior--32cc5b618a71db0f613c36f3.md) | 109 | `result-track:32cc5b618a71db0f613c36f3694fe8da660076e478bf6b54fe08ae403a84d81d` |
| 19 | `theorem` | [nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-empty--34f74c735933eafcd0c6a052.md) | 114 | `result-track:34f74c735933eafcd0c6a05254add6fc5a9c0f48a46014b0a55962087c8fc920` |
| 20 | `theorem` | [mem_nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/mem-nhdsset-empty--9bc8ee04990c02545c99d26f.md) | 117 | `result-track:9bc8ee04990c02545c99d26f444a3e768d88292497b48a068bc91c9c2d153d44` |
| 21 | `theorem` | [nhdsSet_univ](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-univ--31da94706478016fb0d66ecd.md) | 121 | `result-track:31da94706478016fb0d66ecd1352ec4cc454562a337cb9c27fd8be724098bc7d` |
| 22 | `theorem` | [nhdsSet_mono](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-mono--23ab2f281eb216ef8945cca0.md) | 125 | `result-track:23ab2f281eb216ef8945cca03b94beac604322494f817131f555ef82f787efa5` |
| 23 | `theorem` | [monotone_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/monotone-nhdsset--eeea9b00e59315372fb0ac47.md) | 129 | `result-track:eeea9b00e59315372fb0ac47af3a37196747d41a9e954e1508c4e2aadde97060` |
| 24 | `theorem` | [nhds_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhds-le-nhdsset--4406e790ce7a260721bcc6e2.md) | 132 | `result-track:4406e790ce7a260721bcc6e231ee3a267a43a8e8f600e491238bc2ef66bf8cec` |
| 25 | `theorem` | [nhdsSet_union](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-union--57f2071dc8fddfb570f2649a.md) | 137 | `result-track:57f2071dc8fddfb570f2649ae7b407bda16bb0b3de6040ac28b97a30bf1c02f9` |
| 26 | `theorem` | [union_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/union-mem-nhdsset--f052956433d98e617cf2105a.md) | 141 | `result-track:f052956433d98e617cf2105a9f7d6a89d19215f9c44bab7810d9bc6f1db57d05` |
| 27 | `theorem` | [nhdsSet_insert](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/nhdsset-insert--141334444e094cb9bc0c7863.md) | 147 | `result-track:141334444e094cb9bc0c786334ef50e187548d5a48c551b115385c72c92d61da` |
| 28 | `theorem` | [Continuous.tendsto_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/declarations/continuous-tendsto-nhdsset--d0bdc285076fb25b94f1e332.md) | 152 | `result-track:d0bdc285076fb25b94f1e332a2fcba2e42d9c8fd4bc67b2b050fd9e54594fba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
