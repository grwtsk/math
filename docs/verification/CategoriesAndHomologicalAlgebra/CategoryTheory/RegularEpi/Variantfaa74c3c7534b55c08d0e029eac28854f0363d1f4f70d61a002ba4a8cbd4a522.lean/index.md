# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularEpi.Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "315af1d5be2eebab74997529251149e649bf8e42",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `315af1d5be2eebab74997529251149e649bf8e42`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiStructOfRegularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/declarations/effectiveepistructofregularepi--a8413f5b641ca8e063d68cd4.md) | 31 | `declaration-track:a8413f5b641ca8e063d68cd46cbe20cc47564f5f8a4cb9a65cd2cd53cb6d7503` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/declarations/instance--381196a848004be0e16a48bc.md) | 38 | `declaration-track:381196a848004be0e16a48bc15e72918f9fa6b5570e0fe44d656f021c44c9564` |
| 3 | `theorem` | [effectiveEpiOfKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/declarations/effectiveepiofkernelpair--063fb0a785ff40a22c1bc5f3.md) | 42 | `result-track:063fb0a785ff40a22c1bc5f3fd56759fe8f427baf2bfeeb4a57eeef77a3a2d8a` |
| 4 | `instance` | [regularEpiOfEffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/declarations/regularepiofeffectiveepi--65fdf9e01eeb4a42842824c2.md) | 48 | `declaration-track:65fdf9e01eeb4a42842824c20eae57fe240d4cbc75ca6ab9ab2338ecee2ded3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
