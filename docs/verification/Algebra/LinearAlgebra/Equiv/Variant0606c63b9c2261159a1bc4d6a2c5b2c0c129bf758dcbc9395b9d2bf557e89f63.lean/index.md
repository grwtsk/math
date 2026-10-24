# Verification target: GRWTSK.Algebra.LinearAlgebra.Equiv.Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d86d09e0e856990c148bc310d959e0b7f5b52f6",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d86d09e0e856990c148bc310d959e0b7f5b52f6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Range` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofEq](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofeq--65ff336b9270c9a463f77178.md) | 43 | `declaration-track:65ff336b9270c9a463f771786550042200faf2402c7789290e0282e7c58df2f6` |
| 2 | `theorem` | [coe_ofEq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/coe-ofeq-apply--f6937881d60b11d95d8ac81f.md) | 51 | `result-track:f6937881d60b11d95d8ac81f8855a3227e3e0350393f88523fb4e98951b4a3f4` |
| 3 | `theorem` | [ofEq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofeq-symm--36f9dbad4a1508a17d54e7e0.md) | 55 | `result-track:36f9dbad4a1508a17d54e7e0250f31b9b7a895efe0e042ac9e153e02a9cb3764` |
| 4 | `theorem` | [ofEq_rfl](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofeq-rfl--7c0510e9aca0dfb77274bee0.md) | 59 | `result-track:7c0510e9aca0dfb77274bee01e206a25cc770021aa12dfbe71a4947456913871` |
| 5 | `def` | [ofSubmodules](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodules--0e797227f85297373de65639.md) | 63 | `declaration-track:0e797227f85297373de6563905c72cc09eb5c53e16e6cd953f3b6d05bc182b4b` |
| 6 | `theorem` | [ofSubmodules_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodules-apply--f805e48d5eeb0041d1e8e29b.md) | 68 | `result-track:f805e48d5eeb0041d1e8e29b708064a7c8c369f97e66866703bfa2602e27e990` |
| 7 | `theorem` | [ofSubmodules_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodules-symm-apply--a827ce08fc76afa914736d9d.md) | 73 | `result-track:a827ce08fc76afa914736d9d108e0cf1749a9552187ac6f9372159f2b395ab9f` |
| 8 | `def` | [ofSubmodule'](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodule--c2e6205fcb128d9150298d46.md) | 81 | `declaration-track:c2e6205fcb128d9150298d461b540e5aa7ac18a08b310523a0ba6c500bafcdab` |
| 9 | `theorem` | [ofSubmodule'_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodule-tolinearmap--6b5a5a68effc0c74ef3980ec.md) | 85 | `result-track:6b5a5a68effc0c74ef3980ecba835f4433d86be8af3c9b269a7846574249a0e4` |
| 10 | `theorem` | [ofSubmodule'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodule-apply--e774fce778debc869ad025d7.md) | 92 | `result-track:e774fce778debc869ad025d7a75bbc544bca54366f5c6f9c43724e606499c212` |
| 11 | `theorem` | [ofSubmodule'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofsubmodule-symm-apply--44162f0e032d507ce0773349.md) | 97 | `result-track:44162f0e032d507ce0773349304a1c2770c82a732a948a64674ed1cc4e5c3fc5` |
| 12 | `def` | [ofTop](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/oftop--cb1d4f4322b21e1dafe3e9be.md) | 104 | `declaration-track:cb1d4f4322b21e1dafe3e9bed8b7b7eacbd39fd5ffd84a69017b7d307bf3f117` |
| 13 | `theorem` | [ofTop_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/oftop-apply--d124f68484bbfbc0164db1f7.md) | 111 | `result-track:d124f68484bbfbc0164db1f7c8e1e16ad41ef4220376196a907f51db90528b47` |
| 14 | `theorem` | [coe_ofTop_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/coe-oftop-symm-apply--c469a145484b99319c53c507.md) | 115 | `result-track:c469a145484b99319c53c50743904b8cf7bf357d7b8c53570c450913d11b1f7d` |
| 15 | `theorem` | [ofTop_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/oftop-symm-apply--f7b3b5838bae11b7de035f0b.md) | 118 | `result-track:f7b3b5838bae11b7de035f0b7444a213e016f7bae7c252fd0eee510cf49afbcd` |
| 16 | `theorem` | [range](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/range--0374e3b1f14d8fc29d70c2a8.md) | 122 | `result-track:0374e3b1f14d8fc29d70c2a8c4dd48ddaa4f49727a5bb3d6be1a07fcd5b4445f` |
| 17 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.OfEq.Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.LinearEquivClass.range](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/root-grwtsk-algebra-linearalgebra-ofeq-variante34105e0064162fbf69451a810--a74f1a2de005a2bd91eeccc7.md) | 126 | `result-track:a74f1a2de005a2bd91eeccc73b0db6eca0c2145aac85bbbeb2706241a8750e41` |
| 18 | `theorem` | [eq_bot_of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/eq-bot-of-equiv--cbd48f8e66bc91ec05b63da4.md) | 130 | `result-track:cbd48f8e66bc91ec05b63da40d591b5ecfed77fb386bca56e8da09beffcfd38f` |
| 19 | `theorem` | [range_comp](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/range-comp--105932c503fc286b256fa153.md) | 136 | `result-track:105932c503fc286b256fa153b51993883898b8ca6430575f9fb595ab95cf3b23` |
| 20 | `def` | [ofLeftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofleftinverse--022baf20c245d5340a40b4a5.md) | 147 | `declaration-track:022baf20c245d5340a40b4a55d7d289db022cb0628aa47d83f14ae44b43b9d2c` |
| 21 | `theorem` | [ofLeftInverse_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofleftinverse-apply--fb9917720c15da7d23a60631.md) | 159 | `result-track:fb9917720c15da7d23a606317a9da1993b8269947453f361334ae366e712514a` |
| 22 | `theorem` | [ofLeftInverse_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofleftinverse-symm-apply--22df7977f0da9a713683e859.md) | 164 | `result-track:22df7977f0da9a713683e859b17e9c864b812370f8da19963f2cd029a3a28cc6` |
| 23 | `def` | [ofInjective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofinjective--180ace3b78c95ab2e3df8b2a.md) | 172 | `declaration-track:180ace3b78c95ab2e3df8b2a2a14eb28e3ca97a177c7c716cb0cba408a6b7a71` |
| 24 | `theorem` | [ofInjective_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofinjective-apply--fc6b5b13c788852aed25beb5.md) | 177 | `result-track:fc6b5b13c788852aed25beb5a4ae8d1d51c80846d043e3284060e9b648897018` |
| 25 | `lemma` | [ofInjective_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofinjective-symm-apply--00a2ee3fbb2505e1e587cc02.md) | 182 | `result-track:00a2ee3fbb2505e1e587cc02511b1b186a428384d1400a3ed81ede411a34edef` |
| 26 | `def` | [ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofbijective--52671fc04aa4c0db43efbbc9.md) | 190 | `declaration-track:52671fc04aa4c0db43efbbc908bee3607451e091b1063d12af7026774cd96505` |
| 27 | `theorem` | [ofBijective_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofbijective-apply--e33cf0007fd944c1a9c4e401.md) | 196 | `result-track:e33cf0007fd944c1a9c4e40116b6fa8e1a2aee720d916b1dcdfee9f51f02f748` |
| 28 | `theorem` | [ofBijective_symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/ofbijective-symm-apply-apply--c9249f44342821b5d2383843.md) | 201 | `result-track:c9249f44342821b5d23838439b3beda3cab98291ac5d64f1641aeaf6e20d49c1` |
| 29 | `theorem` | [apply_ofBijective_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/apply-ofbijective-symm-apply--d1c93faff25cd51b76c6b17c.md) | 206 | `result-track:d1c93faff25cd51b76c6b17c7df1466b37ce7d14b417d4b95204d42386db330f` |
| 30 | `def` | [equivSubtypeMap](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/equivsubtypemap--fcceed34de065e2edd0847dd.md) | 224 | `declaration-track:fcceed34de065e2edd0847dd1855a974827d286192c58090dda1a9a04d47788d` |
| 31 | `theorem` | [equivSubtypeMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/equivsubtypemap-apply--2c3f929c9b116b1d3d92e219.md) | 233 | `result-track:2c3f929c9b116b1d3d92e219003b9f062921836f167272358ffd9198599bedee` |
| 32 | `theorem` | [equivSubtypeMap_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/equivsubtypemap-symm-apply--90dcfc018146b5d93b7cfff9.md) | 238 | `result-track:90dcfc018146b5d93b7cfff95cb3c495b0e748f46d09febaac8b32dc889b7c1b` |
| 33 | `def` | [comap_equiv_self_of_inj_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/comap-equiv-self-of-inj-of-le--81e053d7b95c03c0ce54343a.md) | 246 | `declaration-track:81e053d7b95c03c0ce54343a536acc3ce3b0269c18ad21edc4c4042f609af36b` |
| 34 | `def` | [codRestrictOfInjective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/codrestrictofinjective--5f8892af16c42a1b3a8cdcb3.md) | 270 | `declaration-track:5f8892af16c42a1b3a8cdcb3659e6e570044396066c90eb734664db06fa55e55` |
| 35 | `lemma` | [codRestrictOfInjective_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/codrestrictofinjective-comp-apply--a527a8874897745c573ba130.md) | 274 | `result-track:a527a8874897745c573ba13051a17039d0a5f30e677f8c6aad983e94777d2103` |
| 36 | `lemma` | [codRestrictOfInjective_comp](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/codrestrictofinjective-comp--31bcd0a2606bf329e0b31e17.md) | 279 | `result-track:31bcd0a2606bf329e0b31e17d30b45a9c5a5254c0b50c0d518dad4e15bae1150` |
| 37 | `def` | [codRestrict₂](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/codrestrict--1c1197cba905b42552efd8fe.md) | 290 | `declaration-track:1c1197cba905b42552efd8fec8d066e1e06810e0d6a95f4c989afe571398be09` |
| 38 | `lemma` | [codRestrict₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant0606c63b9c2261159a1bc4d6a2c5b2c0c129bf758dcbc9395b9d2bf557e89f63.lean/declarations/codrestrict-apply--821b4b65d870d96fde090079.md) | 298 | `result-track:821b4b65d870d96fde090079cd8151a7c6aa61f30cbfe5891f107a478c6dee8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
