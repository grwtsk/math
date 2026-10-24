# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da201d27117d4668564383a96ba7dc4f86410385",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da201d27117d4668564383a96ba7dc4f86410385`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Yoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/colimitcocone--ac53f203f81f0ff88d92b852.md) | 42 | `declaration-track:ac53f203f81f0ff88d92b85287879d8ae3707dafdfdd70765a8371108a7f3b2a` |
| 2 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/colimitcoconeiscolimit--4f3512ee7a591407dafffc20.md) | 49 | `declaration-track:4f3512ee7a591407dafffc20b76caa0dcb4d2355e836b493575b131b33fbfc3f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/instance--a1f2cbff5f3138adb3ab759b.md) | 61 | `declaration-track:a1f2cbff5f3138adb3ab759bb312767a25403a628e5f291401124429c8733c6b` |
| 4 | `def` | [colimitCoyonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/colimitcoyonedaiso--0021c545677e8357e0b03a06.md) | 68 | `declaration-track:0021c545677e8357e0b03a0611e74cfc58d01dcc6e3206a67e13b4a504320466` |
| 5 | `def` | [Limits.coneOfSectionCompYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/limits-coneofsectioncompyoneda--c27a644f58434aff78a6933a.md) | 85 | `declaration-track:c27a644f58434aff78a6933a6a71859e65f34587606e0d3b051040a3b5169ffc` |
| 6 | `instance` | [yoneda_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/yoneda-preserveslimit--fd625ac002e016dc1861e418.md) | 90 | `declaration-track:fd625ac002e016dc1861e418e18d9e4061da997bedd17a513e36881c299bc64e` |
| 7 | `instance` | [yoneda_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/yoneda-preserveslimitsofshape--cea1d544ad420c74faa24c9b.md) | 102 | `declaration-track:cea1d544ad420c74faa24c9b291a3173e393cf52cc2dd6975a96b3fa01daf456` |
| 8 | `def` | [yonedaJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/yonedajointlyreflectslimits--28014771df6f838724610dd0.md) | 106 | `declaration-track:28014771df6f838724610dd053a0250ff4e864007cbaa793278545b78d426475` |
| 9 | `def` | [Limits.Cocone.isColimitYonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/limits-cocone-iscolimityonedaequiv--7b0792dc1cc2ac0af448ce9a.md) | 121 | `declaration-track:7b0792dc1cc2ac0af448ce9a9eb03cef141291974e4b13daa35a93cfaaa85f52` |
| 10 | `def` | [Limits.coneOfSectionCompCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/limits-coneofsectioncompcoyoneda--f2d23ec16f490291f8f47fb6.md) | 130 | `declaration-track:f2d23ec16f490291f8f47fb6c88fc67dd95d5ae2d02599603752d7cbb93769a7` |
| 11 | `instance` | [coyoneda_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/coyoneda-preserveslimit--1fa231be270b71a2e35bcc15.md) | 135 | `declaration-track:1fa231be270b71a2e35bcc15ab8035201e3b0941ef32a8c67dcdcf548e9220fe` |
| 12 | `instance` | [coyonedaPreservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/coyonedapreserveslimitsofshape--c2b1bbf4d914c164ab20cf73.md) | 144 | `declaration-track:c2b1bbf4d914c164ab20cf73ec9dcd014fd2ea9e4b4ed5f8b2cf382ee0cad4b0` |
| 13 | `def` | [coyonedaJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/coyonedajointlyreflectslimits--55ea21c68e7fd1d5e92ac602.md) | 148 | `declaration-track:55ea21c68e7fd1d5e92ac60279d08edf6e6557ef1fd4e683732281712e0c2119` |
| 14 | `def` | [Limits.Cone.isLimitCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/limits-cone-islimitcoyonedaequiv--149edee7c531077dbf4b7cea.md) | 162 | `declaration-track:149edee7c531077dbf4b7ceac0680f91414411c1f675bc163bcccbba41720215` |
| 15 | `instance` | [yoneda_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/yoneda-preserveslimits--fbbde32f200bee010d5bbb6e.md) | 172 | `declaration-track:fbbde32f200bee010d5bbb6e7cde877e0fd1fa76cb88d850daf5deff348af5bb` |
| 16 | `instance` | [coyoneda_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/coyoneda-preserveslimits--4114c74d48303894099a1e99.md) | 176 | `declaration-track:4114c74d48303894099a1e998b4a3fd8815f57a0c77b0ae9eb2c23d192e48f3d` |
| 17 | `instance` | [yonedaFunctor_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/yonedafunctor-preserveslimits--0df333561ce1570c8834c638.md) | 179 | `declaration-track:0df333561ce1570c8834c63813ba91f6feadf8c5d3765437105ab57c9cd8e917` |
| 18 | `instance` | [coyonedaFunctor_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/coyonedafunctor-preserveslimits--889bbb86960f7350be618170.md) | 186 | `declaration-track:889bbb86960f7350be618170ff4072258f43beb01183df93d56a7f96a5860f5d` |
| 19 | `instance` | [yonedaFunctor_reflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/yonedafunctor-reflectslimits--ae8fd683df5e6a2e88b70987.md) | 193 | `declaration-track:ae8fd683df5e6a2e88b709870c874accb3753cf72729924d4579850ad71785f8` |
| 20 | `instance` | [coyonedaFunctor_reflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/coyonedafunctor-reflectslimits--38265c4a6655c121e3deae5d.md) | 196 | `declaration-track:38265c4a6655c121e3deae5de63bcb776f6de7b350e7a565f4144b8b52e1a6c5` |
| 21 | `instance` | [representable_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/representable-preserveslimit--a645daa277a8c46bd522a373.md) | 205 | `declaration-track:a645daa277a8c46bd522a37374b0d88071bea748a00fd8b777e491b51539db9d` |
| 22 | `instance` | [representable_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/representable-preserveslimitsofshape--05d82b6d65efde52a452b00a.md) | 210 | `declaration-track:05d82b6d65efde52a452b00a6fb6c00cc6a1d69fd78e8e8829c25fa8483bac3f` |
| 23 | `instance` | [representable_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/representable-preserveslimits--17486f15dc5c2dfb60f4b3e1.md) | 213 | `declaration-track:17486f15dc5c2dfb60f4b3e1deff3dc4f238f0acfe7b9ace9324bb5137b2973f` |
| 24 | `instance` | [corepresentable_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/corepresentable-preserveslimit--cfa9053a23a21c2e56872327.md) | 222 | `declaration-track:cfa9053a23a21c2e568723272268c4331e97e229b721f795ce8ab36ba03ef146` |
| 25 | `instance` | [corepresentable_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/corepresentable-preserveslimitsofshape--8ef6a3fccfdf53491dff03e2.md) | 227 | `declaration-track:8ef6a3fccfdf53491dff03e29adf371b6979b65f0f906bb5fffdc053268b4dd1` |
| 26 | `instance` | [corepresentable_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant14e6377409ca4e8d2e52b66823b6da51bec8cd4bae55826edb50da363a558e43.lean/declarations/corepresentable-preserveslimits--ae2b48fe5621ccd692a5f983.md) | 230 | `declaration-track:ae2b48fe5621ccd692a5f983842839f4a77730b68f8e271e112b17960c55bb9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
