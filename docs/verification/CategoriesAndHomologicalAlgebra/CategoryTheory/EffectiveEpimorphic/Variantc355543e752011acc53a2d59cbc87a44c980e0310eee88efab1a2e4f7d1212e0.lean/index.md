# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpimorphic.Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ced95dc9bdc11db641646fe3c68cf180d92f8bf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ced95dc9bdc11db641646fe3c68cf180d92f8bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-effectiveepimorphic--e2d7bfb5417d1010a850b6a1.md) | 37 | `declaration-track:e2d7bfb5417d1010a850b6a1d0a42877bcf4d01ec6d29cd8fa8c54d33b0f3a61` |
| 2 | `abbrev` | [Presieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/presieve-effectiveepimorphic--5ce7178c8516d6d50def47e9.md) | 42 | `declaration-track:5ce7178c8516d6d50def47e934a7b70110dc96e3d3a9b7d4c0f048e4fac54075` |
| 3 | `def` | [Sieve.generateSingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-generatesingleton--d154058654689629b29776d0.md) | 50 | `declaration-track:d154058654689629b29776d02345cd5f029c6f091f8f3b700643e12cf4e7b264` |
| 4 | `lemma` | [Sieve.generateSingleton_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-generatesingleton-eq--38c66bc94d1f1009efcaba24.md) | 56 | `result-track:38c66bc94d1f1009efcaba247dcc8bb47be9761f09baf6eca32870974fa6ccce` |
| 5 | `def` | [isColimitOfEffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/iscolimitofeffectiveepistruct--36dd6777d9945e6a0b593a2c.md) | 70 | `declaration-track:36dd6777d9945e6a0b593a2c5bbabf0c53ee22d65f12de3c09b9531a218ad5ca` |
| 6 | `def` | [effectiveEpiStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/effectiveepistructofiscolimit--55cb4a64f3de3d89399be22b.md) | 105 | `declaration-track:55cb4a64f3de3d89399be22bbb8faf4c97ebe247bce91b35b998d96ce268198c` |
| 7 | `theorem` | [Sieve.effectiveEpimorphic_singleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-effectiveepimorphic-singleton--ad46f310433c80e6139f625d.md) | 140 | `result-track:ad46f310433c80e6139f625dc83f0e137d7af9018d3b4aa9f18757b3e57643ed` |
| 8 | `def` | [Sieve.generateFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-generatefamily--bfd4be2d7479ffc721c961d5.md) | 157 | `declaration-track:bfd4be2d7479ffc721c961d5ce6553fce9c7fa9a4f76289dbbbd1c98a8f86f3e` |
| 9 | `lemma` | [Sieve.generateFamily_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-generatefamily-eq--59f6c562d8f15e7e86e37279.md) | 164 | `result-track:59f6c562d8f15e7e86e37279678ac0cb25feacdbd049e3908f4ec24ed7cf9491` |
| 10 | `def` | [isColimitOfEffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/iscolimitofeffectiveepifamilystruct--856f6c97135994c5b2226cc8.md) | 178 | `declaration-track:856f6c97135994c5b2226cc81c644b888e97e0554218dd409aa58329fe4ae780` |
| 11 | `def` | [effectiveEpiFamilyStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/effectiveepifamilystructofiscolimit--860580ee171172431175b722.md) | 215 | `declaration-track:860580ee171172431175b7224cc1f605b288c62bfae4134f19ff3b57dc5fe95d` |
| 12 | `theorem` | [Sieve.effectiveEpimorphic_family](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/declarations/sieve-effectiveepimorphic-family--bbd2bb6090b9914c76958924.md) | 252 | `result-track:bbd2bb6090b9914c76958924deb07db0941475baafcc6d938ea0308aba747a66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
