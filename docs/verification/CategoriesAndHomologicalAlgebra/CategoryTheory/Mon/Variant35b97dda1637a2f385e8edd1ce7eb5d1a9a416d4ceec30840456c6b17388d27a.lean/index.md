# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mon.Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ad1ac641057f92bce9db2dc55eb880394a1186",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ad1ac641057f92bce9db2dc55eb880394a1186`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_lift_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/lift-lift-assoc--eee0f0739108459bfe879083.md) | 26 | `result-track:eee0f0739108459bfe879083c274c5613dde0225f5571cd7d666996e1ff0de79` |
| 2 | `theorem` | [lift_comp_one_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/lift-comp-one-left--ea45ffd2b0ab13588805f7c3.md) | 32 | `result-track:ea45ffd2b0ab13588805f7c37cebdbe5efcc0e897cecf07e3333f83608565c43` |
| 3 | `theorem` | [lift_comp_one_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/lift-comp-one-right--a6123b38ad0b129805478401.md) | 38 | `result-track:a6123b38ad0b1298054784011ef0b93df21e25adeecff208c8c79b2db2137123` |
| 4 | `def` | [Mon_Class.ofRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-ofrepresentableby--afa8e8cbf15e7cf57fe367ab.md) | 48 | `declaration-track:afa8e8cbf15e7cf57fe367abcd310c0ca1394d41689a3e4d21e0295dae980cd7` |
| 5 | `abbrev` | [Hom.monoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/hom-monoid--bbc2bbe643a968088417ab7c.md) | 84 | `declaration-track:bbc2bbe643a968088417ab7cea6e83040671c23e04dda102cf79639dc63e2dd0` |
| 6 | `lemma` | [Hom.one_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/hom-one-def--a1d1402251a66e961ab678c1.md) | 110 | `result-track:a1d1402251a66e961ab678c1369f628290149d811dc6d50dda83327fed861ab1` |
| 7 | `lemma` | [Hom.mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/hom-mul-def--99861fda6758ef9fbc211522.md) | 111 | `result-track:99861fda6758ef9fbc2115229ce4944d96d4188d5c85f52e13d9bdc02930fd7f` |
| 8 | `def` | [yonedaMonObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/yonedamonobj--ca3b7b5ab703a561ed618726.md) | 116 | `declaration-track:ca3b7b5ab703a561ed618726684473640eca5d84a36a8bf904095ab62685ae11` |
| 9 | `def` | [yonedaMonObjIsoOfRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/yonedamonobjisoofrepresentableby--b4dcc1805d0b68f1adce5e49.md) | 134 | `declaration-track:b4dcc1805d0b68f1adce5e49c7db4713938722bbbc4634e115a664915f38b56b` |
| 10 | `def` | [yonedaMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/yonedamon--a2345605e27eef30d34f9942.md) | 151 | `declaration-track:a2345605e27eef30d34f99421185444a8b0391ca98a816006165d4d989fd9324` |
| 11 | `lemma` | [yonedaMon_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/yonedamon-naturality--d538287759b0e732133e8e4a.md) | 164 | `result-track:d538287759b0e732133e8e4a32ff3136dfd41683652dd536473cccf54b38a830` |
| 12 | `def` | [yonedaMonObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/yonedamonobjrepresentableby--7e1adc7788643bbaa34bbceb.md) | 169 | `declaration-track:7e1adc7788643bbaa34bbceb6203cc3e96ffb54d7f080c1f9a90e60ff284f6bf` |
| 13 | `lemma` | [Mon_Class.ofRepresentableBy_yonedaMonObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-ofrepresentableby-yonedamonobjrepresentableby--b24c0d29feed65480cdd9318.md) | 173 | `result-track:b24c0d29feed65480cdd93180d22516521f93710f803c7d9a2b7236d757a0f11` |
| 14 | `def` | [yonedaMonFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/yonedamonfullyfaithful--2d458ebc2967e3cfe3a8b039.md) | 182 | `declaration-track:2d458ebc2967e3cfe3a8b039f29237ba9f5edfb17a893e1c13d5f0351a8aae74` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/instance--5ef743605aee1bf8d5fdea93.md) | 206 | `declaration-track:5ef743605aee1bf8d5fdea935963b5064be15f7b0f73978f6faa8bb6ffa02221` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/instance--0a08af88f68821a168e3e8b2.md) | 207 | `declaration-track:0a08af88f68821a168e3e8b209b946af35e32487c7cc21b81ce019a3ace3bce7` |
| 17 | `lemma` | [essImage_yonedaMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/essimage-yonedamon--e252586f89d58c9e8fbc90c9.md) | 209 | `result-track:e252586f89d58c9e8fbc90c9bae2d8c308f3cc9a100f2612b0fce5912ce0109a` |
| 18 | `lemma` | [Mon_Class.one_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-one-comp--732f6d4212bfdff42bb8e53f.md) | 220 | `result-track:732f6d4212bfdff42bb8e53feebf54ea5170203da50d3b921876764f067e09f7` |
| 19 | `lemma` | [Mon_Class.mul_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-mul-comp--ac6e029e5049adc3e2605abe.md) | 223 | `result-track:ac6e029e5049adc3e2605abe6975359c4802aeb85893f4aa8b9509753c16533d` |
| 20 | `lemma` | [Mon_Class.comp_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-comp-one--2ce22a11b182f7f519918d93.md) | 227 | `result-track:2ce22a11b182f7f519918d937815276652c3e8d5c00ccb2cefbb461262ef86bb` |
| 21 | `lemma` | [Mon_Class.comp_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-comp-mul--78862c8dbb9c1ec5b8fdd81f.md) | 231 | `result-track:78862c8dbb9c1ec5b8fdd81f765766760f80d570e4e8e172ac28d973b7c4376d` |
| 22 | `lemma` | [Mon_Class.one_eq_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-one-eq-one--0739b2402df62e3fb0092b31.md) | 235 | `result-track:0739b2402df62e3fb0092b3114b15459d1023f9a9d603fa843f0a2175a10c4ed` |
| 23 | `lemma` | [Mon_Class.mul_eq_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/declarations/mon-class-mul-eq-mul--378962aa3df672b7a7330f72.md) | 239 | `result-track:378962aa3df672b7a7330f72c16115e145a2c80604f9120a25582eacb52715b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
