# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b358de1c9bb56c63dcf417cd2873bda983e8de6",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b358de1c9bb56c63dcf417cd2873bda983e8de6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.PUnit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Action](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/action--7d04b9acf6e71478c673ae12.md) | 39 | `declaration-track:7d04b9acf6e71478c673ae12b0677429625f80558aa97d0adad654b2501169ef` |
| 2 | `theorem` | [ρ_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/one--5b7fde0342b422c5df938505.md) | 49 | `result-track:5b7fde0342b422c5df93850538e71a9ff1d303d02e39c40bbbfb6b0efa7c662d` |
| 3 | `def` | [ρAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/aut--8abc394b972f14f5ac7830e4.md) | 53 | `declaration-track:8abc394b972f14f5ac7830e491cf238d80393f483a1af7393c473f41993e19ab` |
| 4 | `instance` | [inhabited'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/inhabited--5d70904a37bc76b533fdc68c.md) | 66 | `declaration-track:5d70904a37bc76b533fdc68c3ed8434575038fe394fdb0efe5dca40db28de340` |
| 5 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/trivial--8e9bec38998e0406cafc2e80.md) | 70 | `declaration-track:8e9bec38998e0406cafc2e80b705cfb309fb3a9fd6333d675035143906ed684d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--f41d09cffc85ce9e9cb6a8a9.md) | 74 | `declaration-track:f41d09cffc85ce9e9cb6a8a9aeaf8b458e4d82e599070a21d67afdf163ec351e` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/hom--fa1e205d1cdec63bc12dc32b.md) | 85 | `declaration-track:fa1e205d1cdec63bc12dc32b551dd60d608442ebb69fb7f7cebeb937acfac1c8` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/id--21f651b291f3fe6603386d17.md) | 97 | `declaration-track:21f651b291f3fe6603386d17da35d1ddd36fc6cf0c20b735efa884dab4885c8d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--9674cac75e183432f7c35766.md) | 99 | `declaration-track:9674cac75e183432f7c3576649f43361a325e31085620a89d2b8c8fda68f098d` |
| 10 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/comp--032689e83e987e3bb9616f10.md) | 105 | `declaration-track:032689e83e987e3bb9616f109daacf59f02cf78c15e5cf9da96346302b9bb18e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--8d9bbd76b699c5352a1478a5.md) | 110 | `declaration-track:8d9bbd76b699c5352a1478a50811ce46047064e556650adc29ab9f39f67360bc` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/hom-ext--cc61df447b0b6fae7f7db5be.md) | 116 | `result-track:cc61df447b0b6fae7f7db5befbf102064f51d5e30078c5c84b1dc4910faeac27` |
| 13 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/id-hom--f923bacd5c30874781f0494f.md) | 120 | `result-track:f923bacd5c30874781f0494f1a659f7e7929b5685125b32a8cd916fa33379ce3` |
| 14 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/comp-hom--b470067a4b25e55837009133.md) | 124 | `result-track:b470067a4b25e55837009133dc86e7d95bb4e1213c45e17ee6e789f53baaeb6d` |
| 15 | `theorem` | [hom_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/hom-inv-hom--8892844ca9c7ab87663ca9b8.md) | 129 | `result-track:8892844ca9c7ab87663ca9b8829196ec6539b93924848b8032936b2db82c64d4` |
| 16 | `theorem` | [inv_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/inv-hom-hom--fb5cd53b3ab0f2b69b4fe20f.md) | 134 | `result-track:fb5cd53b3ab0f2b69b4fe20f77145a60ae46f74d4cc6f41de0b9c87de383a99f` |
| 17 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/mkiso--cbe29a41cfb70e0e71c33fa7.md) | 142 | `declaration-track:cbe29a41cfb70e0e71c33fa7d7fc9e617bea8a375235f9355dd0097dc9852d40` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--c6886834d9af367b4d33b30f.md) | 151 | `declaration-track:c6886834d9af367b4d33b30fa5f48f0d4d23a4b49faf37ffbf08e0e4990c683a` |
| 19 | `instance` | [isIso_hom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/isiso-hom-mk--f391fc87e7d34cd22e83d13a.md) | 154 | `declaration-track:f391fc87e7d34cd22e83d13a8e844468bc8d3bb6e981b3769ef0fa174ebb8b77` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--b75d05b0876067d88d363280.md) | 158 | `declaration-track:b75d05b0876067d88d3632800e1402dd3ff9bcbccf869efb94183e521dc9365b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--d528ea233278345e6e0028e9.md) | 161 | `declaration-track:d528ea233278345e6e0028e994a8295aff671ed19b5b1cb591d7462107b3bc4d` |
| 22 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/functor--f578ae6baf4406a716dc1978.md) | 168 | `declaration-track:f578ae6baf4406a716dc197835f33ee73cf0f7bafebb6a3926bcdc716def279b` |
| 23 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/inverse--ec0be84d57871c44357c10e4.md) | 180 | `declaration-track:ec0be84d57871c44357c10e492bc6288f5a84f435d4eeb210b0c51680f8295c6` |
| 24 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/unitiso--95b9e2d5c45e049107d33969.md) | 193 | `declaration-track:95b9e2d5c45e049107d3396924ac6052ffb542c5963048ffc6c4e002b1014b1a` |
| 25 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/counitiso--3c49092cde88078d21f98580.md) | 198 | `declaration-track:3c49092cde88078d21f985804f4f8afa76234cb8565de2371858409a011dd11d` |
| 26 | `def` | [functorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/functorcategoryequivalence--efc88613f849471e1501c195.md) | 213 | `declaration-track:efc88613f849471e1501c19509c50bfd617f25b036b4936a67cc33647f3825fa` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--90975c0243e19034f442a69d.md) | 219 | `declaration-track:90975c0243e19034f442a69d6e9e41589d5312ef643009424135f9aa25902fa4` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--15dc089b041279ab7ba8d620.md) | 222 | `declaration-track:15dc089b041279ab7ba8d6202ec5b3e6a2db67dbbb1271ac3451a97252aaaa0b` |
| 29 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/forget--04da659b59e153935c7f2c61.md) | 237 | `declaration-track:04da659b59e153935c7f2c61212418a3820dcf2fffc0353318f1336cf9e57d0a` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--c887cdc30460eca4b5b097c8.md) | 241 | `declaration-track:c887cdc30460eca4b5b097c87dad131eb0e05dd594fe12e70b586ae2dd8baa36` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--bd872db87772e3c8a623d485.md) | 243 | `declaration-track:bd872db87772e3c8a623d48567620605527aeb79b7adf9682d0712700a74129d` |
| 32 | `abbrev` | [HomSubtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/homsubtype--af5f70e31abcce078bf13b29.md) | 247 | `declaration-track:af5f70e31abcce078bf13b29e7eefd490fbefda4743e484323e228d4f66325a3` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--fcbfaece26f422c9d58de25d.md) | 252 | `declaration-track:fcbfaece26f422c9d58de25d8d079913ff53152d8707cf34dc30f2ecc252e76f` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--65973745cef4e34403261635.md) | 258 | `declaration-track:65973745cef4e3440326163556fdd44694dcb69e52e59884ce1196d0cc3da703` |
| 35 | `instance` | [hasForgetToV](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/hasforgettov--1116272b040acdb96201ee52.md) | 270 | `declaration-track:1116272b040acdb96201ee52fc3b1441c2fbc3eb38189d5eeccbf4ada5d61d24` |
| 36 | `def` | [functorCategoryEquivalenceCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/functorcategoryequivalencecompevaluation--ebf5589bbda56435acefa1de.md) | 274 | `declaration-track:ebf5589bbda56435acefa1deeda2a36927688b8d7554ff1ca65cecf07ebf636a` |
| 37 | `instance` | [preservesLimits_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/preserveslimits-forget--48098551cf7dd5695acf9c20.md) | 278 | `declaration-track:48098551cf7dd5695acf9c200f63a2dc5a2088e4bb49786643671d018c857407` |
| 38 | `instance` | [preservesColimits_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/preservescolimits-forget--485a4c9536de65d44a81f833.md) | 282 | `declaration-track:485a4c9536de65d44a81f833f235130ceeac4e419c5f85df9309c1ba3b116e82` |
| 39 | `theorem` | [Iso.conj_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/iso-conj--96ab3a91435d6f584d01b6cf.md) | 289 | `result-track:96ab3a91435d6f584d01b6cfe05ad3eca52426fda0c9fea807cfc33223c771dd` |
| 40 | `def` | [actionPunitEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/actionpunitequivalence--e4531bf7bb900758213c9992.md) | 294 | `declaration-track:e4531bf7bb900758213c99925d44f30917753df35ce7c8f21e58c652e3e6eceb` |
| 41 | `def` | [res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/res--9d28b6dee57045de3defc0b0.md) | 314 | `declaration-track:9d28b6dee57045de3defc0b0d6b497f7440be5f1f4921f667135b33480cd673e` |
| 42 | `def` | [resId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/resid--2b2e4f0522412e16a66c0fde.md) | 326 | `declaration-track:2b2e4f0522412e16a66c0fde8f0b2e651cc4ea3b5893672c5080fdfb3f3f36e2` |
| 43 | `def` | [resComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/rescomp--cdfaff223a24a1c8d84b7f8c.md) | 333 | `declaration-track:cdfaff223a24a1c8d84b7f8c2db2fcaac261c68e067960c6673420f65f64e7be` |
| 44 | `def` | [resCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/rescongr--ecd71a2d9f63a5c3b75e90a4.md) | 339 | `declaration-track:ecd71a2d9f63a5c3b75e90a43cea806c3eabf992bb84ec7da49a5fd97ee69074` |
| 45 | `def` | [resEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/resequiv--53eb31c1667aab1e9c4455f2.md) | 345 | `declaration-track:53eb31c1667aab1e9c4455f24ea432e5a7757ca04e8e3ab7a25b19316fe3eaa7` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/instance--945c19ca7683723fad5ceb26.md) | 359 | `declaration-track:945c19ca7683723fad5ceb269f0ac7155c5a4a6edaa7598d89d64a8800590af3` |
| 47 | `lemma` | [full_res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/full-res--ba048c6332164d92183d2c72.md) | 366 | `result-track:ba048c6332164d92183d2c727f3576f0dbdc453f0a39f47a413e0f5d1066e509` |
| 48 | `def` | [mapAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/mapaction--906a198b84e78f510a409a35.md) | 385 | `declaration-track:906a198b84e78f510a409a350fd0ae1468fa7acf52ba791a61617abe1e3dde3a` |
| 49 | `def` | [mapActionComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/mapactioncomp--222dd8ad61097d3aded5ec61.md) | 404 | `declaration-track:222dd8ad61097d3aded5ec6134c6a7b97e0f075da907ba5ec5b830a800ac5ff4` |
| 50 | `def` | [mapActionCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/mapactioncongr--506172d405befcc3e29094aa.md) | 410 | `declaration-track:506172d405befcc3e29094aad35c0b43da4e34878baa822c7ccc9522d3b385e8` |
| 51 | `def` | [Equivalence.mapAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/declarations/equivalence-mapaction--1194995dab1b28bf6e624c13.md) | 419 | `declaration-track:1194995dab1b28bf6e624c13cb2f8c6be59093dcfe9b43abc76d19ba84a9fbaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
