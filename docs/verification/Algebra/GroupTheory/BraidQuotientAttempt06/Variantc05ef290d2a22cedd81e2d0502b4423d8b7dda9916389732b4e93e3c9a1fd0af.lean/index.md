# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt06.Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50a25e9c87aa86656b847bc90f7c473c4ce033df",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50a25e9c87aa86656b847bc90f7c473c4ce033df`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/braidrelator--3b6bf27224337c7565d65729.md) | 23 | `declaration-track:3b6bf27224337c7565d65729317008f2bf0c26029206d4a8919c8601cf13bdfe` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/braidrelations--7f6ebdf454cf0a7b25532ed0.md) | 27 | `declaration-track:7f6ebdf454cf0a7b25532ed0063ef8360fe1245bf23c68d96a5257e8062bbe18` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/b3--8632c437b474400de7a7ef25.md) | 29 | `declaration-track:8632c437b474400de7a7ef257b2a97fd3170e92d4f8173ccf49610d82c0c3ec7` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/sigma1--e45d10332d4cd77e6afdfe2f.md) | 31 | `declaration-track:e45d10332d4cd77e6afdfe2fdfdf2a988f5f031a7ab2854b9002a2f8ea330473` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/sigma2--7c271a85cf0183893f163a57.md) | 33 | `declaration-track:7c271a85cf0183893f163a573bfae2311157e2b4e430cb1886cd2b4289bd7959` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/braid-relation--e355fc3ec276e115c6ea93b4.md) | 35 | `result-track:e355fc3ec276e115c6ea93b4fc34845cc4066916f9c323091275b9d45d578448` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/halftwist--e3cf59fe6699515b093221ba.md) | 44 | `declaration-track:e3cf59fe6699515b093221ba0abc065381b9cec1732ec9cfd6f73cac0d936609` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/fulltwist--ca6c0918f73d98353f1d835f.md) | 47 | `declaration-track:ca6c0918f73d98353f1d835f0ec4754e2351420378d4aa8b76455e3817aabb6e` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/halftwist-swap-sigma1--fe58a1f98268799fa9301139.md) | 49 | `result-track:fe58a1f98268799fa9301139d9c23d1e546b25c6ba392873d1c6429e04d9fc29` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/halftwist-swap-sigma2--966532b1bec84e2d5fc3851b.md) | 56 | `result-track:966532b1bec84e2d5fc3851b24d000d21ebdcd4fe01f4484244d4fba325d4b63` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/halftwist-sq--b6edc684b330a53f19fb6573.md) | 64 | `result-track:b6edc684b330a53f19fb65734bb6d9883bf538a96c4040b0a2dbd70956069f9b` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/fulltwist-commute-sigma1--bd0e9313392466432336372b.md) | 73 | `result-track:bd0e9313392466432336372bb99f22fb82784a0c136ce1561a3e38b2bbb6b135` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/fulltwist-commute-sigma2--d908cdac0247eaaa17763f26.md) | 82 | `result-track:d908cdac0247eaaa17763f265fd9a32b51bd3ec4a9d2ed05fc39b943ac5af5e8` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/fulltwist-central--a86f3550ffcd92095b4ebd81.md) | 91 | `result-track:a86f3550ffcd92095b4ebd81f2e7ce497ef69abff82966165cbeda9fcb134263` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/uppergenerator--8a34f71f94c8af5701d1e7c9.md) | 100 | `declaration-track:8a34f71f94c8af5701d1e7c9433961e42fc409ffa63bcc29aa09a29331a1c4ba` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lowergenerator--a31323907507788cae2aa004.md) | 103 | `declaration-track:a31323907507788cae2aa0048dcc742329acc05fbacc61f094c19fd2ef98a6c4` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/matrix-braid-relation--e5f517034d1feade92ff8bd3.md) | 106 | `result-track:e5f517034d1feade92ff8bd38776cb835bb13054487c2a8208b0933f985422d4` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/generatormatrix--44657c9e70db4686982dd09b.md) | 116 | `declaration-track:44657c9e70db4686982dd09bf4b9c4e0ca3c4250a810c85456232c738d15890c` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/matrix-relator-identity--663bf1e99b8b8564da8f9c66.md) | 118 | `result-track:663bf1e99b8b8564da8f9c66d21ead2b7c34e7b4d249769dafc563c1855910cb` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/matrixrepresentation--0f77dc4d446fb1d47e6d79ce.md) | 128 | `declaration-track:0f77dc4d446fb1d47e6d79ce0eca08aa521d7e44f67990eeabaad08206e1aff3` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/matrixrepresentation-sigma1--27c62deca19523995c6562df.md) | 131 | `result-track:27c62deca19523995c6562df30db09eb48bd1e8b9175e6198e8f7eb4647f367d` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/matrixrepresentation-sigma2--c375e512d5620c5a4ba539c5.md) | 134 | `result-track:c375e512d5620c5a4ba539c5ca507b1796a51fd6e478c5742f52cf4c879ec2ff` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/generatorexponent--9778082b2f801c4e586c68c2.md) | 138 | `declaration-track:9778082b2f801c4e586c68c2270c4e48e843b4c44f32a1afe16d99edf31bc807` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/exponent-relator-identity--d26a3b32e20919f24671e8da.md) | 140 | `result-track:d26a3b32e20919f24671e8da06a40fd97f8cd532422af553e02f5231f68fd340` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/exponenthom--a5ff566349ce9aadbd80ae32.md) | 148 | `declaration-track:a5ff566349ce9aadbd80ae322b4ec4bf22e39241a211abfbc8f9e8f05d43cd65` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/exponenthom-sigma1--51ef37f89ade2e889b3a258d.md) | 151 | `result-track:51ef37f89ade2e889b3a258db1de4e885547d6bed9067c28b2c5fe663473b3bb` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/exponenthom-sigma2--b7ea2c481661bf831c567170.md) | 154 | `result-track:b7ea2c481661bf831c56717035d60636a44bf4241f71c7c5890742646539f500` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lostbraid--4457ad611c68d1ac9b281f89.md) | 158 | `declaration-track:4457ad611c68d1ac9b281f89ba6bf9fbc79bcb677a4b5eecc69ac708cb82c613` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lostbraid-eq-fulltwist-square--34a9445edb09ccc956da3b2c.md) | 160 | `result-track:34a9445edb09ccc956da3b2c0d627b0dcb81fe15d379d4674dd0ceff0bdd54bc` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lostbraid-central--512b6742236604934d9d09ac.md) | 164 | `result-track:512b6742236604934d9d09ac6aaf4cc4949a9c46489a3060c4cfe5420a3a1dd9` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/generator-product-matrix--5ad9797994536a588fb53090.md) | 173 | `result-track:5ad9797994536a588fb530905cea76c06df2d5e496ca8117b2159e496044d623` |
| 32 | `theorem` | [generator_product_cube_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/generator-product-cube-matrix--5c40cbc559ad390b11a6f5ff.md) | 182 | `result-track:5c40cbc559ad390b11a6f5ff5328c1d66296b2d792a2b55c96b9c7bf956d41d8` |
| 33 | `theorem` | [fullTwist_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/fulltwist-matrix--baf62c1d6d6b05d11df6026d.md) | 190 | `result-track:baf62c1d6d6b05d11df6026d95304f86b6f400d3bed0db5e6aec67badb2f5b80` |
| 34 | `theorem` | [fullTwist_matrix_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/fulltwist-matrix-ne-one--eae77c694e353644025fe1ac.md) | 195 | `result-track:eae77c694e353644025fe1aceb294d30eac4899ade7c6ba86de245dcb4b58380` |
| 35 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/generator-product-sixth--956736b3fd2d3239f11be953.md) | 202 | `result-track:956736b3fd2d3239f11be95366ac09eb725c0c22798d8ae24e3b74985d076ab6` |
| 36 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lostbraid-matrix-identity--ca978b46be21ea9ea065b19a.md) | 210 | `result-track:ca978b46be21ea9ea065b19aea9b1dd244b01307d5df27ff569a306b45a85e34` |
| 37 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lostbraid-exponent--21b2b23dcf91c061923d6e44.md) | 214 | `result-track:21b2b23dcf91c061923d6e44733d5b61d2ddfe00d07f943cb8d00a338084be91` |
| 38 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/lostbraid-ne-one--a5cf38e7aeb70cc9d912becb.md) | 217 | `result-track:a5cf38e7aeb70cc9d912becba6edf6d5d31cf30809647e8dfaff99b7d9308b42` |
| 39 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/matrixrepresentation-not-injective--86c503552f6f7e0423fdeafa.md) | 223 | `result-track:86c503552f6f7e0423fdeafa5715373eb1454b25107dda40ec38c4b73d19649f` |
| 40 | `theorem` | [beta_mul_lostBraid_ne](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/beta-mul-lostbraid-ne--0cb224901f5824fe5a4271aa.md) | 227 | `result-track:0cb224901f5824fe5a4271aa2d39ea916521ac9864fc143870d41db13759596c` |
| 41 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/factorsthrough--01b2b3c18a0c9fb15376d5f4.md) | 232 | `declaration-track:01b2b3c18a0c9fb15376d5f45d4ef78f03b030428daf56608afa564ac2e97115` |
| 42 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/factored-kernel-blindness--4915ad2b97b87315c5693919.md) | 235 | `result-track:4915ad2b97b87315c5693919119b8662baf6b85178ca1208d7f07cccc0909c28` |
| 43 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/factored-lostbraid-blindness--570787c65c32687c62aea572.md) | 241 | `result-track:570787c65c32687c62aea572edba90a219e0e2ed343917c607e79421c023abbc` |
| 44 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/declarations/factored-not-injective--7d37a62e6d68c979e3ccaa3b.md) | 245 | `result-track:7d37a62e6d68c979e3ccaa3bc4dcf169593a2ea4de75da271aa3e8d9d3ed9c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
