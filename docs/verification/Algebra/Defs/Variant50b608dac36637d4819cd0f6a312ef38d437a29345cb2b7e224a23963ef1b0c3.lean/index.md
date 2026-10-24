# Verification target: GRWTSK.Algebra.Defs.Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50dcf074148e7ea4110eed4bd04cbfe1ce12d67c",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50dcf074148e7ea4110eed4bd04cbfe1ce12d67c`.

Source path: `GRWTSK/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubfieldClass](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/subfieldclass--921797493a024f84e8d71c8d.md) | 53 | `declaration-track:921797493a024f84e8d71c8d4786d67965849334bde0e368a83539f360a86da0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--fda9ae60337735721bd8f4ec.md) | 66 | `declaration-track:fda9ae60337735721bd8f4ec10c8b6f9486965d0b0407a3a57a16d04c51d9466` |
| 3 | `lemma` | [nnratCast_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/nnratcast-mem--d6ba11e8a773ace5d9489944.md) | 72 | `result-track:d6ba11e8a773ace5d94899440b465f2b79ce4bc9b181bbf78f2d635bf3915be0` |
| 4 | `lemma` | [ratCast_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/ratcast-mem--976935c1dc61b78c993fa34a.md) | 76 | `result-track:976935c1dc61b78c993fa34a9cc5533c0725e071b745351148acaa95d8d64458` |
| 5 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instnnratcast--1cd35af91406d617654d9920.md) | 79 | `declaration-track:1cd35af91406d617654d992046ae323be34e89caf9764c2a527c8568d6dc049c` |
| 6 | `instance` | [instRatCast](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instratcast--dc9704ff97dce834beff7563.md) | 80 | `declaration-track:dc9704ff97dce834beff75630ee6a43f93e61fd81021c360e752e3a42be53795` |
| 7 | `lemma` | [coe_nnratCast](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-nnratcast--bc0e0959476b902ead55d280.md) | 82 | `result-track:bc0e0959476b902ead55d280073682063fca267fcd0bb3a20f8586503990fa95` |
| 8 | `lemma` | [coe_ratCast](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-ratcast--80fe8c63041af1f77f5f5c29.md) | 83 | `result-track:80fe8c63041af1f77f5f5c291bd2927fd3dd6bc62af598818d7182dbbdc8712e` |
| 9 | `lemma` | [nnqsmul_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/nnqsmul-mem--6c8d8b10f5ab80def4e15a9a.md) | 86 | `result-track:6c8d8b10f5ab80def4e15a9ab7c75c73ab9faabdfc3d481645663aa1746ced89` |
| 10 | `lemma` | [qsmul_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/qsmul-mem--10409509986d0c3c5fe38988.md) | 90 | `result-track:10409509986d0c3c5fe38988c16030db9597da98f8bfe6fa4bde662fd2d7f19d` |
| 11 | `lemma` | [ofScientific_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/ofscientific-mem--768ce437812fcea4fdd83ce1.md) | 94 | `result-track:768ce437812fcea4fdd83ce1feb17f82c6d258e45cd5e0662a649356c09f65c2` |
| 12 | `instance` | [instSMulNNRat](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instsmulnnrat--38c0655682cf507b2543d983.md) | 98 | `declaration-track:38c0655682cf507b2543d983e313810af125a781a8294df5f16c8c018a4710b8` |
| 13 | `instance` | [instSMulRat](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instsmulrat--b27ff7041c93d03e96eb2794.md) | 99 | `declaration-track:b27ff7041c93d03e96eb2794095e4e1d4cd8d38f2e9816cffb1be1e6075dff46` |
| 14 | `lemma` | [coe_nnqsmul](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-nnqsmul--e3cec384f85c071ff1e68b9f.md) | 101 | `result-track:e3cec384f85c071ff1e68b9fd075c9b9d5b423240cd7fefd7a58f897191a62ff` |
| 15 | `lemma` | [coe_qsmul](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-qsmul--511721d181dcf40115ad933b.md) | 102 | `result-track:511721d181dcf40115ad933b95cf0bb1693c1ca38594a47a0f6f289cb6c01fdd` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--fb6f62808ab5dc58c20a729b.md) | 107 | `declaration-track:fb6f62808ab5dc58c20a729bfaf8fd357948cc7897f2c581961d92d15522597c` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--106b6987e706bb262fe2577b.md) | 116 | `declaration-track:106b6987e706bb262fe2577b28764b6fa16f34841e5e36a613988ab1d08597ff` |
| 18 | `structure` | [Subfield](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/subfield--6439bfe7fd9903d6cdc3bdd9.md) | 130 | `declaration-track:6439bfe7fd9903d6cdc3bdd991cbf2911392ce0e2893c707d4911e7c4dcf35c3` |
| 19 | `def` | [toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/toaddsubgroup--434fbbabefb5d9cfa881ec38.md) | 140 | `declaration-track:434fbbabefb5d9cfa881ec38629cbf11d117a435425b19cc099eb3dc8bef79d3` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--16b5b1902098562bfd3240ce.md) | 148 | `declaration-track:16b5b1902098562bfd3240ce0a19c7fba4d8b367dea2a337513cd23b7363b59a` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--3c076d09551edc6d0e37cb60.md) | 152 | `declaration-track:3c076d09551edc6d0e37cb60068f770eaf4ad122f25b23df5bf0464e31ec38bd` |
| 22 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mem-carrier--347ccc29522aec3e7e735200.md) | 160 | `result-track:347ccc29522aec3e7e7352000f31630fed36c99a4f5ef59ae652d703bc352295` |
| 23 | `theorem` | [mem_mk](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mem-mk--084f7f3672bc38689220508f.md) | 165 | `result-track:084f7f3672bc38689220508f9f9a351ff21eb754b70e20901fd50e711224c1a0` |
| 24 | `theorem` | [coe_set_mk](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-set-mk--bedc77564daaa7249833b6bc.md) | 169 | `result-track:bedc77564daaa7249833b6bc849a2c4afda87e55719db922d4d560279cd5e7e0` |
| 25 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mk-le-mk--c5bc05a174ed0993aad0403d.md) | 173 | `result-track:c5bc05a174ed0993aad0403d8084bfce60ca112df38443eb2c16adf068b99278` |
| 26 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/ext--ede9848cef8eef3ed5628a58.md) | 179 | `result-track:ede9848cef8eef3ed5628a58ec7451f27f34689bc2cb2cfd429e23ff0e0381f0` |
| 27 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/copy--5fb1e96bd0c37c338cc16547.md) | 184 | `declaration-track:5fb1e96bd0c37c338cc165477e3cfb978f9d9b9d25c35c7da77f8f2ee9e7673e` |
| 28 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-copy--42c3aebf97bb8a1293696f4a.md) | 190 | `result-track:42c3aebf97bb8a1293696f4a83a97c54c2afcc0586c7739b444e0beea7269eaf` |
| 29 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/copy-eq--4005fd8313a5d3a087543565.md) | 193 | `result-track:4005fd8313a5d3a0875435656ec107a890da316c79c65fdcaeb2f40b7a4ccacb` |
| 30 | `theorem` | [coe_toSubring](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-tosubring--9513a92660aa6b47db058c91.md) | 197 | `result-track:9513a92660aa6b47db058c914eb2c37a5ab7c8461ad7d2f3619c9b641404fb6f` |
| 31 | `theorem` | [mem_toSubring](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mem-tosubring--1e4dc97402977a69155f25e6.md) | 201 | `result-track:1e4dc97402977a69155f25e69bc713abdee51289b3ee3f568e9bcc21a1fd17e6` |
| 32 | `def` | [Subring.toSubfield](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/subring-tosubfield--af84ecf0a252262ac64753e0.md) | 207 | `declaration-track:af84ecf0a252262ac64753e01fc426622632513090fcaeed6f5f72a970d2ff23` |
| 33 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/one-mem--068d79dfe4d146ab257880a6.md) | 217 | `result-track:068d79dfe4d146ab257880a68689622ae6291e787cdbb0dc5f3d76e1cff83533` |
| 34 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/zero-mem--cfe5c287072188e0fcaf3e0c.md) | 221 | `result-track:cfe5c287072188e0fcaf3e0c61744bf09b7bac57bd9b616691884871f0aa987c` |
| 35 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mul-mem--1bd6d2424207b500c1b7262b.md) | 225 | `result-track:1bd6d2424207b500c1b7262bd2ebebc0a46af4ea6b89d1a8ecb2503464bc78f2` |
| 36 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/add-mem--37e8c27b4c16e501225bd62a.md) | 229 | `result-track:37e8c27b4c16e501225bd62aa43724c6b99d6c86455d41f49b4125eb9ec3edf0` |
| 37 | `theorem` | [neg_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/neg-mem--9ed902a1f4f7d5d613419a7c.md) | 233 | `result-track:9ed902a1f4f7d5d613419a7cb92c154cb591a91a051c08df130bd2b24acf18d1` |
| 38 | `theorem` | [sub_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/sub-mem--c0ca61b24e90c919ee0a89c9.md) | 237 | `result-track:c0ca61b24e90c919ee0a89c967cfc72bb591386bd630c43532987e506c9dd456` |
| 39 | `theorem` | [inv_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/inv-mem--319b25ae43b3e759187fcd7e.md) | 241 | `result-track:319b25ae43b3e759187fcd7e88bc772102876e521780e775fe75e2c56b3a7282` |
| 40 | `theorem` | [div_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/div-mem--09a7a38bb814b25f4062092e.md) | 245 | `result-track:09a7a38bb814b25f4062092e7e1b7f150f8adbfc19486edf60f9d5c36b7289e6` |
| 41 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/pow-mem--454cf111e08d5a6c3bfa78db.md) | 248 | `result-track:454cf111e08d5a6c3bfa78db2dafa884122273a7bad83f9d6e6844565b9f5bfb` |
| 42 | `theorem` | [zsmul_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/zsmul-mem--c6589d6ad13e121012cee2cc.md) | 251 | `result-track:c6589d6ad13e121012cee2cce305b06cb90e75bd08d26ce18c128629236acd6b` |
| 43 | `theorem` | [intCast_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/intcast-mem--3875123bbd4c6aff749a2a8b.md) | 254 | `result-track:3875123bbd4c6aff749a2a8b9c2fdf793b707092ae94c8e5dfd5999a3c88bef3` |
| 44 | `theorem` | [zpow_mem](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/zpow-mem--3991beded1256b2520546ce5.md) | 256 | `result-track:3991beded1256b2520546ce5eba36a272212cae7c6a50266358925e540bd07f6` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--7dd479090cc89ed44fd1ea2c.md) | 261 | `declaration-track:7dd479090cc89ed44fd1ea2c550c5c92694ce2ebd14af1e320b4d8101a3406d6` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--a8db82ffaadc272d7d694863.md) | 264 | `declaration-track:a8db82ffaadc272d7d6948638f90fc68eacc3d3fe4572bd116512858154c701c` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--03d2fc80595e273af6e25cb4.md) | 267 | `declaration-track:03d2fc80595e273af6e25cb44dc840d59139102fbd6792fda7b3c46f44ab7bd2` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/instance--a74a8b17d9a68ce713a70a32.md) | 270 | `declaration-track:a74a8b17d9a68ce713a70a327a8689efe5fcec926b98883a6d6c7419e987eda5` |
| 49 | `instance` | [toDivisionRing](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/todivisionring--8c261cd5efe68219c45816e1.md) | 274 | `declaration-track:8c261cd5efe68219c45816e1d52eb1cb05cc79503ff78debbfb10721d7c82123` |
| 50 | `instance` | [toField](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/tofield--6c66a8403f24fbba3432d511.md) | 281 | `declaration-track:6c66a8403f24fbba3432d5115852514b508a28cdaaf9a6b380a4c2ffa269e0e3` |
| 51 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-add--2a29ccec30efe1dc0e8160f0.md) | 288 | `result-track:2a29ccec30efe1dc0e8160f0849147ddf77265edd2c720ef6960355299290710` |
| 52 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-sub--64794b8ad7ff69d43720d83e.md) | 292 | `result-track:64794b8ad7ff69d43720d83e4d66c84c7e925b9496a586bfa48a8cfe138cfa7d` |
| 53 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-neg--83df186ac778c6e03ee647dc.md) | 296 | `result-track:83df186ac778c6e03ee647dc26a352ef3d000cdb332eb0657208303e9dc6a4f5` |
| 54 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-mul--3bd58b26e1dcbc9b03d5496d.md) | 300 | `result-track:3bd58b26e1dcbc9b03d5496d9a31913ecce1362852ce47cacc3e104cb3995802` |
| 55 | `theorem` | [coe_div](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-div--fb74686c88f69e54b9c12ddb.md) | 304 | `result-track:fb74686c88f69e54b9c12ddb33dc4645b08dc0c4c719111d9fa0df690666424d` |
| 56 | `theorem` | [coe_inv](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-inv--ccddf19bee0c32e5daf2b187.md) | 308 | `result-track:ccddf19bee0c32e5daf2b1871e74d4c6ed4ef23f666ec2ec04557a4ef3ea7212` |
| 57 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-zero--6f7489775dcba12d0e6413e5.md) | 312 | `result-track:6f7489775dcba12d0e6413e54aab148b3755376249f0789a18352e81490b3e9d` |
| 58 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-one--8845ca42e6e8cb326ee47cd6.md) | 316 | `result-track:8845ca42e6e8cb326ee47cd63ef507fb6554476b8939edbaee78b12c6e21658e` |
| 59 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/subtype--96c25716d81383b7feef1a64.md) | 322 | `declaration-track:96c25716d81383b7feef1a647aa67026d63d31304461c531f49adbc8deb881c8` |
| 60 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/subtype-apply--d69f25665daaee879391fcbb.md) | 326 | `result-track:d69f25665daaee879391fcbb9a1fc074e62518c9d47bd177ec17dc22683bf300` |
| 61 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/subtype-injective--0295c2a5bd4a1d2077986af2.md) | 329 | `result-track:0295c2a5bd4a1d2077986af268aee375d04f5a65cb4ce43c14316e89531a0a40` |
| 62 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-subtype--3b7e765e82e45c68b0f4b910.md) | 334 | `result-track:3b7e765e82e45c68b0f4b91037aa13d9b7f3abdf57b38deb6bece28ca554b33d` |
| 63 | `theorem` | [toSubring_subtype_eq_subtype](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/tosubring-subtype-eq-subtype--be64da2afbd70cf8ec7d0719.md) | 338 | `result-track:be64da2afbd70cf8ec7d0719ee9c5ed11193563d3ad5c98c4d25cdbf48e94135` |
| 64 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mem-tosubmonoid--b451fe12758feadff81e7553.md) | 345 | `result-track:b451fe12758feadff81e755312cf842e359db7b212103146c2865f93a1fb754f` |
| 65 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-tosubmonoid--adfc0e27fabd45656b7894d1.md) | 349 | `result-track:adfc0e27fabd45656b7894d12651b329d78388adb8e8a5d55694780ecb221c74` |
| 66 | `theorem` | [mem_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/mem-toaddsubgroup--ef0d34de1171174594f825b4.md) | 353 | `result-track:ef0d34de1171174594f825b4f56436da81eaf008b3d1ad49af1ae7e0323ba486` |
| 67 | `theorem` | [coe_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean/declarations/coe-toaddsubgroup--4a4619943ac3143809d65782.md) | 357 | `result-track:4a4619943ac3143809d657823d90f5e8972a3b02c1e2cd73d3cae95440c227ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
