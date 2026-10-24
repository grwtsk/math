# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt03.Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0988537b924f948a9d22ca8b1e1426e8a14ce1b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0988537b924f948a9d22ca8b1e1426e8a14ce1b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/cellkernel--d1adf4d1a41f2edf238b74b5.md) | 21 | `declaration-track:d1adf4d1a41f2edf238b74b52091752ca9603b0c6e71d82c1e5b98863ad470cf` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/cellderivative--04e78a6bd733378a0f9c122b.md) | 22 | `declaration-track:04e78a6bd733378a0f9c122bab266ae58cf16eb7867c331d51b00c495310954c` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/derivativemajorant--47aa2600d6f69e6384e76918.md) | 23 | `declaration-track:47aa2600d6f69e6384e76918c51ab1549df1239ade3f9ae389466d7eb5d4cff2` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/cellkernel-integrable--48d76db0795614d315df4443.md) | 25 | `result-track:48d76db0795614d315df4443bc13d0ba19c6837c55925bdbd5de14f41b8ed916` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/cellderivative-integrable--85ef518172c7aacc38cdfc00.md) | 35 | `result-track:85ef518172c7aacc38cdfc00ec4a7334f400861b701361f18ace696c40651542` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/cellkernel-hasderivat--3f3b606b5559b95aab311b83.md) | 46 | `result-track:3f3b606b5559b95aab311b83eab5ff874bb15c8c0fd93114833d863a06dae238` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Varianta56c080322727f6eaada7fce73b0b33b05d1107ebfc6127f0a9aa5a68ea82708.lean/declarations/cellderivative-bound--88bac80bc45309ac0a0f2577.md) | 61 | `result-track:88bac80bc45309ac0a0f2577300b0390b7368f1ea261c882ea3f14bfdfb002e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
