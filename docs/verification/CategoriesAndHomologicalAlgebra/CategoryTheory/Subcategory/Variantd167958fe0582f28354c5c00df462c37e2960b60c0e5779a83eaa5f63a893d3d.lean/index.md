# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcategory.Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d964da4e92eb9cec9d2ba582d9883a557862c62",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d964da4e92eb9cec9d2ba582d9883a557862c62`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.CalculusOfFractions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Triangulated` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/subcategory--2d193801db08c6ec0a41d2c0.md) | 64 | `declaration-track:2d193801db08c6ec0a41d2c0d60f147b5b8e9ca77bceff7eda4870e81b9feced` |
| 2 | `lemma` | [zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/zero--cb42d9fbe79275fc2879e86a.md) | 76 | `result-track:cb42d9fbe79275fc2879e86ab12ddb8ee7cf79e4697159a0a7101dbd1b5ee311` |
| 3 | `def` | [isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/isoclosure--b975481c9ca45b08d629dc61.md) | 81 | `declaration-track:b975481c9ca45b08d629dc61df81a0b8ff94bd6426c853424f90e24d9b324cac` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--6a082813d6d91d3f1ffb089b.md) | 99 | `declaration-track:6a082813d6d91d3f1ffb089b4f1a5c4f17324d3fa8b547ea84b772a3dbc623a7` |
| 5 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/mk--b019207a5cd0a42607aa6f82.md) | 110 | `declaration-track:b019207a5cd0a42607aa6f823ada086d799f55c0625f6e82875309d48bec8539` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--cb927130fe934c2eb1657371.md) | 116 | `declaration-track:cb927130fe934c2eb1657371adb7d609ea1dcc9cfc1e63f0b200d9bae2b57923` |
| 7 | `lemma` | [ext₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/ext--f085bc3b14eee052afa81241.md) | 124 | `result-track:f085bc3b14eee052afa81241f99153123c3b84472266c97f84342d9d5cb33006` |
| 8 | `def` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w--1f1111a99f590c2c445a0714.md) | 131 | `declaration-track:1f1111a99f590c2c445a07146f2791f4dadf47a440cbcf360cdde8f0754293aa` |
| 9 | `lemma` | [W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-iff--896ce43f5508d8ece3fb72d1.md) | 134 | `result-track:896ce43f5508d8ece3fb72d1ef2baa03189230ee882fffea62d222cec6e4f1ae` |
| 10 | `lemma` | [W_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-iff--da12b2f62c0ab928c37254d4.md) | 138 | `result-track:da12b2f62c0ab928c37254d490d1b91e960fa1d35e9a7f667a40b1c4e7109a40` |
| 11 | `lemma` | [W.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-mk--6a04d02d7bb1311dfd598398.md) | 148 | `result-track:6a04d02d7bb1311dfd5983988fcafdb2c753b6414730b61dbe1f97fcc9901d86` |
| 12 | `lemma` | [W.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-mk--a0b0b28818b345dec03c710f.md) | 151 | `result-track:a0b0b28818b345dec03c710f715d8c472e7c13b2dc179a9baba6f07ac5702066` |
| 13 | `lemma` | [isoClosure_W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/isoclosure-w--cf07f51cf74ff3cc475b7a2f.md) | 155 | `result-track:cf07f51cf74ff3cc475b7a2f1b3da1b84aca95ee557fd0241c0f711f67126d64` |
| 14 | `instance` | [respectsIso_W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/respectsiso-w--9da0911d17685d80514c6012.md) | 164 | `declaration-track:9da0911d17685d80514c6012f590cffb4457cb38ee1a4beac9254d6f6fc38e9a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--9802c97ad57aff63a8dd7a76.md) | 176 | `declaration-track:9802c97ad57aff63a8dd7a76ad21a077b508e88025b9e604d02fe9ee7a57e126` |
| 16 | `lemma` | [W_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-of-isiso--699b2a89bf42b4cb6977732c.md) | 180 | `result-track:699b2a89bf42b4cb6977732c4f8b8961116d0e00a7cc089658341e25461935d6` |
| 17 | `lemma` | [smul_mem_W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/smul-mem-w-iff--12d5f02be724fbc2d84bfb31.md) | 184 | `result-track:12d5f02be724fbc2d84bfb318831a1b1491e2471495643ff70b62f5570ed902c` |
| 18 | `lemma` | [W.shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-shift--29bb5155c40e75f971b582d5.md) | 190 | `result-track:29bb5155c40e75f971b582d5374f18e856c6ff05745c413610ee3ad926d045ef` |
| 19 | `lemma` | [W.unshift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/w-unshift--cc6b1e198a22ee2b7928cfd6.md) | 195 | `result-track:cc6b1e198a22ee2b7928cfd6490716c58525af424980de8f01bd2f12e91038a6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--12363cd8daa0ca6f7fbf3217.md) | 199 | `declaration-track:12363cd8daa0ca6f7fbf3217cc74dcc40c989e98c9978093858d699ffef1fe2e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--05f4ad0761509e145ea512cf.md) | 204 | `declaration-track:05f4ad0761509e145ea512cf95afc976f19a516ec37dd96cc847fe64a22b4193` |
| 22 | `lemma` | [mem_W_iff_of_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/mem-w-iff-of-distinguished--c753b9f3feb41c11d9ba9bec.md) | 213 | `result-track:c753b9f3feb41c11d9ba9bec73fae1c7457e5852ec07b5e70e122509837ea7bc` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--b4253230172da85376d31467.md) | 223 | `declaration-track:b4253230172da85376d314678f5113bb3c42f8013d409f0c89527cf1cf915a7c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--98f8d65c62f4b9578ef1529c.md) | 241 | `declaration-track:98f8d65c62f4b9578ef1529c3241e111e785ee87fa7d55a728145629437f39e4` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/instance--91a1ffed0a24df261531dd62.md) | 260 | `declaration-track:91a1ffed0a24df261531dd62e02055ea8f932e28860145c71ef2652dac31f10c` |
| 26 | `lemma` | [ext₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/ext--99917ee2a866403208ecb069.md) | 275 | `result-track:99917ee2a866403208ecb069a571c6494fda1ccf145d0506f01323376254bd97` |
| 27 | `lemma` | [ext₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/ext--52c589ed7d5ac9e4af4bda8b.md) | 279 | `result-track:52c589ed7d5ac9e4af4bda8bda728d22acbb0f80223a49775b7778cd43f86c43` |
| 28 | `lemma` | [ext₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/ext--cc91907952fc9ad1c9455ef1.md) | 283 | `result-track:cc91907952fc9ad1c9455ef1f08af3594cd11afcd532859a05838df66e30b55a` |
| 29 | `lemma` | [ext₃'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantd167958fe0582f28354c5c00df462c37e2960b60c0e5779a83eaa5f63a893d3d.lean/declarations/ext--081523f317f3080d368ed1d1.md) | 287 | `result-track:081523f317f3080d368ed1d11b1324cdc8d94690a1c8c1da9710b9ccc400daec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
