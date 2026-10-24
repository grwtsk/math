# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86c00c564de1e868a202b9b27327578861e932bc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86c00c564de1e868a202b9b27327578861e932bc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianMode](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussianmode--1f1ba64f880d277160dd2aea.md) | 22 | `declaration-track:1f1ba64f880d277160dd2aeaa9435432855d373ba9d17eafdc5fe071d2b4914c` |
| 2 | `theorem` | [exp_three_gt_sixteen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/exp-three-gt-sixteen--cc0fb6f42f933c1ba26ca0f3.md) | 25 | `result-track:cc0fb6f42f933c1ba26ca0f3a68498bc4f3cbf9ece7f94b422a7bfe0c3e13d4d` |
| 3 | `theorem` | [gaussian_zero_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-zero-lt--205700e20e79f880deb6c414.md) | 30 | `result-track:205700e20e79f880deb6c4146a2acbddb0d34f908f464282a7236750b903c6bd` |
| 4 | `theorem` | [gaussian_ratio_small](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-ratio-small--34e0f7bb0309074dd3874ef6.md) | 41 | `result-track:34e0f7bb0309074dd3874ef6870982c9d7b2fb6eddfc88baba789f9084717157` |
| 5 | `theorem` | [gaussian_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-succ-le--4871dae4ca39abb0df9e54a3.md) | 52 | `result-track:4871dae4ca39abb0df9e54a3ebdff728c0565c21ea2032f34ae5c66bd263d50d` |
| 6 | `theorem` | [gaussian_geometric_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-geometric-le--c13b0d4749edbd56b66e001a.md) | 74 | `result-track:c13b0d4749edbd56b66e001acfc7ab250f555a70b3b281dbae82eb67404258c7` |
| 7 | `theorem` | [gaussian_three_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-three-summable--ce92bd6a49e9aa0f6f635150.md) | 85 | `result-track:ce92bd6a49e9aa0f6f635150b30ec145784de5ae7ede1b1cea536452ebfac025` |
| 8 | `theorem` | [gaussian_three_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-three-tsum-lt--3beddbf8d2fc6aa0e529c1f2.md) | 93 | `result-track:3beddbf8d2fc6aa0e529c1f2a57f98360cdd4a60118a56f8e50b2c059b1a59d7` |
| 9 | `theorem` | [gaussian_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-le-three--d40d8754806ef23f5df6ed1d.md) | 102 | `result-track:d40d8754806ef23f5df6ed1d5080d184c443b29e4be80c1e92ef92941dd42e06` |
| 10 | `theorem` | [gaussian_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-summable--25df06070cac8aa25801f5bf.md) | 111 | `result-track:25df06070cac8aa25801f5bfeb592c2e2a931fb139628fa8d92fdeedd34daadb` |
| 11 | `theorem` | [gaussian_mul_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/gaussian-mul-le-three--38265c5bf2c109d539d7ebae.md) | 115 | `result-track:38265c5bf2c109d539d7ebaebf6205ca1b511ac3329218d10511ffa4320e137a` |
| 12 | `theorem` | [thetaGaussianTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/thetagaussiantail-summable--7d42cdd7efca4e1813d37a45.md) | 134 | `result-track:7d42cdd7efca4e1813d37a45978d47faa793e79041c4ad868c9c56af46d59069` |
| 13 | `theorem` | [thetaGaussianTail_mul_lt_one_fifth](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/declarations/thetagaussiantail-mul-lt-one-fifth--867b68a28744040ae007f286.md) | 140 | `result-track:867b68a28744040ae007f28677124c594b48a6695320cb8d99ef23d9a6657d8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
