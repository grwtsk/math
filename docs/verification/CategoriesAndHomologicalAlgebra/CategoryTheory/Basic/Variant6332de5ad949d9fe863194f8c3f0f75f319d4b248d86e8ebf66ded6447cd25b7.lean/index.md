# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d16013b86fdcff78db9ad98331974958f929f69",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d16013b86fdcff78db9ad98331974958f929f69`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FintypeCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.MonoCoprod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ConcreteCategory` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Diagonal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreGaloisCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/pregaloiscategory--3eeb1bcb370024242288403b.md) | 69 | `declaration-track:3eeb1bcb370024242288403b6f651627b28483d54e32067ac88b3f2c08403ede` |
| 2 | `class` | [FiberFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberfunctor--83cf8e81d2b1ef609a669862.md) | 86 | `declaration-track:83cf8e81d2b1ef609a669862ea5f955e5ae57c3e3a32fe8b0ad0d8eb9d97a309` |
| 3 | `class` | [IsConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/isconnected--9e45dffea76b9ba87d6d3c63.md) | 105 | `declaration-track:9e45dffea76b9ba87d6d3c63fa08bbdc634eb2712041731482fe90678f787019` |
| 4 | `class` | [PreservesIsConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/preservesisconnected--a63c8a935797235808bee05b.md) | 113 | `declaration-track:a63c8a935797235808bee05b1a1dc2f81d6d094ce6514f3752245ede28c6f3f7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--f13431d32c2095d3e24fd336.md) | 123 | `declaration-track:f13431d32c2095d3e24fd336d85b4525853fc36d421f2c034e61b6139628406a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--21933aace49e78a6923d7c13.md) | 125 | `declaration-track:21933aace49e78a6923d7c1355962f66aafdfe8e6c3f0c4ff7c6f244ce9b6d86` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--9b03fb043fae84b1b7ca47ba.md) | 127 | `declaration-track:9b03fb043fae84b1b7ca47ba59b06de20bf1b7b00fa9b6b1b7ec455c678e42a7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--b72c37922f3cda7c89a2a897.md) | 130 | `declaration-track:b72c37922f3cda7c89a2a897e0ee09bbc536aaa391c14e91d73a42af99a698fb` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--6d7186fb793b18752c0c24b0.md) | 144 | `declaration-track:6d7186fb793b18752c0c24b0a18fe30fb12e42fbe2efc200e92dfbb0a9fa18f5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--4e73c51a0a2385851e6ca3b0.md) | 147 | `declaration-track:4e73c51a0a2385851e6ca3b0125324fd514e9c61960f667564896de8e19a402e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--55d75add9ff404908f7e7ba3.md) | 150 | `declaration-track:55d75add9ff404908f7e7ba397ee69049f70dced650910a611cc91afa8510290` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--8819b19c5cff0318a4c87e0a.md) | 154 | `declaration-track:8819b19c5cff0318a4c87e0abb41a3c8514b41ff3a70c6b32cf2f28b1412c92a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--4ee51e3eb47c3f7a879810a3.md) | 160 | `declaration-track:4ee51e3eb47c3f7a879810a35696d8657c5882bede73112a16e8de695a1bd5b6` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--922bd2afcd324ecb24c5d169.md) | 171 | `declaration-track:922bd2afcd324ecb24c5d169538f2620e926f2a6b09eba299003b541651a0fdd` |
| 15 | `instance` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/comp-right--e3e9e363332eb9b50d7dff15.md) | 184 | `declaration-track:e3e9e363332eb9b50d7dff1525ac72daf90872dd32ead2b4f9b5ef6a0e94fcb9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--cdae9494aa5f84468e185065.md) | 196 | `declaration-track:cdae9494aa5f84468e185065e038f526b04e6e5fda9744829eb69738a6de0131` |
| 17 | `lemma` | [mulAction_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/mulaction-def--6ff6c7a2f57d98a7cdf5612b.md) | 201 | `result-track:6ff6c7a2f57d98a7cdf5612b28b1d2d7982bf7e87d01d0eeef8244dad356cfec` |
| 18 | `lemma` | [mulAction_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/mulaction-naturality--7cb98148c7222d2175acab82.md) | 205 | `result-track:7cb98148c7222d2175acab8288a36ca4b2ae1d7890007633867b86451a46aba8` |
| 19 | `lemma` | [has_non_trivial_subobject_of_not_isConnected_of_not_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/has-non-trivial-subobject-of-not-isconnected-of-not-initial--7f87a84645f88388feb1e828.md) | 210 | `result-track:7f87a84645f88388feb1e828107fe3bc73d808f0c9def48f2688d1423e3e6f96` |
| 20 | `lemma` | [card_fiber_eq_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/card-fiber-eq-of-iso--2748b3ec519d82b491770106.md) | 217 | `result-track:2748b3ec519d82b491770106f069772c3a7841003f18529dedf9c7653a65bcc3` |
| 21 | `lemma` | [initial_iff_fiber_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/initial-iff-fiber-empty--93227d31240d2f199406583c.md) | 224 | `result-track:93227d31240d2f199406583c1e0535049ee53625ad6bdddbeecba7531f6211ee` |
| 22 | `lemma` | [not_initial_iff_fiber_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/not-initial-iff-fiber-nonempty--0b5d919a76995fbcd4a03c4e.md) | 235 | `result-track:0b5d919a76995fbcd4a03c4ec461de5eddf676a55f479a03ce6cdf1925d447dd` |
| 23 | `lemma` | [not_initial_of_inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/not-initial-of-inhabited--78c0287d601e1834ec16472b.md) | 241 | `result-track:78c0287d601e1834ec16472bc6ea3228ee17b6a34dbb316d321aa48e8bf0c6c1` |
| 24 | `instance` | [nonempty_fiber_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/nonempty-fiber-of-isconnected--9dd93a9baa5980cce2de6964.md) | 245 | `declaration-track:9dd93a9baa5980cce2de6964b67d7a119bb36da7ec4288f10661fe8563569c34` |
| 25 | `def` | [fiberEqualizerEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberequalizerequiv--f61cd1fd61df14bc9e057697.md) | 252 | `declaration-track:f61cd1fd61df14bc9e05769725cc37978b6083287729b409168a0fdbd2b53fc0` |
| 26 | `lemma` | [fiberEqualizerEquiv_symm_ι_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberequalizerequiv-symm-apply--72df37d4904e3dcc8dbb0570.md) | 258 | `result-track:72df37d4904e3dcc8dbb0570b3ec4605e376b7f7d7994550f5d6f1630b8f185e` |
| 27 | `def` | [fiberPullbackEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberpullbackequiv--8bea2be81634fd614c8fb7f7.md) | 266 | `declaration-track:8bea2be81634fd614c8fb7f76e5f0aa63c543efa629904bac1f4385eb83ea104` |
| 28 | `lemma` | [fiberPullbackEquiv_symm_fst_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberpullbackequiv-symm-fst-apply--6c1495e346b56c4124afaf8e.md) | 272 | `result-track:6c1495e346b56c4124afaf8edd6d4291a8e8f14888f93e45314a56ca29bed0e7` |
| 29 | `lemma` | [fiberPullbackEquiv_symm_snd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberpullbackequiv-symm-snd-apply--bd8df26ac94c61dfe65f225a.md) | 281 | `result-track:bd8df26ac94c61dfe65f225a255a6275dd7dfbab94290ec64674f5982730b0d6` |
| 30 | `def` | [fiberBinaryProductEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberbinaryproductequiv--36b07157c1bf46e881b43c6b.md) | 290 | `declaration-track:36b07157c1bf46e881b43c6b4fd1ad247d82610be652f7a562ebe2828a543029` |
| 31 | `lemma` | [fiberBinaryProductEquiv_symm_fst_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberbinaryproductequiv-symm-fst-apply--a008b4c73839c88913f2b17e.md) | 296 | `result-track:a008b4c73839c88913f2b17e2dffd45953fdf42397d0a1eb63f74f3b9afa1d3a` |
| 32 | `lemma` | [fiberBinaryProductEquiv_symm_snd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/fiberbinaryproductequiv-symm-snd-apply--452e2c6f34b53213f7a4b990.md) | 304 | `result-track:452e2c6f34b53213f7a4b99020817125885f51a788fe7eef5fd3e1393ce3b03e` |
| 33 | `lemma` | [evaluation_injective_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/evaluation-injective-of-isconnected--52d33166a9768c29ff637dbe.md) | 312 | `result-track:52d33166a9768c29ff637dbe0c5884a2738c3b68b95be74e383a75b84dc50d4b` |
| 34 | `lemma` | [evaluation_aut_injective_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/evaluation-aut-injective-of-isconnected--5ab085060ee74782d2f34db3.md) | 321 | `result-track:5ab085060ee74782d2f34db349af23f7bb30e0ab00503ee9c0631736f92c3dd7` |
| 35 | `lemma` | [epi_of_nonempty_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/epi-of-nonempty-of-isconnected--c7b48f2209873f16a63d9545.md) | 330 | `result-track:c7b48f2209873f16a63d95450dee1d013e02bb38ad0c809334372bf3a45caab0` |
| 36 | `lemma` | [surjective_on_fiber_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/surjective-on-fiber-of-epi--2713da8a39bc0b88e3ca6e30.md) | 336 | `result-track:2713da8a39bc0b88e3ca6e30fde614f6ea43b37f3cfde464472510f7f37e456c` |
| 37 | `lemma` | [surjective_of_nonempty_fiber_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/surjective-of-nonempty-fiber-of-isconnected--89afd30b8c38ab670232684c.md) | 340 | `result-track:89afd30b8c38ab670232684cc8da5e5bc45b0270dab4e69ff3cd1c2b20467ef8` |
| 38 | `instance` | [nonempty_fiber_pi_of_nonempty_of_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/nonempty-fiber-pi-of-nonempty-of-finite--c42558e4884e2d96950d6839.md) | 348 | `declaration-track:c42558e4884e2d96950d6839afec4cb8c1979616135d536a11acd9b00b503eab` |
| 39 | `lemma` | [isIso_of_mono_of_eq_card_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/isiso-of-mono-of-eq-card-fiber--e197e2598ff41c21d9f5e8cd.md) | 360 | `result-track:e197e2598ff41c21d9f5e8cd9b77035c838e535869fb506959eb546a1f136ad6` |
| 40 | `lemma` | [lt_card_fiber_of_mono_of_notIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/lt-card-fiber-of-mono-of-notiso--782c3294c6eb03cbf32832f0.md) | 370 | `result-track:782c3294c6eb03cbf32832f0d772b046fbd82a557bd9939a87cfcf33dedf90d0` |
| 41 | `lemma` | [non_zero_card_fiber_of_not_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/non-zero-card-fiber-of-not-initial--9989cb4957bae07f2f86704b.md) | 380 | `result-track:9989cb4957bae07f2f86704bcb017c4a8bfed1afda0ff551b8c8cc2e402cbe5f` |
| 42 | `lemma` | [card_fiber_coprod_eq_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/card-fiber-coprod-eq-sum--17d05165f8130b404e4fc13f.md) | 388 | `result-track:17d05165f8130b404e4fc13f8a0332cc15ed3fb0309bd7acaedc7efb35f87977` |
| 43 | `lemma` | [card_hom_le_card_fiber_of_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/card-hom-le-card-fiber-of-connected--79d99c6f680a35ab51a53a60.md) | 398 | `result-track:79d99c6f680a35ab51a53a60277da01125cac23ccc0bfa1515865ecb59ef5d05` |
| 44 | `lemma` | [card_aut_le_card_fiber_of_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/card-aut-le-card-fiber-of-connected--e1c711a01dd45f59e6acbd74.md) | 405 | `result-track:e1c711a01dd45f59e6acbd74ee5e1ecf7de44ea6f5d7abcb2e87bf7d5e26c41d` |
| 45 | `class` | [GaloisCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/galoiscategory--907fc0d1a4158db20863be0f.md) | 417 | `declaration-track:907fc0d1a4158db20863be0f30e21953ec888f8bdf9c78c829309b56300abeb6` |
| 46 | `def` | [GaloisCategory.getFiberFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/galoiscategory-getfiberfunctor--f8a5fa1189322764221159bf.md) | 426 | `declaration-track:f8a5fa1189322764221159bf09eb1df12e254f765dc79aad3637319f560a86d5` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--d137cbea6cbcc7c94f128236.md) | 430 | `declaration-track:d137cbea6cbcc7c94f12823675f008facb2f0c92b7f5dcef9252bdedff78feba` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--d4c475eef1a2f814c05d1375.md) | 436 | `declaration-track:d4c475eef1a2f814c05d13751b491aac52fd2cbbeab6f90e6a1b73a80955a44e` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--9ee9ff40f5a0846f38695ac9.md) | 443 | `declaration-track:9ee9ff40f5a0846f38695ac9f0bd62d6085325f387f1e87b0e2fadc0c85f8633` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/declarations/instance--853bd81a88679e26301243c3.md) | 450 | `declaration-track:853bd81a88679e26301243c338240a653c4d7c23206cc77642584b546dee0972` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
