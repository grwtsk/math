# Verification target: GRWTSK.Algebra.LinearAlgebra.Restrict.Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "481abdc65a17ad0e2d80473e215f9ced1f7c97b9",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `481abdc65a17ad0e2d80473e215f9ced1f7c97b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean.json)

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
| 1 | `def` | [subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/subtypel--90ea4ff3662a7433938c3a18.md) | 55 | `declaration-track:90ea4ff3662a7433938c3a1805b1fd05171c15e03ca02e793c531231f8b769fe` |
| 2 | `theorem` | [toLinearMap_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/tolinearmap-subtypel--c60b59ce9df3bc10e2a8cbff.md) | 59 | `result-track:c60b59ce9df3bc10e2a8cbff7e312acd95ae503117c8a3eac1cd46476c0f12f5` |
| 3 | `theorem` | [coe_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-subtypel--dccd35fce20bffac6a31f6de.md) | 62 | `result-track:dccd35fce20bffac6a31f6deba8d80fd4392e8c0e3cc4aadce0958b724a56b5d` |
| 4 | `theorem` | [subtypeL_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/subtypel-apply--8f01961c10e756e59333bc73.md) | 67 | `result-track:8f01961c10e756e59333bc73bb4b2094c10fca0d88bd242eb16a040517e40dea` |
| 5 | `theorem` | [isEmbedding_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/isembedding-subtype--76c9b050500f33b40c213ba6.md) | 69 | `result-track:76c9b050500f33b40c213ba6ffffd77b6aafb56ef61f0cea124d9007e4657c9c` |
| 6 | `theorem` | [isEmbedding_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/isembedding-subtypel--a1103717395a370d7d56db07.md) | 70 | `result-track:a1103717395a370d7d56db070d22eb3602fa81f9a24efaa76603347d97e49837` |
| 7 | `theorem` | [isClosedEmbedding_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/isclosedembedding-subtype--c1296312509d204f10667d51.md) | 72 | `result-track:c1296312509d204f10667d51c7f0eb07f078706abc4ff634a39b76f7e63509c6` |
| 8 | `theorem` | [isClosedEmbedding_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/isclosedembedding-subtypel--767c000657dd26a23dee0ca5.md) | 74 | `result-track:767c000657dd26a23dee0ca58bd9fe90726d8a16bed74aa76a8eefff1c38c2fd` |
| 9 | `theorem` | [range_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/range-subtypel--22397d53410306193a1b21cf.md) | 78 | `result-track:22397d53410306193a1b21cf482a6bfd1cfc4e82ec14bf4def96df85b1561246` |
| 10 | `theorem` | [ker_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/ker-subtypel--4661c371562572fcb85a7b01.md) | 82 | `result-track:4661c371562572fcb85a7b017e75dfaae52047e86c3932200a9f253971c4b10b` |
| 11 | `def` | [domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/domrestrict--5480925136d4891ba95fd4de.md) | 103 | `declaration-track:5480925136d4891ba95fd4de9ff22acfeeee5fa279be80f477e1b3d816ac1e8f` |
| 12 | `theorem` | [toLinearMap_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/tolinearmap-domrestrict--92988c58780cf0abd1427d63.md) | 107 | `result-track:92988c58780cf0abd1427d63cbe9b6c9c80b9953970376fde9b8eb044b623ea4` |
| 13 | `lemma` | [coe_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-domrestrict--b5c4b989deefed1b2c6c953c.md) | 111 | `result-track:b5c4b989deefed1b2c6c953c5f731b943fd62ddd1a9d1e7bcdb5f0a5fcc11c3f` |
| 14 | `def` | [codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/codrestrict--b30c560f7d8d41df803928f3.md) | 116 | `declaration-track:b30c560f7d8d41df803928f3e49adc3318c7fd12539b7a2737760c213c1e41b9` |
| 15 | `theorem` | [toLinearMap_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/tolinearmap-codrestrict--8da103df6598cd6a19029925.md) | 122 | `result-track:8da103df6598cd6a19029925938fcde4c6cad666561d80570d6638fcd4692dd9` |
| 16 | `theorem` | [coe_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-codrestrict--9bf9256f9796873132fccc24.md) | 126 | `result-track:9bf9256f9796873132fccc24a24eba7fc431556f4c4c9681c54856998d19faec` |
| 17 | `theorem` | [coe_codRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-codrestrict-apply--41ba992f8b4cef74dd6ab211.md) | 131 | `result-track:41ba992f8b4cef74dd6ab2110df1e279f0a9824a44b7bb28a3fc6576c5822e73` |
| 18 | `theorem` | [ker_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/ker-codrestrict--66820309ecea8533097afd8e.md) | 135 | `result-track:66820309ecea8533097afd8e8a43c11b86c78a623321e32d77ffa7abcfeced48` |
| 19 | `theorem` | [subtypeL_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/subtypel-comp-codrestrict--d7b4335ed315f9423022a329.md) | 140 | `result-track:d7b4335ed315f9423022a32916bb210252a38e2ebc203ef03f4ec81c6bb935ae` |
| 20 | `theorem` | [domRestrict_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/domrestrict-comp-codrestrict--92169d524dde079772d75e5d.md) | 145 | `result-track:92169d524dde079772d75e5d40c3c73ccef4d0ebe70776204167bb338a83db44` |
| 21 | `abbrev` | [rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/rangerestrict--7bbb34841b4d55cfccca49a4.md) | 151 | `declaration-track:7bbb34841b4d55cfccca49a430f34ca44f884cae16fedde9ea7caae191bf2665` |
| 22 | `theorem` | [toLinearMap_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/tolinearmap-rangerestrict--c3b84ba41b84ceb815f3bcda.md) | 154 | `result-track:c3b84ba41b84ceb815f3bcda5b69ace2862f4e47bd514276212aa8323f4b58c8` |
| 23 | `theorem` | [coe_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-rangerestrict--85a4397216cbb193892782e9.md) | 158 | `result-track:85a4397216cbb193892782e9660e58e70a9fdc8acea848ebe280deb50c9a116e` |
| 24 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/restrict--cc3c0414c010e66456fcc2c9.md) | 162 | `declaration-track:cc3c0414c010e66456fcc2c93042f9fce4cf6a8bd19a685865c2c009891e2865` |
| 25 | `theorem` | [toLinearMap_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/tolinearmap-restrict--e5f4a4f00f5f27e58176b934.md) | 167 | `result-track:e5f4a4f00f5f27e58176b93438010adc07ab0427d9b1949f7ce04406a6da597d` |
| 26 | `theorem` | [coe_restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-restrict-apply--c0fb75d2e8c879ee266895ab.md) | 173 | `result-track:c0fb75d2e8c879ee266895ab5392a67db2887f24cf1433a837b0aaa15f414fad` |
| 27 | `theorem` | [restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/restrict-apply--8276157f089d4263db737bee.md) | 177 | `result-track:8276157f089d4263db737bee9420e0c455d3d06322f9ef393d6c290b9f4d3c2f` |
| 28 | `lemma` | [restrict_comp](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/restrict-comp--d3bf09b4754c4851f312c3c9.md) | 182 | `result-track:d3bf09b4754c4851f312c3c9913cd4ab12e75b2b5b7f48a9a8773773e3c83506` |
| 29 | `theorem` | [subtypeL_comp_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/subtypel-comp-restrict--bcb3510a5b9cb26f4550b929.md) | 188 | `result-track:bcb3510a5b9cb26f4550b9293bd93dd1f2be4a2222b682222b46ffb72388fac7` |
| 30 | `theorem` | [restrict_eq_codRestrict_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/restrict-eq-codrestrict-domrestrict--549f188998c5aff62044b55c.md) | 192 | `result-track:549f188998c5aff62044b55c6e8d7c36d3a24aac2515a7cff6b170175a315ca6` |
| 31 | `theorem` | [restrict_eq_domRestrict_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/restrict-eq-domrestrict-codrestrict--74546fcb28443b3def8792c4.md) | 197 | `result-track:74546fcb28443b3def8792c46224723b5439e87780402163b815295023f00acc` |
| 32 | `def` | [projKerOfRightInverse](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/projkerofrightinverse--501685eb27327249a2b52b7c.md) | 215 | `declaration-track:501685eb27327249a2b52b7c55018e8a49ea6f62faa7ab9ca00c70f74ae02e34` |
| 33 | `theorem` | [coe_projKerOfRightInverse_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/coe-projkerofrightinverse-apply--8eef6b4cb54605bf24e90441.md) | 220 | `result-track:8eef6b4cb54605bf24e90441ca064423da621cdfb85ec432fa228774f57e8355` |
| 34 | `theorem` | [projKerOfRightInverse_apply_idem](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/projkerofrightinverse-apply-idem--71195fd428313c1b9aebac1f.md) | 226 | `result-track:71195fd428313c1b9aebac1fc9e90d2e51b5a4357d3d1cf784818d6a9dd2cee6` |
| 35 | `theorem` | [projKerOfRightInverse_comp_inv](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variant25b48e39c69ac417a57a2cf289c25205ec161f738b4a521aa25700c067d563b5.lean/declarations/projkerofrightinverse-comp-inv--67a1f33db46bb69dc4105910.md) | 233 | `result-track:67a1f33db46bb69dc410591053c80e61c8acc1db48e780cdc3b1cdaaf756a393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
