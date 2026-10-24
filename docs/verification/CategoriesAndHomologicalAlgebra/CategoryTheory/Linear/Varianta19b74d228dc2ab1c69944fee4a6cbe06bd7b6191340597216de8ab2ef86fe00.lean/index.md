# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f0568a8054c009ea07b51e0423302897f600e7f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f0568a8054c009ea07b51e0423302897f600e7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Center.Localization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Center.Linear` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/linear--68eb64f1d0d2aaa76c8b6d59.md) | 41 | `declaration-track:68eb64f1d0d2aaa76c8b6d59b409fa14a30ad973dbab34247eea6c925a9da78b` |
| 2 | `lemma` | [functor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/functor-linear--cc0198dc32d175082805e28b.md) | 44 | `result-track:cc0198dc32d175082805e28b80830cb1a3a7fbab1ef8ffd35cee6ca86a731792` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/instance--d5f0dd64389d9b74dde1293f.md) | 58 | `declaration-track:d5f0dd64389d9b74dde1293f32838e3fd211efc1b52557fc692bbd51bd13e165` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/instance--89c5c211634297bfc7b41b87.md) | 60 | `declaration-track:89c5c211634297bfc7b41b87bf16262708cb11bfe7b6ede2daf23510e0f9b521` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/instance--37507b60b4eef184d7e19dff.md) | 68 | `declaration-track:37507b60b4eef184d7e19dffeb9b930b06c85acfdc75952a716942cbb185bc05` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/instance--435e049ec0b2b8b90ca309af.md) | 70 | `declaration-track:435e049ec0b2b8b90ca309afd863aabdf12fcad351ade916a49bc0daeb9e3de9` |
| 7 | `lemma` | [functor_linear_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianta19b74d228dc2ab1c69944fee4a6cbe06bd7b6191340597216de8ab2ef86fe00.lean/declarations/functor-linear-iff--b13f675e93412f1439fb4317.md) | 81 | `result-track:b13f675e93412f1439fb4317b3f1df60c8e310ac843486f5055f29f80983841d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
