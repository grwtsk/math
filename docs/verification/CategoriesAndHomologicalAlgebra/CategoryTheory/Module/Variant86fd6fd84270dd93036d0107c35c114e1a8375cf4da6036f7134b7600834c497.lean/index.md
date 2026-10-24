# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43ee514fa689c6c1a9d29806abfe279d180e134d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43ee514fa689c6c1a9d29806abfe279d180e134d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.FilteredColimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CondensedMod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensedmod--31c817db4585814135722d0b.md) | 38 | `declaration-track:31c817db4585814135722d0b9b7499a318c0a9b9e73f3026bb2a522f19221376` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/instance--1f61a7232824c7c42640f8af.md) | 40 | `declaration-track:1f61a7232824c7c42640f8af2147c456d0c999c38c10ec772a581be0e2eabae3` |
| 3 | `def` | [Condensed.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensed-forget--fc03cf783f4c61d669b43ba7.md) | 43 | `declaration-track:fc03cf783f4c61d669b43ba7d441ad917519fa6ce8cdcb990dd8b0a51b2f2486` |
| 4 | `def` | [Condensed.free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensed-free--118831a9761701ddc08c7161.md) | 49 | `declaration-track:118831a9761701ddc08c7161099e21a36f7e38f05a4ed7ee923705ee6778e08f` |
| 5 | `def` | [Condensed.freeForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensed-freeforgetadjunction--997146389ea4d4fd5c3e0c97.md) | 54 | `declaration-track:997146389ea4d4fd5c3e0c9776d10c1f299297c22d2ececdd04240fa4922c987` |
| 6 | `abbrev` | [CondensedAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensedab--7f0e4c6da088ec4c69fd5df2.md) | 59 | `declaration-track:7f0e4c6da088ec4c69fd5df22ae30b2f086e008f414871e616f9beb905810b81` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/example--f54d7e42616c760e6af0af8b.md) | 61 | `declaration-track:f54d7e42616c760e6af0af8bbe782024437f1f2e00ed32792cd54942131ef5dc` |
| 8 | `abbrev` | [Condensed.abForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensed-abforget--e34fe4d8d3f307c56dfb1cd5.md) | 64 | `declaration-track:e34fe4d8d3f307c56dfb1cd529767989ec068f3e035f59d9b6034ceb1904fc30` |
| 9 | `abbrev` | [Condensed.freeAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensed-freeab--c4aa49e37a86320ffed079c8.md) | 67 | `declaration-track:c4aa49e37a86320ffed079c8cf508338229460e8da6819ac4a30c0f3689354fe` |
| 10 | `abbrev` | [Condensed.setAbAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/condensed-setabadjunction--114e4c581ad973bc349435fd.md) | 70 | `declaration-track:114e4c581ad973bc349435fd48008a8dd9c9e2b11c821e2fc0a304dab47cc619` |
| 11 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant86fd6fd84270dd93036d0107c35c114e1a8375cf4da6036f7134b7600834c497.lean/declarations/hom-naturality-apply--f77b9c020f1973d1a382daf2.md) | 74 | `result-track:f77b9c020f1973d1a382daf2cf8e737fb4bdfc01a511a980ee8b60bac4d1cc56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
