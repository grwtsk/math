# Verification target: GRWTSK.Analysis.MeasureTheory.ProjectiveFamilyContent.Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee2510313ef0bd2a4198222e6bbf8d8ec66af90d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee2510313ef0bd2a4198222e6bbf8d8ec66af90d`.

Source path: `GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.AddContent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.SetAlgebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isSetAlgebra_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/issetalgebra-measurablecylinders--2421e4f67b78ea07664df507.md) | 56 | `result-track:2421e4f67b78ea07664df507af77767741c4477ca2423fd9c8a325a1da120229` |
| 2 | `lemma` | [isSetRing_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/issetring-measurablecylinders--d07403ab6e413684957cf19a.md) | 61 | `result-track:d07403ab6e413684957cf19aab7ec2a544fef7f10838650e855262955f6ac549` |
| 3 | `lemma` | [isSetSemiring_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/issetsemiring-measurablecylinders--f0004c5a1006f2cfc1f2aa4f.md) | 64 | `result-track:f0004c5a1006f2cfc1f2aa4f2cfc3ccdc0f040b2264c0e887ff547be7b85061e` |
| 4 | `def` | [projectiveFamilyFun](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilyfun--e4e2bb48cc938503e51acd95.md) | 75 | `declaration-track:e4e2bb48cc938503e51acd95a44ac129a609bb0a7f936c25b7b1062255319bff` |
| 5 | `lemma` | [projectiveFamilyFun_congr](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilyfun-congr--9c9eae7081c3c6ee34f71419.md) | 80 | `result-track:9c9eae7081c3c6ee34f71419b6979fd0731c366233b9b6d7045a99058246a377` |
| 6 | `lemma` | [projectiveFamilyFun_empty](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilyfun-empty--06e06eca917ba8b46e21a3d5.md) | 87 | `result-track:06e06eca917ba8b46e21a3d51d28cbea717fa83d06c8f2046ba327f387511072` |
| 7 | `lemma` | [projectiveFamilyFun_union](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilyfun-union--11a7803a9156de9dbb0a94ff.md) | 92 | `result-track:11a7803a9156de9dbb0a94ffd56af10ef389e43aa560a7c59750e6167c33ca46` |
| 8 | `def` | [projectiveFamilyContent](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent--1c53f8d4b45a17c98ff67c04.md) | 121 | `declaration-track:1c53f8d4b45a17c98ff67c049d2d0a0f5f3e517e0c41cce9daf9749e1b11099f` |
| 9 | `lemma` | [projectiveFamilyContent_eq](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-eq--f88100181f1159dc057f19ab.md) | 126 | `result-track:f88100181f1159dc057f19ab3b6716898c95e4d485f8eb9f337e6b251473de0f` |
| 10 | `lemma` | [projectiveFamilyContent_congr](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-congr--8ba658b7a52a5ade5b9dcbcc.md) | 129 | `result-track:8ba658b7a52a5ade5b9dcbccea587451ff050942a8e5c9721d4d35a59ff102fa` |
| 11 | `lemma` | [projectiveFamilyContent_cylinder](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-cylinder--07f10aa7f5d15353df3d673e.md) | 135 | `result-track:07f10aa7f5d15353df3d673e20801429060d13f69b898a54d4f0d3d5f156cf80` |
| 12 | `lemma` | [projectiveFamilyContent_mono](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-mono--5d8ae51686472aa7ba8a671a.md) | 138 | `result-track:5d8ae51686472aa7ba8a671a9e3c1796a6b655bd11cbce83392a9b270bf6c700` |
| 13 | `lemma` | [projectiveFamilyContent_iUnion_le](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-iunion-le--013e3229ee1a025cbea11263.md) | 143 | `result-track:013e3229ee1a025cbea112635f2638d5749cd03e0f60355380a98b607932f202` |
| 14 | `lemma` | [projectiveFamilyContent_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-ne-top--c81e126ae77678b96e9f7324.md) | 153 | `result-track:c81e126ae77678b96e9f73249f4ed160e593062b0f8c5bba45c65b0045188c49` |
| 15 | `lemma` | [projectiveFamilyContent_diff](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-diff--616aa21075a2929e183e987d.md) | 161 | `result-track:616aa21075a2929e183e987da71ae299d5e54917c1b7f84a0d46e8e8cd3ba36a` |
| 16 | `lemma` | [projectiveFamilyContent_diff_of_subset](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant3a94a4184b75e5947fc0962a33261cb80f4d462c8cc5093e146c1ebf92f53c8e.lean/declarations/projectivefamilycontent-diff-of-subset--e8ae288bc805c0f4b413ee35.md) | 167 | `result-track:e8ae288bc805c0f4b413ee359fc45f00b96a9ff60d0c1d550c89e14c6b38c9f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
