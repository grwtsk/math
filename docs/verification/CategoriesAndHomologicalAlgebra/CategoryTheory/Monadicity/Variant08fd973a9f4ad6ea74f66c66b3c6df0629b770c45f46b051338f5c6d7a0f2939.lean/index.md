# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monadicity.Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e48756e56c9f434a7856720037b671c3cdaaf346",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e48756e56c9f434a7856720037b671c3cdaaf346`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Coequalizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [main_pair_reflexive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/main-pair-reflexive--c7a80d5d5fb52359a85c43f5.md) | 60 | `declaration-track:c7a80d5d5fb52359a85c43f537533c708bac1ca31c050e5a64d4ec97a4032021` |
| 2 | `instance` | [main_pair_G_split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/main-pair-g-split--42471040b648ede8511a31ed.md) | 72 | `declaration-track:42471040b648ede8511a31edea0e15ebc3161890bfb1a2ceb7108f56de703d9e` |
| 3 | `def` | [comparisonLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/comparisonleftadjointobj--c53a93b8221cf4e29f86dbdf.md) | 78 | `declaration-track:c53a93b8221cf4e29f86dbdff83682a8de949d795c50f7ab019ceb50a2001b75` |
| 4 | `def` | [comparisonLeftAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/comparisonleftadjointhomequiv--11517dd50795a9be7bd57336.md) | 87 | `declaration-track:11517dd50795a9be7bd573369c50a8c904985e35effd9876513aa0df9fa537a3` |
| 5 | `def` | [leftAdjointComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/leftadjointcomparison--4505b133ce94e6a88d56b49a.md) | 112 | `declaration-track:4505b133ce94e6a88d56b49afbea621070d972013e6b8bfde64349feba0deddb` |
| 6 | `def` | [comparisonAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/comparisonadjunction--62fe14704e0bb66dd175eacf.md) | 131 | `declaration-track:62fe14704e0bb66dd175eacfcbcec455a29f376d2ea2219adeadc99d9404bb8d` |
| 7 | `theorem` | [comparisonAdjunction_unit_f_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/comparisonadjunction-unit-f-aux--f718e1070cc1e22733524ede.md) | 139 | `result-track:f718e1070cc1e22733524edef54d86912314e4b5449023ff4eb64aeefde7b2a6` |
| 8 | `def` | [unitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/unitcofork--0d3c34dfcfaa511c9b0be861.md) | 152 | `declaration-track:0d3c34dfcfaa511c9b0be861de906d63bccfafa2dc5c38f12a2e9a0547e8a94b` |
| 9 | `theorem` | [unitCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/unitcofork--63e5cf1e4df5a364c7d7232f.md) | 159 | `result-track:63e5cf1e4df5a364c7d7232f11596e558668f83f841a898055486ace808628fb` |
| 10 | `theorem` | [comparisonAdjunction_unit_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/comparisonadjunction-unit-f--dad06091c18482b52fcea030.md) | 164 | `result-track:dad06091c18482b52fcea030d9e091cb69225c3942e2d8fdc100b08a4b942b44` |
| 11 | `def` | [counitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/counitcofork--26b194db0284532d2854c66a.md) | 182 | `declaration-track:26b194db0284532d2854c66a1ac3bc0631710d0e1a9b903d345b51e0a815d99a` |
| 12 | `def` | [unitColimitOfPreservesCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/unitcolimitofpreservescoequalizer--255db0808a8442976e36904c.md) | 189 | `declaration-track:255db0808a8442976e36904cd20cf8c29602ee7fc18581a622bc09e0cd094f28` |
| 13 | `def` | [counitCoequalizerOfReflectsCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/counitcoequalizerofreflectscoequalizer--fb8c39c2cfcf3dfe72f45014.md) | 196 | `declaration-track:fb8c39c2cfcf3dfe72f45014945786c7309db9e9ea7486ebb21dcbed3581b96f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--bfc09bcf578e3053dd397f1d.md) | 203 | `declaration-track:bfc09bcf578e3053dd397f1d9449d119589f4afe359c0cec2ac0bed55f70bcb7` |
| 15 | `theorem` | [comparisonAdjunction_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/comparisonadjunction-counit-app--ed0b73d950d8e5470c464c5b.md) | 212 | `result-track:ed0b73d950d8e5470c464c5bbb738526a202cd6e1d7e793ff8d41f36c841f030` |
| 16 | `def` | [createsGSplitCoequalizersOfMonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/createsgsplitcoequalizersofmonadic--a79f9c70d331a8f427b08775.md) | 234 | `declaration-track:a79f9c70d331a8f427b08775299d35577449c09678a3f6a430e1ce53b2a2da00` |
| 17 | `class` | [HasCoequalizerOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/hascoequalizerofissplitpair--8edfa1164c4da3db0571c77a.md) | 249 | `declaration-track:8edfa1164c4da3db0571c77ae8dab9b5cc0f64e8e11b3b21b24a17f174a0eb52` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--96dad816b114852cb96875ed.md) | 256 | `declaration-track:96dad816b114852cb96875ed78ced8f149f740b17f6d7e48ba517b7c501ce97a` |
| 19 | `class` | [PreservesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/preservescolimitofissplitpair--65da947e7d43e080b5ac3f81.md) | 265 | `declaration-track:65da947e7d43e080b5ac3f815355cbb73abfd183aa6185bb23a00c6708017e3f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--e76fc887eddb41b658095dcc.md) | 268 | `declaration-track:e76fc887eddb41b658095dcc2029e1704b46d5ca958ca5b5616b86198dff7c7f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--9ae6062e526d909541d23683.md) | 271 | `declaration-track:9ae6062e526d909541d2368392a879ca0ab74a1b1e1f0a89769d4373c6c8eedc` |
| 22 | `class` | [ReflectsColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/reflectscolimitofissplitpair--67f3693959c496784aca9714.md) | 280 | `declaration-track:67f3693959c496784aca9714f7baeceff5384d02dcbcd2091d0bdb33899404f2` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--28b650c5f9a0a1720aeed806.md) | 283 | `declaration-track:28b650c5f9a0a1720aeed80673db083e353ecde0f7387979c8d3ce99dd27c674` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--280241c40bb23ccf106f88ae.md) | 286 | `declaration-track:280241c40bb23ccf106f88aef349492db15cdddd3909cf4d2118747c2ef8f051` |
| 25 | `def` | [monadicOfHasPreservesReflectsGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/monadicofhaspreservesreflectsgsplitcoequalizers--b07bcb4cf06fc30ef5c952cb.md) | 294 | `declaration-track:b07bcb4cf06fc30ef5c952cb89ef989623a0b694c5bc178a7a40a090c66ad655` |
| 26 | `class` | [CreatesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/createscolimitofissplitpair--8b2db892778967367f2e71ba.md) | 329 | `declaration-track:8b2db892778967367f2e71ba0bb3605c2c1bf638d9e5fcf9a5cd83331792bcd5` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--f84b345fbbc55662a5d15a94.md) | 333 | `declaration-track:f84b345fbbc55662a5d15a9491bdddc08fd339272a13f218f583d0a9db70ec7a` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--7533ae2d692f83a3077a0def.md) | 336 | `declaration-track:7533ae2d692f83a3077a0defc16af60415e2b42e6e5f57db3e11609b4ec74567` |
| 29 | `def` | [monadicOfCreatesGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/monadicofcreatesgsplitcoequalizers--c121ac9589f7178e1bedca5e.md) | 346 | `declaration-track:c121ac9589f7178e1bedca5ec3a890e8e34dc57e4d01bf8dda704b2c105df2a4` |
| 30 | `def` | [monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/monadicofhaspreservesgsplitcoequalizersofreflectsisomorphisms--941a62e39ac7366b4e540c0a.md) | 359 | `declaration-track:941a62e39ac7366b4e540c0ab6fba70024522fa1c77110e96d9dca54135f8669` |
| 31 | `class` | [PreservesColimitOfIsReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/preservescolimitofisreflexivepair--9ab9906e7fb6ff3e44b57c72.md) | 377 | `declaration-track:9ab9906e7fb6ff3e44b57c723a5c3d9435931bacaa309ebae78ff2effd379fd5` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--d7c97726a7a78b779c477f3c.md) | 380 | `declaration-track:d7c97726a7a78b779c477f3c7ef0977d1322cb735a4b1a57f78f9675417dea58` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/instance--96220d8bd29abec2c68f2deb.md) | 383 | `declaration-track:96220d8bd29abec2c68f2debd6c7390c57fcfb650e22c5189b0f52815a610d6b` |
| 34 | `def` | [monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/declarations/monadicofhaspreservesreflexivecoequalizersofreflectsisomorphisms--ea5ffa03d10250beeb8c7432.md) | 393 | `declaration-track:ea5ffa03d10250beeb8c7432ce45b11dc3f01b6be6c51ed693950aaf3d91d2a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
