# Verification target: GRWTSK.Analysis.Real.ClassicalRieszCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dfe17b2b933e15b3b03da7035ea776d770acb56",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/ClassicalRieszCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dfe17b2b933e15b3b03da7035ea776d770acb56`.

Source path: `GRWTSK/Analysis/Real/ClassicalRieszCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/ClassicalRieszCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalRieszPrimitive`](../../../../mathematics/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correction](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/declarations/correction--7f22849f3ff2d6ca3fdf0ff3.md) | 17 | `declaration-track:7f22849f3ff2d6ca3fdf0ff30b24f1b456361c3e21fbab47769a558b2121db19` |
| 2 | `def` | [slope](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/declarations/slope--b3bbc63e513dafa4aa23e69e.md) | 20 | `declaration-track:b3bbc63e513dafa4aa23e69e9347153eec709e9327851b36808aa5e8ef91c75e` |
| 3 | `theorem` | [hasDerivAt_correction](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/declarations/hasderivat-correction--3e372180ffe892955f0120c5.md) | 22 | `result-track:3e372180ffe892955f0120c571420140039514fb70ef910486001e6af43a19f9` |
| 4 | `theorem` | [hasDerivAt_slope](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/declarations/hasderivat-slope--2d98083ff6af6917e0a15413.md) | 35 | `result-track:2d98083ff6af6917e0a15413f5333b72190997527c3bf37ce2a142cf98b8ce6e` |
| 5 | `theorem` | [rationalRieszPrimitive_eq](../../../../mathematics/Analysis/RealAnalysis/ClassicalRieszCorrection.lean/declarations/rationalrieszprimitive-eq--64c207ef44aacd007bd68f2f.md) | 47 | `result-track:64c207ef44aacd007bd68f2fb9a0eb1ddf8ce096453916ba7eef92c09e96f9c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
