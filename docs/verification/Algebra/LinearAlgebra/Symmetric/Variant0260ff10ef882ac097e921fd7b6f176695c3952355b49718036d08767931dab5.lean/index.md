# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67679201ff541991a25e750f03cfb5fd2c3fff40",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67679201ff541991a25e750f03cfb5fd2c3fff40`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean.json)

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
| 1 | `def` | [IsSymm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm--df359afe4ef01b9ede1e4d0e.md) | 43 | `declaration-track:df359afe4ef01b9ede1e4d0eddc5ad38d40f8e463613d185f8eaf412649019fb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/instance--227e97287dcc5627792cbb8f.md) | 46 | `declaration-track:227e97287dcc5627792cbb8ff240ac0b310ac45ee87f77b94cce829cab599685` |
| 3 | `theorem` | [IsSymm.eq](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-eq--bda089615c3f32ee2c838b4a.md) | 49 | `result-track:bda089615c3f32ee2c838b4a60851125e821f5066c73d6379873315adf1aeba6` |
| 4 | `theorem` | [IsSymm.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-ext-iff--8b33af559b97d5a932e0ec96.md) | 53 | `result-track:8b33af559b97d5a932e0ec962fd2be18e2393c3315382c33ea18f09886f64189` |
| 5 | `theorem` | [IsSymm.ext](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-ext--ab863de31c3603ca0abeb1c4.md) | 57 | `result-track:ab863de31c3603ca0abeb1c449e429870f233be0b7b3949fb7b335247aaf8657` |
| 6 | `theorem` | [IsSymm.apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-apply--1413ae71591cc74c15271e3f.md) | 60 | `result-track:1413ae71591cc74c15271e3f1bf627dd71d57e01c236ccee1a1dc4960da16ebd` |
| 7 | `theorem` | [isSymm_mul_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-mul-transpose-self--d9e9b68554599ea73fbb0c6b.md) | 63 | `result-track:d9e9b68554599ea73fbb0c6b132986f46fa05d88e21acefd5465b607ff219c5b` |
| 8 | `theorem` | [isSymm_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-transpose-mul-self--aa98f6f9624bf37ea36e0915.md) | 67 | `result-track:aa98f6f9624bf37ea36e091544f6401e9e03c12c873fc1ebecbda88e6e6d3409` |
| 9 | `theorem` | [isSymm_add_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-add-transpose-self--f5e31263d10d5ca799ed95fc.md) | 71 | `result-track:f5e31263d10d5ca799ed95fce8a77a4e2c8c46ee791f04f9f107bfd813a131ba` |
| 10 | `theorem` | [isSymm_transpose_add_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-transpose-add-self--0f1321a5ea6bf901dbd2848a.md) | 74 | `result-track:0f1321a5ea6bf901dbd2848ab7d6e14175ecbd654d59c625372afd335ab09b97` |
| 11 | `theorem` | [isSymm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-zero--8351ef659f442fdadea10c66.md) | 78 | `result-track:8351ef659f442fdadea10c6678d88bb21c80563788785cb88ecb3a2ef931b738` |
| 12 | `theorem` | [isSymm_one](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-one--84e9d0ded03b466494616086.md) | 82 | `result-track:84e9d0ded03b4664946160861d76c346b3c461523378253715b9131ac03a64a8` |
| 13 | `theorem` | [IsSymm.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-pow--1d7c5c57ac68db4f2fd3fe08.md) | 85 | `result-track:1d7c5c57ac68db4f2fd3fe08e288b1e5e88dc84413084667d5a43588c4a9026a` |
| 14 | `theorem` | [IsSymm.map](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-map--1c8407c0a08cc2bfd0c146d2.md) | 91 | `result-track:1c8407c0a08cc2bfd0c146d2a196fc6c569bc231fd5654d5ea4727f72b3008e1` |
| 15 | `theorem` | [isSymm_map_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-map-iff--88a6802e01759cfe6b6365f6.md) | 95 | `result-track:88a6802e01759cfe6b6365f600c7520f0259df7cdba4d10775efb9944bffccb2` |
| 16 | `theorem` | [IsSymm.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-transpose--71af95d9ea32ae2ec2e0a0c2.md) | 99 | `result-track:71af95d9ea32ae2ec2e0a0c2a909eb2495793acf76f8f37f3309b9b8f191f891` |
| 17 | `theorem` | [isSymm_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-transpose-iff--942954358e50c137ead9e9c5.md) | 103 | `result-track:942954358e50c137ead9e9c5788ea4a546373321e26a832f039b24b89a08554e` |
| 18 | `theorem` | [IsSymm.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-conjtranspose--e13b3e676fe0ed02332e1740.md) | 109 | `result-track:e13b3e676fe0ed02332e17401fb91996ab1e2bef210b738f5c3ecddd9cf13608` |
| 19 | `theorem` | [isSymm_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-conjtranspose-iff--934e452eb6db371b18395aad.md) | 113 | `result-track:934e452eb6db371b18395aad1a79fe529aaaa665624c9a6b2a0e938635d954af` |
| 20 | `theorem` | [IsSymm.neg](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-neg--4887ac6dc2c73ab01ff212e0.md) | 119 | `result-track:4887ac6dc2c73ab01ff212e061caad29f8f94bfbfe513515b5b12f56aa262ebb` |
| 21 | `theorem` | [isSymm_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-neg-iff--fdf3333c13508337cee7c7ab.md) | 123 | `result-track:fdf3333c13508337cee7c7abc767d67be40ac83ef98a538be06b784ae6e433e1` |
| 22 | `theorem` | [IsSymm.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-add--5893ec4950d355342075cb24.md) | 129 | `result-track:5893ec4950d355342075cb24284d6d3c5aa4cd7f21beddf7729938f15f7eb3cf` |
| 23 | `theorem` | [IsSymm.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-sub--94ecea3c69077403780595ed.md) | 133 | `result-track:94ecea3c69077403780595ed3421c03abfd1c0cc3538c106a63dd123c7fae154` |
| 24 | `theorem` | [IsSymm.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-smul--66bd89d34312571253716b78.md) | 137 | `result-track:66bd89d34312571253716b78a6191daadc6102aa7348b3b33fdf56ce1ced327d` |
| 25 | `theorem` | [isSymm_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-smul-iff--a1d350b3a3b43bf18cb2f4fb.md) | 141 | `result-track:a1d350b3a3b43bf18cb2f4fbf63d54790b7cd9c8abc32832bf7f4b21ddf3c0a4` |
| 26 | `lemma` | [IsSymm.dotProduct_mulVec_comm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-dotproduct-mulvec-comm--7103010d6fc24807ea61aa96.md) | 147 | `result-track:7103010d6fc24807ea61aa9680035c47837181dbbf4383d97cb1d0648ad4d9fe` |
| 27 | `theorem` | [IsSymm.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-submatrix--fb8180f1744090a1dbda3322.md) | 153 | `result-track:fb8180f1744090a1dbda33221621e02a0300623f7d0794b6978cee1e4f5f0998` |
| 28 | `theorem` | [IsSymm.reindex](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-reindex--ada87f4b30decb5eae588da5.md) | 156 | `result-track:ada87f4b30decb5eae588da5a4200e7b79327dac5a5e4e8dd3a61f5962738f96` |
| 29 | `theorem` | [isSymm_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-reindex-iff--e9a87f09ebb6aac6e6145d2c.md) | 160 | `result-track:e9a87f09ebb6aac6e6145d2c9bea38cd010602cc981007cf09e5da1796a2b0ae` |
| 30 | `theorem` | [isSymm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-diagonal--b52ef7b963b5308c921be99e.md) | 166 | `result-track:b52ef7b963b5308c921be99e40637f48605ee3fc1de6ec6daae40b672c9af173` |
| 31 | `theorem` | [IsSymm.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-fromblocks--3b4fb97b799bfeb735f0460f.md) | 171 | `result-track:3b4fb97b799bfeb735f0460f1a5f195d40e846b19472acc7cccdb18d8a97a656` |
| 32 | `theorem` | [isSymm_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-fromblocks-iff--ab41a869389fa7a82dc557ef.md) | 181 | `result-track:ab41a869389fa7a82dc557ef77ee39736a314761d8d8738db2948f3073b2afd6` |
| 33 | `theorem` | [isSymm_comp_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-comp-iff--f80b367bcb1594bd9882d582.md) | 188 | `result-track:f80b367bcb1594bd9882d58225c02fe94b4f7f1abed504c57c58bcedfe119187` |
| 34 | `theorem` | [isSymm_comp_iff_forall](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant0260ff10ef882ac097e921fd7b6f176695c3952355b49718036d08767931dab5.lean/declarations/issymm-comp-iff-forall--4a88ca7fc98fe9952f61d7be.md) | 193 | `result-track:4a88ca7fc98fe9952f61d7be2a1e182d2bdc5c03b4bbcd3f8fb60978402df026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
