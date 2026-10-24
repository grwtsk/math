# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverAdjunction.Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4de10ebc53319293f881da605a718f9f11021c33",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4de10ebc53319293f881da605a718f9f11021c33`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean.json)

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
| 1 | `def` | [Over.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-map--83c2635280b694afbd2b5430.md) | 42 | `declaration-track:83c2635280b694afbd2b54301b25df6662ae25d3dcd0db79e882433aa1b2c456` |
| 2 | `lemma` | [Over.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-map-comp--be1579326ba26732affb602f.md) | 47 | `result-track:be1579326ba26732affb602f9355cf10b889b9ab7b8c2c259a81c5a4119da988` |
| 3 | `def` | [Over.mapCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-mapcongr--f94cfe92cc53fef40f95f251.md) | 58 | `declaration-track:f94cfe92cc53fef40f95f251e0b2ffac3c18a0b0406ddb306e5872f6f6812f9c` |
| 4 | `def` | [Over.mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-mapid--200a7b6452c0f86e5ac99d4e.md) | 67 | `declaration-track:200a7b6452c0f86e5ac99d4e92ed988a3586dff8a56ad1a1cb8242c6572382ec` |
| 5 | `def` | [Over.mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-mapcomp--fc03c604bb773a98ac2c7dde.md) | 76 | `declaration-track:fc03c604bb773a98ac2c7ddea6c49fa76990bdc8e99ae361aea99688200e5d72` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/instance--eff09fc33c8c71ff8b661ee2.md) | 85 | `declaration-track:eff09fc33c8c71ff8b661ee2c7b9d109725429a379136c73edd537ab021c8200` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/instance--95b2a8ffce24538aa8b3b2fa.md) | 88 | `declaration-track:95b2a8ffce24538aa8b3b2fafca6ed09e84c05b86a694baa5fee2a3d21e9f062` |
| 8 | `def` | [Over.pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullback--55e7e6c18583cf6b413494f9.md) | 99 | `declaration-track:55e7e6c18583cf6b413494f9569d7e4d83b3d4a3ae0fd805aa9df00093eb08d4` |
| 9 | `def` | [Over.pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullbackcomp--6a80798e6a30fdb9e77ea0d9.md) | 114 | `declaration-track:6a80798e6a30fdb9e77ea0d94f434307f46ba4fce6132ebfa96a0dd3ad99c380` |
| 10 | `lemma` | [Over.pullbackComp_left_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullbackcomp-left-fst-fst--5914e3a04398401c62335688.md) | 127 | `result-track:5914e3a04398401c623356880fd48f7a19c36b2d15e4ee15a84d4812601d0857` |
| 11 | `def` | [Over.pullbackCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullbackcongr--21b5ce6faf1e7bd64bad53a2.md) | 137 | `declaration-track:21b5ce6faf1e7bd64bad53a2b3419ca8fb6fa33244a168b45fe132bd2e875cb9` |
| 12 | `lemma` | [Over.pullbackCongr_hom_app_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullbackcongr-hom-app-left-fst--82906694178c36669510dd17.md) | 150 | `result-track:82906694178c36669510dd17c3289cafefcf01a4d6076b850bc622cc910cdfcb` |
| 13 | `def` | [Over.pullbackMapHomPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullbackmaphompullback--09904b7f6d8aa4bd3d9458e7.md) | 161 | `declaration-track:09904b7f6d8aa4bd3d9458e7a4d365a2e07aa8944eec37e7560ced2ac94c50ae` |
| 14 | `def` | [Over.pullbackCompForgetIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-pullbackcompforgetiso--4932bfe38fcbc04f06a5ef0e.md) | 176 | `declaration-track:4932bfe38fcbc04f06a5ef0e49b1e4a24243baed21ae5c95073d9a570923a2fa` |
| 15 | `def` | [Over.mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/over-mappullbackadj--cee8e8db79cf902b46e8dd78.md) | 193 | `declaration-track:cee8e8db79cf902b46e8dd786de8e0b168cf2907512443974371197f09b8cb57` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/instance--2754dd71a3bf965ddf3fa710.md) | 203 | `declaration-track:2754dd71a3bf965ddf3fa710d23accc97974034dac0a568ef1b99dd397450c49` |
| 17 | `lemma` | [isRightAdjoint_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/isrightadjoint-pullback--39f4542c0f960f2e3c1c74d9.md) | 207 | `result-track:39f4542c0f960f2e3c1c74d9482d6afcda27138b917a1c2fbf2b7bca1cd630b4` |
| 18 | `def` | [Under.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-map--c854d7ecc70b28fbe1496864.md) | 225 | `declaration-track:c854d7ecc70b28fbe1496864a2195c822dec7c72c28b7a25e06b5396dcc3c21a` |
| 19 | `lemma` | [Under.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-map-comp--71213cd800e6382801fe5e97.md) | 230 | `result-track:71213cd800e6382801fe5e978d57f9242630bbcf9519de5f6a919dca72bd7b9a` |
| 20 | `def` | [Under.mapCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-mapcongr--027c54da430084867c93c0e3.md) | 241 | `declaration-track:027c54da430084867c93c0e36fd253ad26b0658440db21af05ad2debcd7fa400` |
| 21 | `def` | [Under.mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-mapid--ed4e0d17e8a9d511401b79b0.md) | 250 | `declaration-track:ed4e0d17e8a9d511401b79b0cfd7ba605b510e413e7bf52c59d221c746d4ad06` |
| 22 | `def` | [Under.mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-mapcomp--43d7d0f72f62e8e86f17aca5.md) | 259 | `declaration-track:43d7d0f72f62e8e86f17aca53dd45579f22e3cdfc24421b3977ee363ef3f0042` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/instance--a26b5a17488f3ec47577224f.md) | 268 | `declaration-track:a26b5a17488f3ec47577224f4f061b315bb7aee45a1ec689da87aca835901431` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/instance--7046e6d6880e08ffbbe781ae.md) | 271 | `declaration-track:7046e6d6880e08ffbbe781aeb5c9fb6e0f0e14e91c24598cdd5fe86f26fb320f` |
| 25 | `def` | [Under.pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-pushout--2ea09129f90a5664fd5ee556.md) | 281 | `declaration-track:2ea09129f90a5664fd5ee556822b37888b803ac0267392129b9ca6b798bdc38e` |
| 26 | `def` | [Under.pushoutComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-pushoutcomp--91d5bab94e9a7545bf6b2561.md) | 297 | `declaration-track:91d5bab94e9a7545bf6b256100f943bc931bfd92476ae3645ce001f8feeba914` |
| 27 | `def` | [Under.pushoutCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-pushoutcongr--d2e6c63ad3834e5cb0b688cc.md) | 312 | `declaration-track:d2e6c63ad3834e5cb0b688cc0c13246f2a9093c02779721d30bb56244c7aa26b` |
| 28 | `lemma` | [Under.pushoutCongr_hom_app_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-pushoutcongr-hom-app-left-fst--c5d80090ccf50f72c60111f1.md) | 325 | `result-track:c5d80090ccf50f72c60111f1aa215ce5586416c0cca701daddce32ea1400d245` |
| 29 | `def` | [Under.pushoutCompForgetIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-pushoutcompforgetiso--0709ebe283fb0bdc3025a808.md) | 336 | `declaration-track:0709ebe283fb0bdc3025a808bcf536e49dcb1f88b734b0573ff376c6f889bb33` |
| 30 | `def` | [Under.mapPushoutAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/under-mappushoutadj--15082a35a013c93c7db0bfc9.md) | 354 | `declaration-track:15082a35a013c93c7db0bfc986548217e8b4f25ac98bd980ced2dbdf67f0b4d5` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/instance--f27742c53486005ce63f2455.md) | 364 | `declaration-track:f27742c53486005ce63f2455e6fc1c2507afd98cb4437bf325d946e918d67b50` |
| 32 | `lemma` | [isLeftAdjoint_pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant25ba448f62cb1653ab73c987fdb820da17436e239831ca03bef74e0f34e91d27.lean/declarations/isleftadjoint-pushout--503f2e5048a4fede2f890128.md) | 368 | `result-track:503f2e5048a4fede2f8901283ed18d73fcdea723de4855190eeb28bb6b0d923c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
