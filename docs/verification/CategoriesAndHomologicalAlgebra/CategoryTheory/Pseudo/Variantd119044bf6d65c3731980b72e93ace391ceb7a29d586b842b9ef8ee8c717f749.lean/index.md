# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudo.Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30119d7a1cfe30e85b924814d58d928eee81bd8c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30119d7a1cfe30e85b924814d58d928eee81bd8c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.NaturalTransformation.Oplax` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrongTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/strongtrans--3849c12ba3892b5e81a49f00.md) | 53 | `declaration-track:3849c12ba3892b5e81a49f00a335562c4c90a3485443d1dfc970e3bec92cd4e4` |
| 2 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/tooplax--08754471e8672188b751cd7b.md) | 83 | `declaration-track:08754471e8672188b751cd7bc66370d0a06160c222ffab1da3b7a29b38064ca4` |
| 3 | `instance` | [hasCoeToOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/hascoetooplax--831cd467c4d14d3b48bbb1c5.md) | 87 | `declaration-track:831cd467c4d14d3b48bbb1c5935e0c4905cfd4e2b7edd2bcd20e7a286419e246` |
| 4 | `def` | [mkOfOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/mkofoplax--4a13cfe7ad143695e39f05cb.md) | 93 | `declaration-track:4a13cfe7ad143695e39f05cbf044da7bd93921ef2eeffa6058a934a445f0fc66` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/id--bb6d76353444898f63a2b50d.md) | 103 | `declaration-track:bb6d76353444898f63a2b50d70ad7955a3ffdfff7ba46c39b432df3f018a6f79` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/instance--7cfd0a4528dd65d8b2303346.md) | 107 | `declaration-track:7cfd0a4528dd65d8b230334610095478c3377256a60d2726536dc2db427e5d8e` |
| 7 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/vcomp--fa1e763c8c4799b21d8a5871.md) | 113 | `declaration-track:fa1e763c8c4799b21d8a58719b9eaceefb42e0182f6a73e2648c10073e04bbb3` |
| 8 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/categorystruct--355bb45348613d83ec99dca4.md) | 120 | `declaration-track:355bb45348613d83ec99dca4593b27d73488a246b5c520450cac48080502b443` |
| 9 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/comp-app--bfb36de98b1046f54dc706b8.md) | 128 | `result-track:bfb36de98b1046f54dc706b80041f84b77e42237470858bf006eea8425d9ab05` |
| 10 | `lemma` | [id.toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/id-tooplax--9629f903be4554e9f049f4eb.md) | 134 | `result-track:9629f903be4554e9f049f4eb7d223aadb5f8a3fd2f177e75dafac9fea0a7381a` |
| 11 | `theorem` | [whiskerLeft_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/whiskerleft-naturality-naturality--69fff6c7063ae38336bf7adf.md) | 143 | `result-track:69fff6c7063ae38336bf7adf0f24316af65ea3cb5de9eb7287b0ae4e1c1b1ee1` |
| 12 | `theorem` | [whiskerRight_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/whiskerright-naturality-naturality--96394f3ba4cbfc737e77a06f.md) | 149 | `result-track:96394f3ba4cbfc737e77a06fe7726914426de29e6236bb704b5e63e9d4324fd3` |
| 13 | `theorem` | [whiskerLeft_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/whiskerleft-naturality-comp--8b0fdc9c8319014d07c6fd3a.md) | 155 | `result-track:8b0fdc9c8319014d07c6fd3a5505b592ee13db49785589141a905dfc228a5101` |
| 14 | `theorem` | [whiskerRight_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/whiskerright-naturality-comp--0cf6e9be23b0e139ca39136c.md) | 164 | `result-track:0cf6e9be23b0e139ca39136c00eb4f66309f6c4daee8889f58f3290753d3e09c` |
| 15 | `theorem` | [whiskerLeft_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/whiskerleft-naturality-id--348b5d3193d9ce625f2db625.md) | 176 | `result-track:348b5d3193d9ce625f2db625761c7a52663ad737059823c87ab78567b75b8a42` |
| 16 | `theorem` | [whiskerRight_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/declarations/whiskerright-naturality-id--962bc697edc0c6afffa7c486.md) | 182 | `result-track:962bc697edc0c6afffa7c486498893ca985460df538b255e4a83b934e0d4fe21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
