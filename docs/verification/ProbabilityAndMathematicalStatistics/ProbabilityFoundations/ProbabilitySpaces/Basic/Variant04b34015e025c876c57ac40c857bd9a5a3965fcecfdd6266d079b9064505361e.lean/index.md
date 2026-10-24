# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Basic.Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "632c0f4885be44eb76966d7c2fffd8ab7d2be378",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `632c0f4885be44eb76966d7c2fffd8ab7d2be378`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfLIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCondKernel](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel--c39ecc0987650f1d9b4ceb72.md) | 62 | `declaration-track:c39ecc0987650f1d9b4ceb72181deb2782de24c4c0de2a3580e67afe0692e5c0` |
| 2 | `lemma` | [disintegrate](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/disintegrate--20916d78ef32b31a4c57550c.md) | 67 | `result-track:20916d78ef32b31a4c57550c552af4fb378b71aecbcb5c5d1a31ef2e682272d3` |
| 3 | `lemma` | [IsCondKernel.isSFiniteKernel](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel-issfinitekernel--a9f8bd78d1155fff1d9b25c8.md) | 69 | `result-track:a9f8bd78d1155fff1d9b25c843463130de149dd1eadf0abd350ff419f1316fda` |
| 4 | `lemma` | [IsCondKernel.apply_of_ne_zero_of_measurableSet](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel-apply-of-ne-zero-of-measurableset--cc3474c2e36b169961abbe6b.md) | 75 | `result-track:cc3474c2e36b169961abbe6bf1d8ab8714760c29a6b2b3c71c186aefd3fff46c` |
| 5 | `lemma` | [IsCondKernel.apply_of_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel-apply-of-ne-zero--4a068e1e6fe993ce44e4d638.md) | 97 | `result-track:4a068e1e6fe993ce44e4d6381fd44069a80140371f6ab1e32c251f7ced1c76b5` |
| 6 | `lemma` | [IsCondKernel.isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel-isprobabilitymeasure--8536efe0d96e988f04c5598a.md) | 105 | `result-track:8536efe0d96e988f04c5598a8537f30786b3edaadf3f8114ed284421ee66a206` |
| 7 | `lemma` | [IsCondKernel.isMarkovKernel](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel-ismarkovkernel--4833a91e4448bd60d5f771f9.md) | 111 | `result-track:4833a91e4448bd60d5f771f9ee7127d5b24e38e8733ca40312142daa5fe866c8` |
| 8 | `class` | [IsCondKernel](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel--aad921dc72bc4549ed967e54.md) | 132 | `declaration-track:aad921dc72bc4549ed967e544db61042b47fee427800f31fab923149417f07a2` |
| 9 | `instance` | [instIsCondKernel_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/instiscondkernel-zero--e312247870b29a8a7d5af15e.md) | 135 | `declaration-track:e312247870b29a8a7d5af15efc3d6c50bdff83c997a99f280bfe5d602b1f2dc4` |
| 10 | `lemma` | [disintegrate](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/disintegrate--2062b2a5ef3046617f0140ca.md) | 138 | `result-track:2062b2a5ef3046617f0140caaff1c037d1960e1e1593f85d1ff9f3fa7f85c8de` |
| 11 | `lemma` | [IsCondKernel.isProbabilityMeasure_ae](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/iscondkernel-isprobabilitymeasure-ae--0b894f8bb63e25964ec3bcde.md) | 141 | `result-track:0b894f8bb63e25964ec3bcded2238ea900d92393214929ec1ff6de5a96cc7071` |
| 12 | `def` | [condKernelCountable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/condkernelcountable--62d0949447a2bba6eea404f3.md) | 200 | `declaration-track:62d0949447a2bba6eea404f3aeeb090afb7ec2fdf9495b024b77875e348cda00` |
| 13 | `lemma` | [condKernelCountable_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/condkernelcountable-apply--bf2bac75f3e2cb07c411fb16.md) | 209 | `result-track:bf2bac75f3e2cb07c411fb16127c6897125ef434f8e07a6e655e65b97cbb3eaf` |
| 14 | `instance` | [condKernelCountable.instIsMarkovKernel](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/condkernelcountable-instismarkovkernel--2cdbe4f7962809829a0b9422.md) | 212 | `declaration-track:2cdbe4f7962809829a0b9422e7c21df8998798ef2d0982b620f8a90cfc0febe7` |
| 15 | `instance` | [condKernelCountable.instIsCondKernel](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant04b34015e025c876c57ac40c857bd9a5a3965fcecfdd6266d079b9064505361e.lean/declarations/condkernelcountable-instiscondkernel--301d9f1f2186cb6a1fd2efbc.md) | 217 | `declaration-track:301d9f1f2186cb6a1fd2efbc4a90bdc30187eab26a7aa64cd5d615bfe7c45592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
