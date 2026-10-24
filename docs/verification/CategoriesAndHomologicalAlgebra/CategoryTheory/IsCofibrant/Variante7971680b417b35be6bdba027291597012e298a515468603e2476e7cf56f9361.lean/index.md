# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCofibrant.Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bc83aaf95f150a2bbfb4e8519d9145301d0add1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bc83aaf95f150a2bbfb4e8519d9145301d0add1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsCofibrant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/declarations/iscofibrant--2b209780cf3f7580f04aa99a.md) | 38 | `declaration-track:2b209780cf3f7580f04aa99affcae471a28bc1c09b42d32d9d277c54ea1842d6` |
| 2 | `lemma` | [isCofibrant_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/declarations/iscofibrant-iff--7451b5dab333d0b489800770.md) | 40 | `result-track:7451b5dab333d0b489800770a27823f72617cc890e967e9d0c6057117742d93a` |
| 3 | `lemma` | [isCofibrant_iff_of_isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/declarations/iscofibrant-iff-of-isinitial--6c44fee351442e80edcaad61.md) | 43 | `result-track:6c44fee351442e80edcaad617b6c2e3100dfef5b6db7d35510a4f783eead8efe` |
| 4 | `abbrev` | [IsFibrant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/declarations/isfibrant--0d91b6765029ef07710d00fe.md) | 57 | `declaration-track:0d91b6765029ef07710d00feb0a9a5707188c34e290fbfb517874666f718fb94` |
| 5 | `lemma` | [isFibrant_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/declarations/isfibrant-iff--c3c506500044701a79c6676a.md) | 59 | `result-track:c3c506500044701a79c6676a35e81281eaf5fb9b601d31e4e8d90903e81b46bb` |
| 6 | `lemma` | [isFibrant_iff_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variante7971680b417b35be6bdba027291597012e298a515468603e2476e7cf56f9361.lean/declarations/isfibrant-iff-of-isterminal--08b8781ee914067a4734c526.md) | 62 | `result-track:08b8781ee914067a4734c526dfbe049c0c2acbc036daa5ecea519413e089f95d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
