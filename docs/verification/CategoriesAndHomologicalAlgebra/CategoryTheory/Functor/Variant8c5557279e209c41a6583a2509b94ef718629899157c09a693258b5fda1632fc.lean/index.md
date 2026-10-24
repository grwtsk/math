# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "411c31fecbf3bc3d24ea318eaa0497586c23868d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `411c31fecbf3bc3d24ea318eaa0497586c23868d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Category` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LaxMonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/laxmonoidalfunctor--b395cd1311fb02d41f4c156b.md) | 75 | `declaration-track:b395cd1311fb02d41f4c156b28129b3b228990a060162d5584ca9abf67946559` |
| 2 | `theorem` | [LaxMonoidalFunctor.left_unitality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/laxmonoidalfunctor-left-unitality-inv--cffbc2fd4e9627ad4f262a13.md) | 122 | `result-track:cffbc2fd4e9627ad4f262a138e1c22b7341fcf719c2ae91443690805cffb6330` |
| 3 | `theorem` | [LaxMonoidalFunctor.right_unitality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/laxmonoidalfunctor-right-unitality-inv--f328d85f86e173cf523b2a30.md) | 130 | `result-track:f328d85f86e173cf523b2a3043edac16e3a1f6e54cff8f9ff0e5559e47d8a2c9` |
| 4 | `theorem` | [LaxMonoidalFunctor.associativity_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/laxmonoidalfunctor-associativity-inv--f7dbbce0b55dd3819dc17aec.md) | 138 | `result-track:f7dbbce0b55dd3819dc17aec470b7903b6662d73648f6c9fd56cb156067cf10d` |
| 5 | `structure` | [MonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/monoidalfunctor--9850950a31f5d0059bfc28bc.md) | 152 | `declaration-track:9850950a31f5d0059bfc28bc84f3758be0fa45d5d5f298ef11b79c94578f3252` |
| 6 | `def` | [MonoidalFunctor.εIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/monoidalfunctor-iso--7eee340b2d0fc6f087e20cf0.md) | 166 | `declaration-track:7eee340b2d0fc6f087e20cf0adb66a54691183f9bf20729329cc8d5ae99d8c93` |
| 7 | `def` | [MonoidalFunctor.μIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/monoidalfunctor-iso--b42317c06714aa3f28689362.md) | 173 | `declaration-track:b42317c06714aa3f286893627f5c0186e0a98a8bc76413509f96aaf44738427e` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/id--5f0cd318892ed2bc6c6c68fb.md) | 188 | `declaration-track:5f0cd318892ed2bc6c6c68fbf6afdd46487f4fe93f41ec712070b2f217cf4213` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/instance--247f95b08d9f4a15e64b6ae5.md) | 194 | `declaration-track:247f95b08d9f4a15e64b6ae53563197401e7a5ff26f24062c8218d5a6ced850b` |
| 10 | `theorem` | [map_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/map-tensor--31d3d0791e7802a07b8d8b0c.md) | 209 | `result-track:31d3d0791e7802a07b8d8b0cbd87ade5e292ea884047a1b3f069f65fa89d24bb` |
| 11 | `theorem` | [map_leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/map-leftunitor--22f0b8e00032974fe6ad1087.md) | 213 | `result-track:22f0b8e00032974fe6ad1087170f2c92db6d2699cf870a641b2d9bc5019ee005` |
| 12 | `theorem` | [map_rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/map-rightunitor--11e80584f35bf25b49d22fdf.md) | 222 | `result-track:11e80584f35bf25b49d22fdf624b8fa55f289d95bc989b56838605496977fcd4` |
| 13 | `def` | [μNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/natiso--82d3180ca99ce7b15f0bc4eb.md) | 232 | `declaration-track:82d3180ca99ce7b15f0bc4eb2d6f1a78bc7bb8c5a575adf9ac1b1314e625f953` |
| 14 | `theorem` | [μIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/iso-hom--4385293a59be58292a2dbba4.md) | 244 | `result-track:4385293a59be58292a2dbba4e13d668396c6e74925e425c735a7ddebe9efe539` |
| 15 | `theorem` | [μ_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/inv-hom-id--1d5e9fec63ea963e592391d2.md) | 250 | `result-track:1d5e9fec63ea963e592391d205770fe6fd45d527951e5d689081b5b13b41672f` |
| 16 | `theorem` | [μ_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/hom-inv-id--b313fd4b5d4dff84d9167c8f.md) | 255 | `result-track:b313fd4b5d4dff84d9167c8f68f90005599835aec723785acfc7cdf3b82595fe` |
| 17 | `theorem` | [εIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/iso-hom--3176982fe3ac532100a01111.md) | 260 | `result-track:3176982fe3ac532100a011113865bd85af3a55863a43c0a26da4d303d0d86589` |
| 18 | `theorem` | [ε_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/inv-hom-id--a273cb1f49d5e3fbeba9716d.md) | 266 | `result-track:a273cb1f49d5e3fbeba9716d6ed115319c1ba4cb8009b201b46912a7daa56be8` |
| 19 | `theorem` | [ε_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/hom-inv-id--b7b4336c98d38463a69af61b.md) | 271 | `result-track:b7b4336c98d38463a69af61b16ed758e516d0e63e8418894169aa655d291730a` |
| 20 | `def` | [commTensorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/commtensorleft--a450bd8701d3db77f0f280e0.md) | 277 | `declaration-track:a450bd8701d3db77f0f280e0449f7783bae231a705bf38305846bf95f8531bf0` |
| 21 | `def` | [commTensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/commtensorright--72079e15555e76b761895adf.md) | 286 | `declaration-track:72079e15555e76b761895adfcc28a4385b0055dfb43d56b6c6960d04f259530d` |
| 22 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/id--b64ef6a85a789898fe83adfa.md) | 301 | `declaration-track:b64ef6a85a789898fe83adfae461db041c0bfa185243d87ec9d7e903c995481c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/instance--f49fcf33643420a20255fcc9.md) | 307 | `declaration-track:f49fcf33643420a20255fcc9045c086fd34532bc6a449404cae364dce6e6d79a` |
| 24 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/comp--5fd96f6ba84b87d587a0ad85.md) | 327 | `declaration-track:5fd96f6ba84b87d587a0ad850e4b7b180615ff20f65a59de5c31c12a10954a35` |
| 25 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod--274b5be4912a2bbbdf8696b8.md) | 376 | `declaration-track:274b5be4912a2bbbdf8696b8da6860f59ba53668feefefb87aea0cee10c977ab` |
| 26 | `def` | [diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/diag--36a4760da9113a9abd058769.md) | 390 | `declaration-track:36a4760da9113a9abd05876993eddb732b9a015998f5a3d962ded6b226cbae6e` |
| 27 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod--6049ce3e3f810b24a56ad57b.md) | 404 | `declaration-track:6049ce3e3f810b24a56ad57bd39caa0f01e9e8fcdd7dbfdb163a3b26367bacc1` |
| 28 | `theorem` | [prod'_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod-tofunctor--f47e442c6bdd3e3cde70c7e3.md) | 409 | `result-track:f47e442c6bdd3e3cde70c7e384fb87d14891e4592ee04d14797468713ca67fad` |
| 29 | `theorem` | [prod'_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod--e1c6413714e094349b176bfb.md) | 414 | `result-track:e1c6413714e094349b176bfb532b1da073616791b5448b1c5a5e88e07a8752c3` |
| 30 | `theorem` | [prod'_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod--829474db29df24ff8c7bcab7.md) | 420 | `result-track:829474db29df24ff8c7bcab7d2f9c70fc5e12d80fb1184acd9d1a2938a5b58da` |
| 31 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/comp--36c33f519431fd232d2435f8.md) | 433 | `declaration-track:36c33f519431fd232d2435f8021f0a108f72a5a6ad9ccee8a8474d22b1c71eb5` |
| 32 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod--946d36d0f97aa657479bd1ca.md) | 462 | `declaration-track:946d36d0f97aa657479bd1ca7a418e2da139ab13ba75640fee29d16f5e109b9c` |
| 33 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod--456dfc6ea936243b3737e6d3.md) | 478 | `declaration-track:456dfc6ea936243b3737e6d304c0d3157dd7e5b8a08670a03ae7ba03345e9e88` |
| 34 | `theorem` | [prod'_toLaxMonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/prod-tolaxmonoidalfunctor--4ecf391e63d626a40447337a.md) | 483 | `result-track:4ecf391e63d626a40447337a8d5beced7cacb4a3b4050adb48c1d4441788f0cf` |
| 35 | `def` | [monoidalAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/monoidaladjoint--1b0b31d27833483bea90e4e4.md) | 494 | `declaration-track:1b0b31d27833483bea90e4e452653373d3a835d3dede86d7d5cfb62c3cf37135` |
| 36 | `def` | [monoidalInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/declarations/monoidalinverse--57078dafc893d09a61417f94.md) | 535 | `declaration-track:57078dafc893d09a61417f94974c297c5636eb5f2fb7f42aa2cad8781f08956d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
