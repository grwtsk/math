# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bilinear.Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5901536ef16925e67f18956a0551235e5551c05f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5901536ef16925e67f18956a0551235e5551c05f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsBoundedBilinearMap.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-hasstrictfderivat--b8c11ed4fb8a927b92a27e18.md) | 49 | `result-track:b8c11ed4fb8a927b92a27e18979b53843a970ad14b603abe36b654627701b0fb` |
| 2 | `theorem` | [IsBoundedBilinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-hasfderivat--4a98015517425006bd38caba.md) | 75 | `result-track:4a98015517425006bd38caba18eab5a4c81a509913e37bae7bd19c969096f6a3` |
| 3 | `theorem` | [IsBoundedBilinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-hasfderivwithinat--4acb6b7cf1ff23e537474f5d.md) | 80 | `result-track:4acb6b7cf1ff23e537474f5d890cda218649bd230f5c9cf949c8b854941f0d46` |
| 4 | `theorem` | [IsBoundedBilinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-differentiableat--8b7597f01382deb6a16853d0.md) | 85 | `result-track:8b7597f01382deb6a16853d05ca3bdc8ebb35177f8583e364850690caa1baf23` |
| 5 | `theorem` | [IsBoundedBilinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-differentiablewithinat--0f9514d85307ecb22757ff76.md) | 90 | `result-track:0f9514d85307ecb22757ff76631cbbf117a769dbf6fee728e2e1464f776fd641` |
| 6 | `theorem` | [IsBoundedBilinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-fderiv--0877a213c29630d4d5fb6256.md) | 94 | `result-track:0877a213c29630d4d5fb62562e0e43ce010aaf9265eb1341514cca8e7ac2357a` |
| 7 | `theorem` | [IsBoundedBilinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-fderivwithin--646a8aaf66e6d4797baba54e.md) | 98 | `result-track:646a8aaf66e6d4797baba54e53a79cc6a8f0f42d58650c4424b6daad5a8e0a9d` |
| 8 | `theorem` | [IsBoundedBilinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-differentiable--b34b787aee7b744970742be4.md) | 104 | `result-track:b34b787aee7b744970742be442484bce330bdea79e1db74313f83348f4179612` |
| 9 | `theorem` | [IsBoundedBilinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/isboundedbilinearmap-differentiableon--3f5f971877f55a6756efcc2b.md) | 108 | `result-track:3f5f971877f55a6756efcc2b74264f971c9b6a2f29f2a037098d2d3606901a11` |
| 10 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/continuouslinearmap-hasfderivwithinat-of-bilinear--ac4450cd17fa9645f78bf727.md) | 117 | `result-track:ac4450cd17fa9645f78bf7272cf79f74d3541e70434b9a6bab7a75b775b2cbc0` |
| 11 | `theorem` | [ContinuousLinearMap.hasFDerivAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/continuouslinearmap-hasfderivat-of-bilinear--2096402f9e28a790d2e4bcc6.md) | 127 | `result-track:2096402f9e28a790d2e4bcc6d6897dcca6b9ff14111500fffbcc623f5dbd54d7` |
| 12 | `theorem` | [ContinuousLinearMap.hasStrictFDerivAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/continuouslinearmap-hasstrictfderivat-of-bilinear--9e85fec285a89606bd64e186.md) | 133 | `result-track:9e85fec285a89606bd64e1869533f22b7f6ef8d5b830f27cafca44aaa96ee149` |
| 13 | `theorem` | [ContinuousLinearMap.fderivWithin_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/continuouslinearmap-fderivwithin-of-bilinear--8d4dcdcf2e316e2fe1a76b21.md) | 140 | `result-track:8d4dcdcf2e316e2fe1a76b21cbef8a7a6b62a2dd738f44ea962c750cbb508a77` |
| 14 | `theorem` | [ContinuousLinearMap.fderiv_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant01d921dbcb42002084970246bc7ac67d300176d0a9e8d1d917bdf1663d334186.lean/declarations/continuouslinearmap-fderiv-of-bilinear--578d3b7416d78cb12b9c0200.md) | 147 | `result-track:578d3b7416d78cb12b9c0200b3378a87a235921af320e6937ff8070ef9f3bdd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
