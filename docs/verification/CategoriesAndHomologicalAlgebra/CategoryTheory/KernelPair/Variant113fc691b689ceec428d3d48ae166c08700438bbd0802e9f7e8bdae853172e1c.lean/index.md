# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelPair.Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc72d8a6b155c3fed940cce4bca724aa389b6ce1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc72d8a6b155c3fed940cce4bca724aa389b6ce1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/iskernelpair--83a9c781c56a95b29b042a71.md) | 54 | `declaration-track:83a9c781c56a95b29b042a71fe2a6f74cd999c4702886fa33ef3510e01be85f6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/instance--2cad80efcf89c39c02876db9.md) | 61 | `declaration-track:2cad80efcf89c39c02876db9ff1795bbe1ec398b0afeb5227372e1b6548c5383` |
| 3 | `theorem` | [id_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/id-of-mono--cd5914dddbcdeb2e6e472899.md) | 68 | `result-track:cd5914dddbcdeb2e6e4728995e9647a6974cf6f4cc9974498bcb7a700c07b0bb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/instance--beb7e6956d723beb79fb7ab2.md) | 72 | `declaration-track:beb7e6956d723beb79fb7ab284a143089e18d211b6cbef1b9ee3a3e84637a8de` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/lift--1405c6791e0dc36ab576655c.md) | 82 | `declaration-track:1405c6791e0dc36ab576655c03fcc930dd3fb666bd5241c15b301b87477a4ea2` |
| 6 | `lemma` | [lift_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/lift-fst--6363bcd01f0bb43325b746aa.md) | 87 | `result-track:6363bcd01f0bb43325b746aa3e52db86abac8a4761d0b7b1d772a02cec7e88f0` |
| 7 | `lemma` | [lift_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/lift-snd--5f1340caf1741c71d99dc228.md) | 92 | `result-track:5f1340caf1741c71d99dc228f0f75f6dd8bbe889fbc9fcf6cdb149c61cf8edd5` |
| 8 | `def` | [lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/lift--2fc2b12a7147630422638682.md) | 100 | `declaration-track:2fc2b12a7147630422638682c41fb692af1315d5474d988934b69cb589e19327` |
| 9 | `theorem` | [cancel_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/cancel-right--f9a82ec7b7ea8f15ae84cb21.md) | 111 | `result-track:f9a82ec7b7ea8f15ae84cb21783652c87f158ce2fe15dae823d91f24310c4587` |
| 10 | `theorem` | [cancel_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/cancel-right-of-mono--c65914483c98cc7e5d38a4dc.md) | 131 | `result-track:c65914483c98cc7e5d38a4dc0a4d7bf9a4e576e0d4878f9301040f7ef6cf2482` |
| 11 | `theorem` | [comp_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/comp-of-mono--29bc4755ec864f015176108f.md) | 140 | `result-track:29bc4755ec864f015176108fe061c2933a5c3e431e78d25796839d393fb2ab63` |
| 12 | `def` | [toCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/tocoequalizer--3746233f24c7b0fd4bbf8ed1.md) | 158 | `declaration-track:3746233f24c7b0fd4bbf8ed176b9c51581683e58003cfbc9e590e9082e3ad607` |
| 13 | `theorem` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/pullback--d149ddd6e5f97732e7da150b.md) | 173 | `result-track:d149ddd6e5f97732e7da150b617e4c7018da821f168ed7e91cae8593a488b615` |
| 14 | `theorem` | [mono_of_isIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/mono-of-isiso-fst--7e028e7b4346c7e3d55a0f8f.md) | 195 | `result-track:7e028e7b4346c7e3d55a0f8f7aeb9dc8692272844c0b35b2424988123f2f28cd` |
| 15 | `theorem` | [isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/isiso-of-mono--2255086b15277cb5af59150e.md) | 205 | `result-track:2255086b15277cb5af59150e1300c92b70b33eaee7f6828fc561880750bf1d8c` |
| 16 | `theorem` | [of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/declarations/of-isiso-of-mono--903bc1d4853d424e1ff54777.md) | 214 | `result-track:903bc1d4853d424e1ff54777cd432fcee1fcd46f38a9ecd669439237fc26028f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
