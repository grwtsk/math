# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryMatrix.Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63f25566a631dfda2493dbe767ceb84528f1ae98",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63f25566a631dfda2493dbe767ceb84528f1ae98`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/binarymatrix--fe13950b61b7f270765342cd.md) | 19 | `declaration-track:fe13950b61b7f270765342cddf3149c894cb1b594ceeaff728ec83ca51d3a090` |
| 2 | `def` | [ofFunction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/offunction--afb8f32d6466d7d00e11ac71.md) | 26 | `declaration-track:afb8f32d6466d7d00e11ac71910f9fe46931c2961575c3e04038f1c46f0e017a` |
| 3 | `def` | [rows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows--aa9d06569247f8202f4d1710.md) | 35 | `declaration-track:aa9d06569247f8202f4d17102fa834f9e3b015a8c98771ba90c14d0d6800258b` |
| 4 | `def` | [cols](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols--90e3b7fc20b632c3155a2663.md) | 39 | `declaration-track:90e3b7fc20b632c3155a266308145f504182e16b6214b2b119700167a16237b7` |
| 5 | `def` | [get](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get--d9c242671b2c176d57384510.md) | 43 | `declaration-track:d9c242671b2c176d573845104296d3e06633abdb11bbdfd9c65012eed767839d` |
| 6 | `def` | [constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/constant--17b10d25c312e7c8a61ac465.md) | 46 | `declaration-track:17b10d25c312e7c8a61ac465136e5ec28d3535ecb66769345c2197655a25567b` |
| 7 | `def` | [zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/zero--29933129f8120d24c7830cda.md) | 49 | `declaration-track:29933129f8120d24c7830cdaca105260cdd9eba36e4d9e782ce5308672803682` |
| 8 | `constant` | [m](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/m--e3555c0ad5923c9325174982.md) | 50 | `declaration-track:e3555c0ad5923c9325174982578dc591b9b7c5c3065848aba7263dfef6ca27da` |
| 9 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/map--fba90af17f82aa990cf22ce0.md) | 52 | `declaration-track:fba90af17f82aa990cf22ce075f6f6253b8695191fd942ccbda6e38f1dcaa9f5` |
| 10 | `def` | [zipWith](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/zipwith--2bffce16c17fc042a83fbaf1.md) | 55 | `declaration-track:2bffce16c17fc042a83fbaf15d098dd0dc01d1ccde8269451f09ea6d70e648c8` |
| 11 | `def` | [complement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/complement--0927b3d6b98b826ea0844508.md) | 66 | `declaration-track:0927b3d6b98b826ea0844508dd03a604c52c62e89103ee35e810f4f73ec71c5a` |
| 12 | `def` | [transpose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/transpose--5018dba463cd253757d922df.md) | 69 | `declaration-track:5018dba463cd253757d922df910877a6e8363900b783fe7d62eedc80c432f2e9` |
| 13 | `def` | [cellCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cellcount--aabb74a2648c7a445a8558ed.md) | 72 | `declaration-track:aabb74a2648c7a445a8558ed60b6dea6fbce8fe41e415ea1a3f8890379025746` |
| 14 | `def` | [IsCheckerboardPattern](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/ischeckerboardpattern--4f9f539834b630d82a4a177c.md) | 75 | `declaration-track:4f9f539834b630d82a4a177c150688748b3a2c0d9e6d38507f2747c327a10cd2` |
| 15 | `def` | [actualCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/actualcount--107b7af2d5a4b7c08d6a4bde.md) | 78 | `declaration-track:107b7af2d5a4b7c08d6a4bdeb620574e902180a0c02f77ccc537f6d18dd4b720` |
| 16 | `def` | [countOnes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/countones--bddcd4542a4137939a340a24.md) | 81 | `declaration-track:bddcd4542a4137939a340a2471e4a7bbb846aeb2019479df07edc47ced764190` |
| 17 | `def` | [countZeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/countzeros--178242310e7ee42edbb37663.md) | 84 | `declaration-track:178242310e7ee42edbb3766305ea3a36921a567e814ae2e8c6449df2b0b20a78` |
| 18 | `theorem` | [bit_eq_zero_or_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/bit-eq-zero-or-one--df0478bccf583a2fc08ac8bf.md) | 87 | `result-track:df0478bccf583a2fc08ac8bfbb02e97169a48c4e7369c79196a8499ec5ad60aa` |
| 19 | `theorem` | [bit_eq_zero_iff_not_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/bit-eq-zero-iff-not-eq-one--82d9e97e57e3b69dc9761d64.md) | 95 | `result-track:82d9e97e57e3b69dc9761d6440c213223bd69d8c0f9be70a315a6d173a7a2c8a` |
| 20 | `theorem` | [countOnes_add_countZeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/countones-add-countzeros--bf5bdb4f9c15901155703741.md) | 106 | `result-track:bf5bdb4f9c159011557037415f1d97d9f6f307c4ca048bde845801539a120b18` |
| 21 | `theorem` | [rows_ofFunction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-offunction--e6f9e35444c34981c59b7e6b.md) | 127 | `result-track:e6f9e35444c34981c59b7e6b742b4d8be20454faa3d9de078503aae90d5949a6` |
| 22 | `theorem` | [cols_ofFunction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-offunction--1de0984444b2aa7395e29675.md) | 134 | `result-track:1de0984444b2aa7395e296752521baaf1ec78c4f908a8f1dfe107cad936a127d` |
| 23 | `theorem` | [get_ofFunction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-offunction--200ef90996af9d647f9dde25.md) | 141 | `result-track:200ef90996af9d647f9dde25b81dd58a903127c06f5d244c1befc1653baa1363` |
| 24 | `theorem` | [rows_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-constant--136d11296cd7a75d2d41ac30.md) | 150 | `result-track:136d11296cd7a75d2d41ac3070c4ebed490a7891fb5327120a76cb565899a910` |
| 25 | `theorem` | [cols_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-constant--e86f9cd6506cb5ed2e14bcc1.md) | 155 | `result-track:e86f9cd6506cb5ed2e14bcc1407e200870547c84c4a8505da9dd202b1aacab1b` |
| 26 | `theorem` | [get_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-constant--719eaaca23cea5a9817d1687.md) | 160 | `result-track:719eaaca23cea5a9817d1687572279ff259f4496913071c5e5701624ee14a3ed` |
| 27 | `theorem` | [rows_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-zero--0b2575bcbcc7fbe1062d4241.md) | 165 | `result-track:0b2575bcbcc7fbe1062d42417ec762a321c5424eae9bb5720e9dcdb2d57810f2` |
| 28 | `theorem` | [cols_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-zero--6db16bd7bba32a8311784258.md) | 170 | `result-track:6db16bd7bba32a8311784258c39c6b021bf777346d08bfeea332f39ae9ded3b0` |
| 29 | `theorem` | [get_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-zero--4538b6dc6f744e89f02f4e99.md) | 175 | `result-track:4538b6dc6f744e89f02f4e990e9f47bb866e0b19d97324a01235b79ff4903263` |
| 30 | `theorem` | [rows_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-map--a5c4bc7327523afb14a37ef1.md) | 180 | `result-track:a5c4bc7327523afb14a37ef10977057ee3207f57a402652cc2fe0e2c7f251042` |
| 31 | `theorem` | [cols_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-map--55bc00c06be6be54d1878e10.md) | 185 | `result-track:55bc00c06be6be54d1878e10e1731c1b7b30d47d60e6408c93f94e10bee2f6cc` |
| 32 | `theorem` | [get_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-map--1075b56df73b2f72fdebdd70.md) | 190 | `result-track:1075b56df73b2f72fdebdd70abfcc426710ac6f159586367d02fd771b5cad873` |
| 33 | `theorem` | [rows_zipWith](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-zipwith--aea8913d141e7c0506b48a58.md) | 196 | `result-track:aea8913d141e7c0506b48a585d583e7aab12e72112bc37967c51d3beb3f7dba7` |
| 34 | `theorem` | [cols_zipWith](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-zipwith--d86508ee03c566a61ccc73c0.md) | 201 | `result-track:d86508ee03c566a61ccc73c08d331d24d394e60e2e22736f163fae187dd01318` |
| 35 | `theorem` | [get_zipWith](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-zipwith--b9c64ebbd4bde4ab55339402.md) | 206 | `result-track:b9c64ebbd4bde4ab55339402ad51e6de74a52e80e2aa1b57443f8cd8cc5d2e32` |
| 36 | `theorem` | [rows_transpose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-transpose--6ec501ee99dc30e9c99a06d5.md) | 222 | `result-track:6ec501ee99dc30e9c99a06d5252263ebc2a05888931fc5396ac00d21bbe83ccc` |
| 37 | `theorem` | [cols_transpose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-transpose--aee203c3895c4af7fad31fd3.md) | 227 | `result-track:aee203c3895c4af7fad31fd3f553056bcb5d06c55ef3480ec0da4d36be9a9140` |
| 38 | `theorem` | [get_transpose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-transpose--68981ba8c77b12925f5b57c2.md) | 232 | `result-track:68981ba8c77b12925f5b57c2c9fc3e3631b055f4afba1c8b6e1033a1aa734ca9` |
| 39 | `theorem` | [rows_complement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/rows-complement--33a24b48ecb60012d1259c40.md) | 237 | `result-track:33a24b48ecb60012d1259c400f0a7d076a15946e80ed15bac845686715659194` |
| 40 | `theorem` | [cols_complement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/cols-complement--0a25594294e44478f8f27b0c.md) | 242 | `result-track:0a25594294e44478f8f27b0c0fc61bcaeac976dc4f9842e9f7009c85bb78e4ad` |
| 41 | `theorem` | [get_complement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/get-complement--168e14120e465f60636294e4.md) | 247 | `result-track:168e14120e465f60636294e4d270dafcdd46cc144ac70c4ba8bbac4749f9a20d` |
| 42 | `theorem` | [ext_entries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/ext-entries--1c4cea8c03f07e28adc6bc2b.md) | 251 | `result-track:1c4cea8c03f07e28adc6bc2bdd02830b8543cf6988ba67c011617ceb87f13b7b` |
| 43 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean/declarations/ext--2b2c97b79c30873d6b6c738a.md) | 260 | `result-track:2b2c97b79c30873d6b6c738a5a0b44f6597e2abb2b4f3b5b88c7f52a3820a203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
