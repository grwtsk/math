# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce53a2308e4769a1bb35fd82b22468198c960a8e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce53a2308e4769a1bb35fd82b22468198c960a8e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean.json)

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
| 1 | `def` | [evaluationLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/evaluationleftadjoint--46782d3e75bfde0894d97913.md) | 37 | `declaration-track:46782d3e75bfde0894d979139515af40994e2c2797c3ea8c2fec2a74d44e3210` |
| 2 | `def` | [evaluationAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/evaluationadjunctionright--b32ba955e0fc43d05053b872.md) | 53 | `declaration-track:b32ba955e0fc43d05053b872977e4f38d4bb80ec3c06137a7ac20e7a84ad348d` |
| 3 | `instance` | [evaluationIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/evaluationisrightadjoint--cababc720f506c1c3aa816d8.md) | 68 | `declaration-track:cababc720f506c1c3aa816d8823df88fa2b67be0755a4ba9428afb0fe40836ae` |
| 4 | `theorem` | [NatTrans.mono_iff_mono_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/nattrans-mono-iff-mono-app--93a351dc8b291c4f44f77604.md) | 73 | `result-track:93a351dc8b291c4f44f77604536e3a4348483d7197f0f1b78d24696d7d7de793` |
| 5 | `def` | [evaluationRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/evaluationrightadjoint--546ec343fe884b8bbb004241.md) | 88 | `declaration-track:546ec343fe884b8bbb004241a94c7c0f63759feeec8bd6b8c825d17df65c30ea` |
| 6 | `def` | [evaluationAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/evaluationadjunctionleft--16f046f0d94e33ea5b9632c1.md) | 98 | `declaration-track:16f046f0d94e33ea5b9632c18d67b3aea940892da9e01f5eefde87802cc9c585` |
| 7 | `instance` | [evaluationIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/evaluationisleftadjoint--f8900e7b6cc036a80f7b5e69.md) | 113 | `declaration-track:f8900e7b6cc036a80f7b5e69cc95f539367d751179eb051a3397af2014fd3940` |
| 8 | `theorem` | [NatTrans.epi_iff_epi_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantec55160e2b41330426cfb34b1dbeeb327ab11404ba366f15ca810cc6322e84c4.lean/declarations/nattrans-epi-iff-epi-app--cb78b4d8b26ab859f3e9da8d.md) | 118 | `result-track:cb78b4d8b26ab859f3e9da8d990ceafc6e4b86808b4c5148a4c3cf513e10e10b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
