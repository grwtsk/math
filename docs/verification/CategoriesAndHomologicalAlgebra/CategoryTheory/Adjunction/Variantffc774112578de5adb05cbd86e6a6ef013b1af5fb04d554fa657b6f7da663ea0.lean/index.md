# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dc822ffe537245acf22e03b89b52f1b2f16b85b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dc822ffe537245acf22e03b89b52f1b2f16b85b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit--7ff2f4d41ffbdeb910fd44fc.md) | 77 | `declaration-track:7ff2f4d41ffbdeb910fd44fcfe7369022b0f8ddba2f28fbce1cee514c2c59aa7` |
| 2 | `abbrev` | [CompatibilityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilitycounit--447cb94e509743dc01527c47.md) | 85 | `declaration-track:447cb94e509743dc01527c47f443fc7aa26dddd2e2c6f8f70d7dc2ae0430c72e` |
| 3 | `lemma` | [compatibilityCounit_of_compatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilitycounit-of-compatibilityunit--5fc8d9dd294fe9e2b52eacf7.md) | 93 | `result-track:5fc8d9dd294fe9e2b52eacf7009c7fda586264ac61d3794a7a616863f17829d5` |
| 4 | `lemma` | [compatibilityUnit_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-right--822c5c4d24e30d67ba989528.md) | 114 | `result-track:822c5c4d24e30d67ba9895287c319f6a3085408b408c2e9c66d52cd98d67b760` |
| 5 | `lemma` | [compatibilityCounit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilitycounit-left--1472abc5f106915c53b85568.md) | 129 | `result-track:1472abc5f106915c53b8556822b51e861f74b6aece042182aae05ab24b20fcd2` |
| 6 | `lemma` | [compatibilityUnit_unique_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-unique-right--9f94be6f5656aa14d2143467.md) | 144 | `result-track:9f94be6f5656aa14d2143467cce9d2d69af8f110e41202e2469f24c8b88fa74b` |
| 7 | `lemma` | [compatibilityUnit_unique_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-unique-left--8a0c37710053f9189cf8a1c7.md) | 156 | `result-track:8a0c37710053f9189cf8a1c7743d8b33f8c45155746414a729a7b9a7fe177020` |
| 8 | `lemma` | [compatibilityUnit_isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-isozero--7cdd5ff12365e95228475d49.md) | 166 | `result-track:7cdd5ff12365e95228475d4976091919911e429e747c714aef3e84afb56623f9` |
| 9 | `lemma` | [compatibilityUnit_isoAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-isoadd--410f7ed0f4e7bff96524f984.md) | 179 | `result-track:410f7ed0f4e7bff96524f9840a3e578503217b48c3fe2ae98770bc7b33f0ed4a` |
| 10 | `class` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshift--81337c0811b87c9ba28a063a.md) | 207 | `declaration-track:81337c0811b87c9ba28a063a78254bff918a33f450c6791fbdedbb5ab889399e` |
| 11 | `lemma` | [unit_app_commShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/unit-app-commshiftiso-hom-app--916c820fee027be73d758c35.md) | 215 | `result-track:916c820fee027be73d758c359c95843694cbc0fbc5a1a58a656f7a650735ed4c` |
| 12 | `lemma` | [unit_app_shift_commShiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/unit-app-shift-commshiftiso-inv-app--ea75d6086a717fcd6d4644c8.md) | 220 | `result-track:ea75d6086a717fcd6d4644c8bea1d84aac049514c17310f841d0fe52a6a23f88` |
| 13 | `lemma` | [commShiftIso_hom_app_counit_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshiftiso-hom-app-counit-app-shift--d6d3689fbc54498cffc1aa7c.md) | 225 | `result-track:d6d3689fbc54498cffc1aa7cda2b140a13c24c613c57d4a7c445973795f2904c` |
| 14 | `lemma` | [commShiftIso_inv_app_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshiftiso-inv-app-counit-app--d34cd6411b9dc5d1856bd200.md) | 230 | `result-track:d34cd6411b9dc5d1856bd2002376f1ecb0b580378dadba2222bca3a046db37a1` |
| 15 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/mk--f599570af3b5f23acb61a681.md) | 238 | `result-track:f599570af3b5f23acb61a681ca7e3edf721a4a6f17e015aed67a4f699d2c61e9` |
| 16 | `instance` | [instId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instid--c3f158888aa38e829db9be06.md) | 255 | `declaration-track:c3f158888aa38e829db9be061aed6a8a996b08100132ebc59ae73a6748016d02` |
| 17 | `instance` | [instComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instcomp--2c6c8061a741e1911bd867d4.md) | 266 | `declaration-track:2c6c8061a741e1911bd867d46090d46e7b5a7147ecbc3b04388384628cd96dee` |
| 18 | `lemma` | [shift_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/shift-unit-app--fbd7e26387e8995c010d1d34.md) | 279 | `result-track:fbd7e26387e8995c010d1d349c4273e3bd945a83aa03117929943a0051356d07` |
| 19 | `lemma` | [shift_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/shift-counit-app--9509c46b16dcc064e26a237e.md) | 287 | `result-track:9509c46b16dcc064e26a237e6d46f18424db9a32a2d7b2f965a0d834920ea54a` |
| 20 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso--6556e7de644b1d6031c45538.md) | 309 | `declaration-track:6556e7de644b1d6031c45538c86e25bdc0936c525063013d2dbabeb92388b2d8` |
| 21 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso--82b13c4e4e4e5d83a1497442.md) | 317 | `declaration-track:82b13c4e4e4e5d83a149744241d8edd7042f4778830cb6b89b90df1ca53db0c9` |
| 22 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso-hom-app--5b4959f71d580776487ea607.md) | 321 | `result-track:5b4959f71d580776487ea607b9ceb0807a21baf41ab7d7d1f112ac99692a95b2` |
| 23 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso-inv-app--86cedc87c3aa56ecaf8e77c3.md) | 333 | `result-track:86cedc87c3aa56ecaf8e77c3a496faa0d7c85f1bf1f3bbaf8454be1950beaafb` |
| 24 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-iso--21f4b7e919640c88ba34342c.md) | 357 | `result-track:21f4b7e919640c88ba34342cd3fac387a3ac052368df0a0ad0af984ac8ab83af` |
| 25 | `def` | [rightAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/rightadjointcommshift--891d3cbba3f2ac9a3f82feb2.md) | 382 | `declaration-track:891d3cbba3f2ac9a3f82feb29c39712a27d1d9cc384b5e3987b4a19e2bbe6a6d` |
| 26 | `lemma` | [commShift_of_leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshift-of-leftadjoint--448dae6b2c42d5e459c48ceb.md) | 396 | `result-track:448dae6b2c42d5e459c48cebf288061d6b00b9709eea7b6a7928a72444526ebc` |
| 27 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso--f3a0c07bc1ecac32b5d6f915.md) | 411 | `declaration-track:f3a0c07bc1ecac32b5d6f9152c7d3f3c67315b022a9d7e45b1829dd03640fdcb` |
| 28 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso--ca0990dd89a68256d36bb678.md) | 419 | `declaration-track:ca0990dd89a68256d36bb6788478b32ff883bd6c40bc5d8c671c6c26c79b3739` |
| 29 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso-hom-app--834e3368f3789747e23dea7f.md) | 423 | `result-track:834e3368f3789747e23dea7f6180889055d2989a07a48d865884a94ded062b05` |
| 30 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/iso-inv-app--8c17ffababcf583cbfc3e983.md) | 433 | `result-track:8c17ffababcf583cbfc3e9830d08f9aaaae7047b888eb5ce3d1f15bf2a0fd67c` |
| 31 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/compatibilityunit-iso--24154cda29add1d9ebbe6e4f.md) | 446 | `result-track:24154cda29add1d9ebbe6e4fcddc9460ce340db1a458777de6b805007cc82682` |
| 32 | `def` | [leftAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/leftadjointcommshift--e484193607687ac6c700193d.md) | 466 | `declaration-track:e484193607687ac6c700193d864b3efe8fc8ab40e75eecafab7312c04475964b` |
| 33 | `lemma` | [commShift_of_rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshift-of-rightadjoint--0f63e27913c07d95b9d92efe.md) | 480 | `result-track:0f63e27913c07d95b9d92efec586501f541d0c24b9c9d4056e621da19355f5b5` |
| 34 | `abbrev` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshift--a01dd0d4fca022a2beb4cc79.md) | 504 | `declaration-track:a01dd0d4fca022a2beb4cc79fa0fff89f3c45839385dee71e654e854ac0fd454` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--99ee9b4aab78a449b26dfc77.md) | 511 | `declaration-track:99ee9b4aab78a449b26dfc77fd2146ca8778c713661515d583cc4cc8ab51950d` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--50294bfc62024c3de0177d93.md) | 514 | `declaration-track:50294bfc62024c3de0177d93013697d66d5c74f9fbcac919ce319480e376fa0d` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--ce49729c9019d250636e3af6.md) | 517 | `declaration-track:ce49729c9019d250636e3af668b33a66f5d6b3087cf2350eb0deb641b8db28bc` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--df31efa9b7ec325235928964.md) | 518 | `declaration-track:df31efa9b7ec3252359289644b31e7e9adf9bf6dea40196e74c7f145940105fe` |
| 39 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/mk--7ceb7b071ce890e60acef413.md) | 521 | `result-track:7ceb7b071ce890e60acef4135b2ae31cbf9fa544f34b6f8916814e3ff4b7d6a4` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--74a2861bf1b7cf0672dd780f.md) | 529 | `declaration-track:74a2861bf1b7cf0672dd780f816c5eb5f5c158cf53fcd2ec83dfe830a7a137bc` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--144fe6260e531b208d8d3756.md) | 536 | `declaration-track:144fe6260e531b208d8d375689322d0dcbb62858a63e50a47619ecb08066e0b2` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--60d6ce52cf8f1921fc0a2e02.md) | 543 | `declaration-track:60d6ce52cf8f1921fc0a2e02604aa84e15d1c8908f1363def7d028e9e1a51441` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--fcbab8f0429b3d1efd1cfb21.md) | 550 | `declaration-track:fcbab8f0429b3d1efd1cfb21ab61e4e7783c392ad3e822e5c85de1d9f73f9338` |
| 44 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/mk--663b2b4a4415af391ea4ee14.md) | 554 | `result-track:663b2b4a4415af391ea4ee142bac7783ea3a361d5ff31b0aa982728a10b20b34` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--d47b60c3515f3828f4b1a7e3.md) | 566 | `declaration-track:d47b60c3515f3828f4b1a7e3c5d101eaefcea8b9dbb39c6d04df46d80cff20d2` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--c68f859089010d97508727bc.md) | 574 | `declaration-track:c68f859089010d97508727bc07972f4b71dd587442d0f90af09d85b8789e3ba7` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/instance--b0483fb09ffc53e4eee795a8.md) | 581 | `declaration-track:b0483fb09ffc53e4eee795a894f13fe187ce8ed4ef96bac782122c478da06b6c` |
| 48 | `def` | [commShiftInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshiftinverse--2c3f4e5977584cf6b9c43b1d.md) | 594 | `declaration-track:2c3f4e5977584cf6b9c43b1d2032450036ab803a3b7b7e4fd873cc107bfc311e` |
| 49 | `lemma` | [commShift_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshift-of-functor--d15498a74304e5991ffdb9cb.md) | 597 | `result-track:d15498a74304e5991ffdb9cb484d54b5f599ccd4932fe1ba814576e01615f66d` |
| 50 | `def` | [commShiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshiftfunctor--b1210e23af6a329da28ef645.md) | 607 | `declaration-track:b1210e23af6a329da28ef64538cdda1e5a972506db467820a97417f0316f8b9f` |
| 51 | `lemma` | [commShift_of_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/declarations/commshift-of-inverse--aa2c63cada2288d2a24419a8.md) | 610 | `result-track:aa2c63cada2288d2a24419a8bd914095a99821fc5ea83b319e227106fcc47b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
