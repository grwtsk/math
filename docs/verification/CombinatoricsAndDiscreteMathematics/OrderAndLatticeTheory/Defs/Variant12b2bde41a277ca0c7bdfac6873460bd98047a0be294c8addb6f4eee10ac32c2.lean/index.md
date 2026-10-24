# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa993b6e4f3761e6bcce803f44fc1c6b242d4964",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa993b6e4f3761e6bcce803f44fc1c6b242d4964`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ioo--dfc081071d00529a7ee035a5.md) | 39 | `declaration-track:dfc081071d00529a7ee035a56c7e0dd7b861d2d160046aceea78132aa20e71f2` |
| 2 | `theorem` | [mem_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-ioo--ae34f49ae36abc3f8afa711e.md) | 41 | `result-track:ae34f49ae36abc3f8afa711e251abea469ec3a2f0dfd49abb07ab730ebeef749` |
| 3 | `theorem` | [Ioo_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ioo-def--b10d3bdc238be1bafd35f952.md) | 42 | `result-track:b10d3bdc238be1bafd35f95220356bf0324fa28c636333b46fe0d794676b1df0` |
| 4 | `def` | [Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ico--1187477bf8f37f06bd2dcbe0.md) | 45 | `declaration-track:1187477bf8f37f06bd2dcbe0475addc78058654e55cb1997889c7c23bd0e8d52` |
| 5 | `theorem` | [mem_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-ico--a3eebb7f138c01f88bd3a3c5.md) | 47 | `result-track:a3eebb7f138c01f88bd3a3c59765ef963f0263b55e62c3eaed6bdd8d3bfa25e8` |
| 6 | `theorem` | [Ico_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ico-def--9419988841d4114cd3d3f409.md) | 48 | `result-track:9419988841d4114cd3d3f40978b3d9cb577b449a316c172c4336293bc971c578` |
| 7 | `def` | [Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/iio--2663aa47d1e25f8969e4599b.md) | 51 | `declaration-track:2663aa47d1e25f8969e4599b6817a5334dceadde7e0f930d868b9a75177276f0` |
| 8 | `theorem` | [mem_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-iio--70b67964c5cb95cf8a2cb1fd.md) | 53 | `result-track:70b67964c5cb95cf8a2cb1fd4eb24e8a2ccaf29b9d6110e8ede0f2dfe998d4b3` |
| 9 | `theorem` | [Iio_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/iio-def--b2b3417d9f71fc4032dd28e3.md) | 54 | `result-track:b2b3417d9f71fc4032dd28e326973ace1ff214b6614ccc6efa12d1e10cf01de2` |
| 10 | `def` | [Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/icc--37fc1663ec0ccd4ab574cdf3.md) | 57 | `declaration-track:37fc1663ec0ccd4ab574cdf3cb8dae26730e8afe2131abe21d4710f34d1dd3a2` |
| 11 | `theorem` | [mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-icc--ab3d1cac4c5bd779e39205d5.md) | 59 | `result-track:ab3d1cac4c5bd779e39205d58691929b176e25569081595a80147e9c9cf3b046` |
| 12 | `theorem` | [Icc_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/icc-def--0131dd39be0d3e4ae9b55114.md) | 60 | `result-track:0131dd39be0d3e4ae9b55114bf054fe6514517faf54f0b1fc2b59d3c510ab6c5` |
| 13 | `def` | [Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/iic--0840ca6af1cde0cc49e128d6.md) | 63 | `declaration-track:0840ca6af1cde0cc49e128d6d4722531ee0b9775c019c33b6f2e31659bb1251f` |
| 14 | `theorem` | [mem_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-iic--ed8df3ba14b8451c254d585a.md) | 65 | `result-track:ed8df3ba14b8451c254d585aab3220f7f5a5f6a26d74ffecf8a441221bf556d8` |
| 15 | `theorem` | [Iic_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/iic-def--29682fd1177123eb39e09a48.md) | 66 | `result-track:29682fd1177123eb39e09a483e83dfe213374cedd0c1e96dda293aeb053ba663` |
| 16 | `def` | [Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ioc--8c580fc871444d91f1d33e89.md) | 69 | `declaration-track:8c580fc871444d91f1d33e89a43f3f9de5c70c288e3f156bd79156f2d4583bcf` |
| 17 | `theorem` | [mem_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-ioc--b3b824496854c9e8cd3852e1.md) | 71 | `result-track:b3b824496854c9e8cd3852e195efa636279a2161f260fd372357d5a782bfedfc` |
| 18 | `theorem` | [Ioc_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ioc-def--b4dd597772b0f90c8946f4e1.md) | 72 | `result-track:b4dd597772b0f90c8946f4e12b08dec0e3faede7b41a09ca10e8192c57988c91` |
| 19 | `def` | [Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ici--e71609f31c406db6a8855b56.md) | 75 | `declaration-track:e71609f31c406db6a8855b56130d57c1b9d292b97dff3db45b876d6ad274d377` |
| 20 | `theorem` | [mem_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-ici--dc6d9b7b5408bf8be178eb7f.md) | 77 | `result-track:dc6d9b7b5408bf8be178eb7fda38e5a2ad53eaacfc38cd85f5afa19cdc2f1774` |
| 21 | `theorem` | [Ici_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ici-def--f85f7974c936798bea7cec3f.md) | 78 | `result-track:f85f7974c936798bea7cec3f6442194f9c1da751d87de0562d0fb3512c297d11` |
| 22 | `def` | [Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ioi--4cefd8b0e58e76274d93c57d.md) | 81 | `declaration-track:4cefd8b0e58e76274d93c57d60290f5e657ab9a61acd922b9695efd3dac53c90` |
| 23 | `theorem` | [mem_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/mem-ioi--8cc30985f4a916d86ffb7d6a.md) | 83 | `result-track:8cc30985f4a916d86ffb7d6a60e2799fd4db1e550ee958995d76a417147f5e34` |
| 24 | `theorem` | [Ioi_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ioi-def--10b3b4a4c00596ebf3494af8.md) | 84 | `result-track:10b3b4a4c00596ebf3494af84994312fad1c0823650515be027640bf43ff2327` |
| 25 | `class` | [OrdConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant12b2bde41a277ca0c7bdfac6873460bd98047a0be294c8addb6f4eee10ac32c2.lean/declarations/ordconnected--144225ebd4deb1afd2bd72f7.md) | 90 | `declaration-track:144225ebd4deb1afd2bd72f74a3a476aad81e9335021ded0d01222ef1144588c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
