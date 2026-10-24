# Verification target: GRWTSK.Algebra.UniversalAlgebra.GrpWithZero.Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1254d66e44047ea1971c58beffc9bd288128696a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1254d66e44047ea1971c58beffc9bd288128696a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.WithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Bipointed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GrpWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/grpwithzero--e44a61906d03593319c6d3d2.md) | 23 | `declaration-track:e44a61906d03593319c6d3d28e97d293556bebdaf87f6478f26919cb328b7f80` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/instance--bf8e56c2736e25dda8669274.md) | 32 | `declaration-track:bf8e56c2736e25dda8669274bdcbf593cfe83cf24c461e5a394bd8db2d6dde22` |
| 3 | `abbrev` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/of--eeb620afbf1f8de9d2cd1595.md) | 36 | `declaration-track:eeb620afbf1f8de9d2cd159535f6d27e958da795bc54da97a312a746245f2618` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/instance--2f93b7983052ac7fd754a47f.md) | 39 | `declaration-track:2f93b7983052ac7fd754a47f36f9378ae002c00c0eeaad224b34ec2528bddec7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/instance--7edac815c9486b98d25320ce.md) | 42 | `declaration-track:7edac815c9486b98d25320ce1aa1c066457ce10b29fc88aa2937ca1d41532e91` |
| 6 | `instance` | [groupWithZeroConcreteCategory](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/groupwithzeroconcretecategory--a553bcd36f6944fec8f7b76f.md) | 47 | `declaration-track:a553bcd36f6944fec8f7b76f395636f7884ef4c7109700ec4bf35003079e4baf` |
| 7 | `abbrev` | [ofHom](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/ofhom--5f12013de28f405a7b9b7234.md) | 52 | `declaration-track:5f12013de28f405a7b9b72341c461c5e4021cbe73e5f7eac4b6aabedbd8f1d42` |
| 8 | `lemma` | [hom_id](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/hom-id--24403fe429fd9c0abdedd272.md) | 57 | `result-track:24403fe429fd9c0abdedd272bf7ccfb91099609b791cac78416ffe159848e0f8` |
| 9 | `lemma` | [hom_comp](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/hom-comp--8903a01b88f16cf7d250ef2f.md) | 60 | `result-track:8903a01b88f16cf7d250ef2ff38797b8a803ee38815e6df8ea0240e782980cbe` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/coe-id--1735de5c11f9d6c4e9fd45fc.md) | 63 | `result-track:1735de5c11f9d6c4e9fd45fce5b9dcb46035ba8367d4a68b9cdce39f6bc81650` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/coe-comp--bf4f36939b82f80d6b98ca25.md) | 65 | `result-track:bf4f36939b82f80d6b98ca255e451adb686d135e5ce7a27b9e22c56f5a093a3b` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/forget-map--7e90fc12792b4411ad2f3876.md) | 67 | `result-track:7e90fc12792b4411ad2f3876f3746260ae9bba93026c84c4198b46fa0432eebf` |
| 13 | `instance` | [hasForgetToBipointed](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/hasforgettobipointed--c2b46f4b9e980325e92db88e.md) | 70 | `declaration-track:c2b46f4b9e980325e92db88e93b198a54d833aec2036e080fd6fcd48ead34089` |
| 14 | `instance` | [hasForgetToMon](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/hasforgettomon--b1c6b280b56b2bd86c420683.md) | 75 | `declaration-track:b1c6b280b56b2bd86c4206833c885001d0272f83728c1bde5a27269dbeae0bb6` |
| 15 | `def` | [Iso.mk](../../../../../mathematics/Algebra/UniversalAlgebra/GrpWithZero/Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7.lean/declarations/iso-mk--44e8e6c66ff6992c4c8b7572.md) | 82 | `declaration-track:44e8e6c66ff6992c4c8b757280c81e3231e26d1873a19d1cf4dc5a92c0a685fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
