# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithful.Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33bc6edef2da57421cbe3642c3c4700961526b4b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33bc6edef2da57421cbe3642c3c4700961526b4b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unit_mono_of_L_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/unit-mono-of-l-faithful--f3e4ec99a438c37e5ddbf001.md) | 60 | `declaration-track:f3e4ec99a438c37e5ddbf0016ac589fc02dc400b9bb8eabe665d2d4d3bf1479e` |
| 2 | `def` | [unitSplitEpiOfLFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/unitsplitepioflfull--ef7b71e09f405f3019c08f81.md) | 65 | `declaration-track:ef7b71e09f405f3019c08f8164f124ba812e9308cfd8fdbfdb9b4c5bceb893f8` |
| 3 | `instance` | [unit_isSplitEpi_of_L_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/unit-issplitepi-of-l-full--cc1b49aeab64ad7c2c54dbc0.md) | 70 | `declaration-track:cc1b49aeab64ad7c2c54dbc0bb39720e58bea67a4a8ef61a536abbf98eb29069` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--de08f6b3a1d8bd4256bf7b37.md) | 73 | `declaration-track:de08f6b3a1d8bd4256bf7b37c27ccc86d250b6e5fdd21f48ab915c5ff50d5f33` |
| 5 | `instance` | [unit_isIso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/unit-isiso-of-l-fully-faithful--8d505b62c3441c2e7f56c7af.md) | 77 | `declaration-track:8d505b62c3441c2e7f56c7af3b3aed1d4ba43b48aab867c6864c4c8d9ab61905` |
| 6 | `instance` | [counit_epi_of_R_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/counit-epi-of-r-faithful--9c426a18eac6732c73e45ab6.md) | 81 | `declaration-track:9c426a18eac6732c73e45ab697eb35794cd9916e83fb09b3e18e0b7194271d60` |
| 7 | `def` | [counitSplitMonoOfRFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/counitsplitmonoofrfull--6393020564585df37b3dd091.md) | 86 | `declaration-track:6393020564585df37b3dd091940d38bffbc0e83454970136ff5f125bbb6f99ad` |
| 8 | `instance` | [counit_isSplitMono_of_R_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/counit-issplitmono-of-r-full--119a758c754b4e71cc64c9e8.md) | 91 | `declaration-track:119a758c754b4e71cc64c9e8fa92e79b6f42adfb2ec7dbb1bf7dc1a364bddcfd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--0b5b1fb6161660dd68705c8e.md) | 94 | `declaration-track:0b5b1fb6161660dd68705c8e0fd1063f6c5c40ad4598e69b6b9d384bb2f2fe7d` |
| 10 | `instance` | [counit_isIso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/counit-isiso-of-r-fully-faithful--dfe79d7de8ed0fad1db07004.md) | 98 | `declaration-track:dfe79d7de8ed0fad1db0700428fc48576bc1bfa708efadbebc4e403c955125b1` |
| 11 | `theorem` | [inv_map_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/inv-map-unit--c27b3096a2fbd5c46b12278c.md) | 104 | `result-track:c27b3096a2fbd5c46b12278c067c7fbf2e9eb0218371dbef909f8cd83601c927` |
| 12 | `def` | [whiskerLeftLCounitIsoOfIsIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/whiskerleftlcounitisoofisisounit--543845c5025da07df0c67d67.md) | 110 | `declaration-track:543845c5025da07df0c67d67fd09a8684d0470fef14a5a380e086494ceb28a79` |
| 13 | `theorem` | [inv_counit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/inv-counit-map--eb24ee3a7cbe2ab71a485a28.md) | 116 | `result-track:eb24ee3a7cbe2ab71a485a28f627683e305cf5de5f3dfbaef74476e54ac39581` |
| 14 | `def` | [whiskerLeftRUnitIsoOfIsIsoCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/whiskerleftrunitisoofisisocounit--efdc9e14bcc563048539fcea.md) | 122 | `declaration-track:efdc9e14bcc563048539fcea6b0ce377fd709561770fee42fff9ed491d7516d2` |
| 15 | `lemma` | [faithful_L_of_mono_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/faithful-l-of-mono-unit-app--131239d003ab95b416e06352.md) | 126 | `result-track:131239d003ab95b416e06352598cc63ecdd3fc2b851df25872597af26fbb0fbf` |
| 16 | `lemma` | [full_L_of_isSplitEpi_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/full-l-of-issplitepi-unit-app--9f48f073e581a342ff393711.md) | 133 | `result-track:9f48f073e581a342ff39371199bb3653d7a992a9186c0ca881afa86acbe60051` |
| 17 | `def` | [fullyFaithfulLOfIsIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/fullyfaithfullofisisounit--78eb581ceb3d28f2bb8c64da.md) | 142 | `declaration-track:78eb581ceb3d28f2bb8c64da9e9441e1bf244eca3c0c50c4218ddd3de1091b6c` |
| 18 | `lemma` | [faithful_R_of_epi_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/faithful-r-of-epi-counit-app--91fc98dfba79e92ec9a757ac.md) | 146 | `result-track:91fc98dfba79e92ec9a757ac928f0fa62f388145fd6fd82568b0f44ec996dd7c` |
| 19 | `lemma` | [full_R_of_isSplitMono_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/full-r-of-issplitmono-counit-app--c8dec71ee53eb7bc73af1ad4.md) | 153 | `result-track:c8dec71ee53eb7bc73af1ad48166ca2f1ffb58281150eb40718aca61790ec7e4` |
| 20 | `def` | [fullyFaithfulROfIsIsoCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/fullyfaithfulrofisisocounit--5eb27c326024a70fcf97aae6.md) | 162 | `declaration-track:5eb27c326024a70fcf97aae675a0c3d267daeb2fd02fd99be9d9b78f9d2040cf` |
| 21 | `instance` | [whiskerLeft_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/whiskerleft-counit-iso-of-l-fully-faithful--dbf6efdd77121224d251943e.md) | 165 | `declaration-track:dbf6efdd77121224d251943e29e2146ab8fa42b470a2f9722418bd19111a8d33` |
| 22 | `instance` | [whiskerRight_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/whiskerright-counit-iso-of-l-fully-faithful--6daf7390fb2a96551a4c9dd1.md) | 172 | `declaration-track:6daf7390fb2a96551a4c9dd191418927624120253e3894bcfd27deba230874e9` |
| 23 | `instance` | [whiskerLeft_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/whiskerleft-unit-iso-of-r-fully-faithful--57b02709e9718ff8d2095fbc.md) | 179 | `declaration-track:57b02709e9718ff8d2095fbc858b52616ab15f29947bc6cc553489c5ba74e317` |
| 24 | `instance` | [whiskerRight_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/whiskerright-unit-iso-of-r-fully-faithful--d1f360b4f53ec39c4e54a2b7.md) | 186 | `declaration-track:d1f360b4f53ec39c4e54a2b7e2f1716c7e167a20e3da4eae56df03b2e977783b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--d296041a7098eed1a9c97642.md) | 193 | `declaration-track:d296041a7098eed1a9c9764257b1877802b20304b31699cb6d42ba3350ae4eae` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--1430c0a9c0c9184f71388032.md) | 196 | `declaration-track:1430c0a9c0c9184f71388032e7a4cc0ecfa44fb8aac36162c114552c83ee94a6` |
| 27 | `lemma` | [isIso_counit_app_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/isiso-counit-app-iff-mem-essimage--da7fe72a12140c8d1fa6b877.md) | 199 | `result-track:da7fe72a12140c8d1fa6b877a04b4eb9c64ccec229692587b65557b4dbd146e3` |
| 28 | `lemma` | [mem_essImage_of_counit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/mem-essimage-of-counit-isiso--e37fa6dcbac555528dd2f421.md) | 208 | `result-track:e37fa6dcbac555528dd2f4218a7aeda1a5cf742bc0e643b3eccace8ce6ad8cd9` |
| 29 | `lemma` | [isIso_counit_app_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/isiso-counit-app-of-iso--616da6ee633f9210f94ea124.md) | 212 | `result-track:616da6ee633f9210f94ea12454972469d6c6510a9f4eb06d1b3e136242046fec` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--58be1fac0cb17ece2f12acfe.md) | 216 | `declaration-track:58be1fac0cb17ece2f12acfe7ccb6aa498cffae96551cae802aff9dc058c9de6` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--7c72834cbd97241e38465993.md) | 219 | `declaration-track:7c72834cbd97241e38465993490c0f950502eb9b94488fb496db98ae7d40b7fc` |
| 32 | `lemma` | [isIso_unit_app_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/isiso-unit-app-iff-mem-essimage--e99ca9ebd826422bd693603b.md) | 222 | `result-track:e99ca9ebd826422bd693603ba330007c97f3204179bcca19baa8806ea8afefda` |
| 33 | `theorem` | [mem_essImage_of_unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/mem-essimage-of-unit-isiso--a7abebc8168560b4bc8cca52.md) | 232 | `result-track:a7abebc8168560b4bc8cca521252f4e7641fad19f8f436ba338d54c736509d72` |
| 34 | `lemma` | [isIso_unit_app_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/isiso-unit-app-of-iso--0275a74a2b731d4a24d91b88.md) | 236 | `result-track:0275a74a2b731d4a24d91b88ac024dc4dbed5bf5a19352bc1e6038c38baad755` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--a23ae6061ffa39904fdcf4ed.md) | 240 | `declaration-track:a23ae6061ffa39904fdcf4edd7551640d158047bf1f72c134a2ff49ac31794dd` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--c9a9ea120366dc74b2057247.md) | 244 | `declaration-track:c9a9ea120366dc74b205724757664a1fb61d966b3193f963da9e37762fa9fb16` |
| 37 | `lemma` | [isEquivalence_left_of_isEquivalence_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/isequivalence-left-of-isequivalence-right--a5d5f4a583d86d0909c001b5.md) | 248 | `result-track:a5d5f4a583d86d0909c001b57f532fe8f39b5f4545e6bf8bb9790c60e0a4b80a` |
| 38 | `lemma` | [isEquivalence_right_of_isEquivalence_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/isequivalence-right-of-isequivalence-left--2d235ad58eb17e45d480f9b3.md) | 251 | `result-track:2d235ad58eb17e45d480f9b31a0710d0ba6c46d9cc6e5c99fb829625eeb78ab8` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--e7fcb7779d8d77565a67af2f.md) | 254 | `declaration-track:e7fcb7779d8d77565a67af2f47d2bb3909c8e7d5ed4dc24acaae68194b91115c` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant14b07321d9ebdd9d8658e5d8aa5f2ddbf2ebd90781d514aef14868651b54bdac.lean/declarations/instance--18b93b9d145249508987ed55.md) | 258 | `declaration-track:18b93b9d145249508987ed55eb3a89c8df426fec2d77656a6ecfb78f152650cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
