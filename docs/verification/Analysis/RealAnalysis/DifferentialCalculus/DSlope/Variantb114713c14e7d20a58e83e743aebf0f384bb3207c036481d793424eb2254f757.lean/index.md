# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DSlope.Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd3b5a36fa421ca352f45c6c6ff26a5906bdcc57",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd3b5a36fa421ca352f45c6c6ff26a5906bdcc57`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope--8fcaf7db0cc6069235bc7c4b.md) | 39 | `declaration-track:8fcaf7db0cc6069235bc7c4bc9dd831df74b13dac9e26039218527994d6103ca` |
| 2 | `theorem` | [dslope_same](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope-same--48afa414d98def90a51d0c71.md) | 43 | `result-track:48afa414d98def90a51d0c71cf64dcd83a60e05a30b06006f9bc84eebc4decb8` |
| 3 | `theorem` | [dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope-of-ne--e9ff3197dc84879c41a32368.md) | 49 | `result-track:e9ff3197dc84879c41a32368448cbd84804322887dd19cd56f2e399fd6e93ec6` |
| 4 | `theorem` | [ContinuousLinearMap.dslope_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuouslinearmap-dslope-comp--74f4bb44ca667e49ffbf6eb0.md) | 53 | `result-track:74f4bb44ca667e49ffbf6eb0cf2c9ac695e54b570cf9ddc0378116deb657c03c` |
| 5 | `theorem` | [eqOn_dslope_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/eqon-dslope-slope--2660890466afe01b2a7e6e1f.md) | 61 | `result-track:2660890466afe01b2a7e6e1f9ce81a1e6d314035106e61165e1ebc2a9f937355` |
| 6 | `theorem` | [dslope_eventuallyEq_slope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope-eventuallyeq-slope-of-ne--37af7350454dbe37a5fae2ff.md) | 64 | `result-track:37af7350454dbe37a5fae2ffdd1f1c12210f7baa909ba0fa0bf1793c701fe324` |
| 7 | `theorem` | [dslope_eventuallyEq_slope_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope-eventuallyeq-slope-nhdsne--fbd0e11c3df8e5870c9ea2e1.md) | 67 | `result-track:fbd0e11c3df8e5870c9ea2e104b30a28b804aa4cb0cd8342b39b6b835ba93961` |
| 8 | `theorem` | [sub_smul_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/sub-smul-dslope--1ae8d66056d28094aa886573.md) | 74 | `result-track:1ae8d66056d28094aa886573395c0b074db90de25ca7ad8a77423e275182c0fd` |
| 9 | `theorem` | [dslope_sub_smul_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope-sub-smul-of-ne--0e8d36193db6bb3b65b89263.md) | 77 | `result-track:0e8d36193db6bb3b65b892630d57ba5d1a207511f504f2265975a1c36a5d507f` |
| 10 | `theorem` | [eqOn_dslope_sub_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/eqon-dslope-sub-smul--738aea393844a242f04f45b7.md) | 81 | `result-track:738aea393844a242f04f45b7592fd93b489694c7cbfc8f5a595ad3e99d3dcfd0` |
| 11 | `theorem` | [dslope_sub_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/dslope-sub-smul--c91cca1aaf11206fb5c3477f.md) | 84 | `result-track:c91cca1aaf11206fb5c3477f082d075dc3e7f53be58fb2da48a30b4d61985257` |
| 12 | `theorem` | [continuousAt_dslope_same](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuousat-dslope-same--f037c27f6492487f3ad5a22e.md) | 89 | `result-track:f037c27f6492487f3ad5a22e047162cf8221bba8941ce01c32339cf4abd30c86` |
| 13 | `theorem` | [ContinuousWithinAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuouswithinat-of-dslope--4df08a7e31ba8cdc4bfacb98.md) | 92 | `result-track:4df08a7e31ba8cdc4bfacb986c469600095f0653a77a9c7be4de19b7de754479` |
| 14 | `theorem` | [ContinuousAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuousat-of-dslope--0927ed1d3bdd1bf8cf850c4c.md) | 98 | `result-track:0927ed1d3bdd1bf8cf850c4c1cccca3a2b6bb3635fd5e6e1ca6a3cbaf03e95f5` |
| 15 | `theorem` | [ContinuousOn.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuouson-of-dslope--94cb32ddb305961ac25a8f13.md) | 101 | `result-track:94cb32ddb305961ac25a8f13fa4df8c89cf6d6518804748e46076c69500982c1` |
| 16 | `theorem` | [continuousWithinAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuouswithinat-dslope-of-ne--cd4343161c028913573d16d0.md) | 104 | `result-track:cd4343161c028913573d16d0b5e49a0d8f43e79ff2e48a43af3e7988d70f6ba6` |
| 17 | `theorem` | [continuousAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuousat-dslope-of-ne--f9e3081a18822bdf28da8a6b.md) | 112 | `result-track:f9e3081a18822bdf28da8a6b3246e88f12ed6d841c939d2d833734f351118759` |
| 18 | `theorem` | [continuousOn_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/continuouson-dslope--6dc0fb49a75cebe350750679.md) | 115 | `result-track:6dc0fb49a75cebe350750679b08d9c0380a9545da33c56e84d258e74da3bde14` |
| 19 | `theorem` | [DifferentiableWithinAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/differentiablewithinat-of-dslope--c4152bafb1bd89c97e2e7ff7.md) | 123 | `result-track:c4152bafb1bd89c97e2e7ff7e54a582fc1aaa590d778a2fee33bc1b54f6f6787` |
| 20 | `theorem` | [DifferentiableAt.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/differentiableat-of-dslope--22fac315d891ddf90e472379.md) | 128 | `result-track:22fac315d891ddf90e472379d8f9c306c6f0a4a8e5e5d12e943580350566bb52` |
| 21 | `theorem` | [DifferentiableOn.of_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/differentiableon-of-dslope--350ae2cade3593c6c5343477.md) | 132 | `result-track:350ae2cade3593c6c53434773237ddac39c35765725bcaed801520f018bff45f` |
| 22 | `theorem` | [differentiableWithinAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/differentiablewithinat-dslope-of-ne--8c5c94d2adcaa2553325ef02.md) | 135 | `result-track:8c5c94d2adcaa2553325ef027b1e8a8107c3fe0ffce3f59e6937df7560b41800` |
| 23 | `theorem` | [differentiableOn_dslope_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/differentiableon-dslope-of-notmem--3639a52a772f4c74bbece220.md) | 143 | `result-track:3639a52a772f4c74bbece220ddd36bedffbb086081cbd7007683d4afa8a3a330` |
| 24 | `theorem` | [differentiableAt_dslope_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/declarations/differentiableat-dslope-of-ne--df8e5a6f346338b499d870b8.md) | 151 | `result-track:df8e5a6f346338b499d870b8fbf2015e88d3c70c17fd44b3e1722cdb15389053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
