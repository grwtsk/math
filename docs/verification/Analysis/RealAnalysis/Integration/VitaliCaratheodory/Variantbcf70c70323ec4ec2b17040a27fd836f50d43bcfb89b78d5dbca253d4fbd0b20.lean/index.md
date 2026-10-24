# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VitaliCaratheodory.Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/simplefunc-exists-le-lowersemicontinuous-lintegral-ge--aee7625975baeb92f2068da5.md) | 102 | `result-track:aee7625975baeb92f2068da5a965324b2e734e8506776b2f2ae083aeef8e510b` |
| 2 | `theorem` | [exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-le-lowersemicontinuous-lintegral-ge--2b5b4ef8a454aec1077a95d8.md) | 173 | `result-track:2b5b4ef8a454aec1077a95d86502e8129d938006daa76d630c254199f10d2916` |
| 3 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge--f7f689d16a374851cab420e0.md) | 212 | `result-track:f7f689d16a374851cab420e0aac77b50ad9d3be9cd3b92cddcf5ce30cc352989` |
| 4 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge_of_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge-of-aemeasurable--b37dbe4f930fdbd83b9faf28.md) | 240 | `result-track:b37dbe4f930fdbd83b9faf28bdd5eddf2dc30fb6301563d147b07e5e4af919f4` |
| 5 | `theorem` | [exists_lt_lowerSemicontinuous_integral_gt_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-lt-lowersemicontinuous-integral-gt-nnreal--de56d0cd29c7b8bc1f2bca32.md) | 279 | `result-track:de56d0cd29c7b8bc1f2bca32f91737d664d28e7046411a98d9415ebb00fa7764` |
| 6 | `theorem` | [SimpleFunc.exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/simplefunc-exists-uppersemicontinuous-le-lintegral-le--713907c2e636305c3d2687b0.md) | 332 | `result-track:713907c2e636305c3d2687b0cf484e4efc2ad6bd7146a6a6d9f88a0c68960407` |
| 7 | `theorem` | [exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-uppersemicontinuous-le-lintegral-le--570f4e350f2d80922e849945.md) | 396 | `result-track:570f4e350f2d80922e84994575853d335e409b5d18e50d60fcb0e26ba82c6cd3` |
| 8 | `theorem` | [exists_upperSemicontinuous_le_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-uppersemicontinuous-le-integral-le--90404be0c420a2a87e7f98be.md) | 431 | `result-track:90404be0c420a2a87e7f98befbfa069da7d1bb6b0006ce2dc5ad2c21d6758961` |
| 9 | `theorem` | [exists_lt_lowerSemicontinuous_integral_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-lt-lowersemicontinuous-integral-lt--5fcbbb90e7ea5f76cc301e73.md) | 466 | `result-track:5fcbbb90e7ea5f76cc301e73740777823b09822d523339e4dfe3e5575cf35353` |
| 10 | `theorem` | [exists_upperSemicontinuous_lt_integral_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/declarations/exists-uppersemicontinuous-lt-integral-gt--7274bf10a0576259e1344b3a.md) | 545 | `result-track:7274bf10a0576259e1344b3a40116729630d98ef328c5d02a6591deaa7d1eaf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
