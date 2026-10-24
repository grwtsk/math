# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Continuous.Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6618b5b82294948546457c165c56a64d4eda154",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6618b5b82294948546457c165c56a64d4eda154`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--67a6ebebe9c7dd9655bbe19a.md) | 35 | `declaration-track:67a6ebebe9c7dd9655bbe19aae9e5fab51b3eb2c84def4e82f78c14d6c98fe1d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--7653b0f9a91730a42492933f.md) | 38 | `declaration-track:7653b0f9a91730a42492933f6d7c3cf628989b7dbb40f3d5158ce508e71de1a3` |
| 3 | `abbrev` | [IsContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/iscontinuous--0c0bc8557d327065efe154be.md) | 54 | `declaration-track:0c0bc8557d327065efe154be860615c3076cf155eff7c6d4781decaf00a98d0e` |
| 4 | `lemma` | [isContinuous_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/iscontinuous-def--f544cffaa92a45886567dba9.md) | 57 | `result-track:f544cffaa92a45886567dba94fcf5af67fefc9aeb31146dd9078a33a6070e9a9` |
| 5 | `def` | [ContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/contaction--fabdde798088cb27adc8a966.md) | 68 | `declaration-track:fabdde798088cb27adc8a966fe2f41501534c8fed8db27ae6a489ac6454b56bb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--14a41192ed4bf618f98bf4a8.md) | 72 | `declaration-track:14a41192ed4bf618f98bf4a8ea13cea631b0fe91ed76e8e486a9538e4f52b767` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--fdfa2b7c3dec182e7b4d0d6b.md) | 75 | `declaration-track:fdfa2b7c3dec182e7b4d0d6bf2328c941855f39753307b51e732ed912d92c212` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--d357326a9a2dc0f0cafdbef2.md) | 78 | `declaration-track:d357326a9a2dc0f0cafdbef2c88b3993f9052cc25ffc158ac6fa216590805fba` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--d989028fbfec441f8eb9345b.md) | 83 | `declaration-track:d989028fbfec441f8eb9345bcf2d6562c876eae86f76ff13b634d1f74b9734d3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--bac012b49d2419bb86dcbb1f.md) | 86 | `declaration-track:bac012b49d2419bb86dcbb1ffd246c17bd7c16f7ec00152df59927b9436f2c59` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--f6774090697bbe25c8594f46.md) | 89 | `declaration-track:f6774090697bbe25c8594f460880b9b4d875392f09c5bf55cb55e17d7b53c24e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--c0b8536fc365439efab42673.md) | 92 | `declaration-track:c0b8536fc365439efab42673ca465f236bb91cd3bad94b29ed99c4dd35ab21e8` |
| 13 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/isdiscrete--aa8878ba77ee3af84477abc4.md) | 99 | `declaration-track:aa8878ba77ee3af84477abc4c44758a2994c0332cc4a597ccb48bdb032f1bb0b` |
| 14 | `def` | [res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/res--010fb6956939bf5af28a75e9.md) | 108 | `declaration-track:010fb6956939bf5af28a75e98b7977a90cf68b020209b9f1b6cdb4b236bcbc15` |
| 15 | `def` | [resComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/rescomp--c2b2c0898c8021f4d6e519d5.md) | 121 | `declaration-track:c2b2c0898c8021f4d6e519d58c7885557f93039c9045534db2813d7039eabb3e` |
| 16 | `def` | [resCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/rescongr--86373ba5a353e80f000db247.md) | 128 | `declaration-track:86373ba5a353e80f000db247d31f72129a914a17e1cfb677de1a85b028337bc3` |
| 17 | `def` | [resEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/resequiv--bd843340e1e66515fae044ee.md) | 138 | `declaration-track:bd843340e1e66515fae044eed6c0de2fc229d40941af9800974dd7cb5d4feb93` |
| 18 | `def` | [DiscreteContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/discretecontaction--23801419807abb3312883ecb.md) | 152 | `declaration-track:23801419807abb3312883ecb915f561786469b70279ee22ac9e93abd2f9f6a75` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--3df96adaaddfe3572e19ff2b.md) | 156 | `declaration-track:3df96adaaddfe3572e19ff2bf8b700f1ba4caa3eeb57fec6c6a7124e69712f40` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--b23ff79e71b511aa8efa2c7f.md) | 159 | `declaration-track:b23ff79e71b511aa8efa2c7f6b36e416032260e061140538f14b27fcc89853bd` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--d840f91e369dcde5c16d5cb4.md) | 162 | `declaration-track:d840f91e369dcde5c16d5cb41e821c7040b4225373917d2344d24f607cd3b181` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--8081da612ce66130941b55d0.md) | 167 | `declaration-track:8081da612ce66130941b55d001e7f252ee6b8a3ea2d92005b873356817c5ab35` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--b9f97e41cbfedac45b686cc4.md) | 170 | `declaration-track:b9f97e41cbfedac45b686cc4917a4894c4433764d7af8efa919e0e95a200a5d8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/instance--d35d9334812ebee53b468c09.md) | 175 | `declaration-track:d35d9334812ebee53b468c090beb61582954e00d482023ac459d9426fb84ba59` |
| 25 | `def` | [mapContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/mapcontaction--d0399399e47b0aba18a52141.md) | 191 | `declaration-track:d0399399e47b0aba18a521417283b36f109be7a94c3cba5cb229f8417b19f481` |
| 26 | `def` | [mapContActionComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/mapcontactioncomp--9942d09b90efdac423777fa0.md) | 197 | `declaration-track:9942d09b90efdac423777fa00144db2b53d5f4359cfd9d75a3badbb07ab3881f` |
| 27 | `def` | [mapContActionCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/mapcontactioncongr--5716903f87a5aa0a631b79f5.md) | 206 | `declaration-track:5716903f87a5aa0a631b79f59c44791f7fc6d494398bc6cc524abc103db35565` |
| 28 | `def` | [Equivalence.mapContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/declarations/equivalence-mapcontaction--32248dcb36a324001151dbb8.md) | 218 | `declaration-track:32248dcb36a324001151dbb8ebd19712d949c7eb1ff3f71ddd2d7534f776353a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
