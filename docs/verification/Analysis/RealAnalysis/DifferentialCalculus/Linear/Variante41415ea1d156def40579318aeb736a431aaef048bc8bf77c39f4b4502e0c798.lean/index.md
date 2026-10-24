# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linear.Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c4b79b950f456367d1d6b401230c5736c231a16",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c4b79b950f456367d1d6b401230c5736c231a16`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-hasstrictfderivat--b11963a0e72035099f10354b.md) | 52 | `result-track:b11963a0e72035099f10354bcc9b0ac9dde7c6b1b04fcf23ae03adce7fc489ae` |
| 2 | `theorem` | [ContinuousLinearMap.hasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-hasfderivatfilter--52ddbd7495fd9704c5fefc70.md) | 56 | `result-track:52ddbd7495fd9704c5fefc707a58883f0a75b127f62c58ccd89fe74be4d16879` |
| 3 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-hasfderivwithinat--1fa0684e4677acf87ac28f71.md) | 61 | `result-track:1fa0684e4677acf87ac28f7120ae593d3e5bcd15fe85dd9185108c69f8dbe8eb` |
| 4 | `theorem` | [ContinuousLinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-hasfderivat--3f6140c333af153d116cf0c7.md) | 65 | `result-track:3f6140c333af153d116cf0c7e2e780a904e08f5290e480ca1d7fbc969ffe30ad` |
| 5 | `theorem` | [ContinuousLinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-differentiableat--4325d5640422a9631936e773.md) | 69 | `result-track:4325d5640422a9631936e773a6b14950d0ff41c87bf5a048a2184db56d445abe` |
| 6 | `theorem` | [ContinuousLinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-differentiablewithinat--01f463fe871791dfb5c4a1b5.md) | 73 | `result-track:01f463fe871791dfb5c4a1b54f975c75a426dc9b88173143af3a8e38625f28c7` |
| 7 | `theorem` | [ContinuousLinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-fderiv--ce7d1a6e1ff1407d7db91424.md) | 77 | `result-track:ce7d1a6e1ff1407d7db914248b49ecf6be429d1d6ec3ce976ab3bf8185b4554f` |
| 8 | `theorem` | [ContinuousLinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-fderivwithin--9112c6e9132b6155e313e811.md) | 80 | `result-track:9112c6e9132b6155e313e811a18c21f4f137e01d4ce663e5476d6fedac3ca9ee` |
| 9 | `theorem` | [ContinuousLinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-differentiable--66a509c4b0769224230d3360.md) | 86 | `result-track:66a509c4b0769224230d336020a57d92255ab59118203e331db7f793bd76c8dc` |
| 10 | `theorem` | [ContinuousLinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/continuouslinearmap-differentiableon--2dc60adea2d6c77f26a7c7ff.md) | 90 | `result-track:2dc60adea2d6c77f26a7c7ffc412d8e7b4383f9344cf4a02f36f007868e7a7bf` |
| 11 | `theorem` | [IsBoundedLinearMap.hasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-hasfderivatfilter--5cd87bb84528eadbe1f628a2.md) | 93 | `result-track:5cd87bb84528eadbe1f628a21a5e3b341bea3223c3bca29e6e80d10a581e00d1` |
| 12 | `theorem` | [IsBoundedLinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-hasfderivwithinat--7a50422591594f63d2bf8c21.md) | 98 | `result-track:7a50422591594f63d2bf8c21b3877233d02db2c0ed91a2f32590298b7e9f0d32` |
| 13 | `theorem` | [IsBoundedLinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-hasfderivat--0a222f88ee55f1189cdcc54f.md) | 103 | `result-track:0a222f88ee55f1189cdcc54fe07af2656a583b928d086af3b364480b278441b5` |
| 14 | `theorem` | [IsBoundedLinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-differentiableat--e82f7fbf192da38470532c42.md) | 108 | `result-track:e82f7fbf192da38470532c424e5c27eb732e12f4fcafb7c7180c8aeebe0e3f56` |
| 15 | `theorem` | [IsBoundedLinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-differentiablewithinat--b5222795e3052a5638524326.md) | 112 | `result-track:b5222795e3052a5638524326fe58c9121ac834619d1358e93687f07a2bf0dc6f` |
| 16 | `theorem` | [IsBoundedLinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-fderiv--d04538130654410b00efb53f.md) | 116 | `result-track:d04538130654410b00efb53f1a1c3b49c9b03be4f95e948a50bf6748f7c2075d` |
| 17 | `theorem` | [IsBoundedLinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-fderivwithin--bc3d96aa8b4a3a8ca1df0ec4.md) | 120 | `result-track:bc3d96aa8b4a3a8ca1df0ec4bbfe733ac0e7785884bb0b890d2549144dbce411` |
| 18 | `theorem` | [IsBoundedLinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-differentiable--c6bc4aa6a58bb7acd28000ca.md) | 126 | `result-track:c6bc4aa6a58bb7acd28000ca8eef2627c96393333f3aaa5740fccbf98bbe316a` |
| 19 | `theorem` | [IsBoundedLinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variante41415ea1d156def40579318aeb736a431aaef048bc8bf77c39f4b4502e0c798.lean/declarations/isboundedlinearmap-differentiableon--14c61c15dc6cda0fc4a35a86.md) | 130 | `result-track:14c61c15dc6cda0fc4a35a86425decd2639eda41926e99d85050321b421a687c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
