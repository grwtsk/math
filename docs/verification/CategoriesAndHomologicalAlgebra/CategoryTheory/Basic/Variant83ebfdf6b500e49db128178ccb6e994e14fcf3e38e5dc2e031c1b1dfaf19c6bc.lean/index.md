# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d27482658e78bace93149a59bb9f41bde7df4774",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d27482658e78bace93149a59bb9f41bde7df4774`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Coyoneda` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EnrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/enrichedordinarycategory--0b7e7b9b90758614e8c46e1a.md) | 39 | `declaration-track:0b7e7b9b90758614e8c46e1a219930c85444b463eb01fb15da10cc2cde37c958` |
| 2 | `def` | [eHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomequiv--4627bd6bbd16d2fc3a66c419.md) | 52 | `declaration-track:4627bd6bbd16d2fc3a66c419819ce13dcf5837d5525a9de85402c8ab83fa384e` |
| 3 | `lemma` | [eHomEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomequiv-id--a3ec40d9ce60cc2c27d854d4.md) | 56 | `result-track:a3ec40d9ce60cc2c27d854d4e47794ac2ed20f7387d2753bc38239d6237561c5` |
| 4 | `lemma` | [eHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomequiv-comp--6967e5f3e31b0d60ff306da1.md) | 60 | `result-track:6967e5f3e31b0d60ff306da1cb8b99c44b2628a23808a5db4b10058bc5e9f9a6` |
| 5 | `def` | [eHomWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomwhiskerright--44dfc779efa893f28490751e.md) | 65 | `declaration-track:44dfc779efa893f28490751eec23f3ae6d13de6174c9a873fc33f846154463f1` |
| 6 | `lemma` | [eHomWhiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomwhiskerright-id--93ec091d9c61504973348fbd.md) | 70 | `result-track:93ec091d9c61504973348fbd7c783823b07b389f3b75755d38d20fba80d46107` |
| 7 | `lemma` | [eHomWhiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomwhiskerright-comp--4983cadcaba213a7c95791b0.md) | 74 | `result-track:4983cadcaba213a7c95791b0bfbbebb9c236d82abc1bd773059eb934ed0b71a6` |
| 8 | `lemma` | [eComp_eHomWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ecomp-ehomwhiskerright--4dbc5c3f49e9a37b6509e725.md) | 86 | `result-track:4dbc5c3f49e9a37b6509e7250857d802e1e6f705c3954629c8676929c06f6e0c` |
| 9 | `def` | [eHomWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomwhiskerleft--be9975cccb0c0fe1d90f9777.md) | 94 | `declaration-track:be9975cccb0c0fe1d90f977716e889054fc5e02f946862dedc7bdc5ab29a6674` |
| 10 | `lemma` | [eHomWhiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomwhiskerleft-id--3e96409f54b1f7f5f562130d.md) | 99 | `result-track:3e96409f54b1f7f5f562130d47985c4548391ae7bb123b094de7a6f8734141c4` |
| 11 | `lemma` | [eHomWhiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomwhiskerleft-comp--d34f0255e57cd2bb8d0bb43e.md) | 103 | `result-track:d34f0255e57cd2bb8d0bb43e058a9cd0afadd804f13aa113370a3a669c94b0dc` |
| 12 | `lemma` | [eComp_eHomWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ecomp-ehomwhiskerleft--2b67b52a867434fa73bfec63.md) | 118 | `result-track:2b67b52a867434fa73bfec638c922a2dd2806c123cb9430df9098531cbc44689` |
| 13 | `lemma` | [eHom_whisker_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehom-whisker-cancel--4ab5ccf00c9c9b652d594c51.md) | 130 | `result-track:4ab5ccf00c9c9b652d594c51ffb6fc6030217387db294503b0c9e6cfbf600ba7` |
| 14 | `lemma` | [eHom_whisker_cancel_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehom-whisker-cancel-inv--4a73e8207353a1f977086b0d.md) | 141 | `result-track:4a73e8207353a1f977086b0d1c7449c45f700772b26f6803a27a8fba2df014a4` |
| 15 | `lemma` | [eHom_whisker_exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehom-whisker-exchange--34c80957fddf054dfa513483.md) | 146 | `result-track:34c80957fddf054dfa513483d3376baf07b49ba704a22719c37c23d6a98520d1` |
| 16 | `def` | [eHomFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ehomfunctor--e23ccb0b282abddf9221fe52.md) | 162 | `declaration-track:e23ccb0b282abddf9221fe528d5c29901082632d3900c30bd9acf3e60bf414bb` |
| 17 | `instance` | [ForgetEnrichment.EnrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/forgetenrichment-enrichedordinarycategory--17cf59dc5f15040ebb946261.md) | 169 | `declaration-track:17cf59dc5f15040ebb946261615c7422245fe5706bc9de8a3a0c8ac6000a80b2` |
| 18 | `abbrev` | [eCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant83ebfdf6b500e49db128178ccb6e994e14fcf3e38e5dc2e031c1b1dfaf19c6bc.lean/declarations/ecoyoneda--90d14b17d77a682fab354590.md) | 177 | `declaration-track:90d14b17d77a682fab35459058a20f87f7dc6e10f042f2a39eeb00cad005debf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
