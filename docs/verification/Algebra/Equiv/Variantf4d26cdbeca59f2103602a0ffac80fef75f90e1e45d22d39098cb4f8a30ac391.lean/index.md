# Verification target: GRWTSK.Algebra.Equiv.Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "252a202da9817927ff690f004427d7e619f7f659",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/index.md) · [Full source](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `252a202da9817927ff690f004427d7e619f7f659`.

Source path: `GRWTSK/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/bialgequiv--ec1139903a61024554d459d1.md) | 31 | `declaration-track:ec1139903a61024554d459d128a4bc2e2d1356788917a014809adbed041fc98a` |
| 2 | `class` | [BialgEquivClass](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/bialgequivclass--ead7cc4c6ed2c0f9ce650882.md) | 43 | `declaration-track:ead7cc4c6ed2c0f9ce650882f62551d496592fb53911330fdf82502d7a7f13df` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/instance--12d191cf83cc7598d3d1e2cc.md) | 54 | `declaration-track:12d191cf83cc7598d3d1e2cc2bf156ed4dd9a00fb1ca0314dc5fb7d28a492df6` |
| 4 | `def` | [toBialgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tobialgequiv--4530a8c1a9137aed2b29c252.md) | 64 | `declaration-track:4530a8c1a9137aed2b29c252ad7f0a031e14ad8fa2afe60e7fde48bd25bb56fe` |
| 5 | `instance` | [instCoeToBialgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/instcoetobialgequiv--d3bb09810298b79b8514853b.md) | 68 | `declaration-track:d3bb09810298b79b8514853b2483c2810e2728fd96d8886f36ea5d1516aecef4` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/instance--b1c6c35f0b03e0bd439e326c.md) | 71 | `declaration-track:b1c6c35f0b03e0bd439e326c1cfb8164e555bb04878c22d4dfce44d6cb96cb57` |
| 7 | `def` | [toBialgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tobialghom--317155e40badab70dac0bdd4.md) | 88 | `declaration-track:317155e40badab70dac0bdd4a7d74469367df7941354bce286989a728e706242` |
| 8 | `def` | [toAlgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/toalgequiv--e5b028ab10d123d72395531a.md) | 94 | `declaration-track:e5b028ab10d123d72395531a5718c8fb5610ef8b799aadeb7a2c5fad938457e4` |
| 9 | `def` | [toEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/toequiv--2fad4c40e815c41ff4b4262b.md) | 101 | `declaration-track:2fad4c40e815c41ff4b4262bc02744212133358afd9c97636ac3329cfc213e78` |
| 10 | `theorem` | [toEquiv_injective](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/toequiv-injective--92df6d62aafd16154b41379e.md) | 103 | `result-track:92df6d62aafd16154b41379e984e673e94e4c408ce4acb950f721915d4778583` |
| 11 | `theorem` | [toEquiv_inj](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/toequiv-inj--00ca1088f5b1c8e9a532fc7b.md) | 108 | `result-track:00ca1088f5b1c8e9a532fc7bbf0dec71cf379358a5174e9652e7f1fce3aa8d7e` |
| 12 | `theorem` | [toBialgHom_injective](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tobialghom-injective--125272cd6510ff0d478efffa.md) | 111 | `result-track:125272cd6510ff0d478efffa09f010cd0841a860a191c2daedba355599b5552a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/instance--f4f172abdb32477afa046b08.md) | 114 | `declaration-track:f4f172abdb32477afa046b08438a24b3b2f5d347db70241bc2ca8d1f9082ff93` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/instance--9bb5fe698d7ace6fff271c7f.md) | 121 | `declaration-track:9bb5fe698d7ace6fff271c7f361f400211878c57b53886e3bb7c224b475a1a8c` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/instance--7c82951438a13edc6b4305c7.md) | 125 | `declaration-track:7c82951438a13edc6b4305c7f70818dd6555aadf6f58bc66a3ae1e718f5e0cd3` |
| 16 | `theorem` | [toBialgHom_inj](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tobialghom-inj--a1206128ad281ce671609bd1.md) | 133 | `result-track:a1206128ad281ce671609bd12539af96bd36db27017a890f5a7097f343fbf873` |
| 17 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-mk--913f697828b0395cc62421f8.md) | 137 | `result-track:913f697828b0395cc62421f8b88cd0ac70915dc81566afde3b6de37808eca3b0` |
| 18 | `theorem` | [coe_coe](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-coe--40c2aa8f86f9cb8eded65d13.md) | 150 | `result-track:40c2aa8f86f9cb8eded65d13cde51a0eb93102b93c9822026543e07e0cb4f324` |
| 19 | `theorem` | [toCoalgEquiv_eq_coe](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tocoalgequiv-eq-coe--d2bd5cf331a38e639a5977bd.md) | 154 | `result-track:d2bd5cf331a38e639a5977bdc22efe3183f6a5de8884cb16482d80582d55275a` |
| 20 | `theorem` | [toBialgHom_eq_coe](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tobialghom-eq-coe--8f9bf7e07d04b93cc4708933.md) | 158 | `result-track:8f9bf7e07d04b93cc4708933b42a429b7078a74aa49c2e767624bf0b2ac2008d` |
| 21 | `theorem` | [toAlgEquiv_eq_coe](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/toalgequiv-eq-coe--d4116d7ac3c187538e233e99.md) | 162 | `result-track:d4116d7ac3c187538e233e991d3a2e174c4deefd82c3b67f9c91b38514d0196a` |
| 22 | `theorem` | [coe_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-tocoalgequiv--d5dcfb2e8ea3104342d996c5.md) | 166 | `result-track:d5dcfb2e8ea3104342d996c505027796d81873c0fc505e00ad30d89acae72a77` |
| 23 | `theorem` | [coe_toBialgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-tobialghom--f9d2dd6e3d4e6b343afc280d.md) | 170 | `result-track:f9d2dd6e3d4e6b343afc280d37bad0eb8cbb3f30723bd06faaaef2ba7f8a4ed8` |
| 24 | `theorem` | [coe_toAlgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-toalgequiv--007b1c577aba9acbd4508d47.md) | 174 | `result-track:007b1c577aba9acbd4508d47824d9238d1e6cc0a6f6e953139f98f909c466785` |
| 25 | `theorem` | [toCoalgEquiv_toCoalgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tocoalgequiv-tocoalghom--caefdcb364cebbf24630f1c1.md) | 177 | `result-track:caefdcb364cebbf24630f1c1ed697a394570346e4abc0f9de2d14b863312ec2d` |
| 26 | `theorem` | [toBialgHom_toAlgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/tobialghom-toalghom--e2dfc63e4e9eef135afdb63f.md) | 180 | `result-track:e2dfc63e4e9eef135afdb63fe1779e1be8de055e26267e54fb09da4190ae0420` |
| 27 | `theorem` | [ext](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/ext--c640d4ebb968fc86d4ab2aa5.md) | 187 | `result-track:c640d4ebb968fc86d4ab2aa581b156588304652c5ab00791ead94e76de19dc63` |
| 28 | `theorem` | [congr_arg](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/congr-arg--887eff42e8f548a1d41d48bb.md) | 190 | `result-track:887eff42e8f548a1d41d48bb7ef2b3107c1836adfbb0c70eeb7f6e9b40fb6446` |
| 29 | `theorem` | [congr_fun](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/congr-fun--14df6526010e67248ededd1e.md) | 193 | `result-track:14df6526010e67248ededd1e3225813b20c0211395cb6b25aedeaa1d3419fe92` |
| 30 | `def` | [Simps.apply](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/simps-apply--dbc7f81ff55be516c2ceb422.md) | 199 | `declaration-track:dbc7f81ff55be516c2ceb422421f13efd1e4b4d3cb0832dfaf823d7dd2c49990` |
| 31 | `def` | [Simps.symm_apply](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/simps-symm-apply--ccc6aa540ff6308dc18ef813.md) | 205 | `declaration-track:ccc6aa540ff6308dc18ef813cf7f28590e3d4af88e4ca998327d0046776ab79e` |
| 32 | `def` | [refl](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/refl--5d8722c32dcb5fe1a72e0b4e.md) | 216 | `declaration-track:5d8722c32dcb5fe1a72e0b4e95e0cbf4e6ecc0fc4ca403f851cf6d52553fddc2` |
| 33 | `theorem` | [refl_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/refl-tocoalgequiv--424035d36a63c8eec2aca4f4.md) | 220 | `result-track:424035d36a63c8eec2aca4f4f9193cad60af28690d313a7f23bbfa21335dbb6d` |
| 34 | `theorem` | [refl_toBialgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/refl-tobialghom--709507a686a501e66c3e4d85.md) | 223 | `result-track:709507a686a501e66c3e4d855dbe03319bd3c50c9a0aff9be9b950ae757ec65a` |
| 35 | `def` | [symm](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/symm--156d63ec03fdefeade83c733.md) | 228 | `declaration-track:156d63ec03fdefeade83c7331b546f865fd3ff1d85308b3f2105b3718c363063` |
| 36 | `theorem` | [symm_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/symm-tocoalgequiv--354e689d68c3ef1b98468b39.md) | 232 | `result-track:354e689d68c3ef1b98468b393aa7d8c69379369048f3418b5b4ce37fb44a8c22` |
| 37 | `theorem` | [invFun_eq_symm](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/invfun-eq-symm--baa04a242479e269a8651766.md) | 235 | `result-track:baa04a242479e269a8651766e4faf0137158fd3db039b1637bd7e1e2dcd2176e` |
| 38 | `theorem` | [coe_toEquiv_symm](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-toequiv-symm--4fe7cd7be13be7096d23f45b.md) | 239 | `result-track:4fe7cd7be13be7096d23f45b648c767f53ed11c042747168eea72c12eac417a9` |
| 39 | `def` | [trans](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/trans--9fbdc3a322b3a083f564e3f5.md) | 246 | `declaration-track:9fbdc3a322b3a083f564e3f5407dee77b534be80ec71e06d24e888a6f8c796ea` |
| 40 | `theorem` | [trans_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/trans-tocoalgequiv--ad845c0c844fa5ef524a3c91.md) | 250 | `result-track:ad845c0c844fa5ef524a3c91d6919ca35a0958d0435f86d1e01f989e1b87b91b` |
| 41 | `theorem` | [trans_toBialgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/trans-tobialghom--fbb7796f4b7cdf7ecfcedd81.md) | 254 | `result-track:fbb7796f4b7cdf7ecfcedd81864ee6991df7290f762cc8f1f4bb0e570a1a4eb0` |
| 42 | `theorem` | [coe_toEquiv_trans](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-toequiv-trans--514a1889b0485aeb024297d6.md) | 258 | `result-track:514a1889b0485aeb024297d66c620d5ec652520c9317c2d096cf6d68d7a2d049` |
| 43 | `def` | [ofBialgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/ofbialghom--e736ce45687c0e3cbaf63cfe.md) | 262 | `declaration-track:e736ce45687c0e3cbaf63cfe857c843ddf3c850c8c7208b7b1dac63f6c558a44` |
| 44 | `theorem` | [coe_ofBialgHom](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-ofbialghom--aa6f606a8b7d43b88493522e.md) | 271 | `result-track:aa6f606a8b7d43b88493522ea8ceeac422713024928a1f87456c9e2a6acd7d53` |
| 45 | `theorem` | [ofBialgHom_symm](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/ofbialghom-symm--abc80f177e05d052dab1cf89.md) | 275 | `result-track:abc80f177e05d052dab1cf89a58710e57d8902a0aed6963475df6aad82578006` |
| 46 | `def` | [ofBijective](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/ofbijective--ba5e9a6d936c301807059c67.md) | 283 | `declaration-track:ba5e9a6d936c301807059c67c4040099abf4efad352dbe3428874506112c48a7` |
| 47 | `theorem` | [coe_ofBijective](../../../../mathematics/Algebra/Equiv/Variantf4d26cdbeca59f2103602a0ffac80fef75f90e1e45d22d39098cb4f8a30ac391.lean/declarations/coe-ofbijective--590a883dfe9e854dc2292ee8.md) | 289 | `result-track:590a883dfe9e854dc2292ee88da07f4c266499cd26761ba9b0ab14aaec7d10fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
