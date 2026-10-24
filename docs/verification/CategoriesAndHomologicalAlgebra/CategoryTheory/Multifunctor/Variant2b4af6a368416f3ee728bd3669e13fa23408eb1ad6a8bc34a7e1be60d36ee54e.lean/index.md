# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multifunctor.Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4732ddf22a9e2651ad0d5878c831ecc84e1638a7",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4732ddf22a9e2651ad0d5878c831ecc84e1638a7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean.json)

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
| 1 | `abbrev` | [curriedTensorInsertFunctor₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorinsertfunctor--c6e04144499dca99ef2721ec.md) | 43 | `declaration-track:c6e04144499dca99ef2721ecff006aaee352ac16b8a38ce3bffcd4bce401ec07` |
| 2 | `abbrev` | [curriedTensorInsertFunctor₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorinsertfunctor--834b29015807f976b13154c9.md) | 47 | `declaration-track:834b29015807f976b13154c9134ef0f4021f67dfe716e5d7ca133cf83c9740e6` |
| 3 | `abbrev` | [curriedTensorPre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorpre--e92c9c894e07b07d8457bd09.md) | 51 | `declaration-track:e92c9c894e07b07d8457bd0925fedaee5e7d9805d14e9102594cd31b08c659ec` |
| 4 | `abbrev` | [curriedTensorPost](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorpost--f3c0d51c9a82ab0d9975e448.md) | 55 | `declaration-track:f3c0d51c9a82ab0d9975e448a5e72ccad1094060d54ff51f8eb041de02b539ec` |
| 5 | `abbrev` | [curriedTensorPrePre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorprepre--319aab47938d6f7b961a7712.md) | 59 | `declaration-track:319aab47938d6f7b961a7712c6855656de791f772d8b710642c4f7a79248ef36` |
| 6 | `abbrev` | [curriedTensorPrePre'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorprepre--f2fce5dd8e87dce690b7c4dc.md) | 63 | `declaration-track:f2fce5dd8e87dce690b7c4dceba80fd5676c058e24d11f7986ca2b3714d78958` |
| 7 | `abbrev` | [curriedTensorPostPre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorpostpre--f12fe9d56131e23402b1e890.md) | 67 | `declaration-track:f12fe9d56131e23402b1e89097768e54f0cd759e0cbca634c6717d868697f792` |
| 8 | `abbrev` | [curriedTensorPrePost](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorprepost--c016769785760c79d70d4932.md) | 71 | `declaration-track:c016769785760c79d70d4932beb898dc323b4bb7c57ec5b6d9ca95e367ae8a0b` |
| 9 | `abbrev` | [curriedTensorPostPost](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorpostpost--82755734d09a8465fe1d74bf.md) | 75 | `declaration-track:82755734d09a8465fe1d74bfd055ba072ee26c7e1af00dd231744f2ebd0abbd0` |
| 10 | `abbrev` | [curriedTensorPostPost'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorpostpost--b9fa316f97882f903fbc7a98.md) | 79 | `declaration-track:b9fa316f97882f903fbc7a9818b76544b0304ef2e41182b81baec206c2213b87` |
| 11 | `def` | [Functor.curriedTensorPreIsoPost](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/functor-curriedtensorpreisopost--1706d17f19438b5a335f8891.md) | 85 | `declaration-track:1706d17f19438b5a335f8891e0efb68f18253f4bd298d47364aa34cd0c43c33d` |
| 12 | `def` | [curriedTensorPreFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorprefunctor--9bd38fbfc039ffacd40575a3.md) | 92 | `declaration-track:9bd38fbfc039ffacd40575a338bebb997bd78807d675b653fc2ab3fc5a3b91b1` |
| 13 | `abbrev` | [curriedTensorPostFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/curriedtensorpostfunctor--dd6825ed2af5b10a9998c77c.md) | 103 | `declaration-track:dd6825ed2af5b10a9998c77c4de7640559d7e90217137faace62d6269b34a210` |
| 14 | `def` | [firstMap₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--8a0b68b3bbbae3f6defc0423.md) | 160 | `declaration-track:8a0b68b3bbbae3f6defc042332562954f8a08a72e3478f7d80dee2a6f8506803` |
| 15 | `def` | [firstMap₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--df4f882294c71a950608214d.md) | 168 | `declaration-track:df4f882294c71a950608214d7819c5ddd73281db9a94b6d116c3474d730d20c7` |
| 16 | `def` | [firstMap₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--a226d9f9ded43b1f8e842e85.md) | 176 | `declaration-track:a226d9f9ded43b1f8e842e85b80569c8499641425cfa6be99392c0fbb1f9d0fe` |
| 17 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--8911b2dd7214dd73b53c42e9.md) | 186 | `declaration-track:8911b2dd7214dd73b53c42e94713731c8b472368ba7a0248f696d6cf39046114` |
| 18 | `def` | [secondMap₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--8e45fb349adb1102f88458fc.md) | 194 | `declaration-track:8e45fb349adb1102f88458fc08edc67169831cea1094f965789036a022c21812` |
| 19 | `def` | [secondMap₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--7524a2790f151f557719f81c.md) | 201 | `declaration-track:7524a2790f151f557719f81caad27d98cb050fe77de4bfc6675340b30bbd5d6d` |
| 20 | `def` | [secondMap₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--21969812a3b09ecf4ef08cd6.md) | 209 | `declaration-track:21969812a3b09ecf4ef08cd63424c368cd2272ae373b729a449576b96e9ffd4e` |
| 21 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--209326a7cfbe914e4897fc42.md) | 220 | `declaration-track:209326a7cfbe914e4897fc4229c3742a672984aea1c5f0c336f60992f152dfe3` |
| 22 | `def` | [leftMapₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/leftmap--0a661729bd8e499bfba48f38.md) | 228 | `declaration-track:0a661729bd8e499bfba48f3800ed0492810c88482cf3b4b2a55427e0c87ae985` |
| 23 | `def` | [topMapₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/topmap--ac2665c50554ae243b661f06.md) | 235 | `declaration-track:ac2665c50554ae243b661f0628e07c9d5afbd887c8f071825ba8f8febd7c46de` |
| 24 | `def` | [bottomMapₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/bottommap--b6d609d4bd746330daca73ac.md) | 243 | `declaration-track:b6d609d4bd746330daca73ac1f680fdab0d9a79a29cae615e943b8b5ecd54da9` |
| 25 | `def` | [leftMapᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/leftmap--0fc6b6c516e6cbadad198f8e.md) | 250 | `declaration-track:0fc6b6c516e6cbadad198f8e257db9e45aac304e3d6a1e22b24d452485d2a15c` |
| 26 | `def` | [topMapᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/topmap--2e43d3cf6724bd08f4482a94.md) | 257 | `declaration-track:2e43d3cf6724bd08f4482a94ced0c560d8a0da9a3c61c5b47df897f3a0d1a7e6` |
| 27 | `def` | [bottomMapᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/bottommap--ec7c3b14e0404dbe32036d98.md) | 265 | `declaration-track:ec7c3b14e0404dbe32036d98f21e13f642c68c14a880aa3fb64885299ad5ded8` |
| 28 | `def` | [ofBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/ofbifunctor--23972da5117df5b0b0bb1f25.md) | 291 | `declaration-track:23972da5117df5b0b0bb1f253e8e3beb84e7896d6bbd7440a889a38268062b8e` |
| 29 | `def` | [firstMap₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--65e8a214841bda6c8862d5ed.md) | 353 | `declaration-track:65e8a214841bda6c8862d5ed05b6449602459f9b329151eb565e21ece8c43ee3` |
| 30 | `def` | [firstMap₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--828853f5e22bf0de991f33bc.md) | 361 | `declaration-track:828853f5e22bf0de991f33bc0a2eb7939ebc2adb2ab96bfa58944cedd6ec49cd` |
| 31 | `def` | [firstMap₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--bbd8c84f20510d8e18c0dd28.md) | 369 | `declaration-track:bbd8c84f20510d8e18c0dd287f4f521e66c344d6115279338c101f70809cd179` |
| 32 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/firstmap--1ec558c311fefb25dcc5cc77.md) | 379 | `declaration-track:1ec558c311fefb25dcc5cc77b0f8a73efe273ce8e097558f9f5405c45e2b0c25` |
| 33 | `def` | [secondMap₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--f563423ea479deb2357e3e3e.md) | 387 | `declaration-track:f563423ea479deb2357e3e3e67bec4981e7620d42c9bd04f9781e8b69da5fa78` |
| 34 | `def` | [secondMap₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--ee2664d2494acf4965a756a4.md) | 394 | `declaration-track:ee2664d2494acf4965a756a4051391ec62ce3b3c76d5c64bf71cf278d15cd55c` |
| 35 | `def` | [secondMap₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--0066a197a0cf769bae48123c.md) | 402 | `declaration-track:0066a197a0cf769bae48123c5ad596692f65159e7526eae6cbfb6021e663fd41` |
| 36 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/secondmap--bfcf5910ab6bf053980fa59e.md) | 413 | `declaration-track:bfcf5910ab6bf053980fa59e87a5699c30285cb08d8f8f074007e36a7227f589` |
| 37 | `def` | [leftMapₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/leftmap--f9009b6fcc6adf8acc63017f.md) | 421 | `declaration-track:f9009b6fcc6adf8acc63017f448008f82a8971c55b3498d4b81dcb42eff83cc0` |
| 38 | `def` | [topMapₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/topmap--75c6ce99f3ba75cedca82a2a.md) | 428 | `declaration-track:75c6ce99f3ba75cedca82a2adb729ee6f4f483dbebddc5b653ad6755da355fe5` |
| 39 | `def` | [bottomMapₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/bottommap--8c37f79998a65bc147e77504.md) | 435 | `declaration-track:8c37f79998a65bc147e77504615a18a8d66a034f45dbc0c7cb4297ede490930e` |
| 40 | `def` | [leftMapᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/leftmap--42c1676bbb4113bb97e84fa7.md) | 443 | `declaration-track:42c1676bbb4113bb97e84fa79e1bb9fee74864998b9421b18c0ac1b6ffa46569` |
| 41 | `def` | [topMapᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/topmap--dffdb67d08a3a1d8d5de7af3.md) | 450 | `declaration-track:dffdb67d08a3a1d8d5de7af3fd6700debeacfb686fe50d148c5a8a8badaee391` |
| 42 | `def` | [bottomMapᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/bottommap--cd2a2608ad52b2d5aa4e2ff2.md) | 457 | `declaration-track:cd2a2608ad52b2d5aa4e2ff2efd57a88192839e61decd5f3d074beea3419212b` |
| 43 | `def` | [ofBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/ofbifunctor--82d20d31e798c76046684632.md) | 484 | `declaration-track:82d20d31e798c7604668463236998204bfeafdd34badc2f6cf9b51f840b6eed9` |
| 44 | `def` | [ofBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/ofbifunctor--9c3e13b7f82f7b2d33a37748.md) | 531 | `declaration-track:9c3e13b7f82f7b2d33a377487039fe3714d2e46458d282b1c1e2ec0d3cfcdbe9` |
| 45 | `def` | [ofBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/declarations/ofbifunctor--97507a813d5122cc347e6a5d.md) | 563 | `declaration-track:97507a813d5122cc347e6a5d219bed9a21a200965763718f925a4dc586163a97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
