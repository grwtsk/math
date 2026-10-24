# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a997aef3c73b4b8efaf449e1e1ca43689506b55c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a997aef3c73b4b8efaf449e1e1ca43689506b55c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithTriangulation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/iscompatiblewithtriangulation--668bf31e481a3ff56557cc1b.md) | 50 | `declaration-track:668bf31e481a3ff56557cc1b6be3b5e961f094cf0249ebebf7762d23ba2a6bea` |
| 2 | `def` | [essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/essimagedisttriang--3ee32057cde06e2cd1028709.md) | 67 | `declaration-track:3ee32057cde06e2cd1028709d768274d8b1a8f1ae25514e060fd109f7716cdbc` |
| 3 | `lemma` | [essImageDistTriang_mem_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/essimagedisttriang-mem-of-iso--b96b8a32f73b97c34025e9d7.md) | 70 | `result-track:b96b8a32f73b97c34025e9d781670e7cd06731195bd0f228076405fbad055fc0` |
| 4 | `lemma` | [contractible_mem_essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/contractible-mem-essimagedisttriang--6aeba546725b9ef2da4d8c96.md) | 76 | `result-track:6aeba546725b9ef2da4d8c960a2fee849137b0207ab60081132abfea44eab8d4` |
| 5 | `lemma` | [rotate_essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/rotate-essimagedisttriang--7a4e7fac21dc7b36b3000d70.md) | 83 | `result-track:7a4e7fac21dc7b36b3000d70a5d7beb26582be81ed2d659a273d37d416752703` |
| 6 | `lemma` | [complete_distinguished_essImageDistTriang_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/complete-distinguished-essimagedisttriang-morphism--76217059696c1df290af9ab2.md) | 95 | `result-track:76217059696c1df290af9ab24401d42816c753d8ca9222ea18c9bee02273ce2e` |
| 7 | `lemma` | [distinguished_cocone_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/distinguished-cocone-triangle--cd21958f4f735258818a9f25.md) | 142 | `result-track:cd21958f4f735258818a9f2578aae8409d522b5637cb719b3fc7744a818dac3a` |
| 8 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/complete-distinguished-triangle-morphism--520d1fbfd103f06c03ff482f.md) | 162 | `result-track:520d1fbfd103f06c03ff482f2233f3672cb49fd9f013d22d21c9d62dfdbd45f9` |
| 9 | `def` | [pretriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/pretriangulated--cf58e3ccdebaa71cce169fe9.md) | 205 | `declaration-track:cf58e3ccdebaa71cce169fe920f52ac4f5052ec9fb0b806cdff50f47f70f5702` |
| 10 | `instance` | [isTriangulated_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/istriangulated-functor--82e7dd066b78e8c77d862c22.md) | 214 | `declaration-track:82e7dd066b78e8c77d862c229dbec77421bd03466fffe3a79345f8ee8ed509cd` |
| 11 | `lemma` | [isTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/istriangulated--45eee6dba89ed973f413489a.md) | 224 | `result-track:45eee6dba89ed973f413489a00b7204430eca60f8f413e4c3db68635416e33da` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/instance--f22c13ce19264f2a3af843c3.md) | 231 | `declaration-track:f22c13ce19264f2a3af843c3fd52982dc12e698efb2fee88c6dbba086a040be0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/instance--2ea2fb041ce32654a806d7b0.md) | 235 | `declaration-track:2ea2fb041ce32654a806d7b0cd3b786d5e234a478ad1babafc60726f6d9eb95c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/instance--f0c3582b02cb291b231c72e4.md) | 237 | `declaration-track:f0c3582b02cb291b231c72e4e4eec82e86aa8b48873b5b937fa520a596dac0a0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/instance--b1dfbda93a37722fd5dd0adc.md) | 243 | `declaration-track:b1dfbda93a37722fd5dd0adc0ebc15da2d99b0fa44d30f16ae98aee79d7f1c9e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/instance--73043c6ad4a65154a297c32e.md) | 247 | `declaration-track:73043c6ad4a65154a297c32e4f9be6784e48cd9a273e92de29aa71e5024f0193` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/instance--de1dcac24bc9db9cffb82766.md) | 249 | `declaration-track:de1dcac24bc9db9cffb827666c50b361cbaccabf4a4508d3dc7f1d57fd24382c` |
| 18 | `lemma` | [distTriang_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant1f910662ef8da86b0184d759e0d368aa9a8176a52171d6f6309545bb35e44e2c.lean/declarations/disttriang-iff--874024dd74f71e3af711dcd1.md) | 262 | `result-track:874024dd74f71e3af711dcd1909823aaab25b60232bc1af7cecefde6b2167fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
