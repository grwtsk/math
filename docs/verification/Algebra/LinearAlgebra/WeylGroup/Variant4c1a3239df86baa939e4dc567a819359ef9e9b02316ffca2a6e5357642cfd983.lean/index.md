# Verification target: GRWTSK.Algebra.LinearAlgebra.WeylGroup.Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0883184b69922b4df582cfeae9e76eb3b0765fde",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0883184b69922b4df582cfeae9e76eb3b0765fde`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weylGroup](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup--4b6292e1324c1e6ecfa3df74.md) | 54 | `declaration-track:4b6292e1324c1e6ecfa3df74834ec193d5e42b790c0ee1c6b3e637f68b26cbe0` |
| 2 | `lemma` | [reflection_mem_weylGroup](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/reflection-mem-weylgroup--a39d4abe9d688ada233e6daa.md) | 57 | `result-track:a39d4abe9d688ada233e6daacff1eb93c187f0214ec0b63419fe1f4f97c01577` |
| 3 | `def` | [weylGroup.ofIdx](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup-ofidx--d202d9d83b49cac5a54df6e6.md) | 61 | `declaration-track:d202d9d83b49cac5a54df6e6629a2d4b78cf1d42532407e477aa7c69b7a614dd` |
| 4 | `lemma` | [weylGroup.ofIdx_smul](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup-ofidx-smul--7ad34df008451b560aeb460f.md) | 63 | `result-track:7ad34df008451b560aeb460fb6e58f6774eb1c64a18b9b446998f8edb545a6ba` |
| 5 | `lemma` | [weylGroup_toSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup-tosubmonoid--a867655b51f1144c8f3f1e96.md) | 68 | `result-track:a867655b51f1144c8f3f1e9637ddf42aea3d6cfb7d4e8909bc2e464ae81fda0a` |
| 6 | `lemma` | [weylGroup.induction](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup-induction--37c1e43072ea99c136e5023a.md) | 75 | `result-track:37c1e43072ea99c136e5023aec4c7782fbd82e69ff83abb8f4c6b91df06ea720` |
| 7 | `lemma` | [weylGroup.induction'](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup-induction--6a2a72bef84babfe1f46b26c.md) | 94 | `result-track:6a2a72bef84babfe1f46b26cf01bee9e7c534e89fffa5e9708f7484523e4d98f` |
| 8 | `lemma` | [range_weylGroup_weightHom](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/range-weylgroup-weighthom--b828250a86efcee83cc00e86.md) | 105 | `result-track:b828250a86efcee83cc00e86a56918d85847fc4b0fd23f647da9c0e5bca2d1ee` |
| 9 | `lemma` | [range_weylGroup_coweightHom](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/range-weylgroup-coweighthom--2e0a07c0d488713e65cc014d.md) | 131 | `result-track:2e0a07c0d488713e65cc014d9c34d84467d9014607a13c6c2c4ded3e6ac819c1` |
| 10 | `abbrev` | [weylGroupToPerm](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgrouptoperm--b082a82028abc683edf11def.md) | 158 | `declaration-track:b082a82028abc683edf11defcf1734b7d6a4bf8e7ed42a3b44ca9c2f56f662bd` |
| 11 | `lemma` | [range_weylGroupToPerm](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/range-weylgrouptoperm--9084815eebd38e5915317944.md) | 160 | `result-track:9084815eebd38e5915317944119ba1ef5f7d6387112c3867516dfa96c4ea1e7b` |
| 12 | `def` | [weylGroupRootRep](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgrouprootrep--127d524df113be52510fef2d.md) | 186 | `declaration-track:127d524df113be52510fef2d25db13c422e2657225fd85eaab0aee3d8b66f29a` |
| 13 | `def` | [weylGroupCorootRep](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroupcorootrep--14a3175effab53318c8c6959.md) | 190 | `declaration-track:14a3175effab53318c8c6959b8755abc5913e23aa87ba73e32d0702bcb89619a` |
| 14 | `lemma` | [weylGroup_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/declarations/weylgroup-apply-root--6a2c6d55d8639e2fdd69f796.md) | 193 | `result-track:6a2c6d55d8639e2fdd69f7963e740908134f47deb38eae069fbf0b159c0664b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
