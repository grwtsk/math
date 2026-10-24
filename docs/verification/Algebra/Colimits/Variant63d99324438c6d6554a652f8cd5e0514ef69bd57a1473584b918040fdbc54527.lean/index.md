# Verification target: GRWTSK.Algebra.Colimits.Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30f936592a27d9b57d14a2289d7a41e81ca12f94",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/index.md) · [Full source](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30f936592a27d9b57d14a2289d7a41e81ca12f94`.

Source path: `GRWTSK/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/prequotient--e3172e2447abba53f63af176.md) | 71 | `declaration-track:e3172e2447abba53f63af176b3c54fea75051818b405caca41b0e74aaab6768c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/instance--9e06006aafb8b873de9c7b9c.md) | 81 | `declaration-track:9e06006aafb8b873de9c7b9c799ce23cf624f2cc0e7afb00fc9d1203d67f4bcf` |
| 3 | `inductive` | [Relation](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/relation--632f69ebf3f70c03fe232d66.md) | 90 | `declaration-track:632f69ebf3f70c03fe232d66625192fbb3ececf81331db5c4f5784321cc95aac` |
| 4 | `def` | [colimitSetoid](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimitsetoid--bc6cecbbf0153e78ac965f09.md) | 131 | `declaration-track:bc6cecbbf0153e78ac965f09ced7ee6fb8c46f47c0a1c24b7af1348ebd599517` |
| 5 | `def` | [ColimitType](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimittype--ef1ffe436bad0ce07f94fe77.md) | 140 | `declaration-track:ef1ffe436bad0ce07f94fe77f70cf500d5af9065c1e3c1f27dcae7442b3a5dfa` |
| 6 | `instance` | [ColimitType.AddGroup](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimittype-addgroup--e7f5c2f383c5c07cb2656057.md) | 144 | `declaration-track:e7f5c2f383c5c07cb265605712a92de000a917453dd3bce3551146d1ecb9f710` |
| 7 | `instance` | [InhabitedColimitType](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/inhabitedcolimittype--65f198d2adee8ea5d7fe81ff.md) | 156 | `declaration-track:65f198d2adee8ea5d7fe81ff9606aa4a6e0749193e2a4d96c9902d17144c7067` |
| 8 | `instance` | [ColimitType.AddGroupWithOne](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimittype-addgroupwithone--851ae94da9dd52fe5e22d582.md) | 159 | `declaration-track:851ae94da9dd52fe5e22d5824144aca398b9c3a456708d8c5cfc1bad22253715` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/instance--000e3c1485e675aa1f58f607.md) | 162 | `declaration-track:000e3c1485e675aa1f58f60760eaf657868164fc89825d7756f7bb58b7ecd3d4` |
| 10 | `theorem` | [quot_zero](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/quot-zero--f7751f12671ffbc3d233980d.md) | 182 | `result-track:f7751f12671ffbc3d233980d49cc443fc5661e60ec5bb56148d2194691f98cf0` |
| 11 | `theorem` | [quot_one](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/quot-one--0c779581a28cef1be23d3d9f.md) | 187 | `result-track:0c779581a28cef1be23d3d9f27de06ce6654e3a19022bbd774430f563ffbb001` |
| 12 | `theorem` | [quot_neg](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/quot-neg--e0793306933ca0e2d038e526.md) | 192 | `result-track:e0793306933ca0e2d038e52658bef6541b5294cc6d5aada95fda563ce24bca15` |
| 13 | `theorem` | [quot_add](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/quot-add--5c1b30bd6e48586db7e9924d.md) | 202 | `result-track:5c1b30bd6e48586db7e9924d4479fa619bd6842b889c1d8092c432416a00b872` |
| 14 | `theorem` | [quot_mul](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/quot-mul--171c219fb45eb46f793aa030.md) | 210 | `result-track:171c219fb45eb46f793aa03096aa41899d855833f7b2137fcb63c60643cf0196` |
| 15 | `def` | [colimit](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimit--309e6879afbe3223199fdeb3.md) | 216 | `declaration-track:309e6879afbe3223199fdeb31a0324d46381877e05e4ebf09eded3a80421bf1f` |
| 16 | `def` | [coconeFun](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/coconefun--ba1af1e1bcba9b5e85bba881.md) | 221 | `declaration-track:ba1af1e1bcba9b5e85bba881069b7bd5093efb976c43dbd4b3d0ad7b15f9cf8c` |
| 17 | `def` | [coconeMorphism](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/coconemorphism--368dad0cd4bab2b5dd2e5f49.md) | 227 | `declaration-track:368dad0cd4bab2b5dd2e5f4914e021f7fb244684acfc45566a87d2c46a4a7940` |
| 18 | `theorem` | [cocone_naturality](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/cocone-naturality--a141aae4246ea0b593b7dbb8.md) | 236 | `result-track:a141aae4246ea0b593b7dbb87b45d7fe311e5c39fa90a83aa913af03fd7378b5` |
| 19 | `theorem` | [cocone_naturality_components](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/cocone-naturality-components--702f8fc4459c240cdd972cbd.md) | 244 | `result-track:702f8fc4459c240cdd972cbdcb872af56843edb5cb2c4b39c10db655b16d3afd` |
| 20 | `def` | [colimitCocone](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimitcocone--84ff15e325c90ae6117fd52f.md) | 250 | `declaration-track:84ff15e325c90ae6117fd52f3632a34e2bbf3b0f09dc016bd7c937f7db706945` |
| 21 | `def` | [descFunLift](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/descfunlift--629862114ad4e9fcf5a71a6d.md) | 258 | `declaration-track:629862114ad4e9fcf5a71a6d9e54bb8a7023117d37c5d2c06c77028bf6aec41b` |
| 22 | `def` | [descFun](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/descfun--ac89afaeb342e3843fa6a564.md) | 268 | `declaration-track:ac89afaeb342e3843fa6a56436aab601523108c1792e6aca53ddfd949cacd24f` |
| 23 | `def` | [descMorphism](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/descmorphism--4ebb3f8b7d109d2e43504ecc.md) | 304 | `declaration-track:4ebb3f8b7d109d2e43504ecc0e0809d84eb1b8229e9349236efa8263c73e43eb` |
| 24 | `def` | [colimitIsColimit](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/colimitiscolimit--bf3e3505fdb45c629712a0cd.md) | 317 | `declaration-track:bf3e3505fdb45c629712a0cdbab3a1d962275e8738ea1a720a02a62b703518a5` |
| 25 | `instance` | [hasColimits_commRingCat](../../../../mathematics/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/declarations/hascolimits-commringcat--cabbb2cea8d13ca42b4122f3.md) | 333 | `declaration-track:cabbb2cea8d13ca42b4122f3cc79829ba1094bbcfe77b0be00c194c109e35b17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
