# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "104a53364fb26ec17e68f203011982483175b5ab",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `104a53364fb26ec17e68f203011982483175b5ab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.KanExtension` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictedYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/restrictedyoneda--e262cad6c83e03e272bf151e.md) | 73 | `declaration-track:e262cad6c83e03e272bf151e55f494c7402e7b96ba0bdc70f38bb95b021824f2` |
| 2 | `def` | [restrictedYonedaYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/restrictedyonedayoneda--5aa8e23c9fd41bf56d032bb5.md) | 81 | `declaration-track:5aa8e23c9fd41bf56d032bb501dde3337c714b5818dff72e3958f798adde56da` |
| 3 | `def` | [restrictYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/restrictyonedahomequiv--2ea1bfa9d423be783a821785.md) | 98 | `declaration-track:2ea1bfa9d423be783a82178511533d28174d983e276b5a646ea43a0afd977591` |
| 4 | `theorem` | [restrictYonedaHomEquiv_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/restrictyonedahomequiv-natural--447b6031869517299da6cdca.md) | 127 | `result-track:447b6031869517299da6cdca7d1c7b8ef70deec6f3523dfd399b6399f9581d84` |
| 5 | `def` | [extendAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyoneda--39a58f8001339d6c9fa2abbd.md) | 142 | `declaration-track:39a58f8001339d6c9fa2abbd50ef240a66fe55ab8f211811a5f4be969ccb9eb5` |
| 6 | `theorem` | [extendAlongYoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyoneda-obj--9a7a4466199b0a3b51ce8ef6.md) | 148 | `result-track:9a7a4466199b0a3b51ce8ef611d66169eb2d2eb5a8484eec252d2d15bceef24e` |
| 7 | `lemma` | [extendAlongYoneda_obj.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyoneda-obj-hom-ext--aa9e8a7fe304843063f9f082.md) | 158 | `result-track:aa9e8a7fe304843063f9f082b31e519a9fafa25fddabe5b2565b16a41bc288bf` |
| 8 | `theorem` | [extendAlongYoneda_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyoneda-map--5461a5c18988c16fcc902c4a.md) | 164 | `result-track:5461a5c18988c16fcc902c4ae513e0ff68efd2b0a5126dfdf593526dd5adbe66` |
| 9 | `def` | [yonedaAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/yonedaadjunction--7627868943da53d979eeac29.md) | 188 | `declaration-track:7627868943da53d979eeac29f0dd809d5c5de900223f558401adfb39c8f99dad` |
| 10 | `def` | [Elements.initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/elements-initial--dd357e996544aa70bd066c0d.md) | 196 | `declaration-track:dd357e996544aa70bd066c0dc7c0e05b1ee450bb4c7e8b052f271b7105af796c` |
| 11 | `def` | [isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/isinitial--23426425d6b54dc336d00303.md) | 202 | `declaration-track:23426425d6b54dc336d00303cb25e2a2a6f1e804f8debd6120d2b6aaf02d5a13` |
| 12 | `def` | [isExtensionAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/isextensionalongyoneda--4d385c0b03e2a25040d83d28.md) | 219 | `declaration-track:4d385c0b03e2a25040d83d28930cc65552259176b332f26fabe2cf5b1bdbff4f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/instance--be771bcf6ee083afd020b393.md) | 240 | `declaration-track:be771bcf6ee083afd020b3934df6d9e6f17184f22a3747c22e9a48d3fe8b49a4` |
| 14 | `def` | [extendAlongYonedaIsoKanApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyonedaisokanapp--b771fd71e81fb2c340bb8d9e.md) | 247 | `declaration-track:b771fd71e81fb2c340bb8d9e8460e52b1883b5bd7892cba5d917d56d57d0f355` |
| 15 | `def` | [extendAlongYonedaIsoKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyonedaisokan--e218fe776eeb0f92c59c1545.md) | 276 | `declaration-track:e218fe776eeb0f92c59c154538df350dd46515cc0bf6c8451373b3a43356c9ed` |
| 16 | `def` | [extendOfCompYonedaIsoLan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendofcompyonedaisolan--8723f910555b2df71060c8df.md) | 290 | `declaration-track:8723f910555b2df71060c8df0f4429c38b17a2cda8fa56d61d3677997a377608` |
| 17 | `def` | [compYonedaIsoYonedaCompLan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/compyonedaisoyonedacomplan--024fa3f2210d5597ba883373.md) | 307 | `declaration-track:024fa3f2210d5597ba8833734d46f73001dcd709746c8eb733047f7190194a2b` |
| 18 | `def` | [extendAlongYonedaYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/extendalongyonedayoneda--eba2114d2644931515908571.md) | 316 | `declaration-track:eba2114d26449315159085710fef44d5348341f64966a007fcf2fb3ef997c5fe` |
| 19 | `def` | [functorToRepresentables](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/functortorepresentables--61e6e4722e5485ed53811fa9.md) | 325 | `declaration-track:61e6e4722e5485ed53811fa9308ab7ce47eb8fe946c4822d95d05676ee409865` |
| 20 | `def` | [coconeOfRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/coconeofrepresentable--5368e21f4d5a5c32164d2b42.md) | 335 | `declaration-track:5368e21f4d5a5c32164d2b42edcbe7cf8ec2284cc5db5c2e2014a7561e18d761` |
| 21 | `theorem` | [coconeOfRepresentable_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/coconeofrepresentable-pt--7d6bafbc2d61ec5a7c9471b7.md) | 340 | `result-track:7d6bafbc2d61ec5a7c9471b7342318abbb0d97cc25609d1d4a7f062a02b7b200` |
| 22 | `theorem` | [coconeOfRepresentable_ι_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/coconeofrepresentable-app--c4669929d7b42fa0812424e3.md) | 347 | `result-track:c4669929d7b42fa0812424e3cfc4da83e5061b9f4385ad0ac99ccf4cc9727d00` |
| 23 | `theorem` | [coconeOfRepresentable_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/coconeofrepresentable-naturality--e552b0e8b9ef9265f48d5211.md) | 353 | `result-track:e552b0e8b9ef9265f48d5211740f7109d2168833f46552136e9c1275a185bfff` |
| 24 | `def` | [colimitOfRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/colimitofrepresentable--a055772e693734f7954e50b5.md) | 365 | `declaration-track:a055772e693734f7954e50b5ef429147f65e7333124b2dd83e6027d1adc0534b` |
| 25 | `def` | [natIsoOfNatIsoOnRepresentables](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/natisoofnatisoonrepresentables--86746e2e730be1a7f3a3b2e6.md) | 382 | `declaration-track:86746e2e730be1a7f3a3b2e67308d3cf298773c576f128a995bd37928c473038` |
| 26 | `def` | [uniqueExtensionAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/uniqueextensionalongyoneda--a1da489d8ff64ed08f6883a0.md) | 416 | `declaration-track:a1da489d8ff64ed08f6883a0d3fa4577af7794844f38fc6d2a1edf9d0e436a5d` |
| 27 | `def` | [isLeftAdjointOfPreservesColimitsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/isleftadjointofpreservescolimitsaux--7a567b7858638a2e19743acc.md) | 424 | `declaration-track:7a567b7858638a2e19743accece3ec199b5c51e5696e166ec36f910bdb5729a5` |
| 28 | `def` | [isLeftAdjointOfPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/isleftadjointofpreservescolimits--847df1a9f2c4dccca58e32aa.md) | 433 | `declaration-track:847df1a9f2c4dccca58e32aa9713a6ffd54cb8cda650a0fa5aa37104270ecc09` |
| 29 | `def` | [tautologicalCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/tautologicalcocone--90b4121965685bb5f89fe305.md) | 451 | `declaration-track:90b4121965685bb5f89fe305c89bf66d2b8d23820b006197fa7e489b107fe5fc` |
| 30 | `def` | [isColimitTautologicalCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean/declarations/iscolimittautologicalcocone--f60b03baa01e126a5c1cec89.md) | 457 | `declaration-track:f60b03baa01e126a5c1cec89da00cba5d74644c573da652f67a774441a7c4590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
