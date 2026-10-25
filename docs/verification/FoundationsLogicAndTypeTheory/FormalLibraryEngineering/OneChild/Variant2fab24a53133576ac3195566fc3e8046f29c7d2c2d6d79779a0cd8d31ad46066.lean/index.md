# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OneChild.Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Interface` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/bits--c2a8b78207c5a0b11138d84d.md) | 34 | `declaration-track:c2a8b78207c5a0b11138d84da7beb87c6a44b1e585a14bac46fbb0e80ac2e91e` |
| 2 | `def` | [extendBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/extendbit--594651924841f4f56eae43ff.md) | 37 | `declaration-track:594651924841f4f56eae43ff4c9aaf85a562c88d041da4291c2748f617e6c45d` |
| 3 | `def` | [head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head--1e7090fb1705a8b34743a637.md) | 42 | `declaration-track:1e7090fb1705a8b34743a637659a556b9f5b07f23872135b0d800af806948f4f` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval--f1fab5c391481cb6b2aaece2.md) | 50 | `declaration-track:f1fab5c391481cb6b2aaece2d9b85219de844cdefc595ad51eb386cc31065213` |
| 5 | `theorem` | [head_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head-rename--253f3aec941c9b640c17b9e3.md) | 62 | `result-track:253f3aec941c9b640c17b9e37be6123b105165f8578ee2bb6a938d957963e578` |
| 6 | `theorem` | [head_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head-subst--90ebda5d1ec636fb246ec0d0.md) | 72 | `result-track:90ebda5d1ec636fb246ec0d006d1c313c22d3119d4906cb705b442357067e23b` |
| 7 | `theorem` | [head_beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head-beta--25a036e65510d5d92a616b58.md) | 82 | `result-track:25a036e65510d5d92a616b580f5df0dfd76fcb4dc83ff51a6e57c040d36ce078` |
| 8 | `theorem` | [head_reduces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head-reduces--f552266b4b1803e88c93114a.md) | 94 | `result-track:f552266b4b1803e88c93114a5eb5c9618c973adbcdb70a67dc00e44abb2cb59c` |
| 9 | `theorem` | [head_normalForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head-normalform--dfe3dc84f5183cdf308f2038.md) | 101 | `result-track:dfe3dc84f5183cdf308f2038dfc7688ad6b1fc65d4df4ec76068be9ed9654a90` |
| 10 | `theorem` | [eval_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-pi--d375b6775bce751a8c390e4e.md) | 105 | `result-track:d375b6775bce751a8c390e4e1615e2197938d8b6c9f4d60ec88f212bf2680c37` |
| 11 | `theorem` | [eval_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-head--4206c6f865289700a8d7860a.md) | 113 | `result-track:4206c6f865289700a8d7860a659861af87f4486e53224b605c5692353bc2d632` |
| 12 | `theorem` | [eval_sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-sort--9e828696940bbebe745d802f.md) | 121 | `result-track:9e828696940bbebe745d802faf2073cb8c43be8672e5e1dd451e446ecf274a0b` |
| 13 | `theorem` | [eval_candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-candidate--579383c3e8bd94c3f801c8a4.md) | 129 | `result-track:579383c3e8bd94c3f801c8a4217ca7727c711535c3eb5b7389ac57637633386f` |
| 14 | `theorem` | [eval_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-outside--4173d8ffa9e97d5cfa347c0e.md) | 166 | `result-track:4173d8ffa9e97d5cfa347c0e78cae0982fa6c8dfecb7e51238b8155c05e2a58a` |
| 15 | `def` | [dropSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/dropsupport--929d0527949bf215fa5eeb60.md) | 174 | `declaration-track:929d0527949bf215fa5eeb604b4019077ccd0aa57bd3e1c597c181410d8f8892` |
| 16 | `def` | [flipSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/flipsupport--07379668f82294aeb7013f64.md) | 180 | `declaration-track:07379668f82294aeb7013f64312701c371855579900944d2a54736ad97b6c58f` |
| 17 | `def` | [support](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/support--e8166d40f779d127b0363ffb.md) | 184 | `declaration-track:e8166d40f779d127b0363ffbbfe6ac134cfbad1f3c137981899feba5ec735401` |
| 18 | `structure` | [Environment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/environment--3da9f54c17b8e5bea972d5aa.md) | 193 | `declaration-track:3da9f54c17b8e5bea972d5aaa33b48d1df363461120cbae2f1e0fd958c514d3f` |
| 19 | `def` | [R](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/r--62247fb8db61c4c7d90de4b4.md) | 199 | `declaration-track:62247fb8db61c4c7d90de4b46b2ee4c849334c210d68b2b5b14ce1c3c9118b37` |
| 20 | `theorem` | [normal_subst_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/normal-subst-eq--7ac200f711b25c0bccda8221.md) | 203 | `result-track:7ac200f711b25c0bccda8221152487f44717e8e8288dc86e09c39b9135d998c4` |
| 21 | `theorem` | [R_candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/r-candidate--f83db3788af398ca4b2cc545.md) | 214 | `result-track:f83db3788af398ca4b2cc545ce9d6801671438d78756756decff351c565a66cf` |
| 22 | `theorem` | [R_conversion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/r-conversion--e2ddcd04892902f698602be9.md) | 223 | `result-track:e2ddcd04892902f698602be9b279ff5accb48418ab4d7f4dbc108ee44016ff53` |
| 23 | `theorem` | [eval_recontext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-recontext--6618f6bd04160f400abab3b3.md) | 237 | `result-track:6618f6bd04160f400abab3b3669dce01d7ecc043a9a260836576c6786585c005` |
| 24 | `theorem` | [eval_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/eval-rename--740e6a247e89ffe52229fa93.md) | 260 | `result-track:740e6a247e89ffe52229fa9334ad8cc890ea6edfbca3b6fbf40ddd6b87796d1b` |
| 25 | `def` | [Ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/ext--c75b06e569c8f9ef48b22c8f.md) | 313 | `declaration-track:c75b06e569c8f9ef48b22c8f5e36e68cf489dd49b9eff446e5d2ce1b446258d4` |
| 26 | `theorem` | [R_sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/r-sort--60c1e4de74e95212a96cd3ca.md) | 319 | `result-track:60c1e4de74e95212a96cd3ca4995edd46f465bf746f706ab9c7f87e839bfe939` |
| 27 | `theorem` | [R_weakening](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/r-weakening--fea3c14c4fed817e0b3a7b12.md) | 325 | `result-track:fea3c14c4fed817e0b3a7b125a7e3eaf5d85cb1d5490b47e5c95c20f08992de8` |
| 28 | `theorem` | [normal_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/normal-product--1bcb41ece1958d8054dafab1.md) | 348 | `result-track:1bcb41ece1958d8054dafab18868bb94c9e126bc55a7e355e32865180d7012cb` |
| 29 | `theorem` | [R_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/r-outside--b7165ec9c94ad6f682a0f3ba.md) | 382 | `result-track:b7165ec9c94ad6f682a0f3ba0c4a72afdfd85947af9e9af526a69142831bea1e` |
| 30 | `theorem` | [product_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/product-iff--8d67e4b42167bcc6fed26b79.md) | 394 | `result-track:8d67e4b42167bcc6fed26b794a488fc53299920cb71b3562231da3c923114c39` |
| 31 | `def` | [CompatibleBits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/compatiblebits--656309a728fa4d6235302561.md) | 431 | `declaration-track:656309a728fa4d623530256156eedc6b5f055d51616f03583a5c194188b1e74f` |
| 32 | `def` | [Below](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/below--7f4d7d88a0c6845bcef374de.md) | 435 | `declaration-track:7f4d7d88a0c6845bcef374de58b91ef628ffcb2fef3b2fa4126dfef25a27316b` |
| 33 | `theorem` | [support_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/support-outside--9d5f14665e609eddca41b9b9.md) | 438 | `result-track:9d5f14665e609eddca41b9b9c3403bc017cd6ac6d0b1605e09ee66d548046859` |
| 34 | `theorem` | [support_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/support-head--d403b15557d7fe31af020c54.md) | 442 | `result-track:d403b15557d7fe31af020c540f9ed3d314601c578f442582c51993ba3dcc720a` |
| 35 | `theorem` | [bits_domain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/bits-domain--2e5612be3a077898a8ef9614.md) | 448 | `result-track:2e5612be3a077898a8ef9614c558e967799099b33ea433a48e3d242755cf3797` |
| 36 | `theorem` | [bits_body](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/bits-body--cdbf44bee4177a8fe05e3d35.md) | 465 | `result-track:cdbf44bee4177a8fe05e3d359731bb602e9ddd380ab981b598e42e43d285875b` |
| 37 | `def` | [chosenBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/chosenbit--15414c676c9384e246a834fc.md) | 489 | `declaration-track:15414c676c9384e246a834fce3d2a8b93a9b5ae962a6c1a4232bee9fa6bc874d` |
| 38 | `theorem` | [bits_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/bits-single--26e62bf30c320976310869eb.md) | 495 | `result-track:26e62bf30c320976310869eb652c423ee24ea3d8938a6e2bfa51a2d85471c0ca` |
| 39 | `theorem` | [subst_profile_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/subst-profile-path--a6b814ae780907f339f5cb4a.md) | 515 | `result-track:a6b814ae780907f339f5cb4ade8ebd12e52e5a09c57ede5528c39c13095b901a` |
| 40 | `theorem` | [neutral_compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/neutral-compare--fa61d17fc621ecc8169e07a8.md) | 526 | `result-track:fa61d17fc621ecc8169e07a8daa0d8143d6d14714e78b61a135a1cc9b23efb4a` |
| 41 | `theorem` | [head_apps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/head-apps--a274d0807c81c9feae33ccd5.md) | 562 | `result-track:a274d0807c81c9feae33ccd545804ae9af72b98f086fb3da3a865c5e6bdefe4a` |
| 42 | `theorem` | [normal_app_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/normal-app-head--fe7a1a967acf1786b85d5e49.md) | 569 | `result-track:fe7a1a967acf1786b85d5e49a31200659c397fcad11234e6110d67f6b1705534` |
| 43 | `theorem` | [compare_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/compare-subst--36df8af394e946b2c89f5a06.md) | 588 | `result-track:36df8af394e946b2c89f5a061e29546c7538108ab30ddfaafba1c978b3cef501` |
| 44 | `theorem` | [specialization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/specialization--1dea47a260521c2c31031c4e.md) | 747 | `result-track:1dea47a260521c2c31031c4e28450c123a7e74ea88096e64ec0c32790aa2c9ae` |
| 45 | `def` | [componentInterface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/declarations/componentinterface--3ae1740bf6f4ec23b152d427.md) | 776 | `declaration-track:3ae1740bf6f4ec23b152d42711001cece25e68b8021952b755d815a3caf3b4fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
