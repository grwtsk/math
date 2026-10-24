# Verification target: GRWTSK.Algebra.Basic.Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d23c7fb20774850f2005a1a966e6e56b601f87a",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d23c7fb20774850f2005a1a966e6e56b601f87a`.

Source path: `GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exbase--53b9186bc24a7fee2c196b4a.md) | 81 | `declaration-track:53b9186bc24a7fee2c196b4ade5e1a488467e4908e9f64ba16b721b8e1ba6906` |
| 2 | `def` | [ExProd](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod--dee83a442c8650adff57c61a.md) | 83 | `declaration-track:dee83a442c8650adff57c61a2f1e2df96d09e260e647276ffe92d51e21be47ef` |
| 3 | `def` | [ExSum](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exsum--b18a23b3c5158f16f5260da4.md) | 85 | `declaration-track:b18a23b3c5158f16f5260da4fe6ce55a60c152f41b8cd54998204fb3ff7cba4b` |
| 4 | `theorem` | [cast_pos](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cast-pos--4e8f1e2ec856f915f1419295.md) | 90 | `result-track:4e8f1e2ec856f915f141929532ae92cd537dc7a9ce90f27ef0b2928581ea062e` |
| 5 | `theorem` | [cast_zero](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cast-zero--c83c6ce04707f3a923b3f5b9.md) | 93 | `result-track:c83c6ce04707f3a923b3f5b93ca14f18bcf6f7d499373315ce9485f4f2f607a5` |
| 6 | `theorem` | [cast_neg](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cast-neg--51dd439d7d384ec8c727b08c.md) | 96 | `result-track:51dd439d7d384ec8c727b08cf6a4ad3790e672957d22746fd59cf2f3bbf7046a` |
| 7 | `theorem` | [cast_nnrat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cast-nnrat--4ebf343989dc6d1730c7c714.md) | 100 | `result-track:4ebf343989dc6d1730c7c7149315658595b53104389d26be833ca896591be086` |
| 8 | `theorem` | [cast_rat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cast-rat--d3ee2f4d0d0980c9144e8a72.md) | 104 | `result-track:d3ee2f4d0d0980c9144e8a72982cdd8f25bdc766137df33cc2f3a178547e1fb9` |
| 9 | `def` | [ExProd.mkNat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-mknat--cfd6d69fb51752d7287a4030.md) | 115 | `declaration-track:cfd6d69fb51752d7287a403035ded223ee9d4c0f05446b9ec1819bd8da95ffda` |
| 10 | `def` | [ExProd.mkNegNat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-mknegnat--c9094badbea3a31b90ff42dd.md) | 123 | `declaration-track:c9094badbea3a31b90ff42dd923be1189f5baf34f5626b60c24d62901f6800ce` |
| 11 | `def` | [ExProd.mkNNRat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-mknnrat--e676ee1a5e21538e95d7ed90.md) | 132 | `declaration-track:e676ee1a5e21538e95d7ed909bcf8eadfaad8fea928bbcc1e1f78581ffe8377b` |
| 12 | `def` | [ExProd.mkNegNNRat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-mknegnnrat--3bebb83cc64dafe9bea74d70.md) | 141 | `declaration-track:3bebb83cc64dafe9bea74d703ff72b43b25b05e3c44f3e521fbd1074bfdbe12a` |
| 13 | `def` | [evalCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/evalcast--7550f7ce9fe8e89884ad671f.md) | 154 | `declaration-track:7550f7ce9fe8e89884ad671fc5aa7467998c977e8d50e9e6d3b52d1b0a874dc1` |
| 14 | `theorem` | [natCast_nat](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/natcast-nat--2494b09a59ace4caed16d997.md) | 180 | `result-track:2494b09a59ace4caed16d9979db461b6e95c336670fd35d6c466e2ff52deb50d` |
| 15 | `theorem` | [natCast_mul](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/natcast-mul--442d73d7133f59a6191e0b97.md) | 182 | `result-track:442d73d7133f59a6191e0b97376c1327967291ff30c445f7192efab73f3c9a5f` |
| 16 | `theorem` | [natCast_zero](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/natcast-zero--d689fed21e88fc701d5cc4dc.md) | 186 | `result-track:d689fed21e88fc701d5cc4dc289cdc122e7e0cff127c3469bd8bddb356e63c34` |
| 17 | `theorem` | [natCast_add](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/natcast-add--93d934e6c5a17088e9a5b7f6.md) | 188 | `result-track:93d934e6c5a17088e9a5b7f620f522ab96fcd5790afcebd3b694901024b6b9f4` |
| 18 | `def` | [ExBase.evalNatCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exbase-evalnatcast--c38874b5ce9da90769cd66b3.md) | 202 | `declaration-track:c38874b5ce9da90769cd66b3b8ad053dde525a96d8491dffe38d5356c05b2cbc` |
| 19 | `def` | [ExProd.evalNatCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-evalnatcast--6520f86bc881fdbada8ed58c.md) | 216 | `declaration-track:6520f86bc881fdbada8ed58c523051bc56fbf8758e046261e718d690723d52f9` |
| 20 | `def` | [ExSum.evalNatCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exsum-evalnatcast--096303899f4022a4c9c874a6.md) | 233 | `declaration-track:096303899f4022a4c9c874a6e8ae82d1894636fe9087deccbd8971ed0d605aac` |
| 21 | `theorem` | [natCast_int](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/natcast-int--decd526392e3b1d8c1b9bfa8.md) | 246 | `result-track:decd526392e3b1d8c1b9bfa86be7cb8f7e864f2d1f3de4447e9b6c9abc315d8d` |
| 22 | `theorem` | [intCast_negOfNat_Int](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/intcast-negofnat-int--afc0e2102ed73fbd113a4a4e.md) | 248 | `result-track:afc0e2102ed73fbd113a4a4ee22e9e857b2d7b10e729ed9117936c5d5e0d1209` |
| 23 | `theorem` | [intCast_mul](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/intcast-mul--11dea9f369bdca6048efbcfe.md) | 251 | `result-track:11dea9f369bdca6048efbcfe25d287b667a25708eda1406213d73995c4517bd9` |
| 24 | `theorem` | [intCast_zero](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/intcast-zero--7b0b637c41a4e04efedb8760.md) | 255 | `result-track:7b0b637c41a4e04efedb8760f22bfe497720eb15866f68d793ddeb13868988c8` |
| 25 | `theorem` | [intCast_add](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/intcast-add--9fbe9f671af6e2b2ac66a496.md) | 257 | `result-track:9fbe9f671af6e2b2ac66a496f2c3754b1fc1a5bbf567debd980be08ee52b3233` |
| 26 | `def` | [ExBase.evalIntCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exbase-evalintcast--25272d8b57ae0a4d218ea9e3.md) | 272 | `declaration-track:25272d8b57ae0a4d218ea9e375741460f1be1a93204a2c50beb9f81b03f6ffe3` |
| 27 | `def` | [ExProd.evalIntCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-evalintcast--d80e5b0d3955eef19ed956bc.md) | 289 | `declaration-track:d80e5b0d3955eef19ed956bce194edb4e16921a8b9f7c211bb949246873b5e9d` |
| 28 | `def` | [ExSum.evalIntCast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exsum-evalintcast--00aced231bc2afd218ad0b3b.md) | 310 | `declaration-track:00aced231bc2afd218ad0b3b5c31bbe584e716aea252b554405f3d35767b3e8d` |
| 29 | `def` | [ExBase.cast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exbase-cast--3f2c62ce1421585af0f71b4c.md) | 329 | `declaration-track:3f2c62ce1421585af0f71b4cacbdeee0220c9dd50ece0510fd1fcaa6bc79f468` |
| 30 | `def` | [ExProd.cast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exprod-cast--1332a8ab74183878a0c33a3a.md) | 336 | `declaration-track:1332a8ab74183878a0c33a3ae6df138ab5a6bb338e6e4dcf2cfc553bc4837468` |
| 31 | `def` | [ExSum.cast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/exsum-cast--8ad9946320a5720a94c5b876.md) | 343 | `declaration-track:8ad9946320a5720a94c5b876be8defeffbb70d1304bc42aff382895f80b7c5bf` |
| 32 | `lemma` | [smul_eq_mul](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/smul-eq-mul--250b3086dd24d186fd982a68.md) | 351 | `result-track:250b3086dd24d186fd982a681e0273fd448390b280a95b3b9599e63e3380f6f8` |
| 33 | `theorem` | [Nat.smul_eq_mul](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/nat-smul-eq-mul--86ba1ad82e4fea019c2ad8c5.md) | 355 | `result-track:86ba1ad82e4fea019c2ad8c5bbeaadfa6e56b38937762d3bb55f3aead5d782e9` |
| 34 | `theorem` | [Int.smul_eq_mul](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/int-smul-eq-mul--7c2abdf214a34d64cc04ae4b.md) | 359 | `result-track:7c2abdf214a34d64cc04ae4b114343b7f70439506525e40e5303dbfc3b1c7197` |
| 35 | `def` | [RatCoeff.toResult](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/ratcoeff-toresult--4e65795052edf12ed3906e14.md) | 365 | `declaration-track:4e65795052edf12ed3906e14db7623ad603e8030fdfe27c9e1eb101104d9b6f4` |
| 36 | `def` | [RatCoeff.ofResult](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/ratcoeff-ofresult--3ded61150bb7742e72365f12.md) | 369 | `declaration-track:3ded61150bb7742e72365f12b2f065ba62b5699088998a5058cd100ad77b38f6` |
| 37 | `def` | [add](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/add--eba4efb03de23d59f228e95d.md) | 378 | `declaration-track:eba4efb03de23d59f228e95dea727f720317a87674bad467f4c7bbda96ebae2b` |
| 38 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/mul--7e07441182bafefc7fd2161b.md) | 393 | `declaration-track:7e07441182bafefc7fd2161b456826567d88deb217d060b3d9b81f5b162e444a` |
| 39 | `def` | [cast](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cast--825108095fc4c318b22c9ee6.md) | 400 | `declaration-track:825108095fc4c318b22c9ee611361e1a177682b48279654f76eb6bec0cee72d5` |
| 40 | `def` | [neg](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/neg--de85b9dc19cf1828a2074570.md) | 427 | `declaration-track:de85b9dc19cf1828a2074570233a0dc1ae8ef9bf1e773fdfa0b7de743a0b7ba5` |
| 41 | `def` | [pow](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/pow--9f8990e07e85e2958b6fc7dd.md) | 438 | `declaration-track:9f8990e07e85e2958b6fc7ddf03cd35ee0ef8ba472f9673fa4c4041580650abe` |
| 42 | `def` | [inv](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/inv--b14e6e605c8cece062fbe670.md) | 456 | `declaration-track:b14e6e605c8cece062fbe670758863a400b9aabcd1719a1c343694abe3d425a1` |
| 43 | `def` | [derive](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/derive--20b0a903f57c2c09f3acb97e.md) | 466 | `declaration-track:20b0a903f57c2c09f3acb97e5514bc22fcf173ae14f33bffbaba25d892b76d08` |
| 44 | `def` | [isOne](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/isone--c3990b04cd77351b09bee4b6.md) | 473 | `declaration-track:c3990b04cd77351b09bee4b6ff8d1a06cb53761a4ea0e83e2ec1e73d9900ad14` |
| 45 | `def` | [_root_.Mathlib.Tactic.Ring.ringCompare](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/root-mathlib-tactic-ring-ringcompare--f663172d5e153ef13e714b16.md) | 484 | `declaration-track:f663172d5e153ef13e714b1645557a68a3e6c07eb3935e5fff92787595d26af0` |
| 46 | `def` | [_root_.Mathlib.Tactic.Ring.ringCompute](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/root-mathlib-tactic-ring-ringcompute--d804b479369c3590b842000c.md) | 490 | `declaration-track:d804b479369c3590b842000c32fd193ec5b305329413f888681c42bd467339e2` |
| 47 | `def` | [rcℕ](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/rc--805770b552baf60ac22b6c9d.md) | 509 | `declaration-track:805770b552baf60ac22b6c9d59bc894a93b687e6db1d5fa6dff3dabc58f1e356` |
| 48 | `class` | [CSLift](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/cslift--994437de6217cdec7a80d09b.md) | 516 | `declaration-track:994437de6217cdec7a80d09b71e74782e4654ecf8bce85a17a712d6241a19768` |
| 49 | `class` | [CSLiftVal](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/csliftval--7a4b393979a52c669aa0095c.md) | 524 | `declaration-track:7a4b393979a52c669aa0095c7ab72b6151f6feb38aa0767e09eece8186e30e91` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/instance--9fb6ef75854f6c23b6f5f6a9.md) | 530 | `declaration-track:9fb6ef75854f6c23b6f5f6a913df6bc2b9db99d34b28db68d3fd45b12690dbf9` |
| 51 | `theorem` | [of_lift](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/of-lift--1aa62b6f20120b551f050ba0.md) | 532 | `result-track:1aa62b6f20120b551f050ba04598205bb856d6b621726ff53df872e6467a7184` |
| 52 | `theorem` | [of_eq](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/of-eq--7f2e66a6ad64c4e2ccd28cae.md) | 538 | `result-track:7f2e66a6ad64c4e2ccd28caefa7979f0d1d19955c775c0adf6819dac3132a202` |
| 53 | `initialize` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/initialize--533cda1026f809df5478cecb.md) | 545 | `declaration-track:533cda1026f809df5478cecb43a3d49f5ef71f9c8d32aaa3533450716e3b3d88` |
| 54 | `def` | [proveEq](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/proveeq--44a6b298ba882a008e0cf8d5.md) | 548 | `declaration-track:44a6b298ba882a008e0cf8d5b278070ad09f6ca016decee096f93e54825ad5d7` |
| 55 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/elab--9200fe4d8067f2edbc443b26.md) | 596 | `declaration-track:9200fe4d8067f2edbc443b267b33fbb71adb7be00671e8906dce7430d1565c3a` |
| 56 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/declarations/macro--6e83932dd409e71e9818f596.md) | 599 | `declaration-track:6e83932dd409e71e9818f5966254266e3435b6027f9d13b7abe394255d2cff32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
