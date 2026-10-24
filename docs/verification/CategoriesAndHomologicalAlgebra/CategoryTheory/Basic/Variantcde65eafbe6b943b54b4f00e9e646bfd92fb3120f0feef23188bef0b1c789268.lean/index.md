# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f69acf6180035e480a922a05f4853fde06f8a77f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f69acf6180035e480a922a05f4853fde06f8a77f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Const` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--e492871007683aec705f8473.md) | 40 | `declaration-track:e492871007683aec705f8473a4ac7fafe96bc8304d312a7e21f8225fcc2c4ccf` |
| 2 | `lemma` | [prod.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod-hom-ext--9108da9f80d554361923ea6c.md) | 46 | `result-track:9108da9f80d554361923ea6c30a62d513f5d62f12cfbcf7eba3e55e4cf02abd0` |
| 3 | `theorem` | [prod_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod-id--dcac7c34ee9b377d0e263698.md) | 52 | `result-track:dcac7c34ee9b377d0e2636988c44eed531a6340dca54c8575341444650abc61a` |
| 4 | `theorem` | [prod_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod-comp--7bd1b6ae00d7dd442043cf1d.md) | 56 | `result-track:7bd1b6ae00d7dd442043cf1ddc5f5685f8741539989928b0b65a3253de119401` |
| 5 | `theorem` | [isIso_prod_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/isiso-prod-iff--ff3ea3c01a54ef207ab979f7.md) | 60 | `result-track:ff3ea3c01a54ef207ab979f71d4ee5f9485a4ec952b56a490054a6286b3224db` |
| 6 | `def` | [prod.etaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod-etaiso--898f898164be721944593fa2.md) | 79 | `declaration-track:898f898164be721944593fa24ba95f4784107970a9e2e0b98bc2b15c169811e9` |
| 7 | `def` | [Iso.prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/iso-prod--4944c9787c9d1297214331a4.md) | 85 | `declaration-track:4944c9787c9d1297214331a4eb21544af86391b4e00460666de29bea33e48cb5` |
| 8 | `instance` | [uniformProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/uniformprod--64906d9750eced1e11a59602.md) | 100 | `declaration-track:64906d9750eced1e11a59602a2b58de2bf22ef199f9e905d51b72781c5333128` |
| 9 | `def` | [sectL](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/sectl--d85ad4e025b639c65177f993.md) | 111 | `declaration-track:d85ad4e025b639c65177f9934f64a1fd18425794e9a8e82ceb4b585f91ae69d1` |
| 10 | `def` | [sectR](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/sectr--2a5d4f107d9c37d0bdb68e48.md) | 117 | `declaration-track:2a5d4f107d9c37d0bdb68e4893bc4a7a0f0f8edb75e8a14b896a4cbce1fb48fd` |
| 11 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/fst--efeaddd9d50894885e93837b.md) | 132 | `declaration-track:efeaddd9d50894885e93837bca0118dee206a4b2e30d4e13a728cd43c5f18c64` |
| 12 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/snd--7e70407d0c2f7cfc36ad623d.md) | 138 | `declaration-track:7e70407d0c2f7cfc36ad623d53201bd1bad0730a0ac9e80eeeed3b4af31f44da` |
| 13 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/swap--f0d1393bad05ac341729d3ee.md) | 144 | `declaration-track:f0d1393bad05ac341729d3ee5915138e4b5e220392957d28500a7f9fce4d9426` |
| 14 | `def` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/symmetry--427690dab47ac3017960854c.md) | 152 | `declaration-track:427690dab47ac3017960854c935068f65f5f0e82427c956de0cf6b8aaf7971a1` |
| 15 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/braiding--5d8de057a54c337b265d0be4.md) | 159 | `declaration-track:5d8de057a54c337b265d0be4c967d98de4f30e58ba6fd006d0d8847ba908f307` |
| 16 | `instance` | [swapIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/swapisequivalence--d5668fe30ba5a798d9072085.md) | 165 | `declaration-track:d5668fe30ba5a798d9072085732bdd5f9ecfa64634d07ab5df1ec2b13b568480` |
| 17 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/fac--c69700bf31060980ba3909b6.md) | 173 | `result-track:c69700bf31060980ba3909b667f4e0bc743d4d30f55f23f59fbd63e1c7c7adf9` |
| 18 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/fac--bb6ea3d7683ceac51b34a5fd.md) | 179 | `result-track:bb6ea3d7683ceac51b34a5fdbf2633d5de4d7c63a7921275f338c321b7c39394` |
| 19 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/evaluation--d43d5d4fa447ab935c95b6da.md) | 193 | `declaration-track:d43d5d4fa447ab935c95b6dab5ae19f989611d1fdc73ef7ec4e756e5369257b4` |
| 20 | `def` | [evaluationUncurried](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/evaluationuncurried--a8cbfd90d261ceb5d09b7064.md) | 204 | `declaration-track:a8cbfd90d261ceb5d09b70640c132268b4a9d7ff362c0d650b515700b44e7bc9` |
| 21 | `def` | [Functor.constCompEvaluationObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/functor-constcompevaluationobj--83d14ca40debbaca90bea2e4.md) | 212 | `declaration-track:83d14ca40debbaca90bea2e4579973ea91c96efe08d09d5f3757ba2da4864ba4` |
| 22 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--39dd9f8cc378532f4b158500.md) | 224 | `declaration-track:39dd9f8cc378532f4b158500fcc69144bfe09e87d77a94563c0dbb8e0504f028` |
| 23 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--673de095089494b63381f9c6.md) | 232 | `declaration-track:673de095089494b63381f9c6800e790df0605510a10e90b2d9461dc35471ad97` |
| 24 | `def` | [prod'CompFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod-compfst--fddc18e2786cfe3910de6a93.md) | 238 | `declaration-track:fddc18e2786cfe3910de6a93e6a09c5afa19e49a2a91b1e82263d3f9466d9c96` |
| 25 | `def` | [prod'CompSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod-compsnd--b24d8324e7e593885a38a8f7.md) | 243 | `declaration-track:b24d8324e7e593885a38a8f7c0c6fecc04f82fdbab5abf9e1d513c9fb7bca11d` |
| 26 | `def` | [diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/diag--eab9b307bf087f142fe9bca0.md) | 252 | `declaration-track:eab9b307bf087f142fe9bca00900ad3c858260cff0cf1b843bdc70fc9cd5fe35` |
| 27 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--02d6a455942653c12460e571.md) | 263 | `declaration-track:02d6a455942653c12460e5719b430e96a2628d9582031c3b319544cde57a7bb7` |
| 28 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--db46fbf9690ec93ff8c7b071.md) | 272 | `declaration-track:db46fbf9690ec93ff8c7b071dc34a00569675f9f38a38b032dea85eeb7360d32` |
| 29 | `def` | [prodFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prodfunctor--54335b8d753726122696d08e.md) | 279 | `declaration-track:54335b8d753726122696d08ee9261c78da30ca6a3acf2432e5361133b7a3f473` |
| 30 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--d596168c6ffccb1a47f994be.md) | 287 | `declaration-track:d596168c6ffccb1a47f994be34a45c0a9dc57cbca9e3c7c3e342799e36364b16` |
| 31 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prod--fbc08cd98e5046db872171bb.md) | 298 | `declaration-track:fbc08cd98e5046db872171bbb442632f0fb04ff1e3a7e16acfc57cf4e6e65252` |
| 32 | `def` | [flipCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/flipcompevaluation--75f9d5cd71719520205b0f49.md) | 308 | `declaration-track:75f9d5cd71719520205b0f490b6c09de320300087dc1a0e47d171218a7b5133c` |
| 33 | `theorem` | [flip_comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/flip-comp-evaluation--69b3747273b3be8b7c7639f6.md) | 311 | `result-track:69b3747273b3be8b7c7639f6660e60569dc0cb8afe8d906e92ef0b12f2b82621` |
| 34 | `def` | [compEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/compevaluation--6b5c488cf13384a3b5ad5e68.md) | 316 | `declaration-track:6b5c488cf13384a3b5ad5e68b7019606fe27126d727f8858ff7e6e341c134651` |
| 35 | `theorem` | [comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/comp-evaluation--bca2f509afd6662b14ac3116.md) | 319 | `result-track:bca2f509afd6662b14ac31161a7f76b6d95415831e4ab2c00044750e14aeaaf1` |
| 36 | `def` | [whiskeringLeftCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/whiskeringleftcompevaluation--9c2bb416cf7b3e22a0efcbda.md) | 324 | `declaration-track:9c2bb416cf7b3e22a0efcbda5e7976a4551990e72b128ba5821cb3dbaa9b9f54` |
| 37 | `theorem` | [whiskeringLeft_comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/whiskeringleft-comp-evaluation--0444c719b839b8e535b4082e.md) | 330 | `result-track:0444c719b839b8e535b4082e12d5681d661fc54902913647ef934f90e69081ef` |
| 38 | `def` | [whiskeringRightCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/whiskeringrightcompevaluation--3ae3db967e507033a5e2410e.md) | 337 | `declaration-track:3ae3db967e507033a5e2410ea04f4f796c18cefbca859ef3daa6d7a02d540fa9` |
| 39 | `theorem` | [whiskeringRight_comp_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/whiskeringright-comp-evaluation--4690a8f4485bc63d38e65071.md) | 344 | `result-track:4690a8f4485bc63d38e650719abf73ba7aca20c848597248b30b9ce15c804bbc` |
| 40 | `def` | [prodFunctorToFunctorProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prodfunctortofunctorprod--b59637f7dd25b72873c2a680.md) | 352 | `declaration-track:b59637f7dd25b72873c2a6801879e4602ba93c14c388a96c628a5f9344bf3935` |
| 41 | `def` | [functorProdToProdFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/functorprodtoprodfunctor--4bcbf43efefb8861bcb74b4c.md) | 358 | `declaration-track:4bcbf43efefb8861bcb74b4cf8390b6026f4b79541ed08a471102d781e44c4b1` |
| 42 | `def` | [functorProdFunctorEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/functorprodfunctorequivunitiso--95d07c56b485124d6dc0ea6c.md) | 364 | `declaration-track:95d07c56b485124d6dc0ea6cfe4bdbf7024bbd1bf9ff9de9acfbc5116d041953` |
| 43 | `def` | [functorProdFunctorEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/functorprodfunctorequivcounitiso--f46f6c896c77910627e2ab7f.md) | 372 | `declaration-track:f46f6c896c77910627e2ab7f1122a2d5a1ccd8e35efb78dbccb712176f55f063` |
| 44 | `def` | [functorProdFunctorEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/functorprodfunctorequiv--98eabc4bbb0040f4807ecfa2.md) | 378 | `declaration-track:98eabc4bbb0040f4807ecfa244e3f13724d509e86b4e87829f4eb2ace316fce0` |
| 45 | `def` | [prodOpEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/declarations/prodopequiv--7cacf451cbd4f6d24082a104.md) | 390 | `declaration-track:7cacf451cbd4f6d24082a1048b28a57aa30ed20a2ad464306467d79dad2f3da9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
